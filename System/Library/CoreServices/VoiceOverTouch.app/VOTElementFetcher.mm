@interface VOTElementFetcher
- (BOOL)_wasCanceledWithCountGeneration:(unint64_t)generation;
- (BOOL)_wasCanceledWithSearchGeneration:(unint64_t)generation;
- (VOTElementFetchDelegateProtocol)delegate;
- (VOTElementFetcher)init;
- (id)_debugElementCache;
- (id)_handleOpaqueSearchForElementInDirection:(int64_t)direction opaqueParent:(id)parent searchType:(int64_t)type range:(_NSRange *)range matchBlock:(id)block resetContentOffsetInOpaqueParent:(BOOL *)opaqueParent peeking:(BOOL)peeking;
- (id)_hitTestedElementForOriginalElement:(id)element hitTestPoint:(CGPoint)point opaqueParent:(id)parent;
- (void)_countElementsMatchingBlock:(id)block generation:(id)generation;
- (void)_forceUpdate;
- (void)_informDelegateOfRetrieveElements;
- (void)_initializeThread;
- (void)_retrieveElementsWithElement:(id)element groupNavigationStyle:(id)style;
- (void)_searchForElementWithParameters:(id)parameters searchFromOpaqueElementsInRemoteParent:(BOOL)parent;
- (void)_updateCacheWithElement:(id)element;
- (void)cancelPreviousCount;
- (void)cancelPreviousSearch;
- (void)countElementsMatchingBlock:(id)block;
- (void)dealloc;
- (void)didFinishBatchPeeking;
- (void)fillCacheWithElements:(id)elements;
- (void)forceUpdate;
- (void)invalidate;
- (void)retrieveElementsWithElement:(id)element groupNavigationStyle:(BOOL)style;
- (void)searchForElementInDirection:(int64_t)direction fromElement:(id)element needsForceCacheUpdate:(BOOL)update matchBlock:(id)block rangeMatch:(id)match searchType:(int64_t)type generation:(unint64_t)generation startingRange:(_NSRange)self0 groupNavigationStyle:(BOOL)self1 peeking:(BOOL)self2;
- (void)updateCacheWithElement:(id)element;
@end

@implementation VOTElementFetcher

- (VOTElementFetcher)init
{
  v18.receiver = self;
  v18.super_class = VOTElementFetcher;
  v2 = [(VOTElementFetcher *)&v18 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_cacheSize = xmmword_10017E6A0;
    v4 = [objc_allocWithZone(SCRCThread) init];
    fillerThread = v3->_fillerThread;
    v3->_fillerThread = v4;

    v6 = [objc_allocWithZone(SCRCThreadKey) initWithObject:v3];
    fillerThreadKey = v3->_fillerThreadKey;
    v3->_fillerThreadKey = v6;

    [(SCRCThread *)v3->_fillerThread performSelector:"_initializeThread" onTarget:v3 count:0 objects:0];
    v8 = [objc_allocWithZone(NSMutableArray) initWithCapacity:v3->_cacheSize + 1];
    elementCache = v3->_elementCache;
    v3->_elementCache = v8;

    v3->_canceledSearchGeneration = 0;
    v3->_currentSearchGeneration = 0;
    v10 = dispatch_queue_create("SearchGenerationQueue", 0);
    searchGenerationQueue = v3->_searchGenerationQueue;
    v3->_searchGenerationQueue = v10;

    v3->_canceledCountGeneration = 0;
    v3->_currentCountGeneration = 0;
    v12 = dispatch_queue_create("CountGenerationQueue", 0);
    countGenerationQueue = v3->_countGenerationQueue;
    v3->_countGenerationQueue = v12;

    v14 = objc_opt_new();
    opaqueElementCache = v3->_opaqueElementCache;
    v3->_opaqueElementCache = v14;

    v16 = v3;
  }

  return v3;
}

- (void)invalidate
{
  [(SCRCThread *)self->_fillerThread setIsInvalid:1];
  [(NSLock *)self->_cacheLock lock];
  cacheLock = self->_cacheLock;
  self->_cacheLock = 0;
  v6 = cacheLock;

  [(NSLock *)v6 unlock];
  searchGenerationQueue = self->_searchGenerationQueue;
  self->_searchGenerationQueue = 0;

  countGenerationQueue = self->_countGenerationQueue;
  self->_countGenerationQueue = 0;
}

- (void)dealloc
{
  [(VOTElementFetcher *)self invalidate];
  v3.receiver = self;
  v3.super_class = VOTElementFetcher;
  [(VOTElementFetcher *)&v3 dealloc];
}

- (void)_initializeThread
{
  AXSetThreadPriority();
  v4 = +[NSThread currentThread];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  [v4 setName:v3];
}

- (void)_updateCacheWithElement:(id)element
{
  elementCopy = element;
  v5 = elementCopy;
  if (!elementCopy)
  {
    [(NSLock *)self->_cacheLock lock];
    [(NSMutableArray *)self->_elementCache removeAllObjects];
    [(NSLock *)self->_cacheLock unlock];
    goto LABEL_69;
  }

  localOpaqueParent = [elementCopy localOpaqueParent];

  if (!localOpaqueParent)
  {
    if ([(VOTElementFetcher *)self triggerSignpostCollection])
    {
      v7 = VOTLogElement();
      if (os_signpost_enabled(v7))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "FetchElements", "", buf, 2u);
      }
    }

    context = objc_autoreleasePoolPush();
    v8 = VOTLogElement();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_10012FE2C();
    }

    [(NSLock *)self->_cacheLock lock];
    p_elementCache = &self->_elementCache;
    v10 = [(NSMutableArray *)self->_elementCache count];
    v11 = [(NSMutableArray *)self->_elementCache indexOfObject:v5];
    if (v10 < 1)
    {
      lastObject = 0;
      v12 = 0;
    }

    else
    {
      v12 = [(NSMutableArray *)*p_elementCache objectAtIndex:0];
      lastObject = [(NSMutableArray *)*p_elementCache lastObject];
    }

    [(NSLock *)self->_cacheLock unlock];
    v54 = v5;
    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = self->_cacheSize >> 1;
      v15 = v5;
      [(NSLock *)self->_cacheLock lock];
      [(NSMutableArray *)self->_elementCache removeAllObjects];
      [(NSMutableArray *)self->_elementCache addObject:v15];
      [(NSLock *)self->_cacheLock unlock];
      v16 = v15;
      goto LABEL_26;
    }

    cacheBufferEdge = self->_cacheBufferEdge;
    if (v11 < cacheBufferEdge)
    {
      v18 = *p_elementCache;
      if (![(NSMutableArray *)v18 count]|| ([(NSMutableArray *)v18 objectAtIndex:0], v19 = objc_claimAutoreleasedReturnValue(), +[NSNull null], v20 = objc_claimAutoreleasedReturnValue(), v20, v19, v19 != v20))
      {

        v15 = v12;
        v16 = 0;
        v14 = (self->_cacheSize >> 1) - v11;
        goto LABEL_26;
      }

      cacheBufferEdge = self->_cacheBufferEdge;
    }

    if (v11 > v10 - cacheBufferEdge)
    {
      v21 = *p_elementCache;
      if (![(NSMutableArray *)v21 count]|| ([(NSMutableArray *)v21 lastObject], v22 = objc_claimAutoreleasedReturnValue(), +[NSNull null], v23 = objc_claimAutoreleasedReturnValue(), v23, v22, v22 != v23))
      {

        v14 = v11 + (self->_cacheSize >> 1) - v10;
        v16 = lastObject;
        v15 = 0;
        goto LABEL_26;
      }
    }

    v14 = 0;
    v15 = 0;
    v16 = 0;
LABEL_26:
    v24 = VOTLogElement();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218498;
      v62 = v14;
      v63 = 2114;
      v64 = v15;
      v65 = 2114;
      v66 = v16;
      _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "fetch count: %lu -- startFromBehind: %{public}@, startFromAhead:%{public}@", buf, 0x20u);
    }

    if (v16)
    {
      v25 = [v16 elementsInDirection:1 withCount:v14];
      if (v15)
      {
LABEL_30:
        v55 = [v15 elementsInDirection:2 withCount:v14];
LABEL_33:
        v26 = VOTLogElement();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          sub_10012FE94();
        }

        [(NSLock *)self->_cacheLock lock];
        if ([v25 count])
        {
          [(NSMutableArray *)self->_elementCache addObjectsFromArray:v25];
          if ([(NSMutableArray *)self->_elementCache count]> self->_cacheSize)
          {
            v27 = [(NSMutableArray *)self->_elementCache count]- self->_cacheSize;
            v28 = VOTLogElement();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              sub_10012FF00();
            }

            [(NSMutableArray *)*p_elementCache removeObjectsInRange:0, v27];
          }
        }

        if (v16 && v14 > [v25 count])
        {
          v29 = *p_elementCache;
          v30 = +[NSNull null];
          [(NSMutableArray *)v29 addObject:v30];
        }

        v49 = v16;
        if ([v55 count])
        {
          elementCache = self->_elementCache;
          reverseObjectEnumerator = [v55 reverseObjectEnumerator];
          allObjects = [reverseObjectEnumerator allObjects];
          p_elementCache = &self->_elementCache;
          v33 = +[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", 0, [v55 count]);
          [(NSMutableArray *)elementCache insertObjects:allObjects atIndexes:v33];

          if ([(NSMutableArray *)self->_elementCache count]> self->_cacheSize)
          {
            v34 = [(NSMutableArray *)self->_elementCache count]- self->_cacheSize;
            [(NSMutableArray *)self->_elementCache removeObjectsInRange:[(NSMutableArray *)self->_elementCache count]- v34, v34];
            v35 = VOTLogElement();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
            {
              sub_10012FF80(p_elementCache);
            }
          }
        }

        if (v15 && v14 > [v55 count])
        {
          v36 = *p_elementCache;
          v37 = +[NSNull null];
          [(NSMutableArray *)v36 insertObject:v37 atIndex:0];
        }

        v50 = v15;
        v52 = v12;
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v38 = *p_elementCache;
        v39 = [(NSMutableArray *)v38 countByEnumeratingWithState:&v56 objects:v60 count:16];
        if (v39)
        {
          v40 = v39;
          v41 = 0;
          v42 = *v57;
          v43 = kAXAllowsDirectInteractionTrait;
          do
          {
            for (i = 0; i != v40; i = i + 1)
            {
              if (*v57 != v42)
              {
                objc_enumerationMutation(v38);
              }

              v45 = *(*(&v56 + 1) + 8 * i);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && [v45 doesHaveTraits:v43])
              {
                if (!v41)
                {
                  v41 = +[NSMutableArray array];
                }

                [v41 addObject:v45];
              }
            }

            v40 = [(NSMutableArray *)v38 countByEnumeratingWithState:&v56 objects:v60 count:16];
          }

          while (v40);
        }

        else
        {
          v41 = 0;
        }

        [(NSLock *)self->_cacheLock unlock];
        delegate = [(VOTElementFetcher *)self delegate];
        [delegate elementFetchFoundDirectTouchElements:v41];

        objc_autoreleasePoolPop(context);
        v5 = v54;
        if ([(VOTElementFetcher *)self triggerSignpostCollection])
        {
          v47 = VOTLogElement();
          if (os_signpost_enabled(v47))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v47, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "FetchElements", "", buf, 2u);
          }

          [(VOTElementFetcher *)self setTriggerSignpostCollection:0];
        }

        goto LABEL_69;
      }
    }

    else
    {
      v25 = 0;
      if (v15)
      {
        goto LABEL_30;
      }
    }

    v55 = 0;
    goto LABEL_33;
  }

LABEL_69:
}

- (void)updateCacheWithElement:(id)element
{
  *&self->_cacheSize = xmmword_10017E6A0;
  fillerThread = self->_fillerThread;
  copyWithCache = [element copyWithCache];
  [(SCRCThread *)fillerThread performSelector:"_updateCacheWithElement:" onTarget:self cancelMask:1 count:1 objects:copyWithCache];
}

- (void)_forceUpdate
{
  [(NSLock *)self->_cacheLock lock];
  [(NSMutableArray *)self->_elementCache removeAllObjects];
  cacheLock = self->_cacheLock;

  [(NSLock *)cacheLock unlock];
}

- (void)forceUpdate
{
  v3 = VOTLogElement();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10013001C();
  }

  [(SCRCThread *)self->_fillerThread performSelector:"_forceUpdate" onTarget:self cancelMask:0 count:0 objects:0];
}

- (void)cancelPreviousCount
{
  countGenerationQueue = self->_countGenerationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F4238;
  block[3] = &unk_1001C76E8;
  block[4] = self;
  dispatch_sync(countGenerationQueue, block);
}

- (BOOL)_wasCanceledWithCountGeneration:(unint64_t)generation
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  countGenerationQueue = self->_countGenerationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F42F8;
  block[3] = &unk_1001CAF10;
  block[5] = &v7;
  block[6] = generation;
  block[4] = self;
  dispatch_sync(countGenerationQueue, block);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)_countElementsMatchingBlock:(id)block generation:(id)generation
{
  blockCopy = block;
  unsignedLongLongValue = [generation unsignedLongLongValue];
  if ([(VOTElementFetcher *)self _wasCanceledWithCountGeneration:unsignedLongLongValue])
  {
    goto LABEL_23;
  }

  Current = CFAbsoluteTimeGetCurrent();
  [(NSLock *)self->_cacheLock lock];
  if (![(NSMutableArray *)self->_elementCache count])
  {
    [(NSLock *)self->_cacheLock unlock];
    [(VOTElementFetcher *)self _updateCacheWithElement:0];
    [(NSLock *)self->_cacheLock lock];
  }

  v8 = [(NSMutableArray *)self->_elementCache count];
  if (v8 < 1)
  {
    v10 = 0;
    goto LABEL_20;
  }

  v9 = v8;
  v10 = 0;
  v11 = 0;
  while (1)
  {
    delegate = [(NSMutableArray *)self->_elementCache objectAtIndex:v11];
    if ([(VOTElementFetcher *)self _wasCanceledWithCountGeneration:unsignedLongLongValue])
    {
      [(NSLock *)self->_cacheLock unlock];
      goto LABEL_22;
    }

    v13 = +[NSNull null];

    if (delegate != v13)
    {
      break;
    }

    if (v11)
    {
      goto LABEL_19;
    }

LABEL_15:

    if (++v11 >= v9)
    {
      goto LABEL_20;
    }
  }

  if (v11 == v9 - 1)
  {
    v14 = +[NSNull null];

    if (delegate != v14)
    {
      [(NSLock *)self->_cacheLock unlock];
      [(VOTElementFetcher *)self _updateCacheWithElement:delegate];
      [(NSLock *)self->_cacheLock lock];
      v9 = [(NSMutableArray *)self->_elementCache count];
    }
  }

  v10 += blockCopy[2](blockCopy, delegate, 0) & 1;
  if ((50 * (v11 / 0x32)) != v11 || CFAbsoluteTimeGetCurrent() - Current <= 1.1)
  {
    goto LABEL_15;
  }

  v10 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_19:

LABEL_20:
  [(NSLock *)self->_cacheLock unlock];
  if (![(VOTElementFetcher *)self _wasCanceledWithCountGeneration:unsignedLongLongValue])
  {
    delegate = [(VOTElementFetcher *)self delegate];
    [delegate elementsCounted:v10];
LABEL_22:
  }

LABEL_23:
}

- (id)_handleOpaqueSearchForElementInDirection:(int64_t)direction opaqueParent:(id)parent searchType:(int64_t)type range:(_NSRange *)range matchBlock:(id)block resetContentOffsetInOpaqueParent:(BOOL *)opaqueParent peeking:(BOOL)peeking
{
  parentCopy = parent;
  blockCopy = block;
  [parentCopy contentOffset];
  v16 = v15;
  v18 = v17;
  if (direction == 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = 2;
  }

  v20 = [(NSMutableDictionary *)self->_opaqueElementCache objectForKey:parentCopy];
  v21 = [parentCopy opaqueElementInDirection:v19 searchType:type range:range peeking:peeking startOpaqueElement:v20];

  if (v21)
  {
    [(NSMutableDictionary *)self->_opaqueElementCache setObject:v21 forKey:parentCopy];
  }

  v22 = VOTLogCommon();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v35 = v21;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Next header in direction %@", buf, 0xCu);
  }

  if (v21)
  {
    v23 = kAXSpacerTrait;
    while (([v21 doesHaveTraits:v23] & 1) != 0 || (blockCopy[2](blockCopy, v21, 0) & 1) == 0)
    {
      v24 = [(NSMutableDictionary *)self->_opaqueElementCache objectForKey:parentCopy];
      v25 = [parentCopy opaqueElementInDirection:v19 searchType:type range:range peeking:peeking startOpaqueElement:v24];

      if (v25)
      {
        [(NSMutableDictionary *)self->_opaqueElementCache setObject:v25 forKey:parentCopy];
      }

      v26 = VOTLogCommon();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v35 = v25;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Try again header search element %@", buf, 0xCu);
      }

      v21 = v25;
      if (!v25)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
LABEL_17:
    v27 = VOTLogCommon();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Did not find a match, reset offset", buf, 2u);
    }

    [parentCopy contentOffset];
    if (vabdd_f64(v16, v29) >= 0.001 || vabdd_f64(v18, v28) >= 0.001)
    {
      [parentCopy setContentOffset:{v16, v18}];
      v21 = 0;
      *opaqueParent = 1;
    }

    else
    {
      v21 = 0;
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didSearchForOpaqueElement];

  return v21;
}

- (id)_hitTestedElementForOriginalElement:(id)element hitTestPoint:(CGPoint)point opaqueParent:(id)parent
{
  y = point.y;
  x = point.x;
  elementCopy = element;
  parentCopy = parent;
  v10 = [[VOTElement alloc] initWithPosition:x, y];
  if (-[VOTElement isValid](v10, "isValid") && !-[VOTElement isEqual:](v10, "isEqual:", elementCopy) && -[VOTElement isAccessibleElement](v10, "isAccessibleElement") && (!parentCopy || (-[VOTElement opaqueParent](v10, "opaqueParent"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 isEqual:parentCopy], v11, v12)))
  {
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)_wasCanceledWithSearchGeneration:(unint64_t)generation
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  searchGenerationQueue = self->_searchGenerationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F4A14;
  block[3] = &unk_1001CAF10;
  block[5] = &v7;
  block[6] = generation;
  block[4] = self;
  dispatch_sync(searchGenerationQueue, block);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)_searchForElementWithParameters:(id)parameters searchFromOpaqueElementsInRemoteParent:(BOOL)parent
{
  parentCopy = parent;
  parametersCopy = parameters;
  generation = [parametersCopy generation];
  if (![(VOTElementFetcher *)self _wasCanceledWithSearchGeneration:generation])
  {
    v152 = parentCopy;
    v149 = generation;
    element = [parametersCopy element];
    searchType = [parametersCopy searchType];
    direction = [parametersCopy direction];
    matchBlock = [parametersCopy matchBlock];
    rangeBlock = [parametersCopy rangeBlock];
    v195 = 0;
    v196 = &v195;
    v197 = 0x3010000000;
    v200 = 0;
    v198 = &unk_10017883E;
    startingRange = 0;
    startingRange = [parametersCopy startingRange];
    v200 = v10;
    needsForceCacheUpdate = [parametersCopy needsForceCacheUpdate];
    v191 = 0;
    v192 = &v191;
    v193 = 0x2020000000;
    v194 = 0;
    groupNavigationStyle = [parametersCopy groupNavigationStyle];
    peeking = [parametersCopy peeking];
    groupedParent = [element groupedParent];
    opaqueParent = [element opaqueParent];
    localOpaqueParent = [element localOpaqueParent];
    outermostLocalOpaqueParent = [element outermostLocalOpaqueParent];
    v165 = opaqueParent;
    if (opaqueParent)
    {
      fallbackOpaqueParent = opaqueParent;
    }

    else
    {
      fallbackOpaqueParent = [parametersCopy fallbackOpaqueParent];
    }

    v160 = localOpaqueParent;
    if (localOpaqueParent)
    {
      fallbackLocalOpaqueParent = localOpaqueParent;
    }

    else
    {
      fallbackLocalOpaqueParent = [parametersCopy fallbackLocalOpaqueParent];
    }

    fallbackOpaqueParent2 = [parametersCopy fallbackOpaqueParent];
    if (opaqueParent == fallbackOpaqueParent2 || ([parametersCopy fallbackOpaqueParent], v4 = objc_claimAutoreleasedReturnValue(), (-[NSObject isEqual:](opaqueParent, "isEqual:", v4) & 1) != 0))
    {
      fallbackLocalOpaqueParent2 = [parametersCopy fallbackLocalOpaqueParent];
      v16 = fallbackLocalOpaqueParent2;
      if (v160 == fallbackLocalOpaqueParent2)
      {

        if (opaqueParent != fallbackOpaqueParent2)
        {
        }

        goto LABEL_19;
      }

      fallbackLocalOpaqueParent3 = [parametersCopy fallbackLocalOpaqueParent];
      v18 = [(NSMutableArray *)v160 isEqual:fallbackLocalOpaqueParent3];

      if (v165 != fallbackOpaqueParent2)
      {
      }

      if (v18)
      {
LABEL_20:
        v180[0] = _NSConcreteStackBlock;
        v180[1] = 3221225472;
        v180[2] = sub_1000F63FC;
        v180[3] = &unk_1001CAF38;
        v186 = direction;
        v187 = searchType;
        v180[4] = self;
        v184 = &v195;
        v154 = matchBlock;
        v183 = v154;
        v185 = &v191;
        v188 = peeking;
        v164 = fallbackOpaqueParent;
        v181 = v164;
        v189 = needsForceCacheUpdate;
        v19 = parametersCopy;
        v182 = v19;
        v190 = groupNavigationStyle;
        v157 = objc_retainBlock(v180);
        v20 = element;
        context = v164 != 0 && (v152 || outermostLocalOpaqueParent != 0);
        if (context == 1)
        {
          if (v152)
          {
            v21 = v164;
          }

          else
          {
            v21 = outermostLocalOpaqueParent;
          }

          v163 = element;
          if ((v157[2])(v157, v21))
          {
            goto LABEL_211;
          }

          v22 = VOTLogElement();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            sub_1001300B0();
          }

          v20 = v164;
        }

        [(NSLock *)self->_cacheLock lock];
        p_elementCache = &self->_elementCache;
        elementCache = self->_elementCache;
        v178[0] = _NSConcreteStackBlock;
        v178[1] = 3221225472;
        v178[2] = sub_1000F6648;
        v178[3] = &unk_1001CAF60;
        v163 = v20;
        v179 = v163;
        v25 = [(NSMutableArray *)elementCache indexesOfObjectsPassingTest:v178];
        v148 = v25;
        if (direction == 1)
        {
          lastIndex = [v25 lastIndex];
        }

        else
        {
          lastIndex = [v25 firstIndex];
        }

        v27 = lastIndex;
        if (lastIndex == 0x7FFFFFFFFFFFFFFFLL)
        {
          v28 = VOTLogElement();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            sub_100130118();
          }

          [(NSLock *)self->_cacheLock unlock];
          [(VOTElementFetcher *)self _updateCacheWithElement:v163];
          [(NSLock *)self->_cacheLock lock];
          v27 = [(NSMutableArray *)*p_elementCache indexOfObject:v163];
          v29 = VOTLogElement();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            sub_100130190();
          }
        }

        v30 = VOTLogElement();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          v39 = *p_elementCache;
          *buf = 138543874;
          v204 = v163;
          v205 = 2048;
          v206 = v27;
          v207 = 2114;
          v208 = v39;
          _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "Location of element %{public}@ in cache: %ld\nCache: %{public}@", buf, 0x20u);
        }

        if ([(VOTElementFetcher *)self _wasCanceledWithSearchGeneration:generation])
        {
          [(NSLock *)self->_cacheLock unlock];
LABEL_210:

LABEL_211:
          _Block_object_dispose(&v191, 8);
          _Block_object_dispose(&v195, 8);

          goto LABEL_212;
        }

        if (v27 == 0x7FFFFFFFFFFFFFFFLL)
        {
          [(NSLock *)self->_cacheLock unlock];
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          clientGeneration = [v19 clientGeneration];
          v159 = [VOTElementFetchFoundData fetchFoundData:0 forceUpdate:needsForceCacheUpdate direction:direction generation:clientGeneration range:v196[2].location searchType:v196[2].length, searchType];
          [WeakRetained elementFetchFound:v159];

LABEL_209:
          goto LABEL_210;
        }

        v172[0] = _NSConcreteStackBlock;
        v172[1] = 3221225472;
        v172[2] = sub_1000F6654;
        v172[3] = &unk_1001CAF88;
        v137 = rangeBlock;
        v174 = v137;
        v175 = direction;
        v177 = needsForceCacheUpdate;
        v34 = v19;
        v173 = v34;
        v176 = searchType;
        v144 = objc_retainBlock(v172);
        v167[0] = _NSConcreteStackBlock;
        v167[1] = 3221225472;
        v167[2] = sub_1000F6790;
        v167[3] = &unk_1001CAFB0;
        v169 = searchType;
        v170 = direction;
        v171 = needsForceCacheUpdate;
        v139 = v34;
        v168 = v139;
        v143 = objc_retainBlock(v167);
        v35 = (v144[2])(v144, v163, v196[2].location, v196[2].length, 0);
        if (v35)
        {
          searchUUID = objc_loadWeakRetained(&self->_delegate);
          [searchUUID elementFetchFound:v35];
LABEL_208:

          WeakRetained = v174;
          goto LABEL_209;
        }

        searchUUID = [0 searchUUID];
        v37 = (v143[2])(v143, v163, v196[2].location, v196[2].length, searchUUID);
        element2 = [v37 element];
        v142 = v37;
        LOBYTE(v37) = element2 == 0;

        if ((v37 & 1) == 0)
        {
          v145 = objc_loadWeakRetained(&self->_delegate);
          [v145 elementFetchFound:v142];
          v35 = 0;
          goto LABEL_207;
        }

        searchUUID2 = [v142 searchUUID];

        v42 = [(NSMutableArray *)*p_elementCache count];
        if (direction == 1)
        {
          v43 = 1;
        }

        else
        {
          v43 = -1;
        }

        v134 = v43;
        v135 = v42;
        v44 = &v27[v43];
        v45 = &v27[v43] < v42;
        v140 = v44;
        v46 = v44 >= 0;
        if (direction != 1)
        {
          v45 = v46;
        }

        if (v45)
        {
          v136 = 0;
          v131 = 0;
          v47 = 0x7FFFFFFFLL;
          if (direction == 1)
          {
            v47 = 0;
          }

          v132 = kAXSpacerTrait;
          v133 = v47;
          v48 = -1;
          if (direction != 1)
          {
            v48 = 1;
          }

          v130 = v48;
          while (1)
          {
            if ([(VOTElementFetcher *)self _wasCanceledWithSearchGeneration:v149])
            {
              goto LABEL_118;
            }

            v145 = [(NSMutableArray *)*p_elementCache objectAtIndex:v140];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v49 = [v145 pid];
              if (((v49 == [v163 pid]) & context) == 1)
              {
                if ([v163 isAccessibilityOpaqueElementProvider])
                {
                  if ((v157[2])(v157, v163))
                  {
                    searchUUID = searchUUID2;
                    v35 = v136;
                    goto LABEL_207;
                  }

                  LOBYTE(context) = 0;
                }

                else
                {
                  LOBYTE(context) = 1;
                }
              }
            }

            v50 = v196;
            v196[2].location = v133;
            v50[2].length = 0;
            v51 = +[NSNull null];
            v52 = v145 == v51;

            if (v52)
            {
              v60 = 0;
LABEL_120:
              v141 = 0;
              goto LABEL_130;
            }

            v53 = VOTLogElement();
            if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              v204 = v145;
              _os_log_debug_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEBUG, "Checking element %{public}@", buf, 0xCu);
            }

            if (([v145 doesHaveTraits:v132]& 1) == 0)
            {
              break;
            }

LABEL_98:

            v66 = &v140[v134] < v135;
            v140 += v134;
            if (direction != 1)
            {
              v66 = v140 >= 0;
            }

            if (!v66)
            {
              goto LABEL_118;
            }
          }

          if (groupNavigationStyle)
          {
            groupedParent2 = [v145 groupedParent];
            v55 = groupedParent2;
            if (!groupedParent2 && groupedParent)
            {
              v55 = 0;
LABEL_124:
              v79 = VOTLogElement();
              if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
              {
                sub_1001301D0();
              }

              v80 = VOTLogElement();
              if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
              {
                sub_100130238();
              }

LABEL_129:
              v60 = 0;
              v141 = 1;
LABEL_130:

              goto LABEL_131;
            }

            if (groupedParent2 && !groupedParent || groupedParent2 && groupedParent && ([groupedParent isEqual:groupedParent2] & 1) == 0)
            {
              goto LABEL_124;
            }
          }

          isAccessibilityOpaqueElementProvider = [v145 isAccessibilityOpaqueElementProvider];
          if (searchType == 999999)
          {
            v57 = 0;
          }

          else
          {
            v57 = isAccessibilityOpaqueElementProvider;
          }

          if (v57 != 1 || groupNavigationStyle && ([v145 isAccessibleGroup]& 1) != 0)
          {
            if (([v145 isAccessibleElement]& 1) != 0 || ([v145 isTouchContainer]& 1) != 0 || groupNavigationStyle && [v145 isAccessibleGroup])
            {
              if ((*(v154 + 2))(v154, v145, v163))
              {
                v60 = v145;
                goto LABEL_120;
              }

              if (v58 == 1)
              {
                goto LABEL_129;
              }
            }

            else if (([v145 isAlive]& 1) == 0)
            {
              if (v131)
              {
                v131 = 0;
                goto LABEL_98;
              }

              if (direction == 1 && v140 >= 1)
              {
                v68 = [(NSMutableArray *)*p_elementCache objectAtIndex:v140 - 1];
                v69 = +[NSNull null];
                v70 = v68 == v69;

                if (!v70)
                {
                  v71 = [(NSMutableArray *)*p_elementCache objectAtIndex:v140 - 1];
                  v72 = [v71 elementsInDirection:1 withCount:1];
                  firstObject = [v72 firstObject];
                  goto LABEL_111;
                }
              }

              else if (direction != 1 && v140 < [(NSMutableArray *)*p_elementCache count]- 1)
              {
                v75 = [(NSMutableArray *)*p_elementCache objectAtIndex:v140 + 1];
                v76 = +[NSNull null];
                v77 = v75 == v76;

                if (!v77)
                {
                  v71 = [(NSMutableArray *)*p_elementCache objectAtIndex:v140 + 1];
                  v72 = [v71 elementsInDirection:2 withCount:1];
                  firstObject = [v72 firstObject];
LABEL_111:
                  v74 = firstObject;

                  if (v74)
                  {
                    [(NSMutableArray *)*p_elementCache replaceObjectAtIndex:v140 withObject:v74];

                    v140 += v130;
                    v131 = 1;
                    goto LABEL_98;
                  }
                }
              }
            }
          }

          else
          {
            v59 = VOTLogElement();
            if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v204 = v145;
              _os_log_debug_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEBUG, "Try opaque element: %@", buf, 0xCu);
            }

            LOBYTE(v128) = peeking;
            v60 = [(VOTElementFetcher *)self _handleOpaqueSearchForElementInDirection:direction opaqueParent:v145 searchType:searchType range:&v196[2] matchBlock:v154 resetContentOffsetInOpaqueParent:v192 + 3 peeking:v128];
            if (v60)
            {
              goto LABEL_120;
            }
          }

          v35 = (v144[2])(v144, v145, v196[2].location, v196[2].length, searchUUID2);

          v61 = VOTLogElement();
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
          {
            v67 = NSStringFromRange(v196[2]);
            *buf = 138412802;
            v204 = v145;
            v205 = 2112;
            v206 = v67;
            v207 = 2112;
            v208 = v35;
            _os_log_debug_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEBUG, "search range fetch: %@ %@ -> %@", buf, 0x20u);
          }

          if (v35 && [(NSMutableArray *)v35 range]!= 0x7FFFFFFF)
          {
            v78 = objc_loadWeakRetained(&self->_delegate);
            [v78 elementFetchFound:v35];
            goto LABEL_206;
          }

          v62 = (v143[2])(v143, v145, v196[2].location, v196[2].length, searchUUID2);

          searchUUID3 = [v62 searchUUID];

          element3 = [v62 element];
          v65 = element3 == 0;

          if (!v65)
          {
            v78 = objc_loadWeakRetained(&self->_delegate);
            [v78 elementFetchFound:v62];
            searchUUID2 = searchUUID3;
            v142 = v62;
            goto LABEL_206;
          }

          v142 = v62;
          searchUUID2 = searchUUID3;
          v136 = v35;
          goto LABEL_98;
        }

        v136 = 0;
LABEL_118:
        v60 = 0;
        v141 = 0;
LABEL_131:
        [(NSLock *)self->_cacheLock unlock];
        v81 = VOTLogElement();
        if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543874;
          v204 = v60;
          v205 = 2048;
          v206 = v27;
          v207 = 2048;
          v208 = v135;
          _os_log_debug_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEBUG, "Found element: %{public}@ (%ld, %ld)", buf, 0x20u);
        }

        contexta = objc_autoreleasePoolPush();
        if (v60)
        {
          if (![v60 isAccessibilityOpaqueElementProvider]|| groupNavigationStyle && ([v60 isAccessibleGroup]& 1) != 0)
          {
            v145 = v60;
LABEL_142:
            v83 = objc_loadWeakRetained(&self->_delegate);
            v84 = +[VOTElementFetchFoundData fetchFoundData:forceUpdate:direction:generation:range:searchType:](VOTElementFetchFoundData, "fetchFoundData:forceUpdate:direction:generation:range:searchType:", v145, needsForceCacheUpdate, direction, [v139 clientGeneration], 0x7FFFFFFFLL, 0, searchType);
            [v83 elementFetchFound:v84];
            v85 = 0;
            v78 = 0;
LABEL_203:

            goto LABEL_204;
          }

          v83 = v60;
          LOBYTE(v128) = peeking;
          v145 = [(VOTElementFetcher *)self _handleOpaqueSearchForElementInDirection:direction opaqueParent:v83 searchType:searchType range:&v196[2] matchBlock:v154 resetContentOffsetInOpaqueParent:v192 + 3 peeking:v128];

          if (v145)
          {

            goto LABEL_142;
          }

          clientGeneration2 = [v139 clientGeneration];
          BYTE1(v129) = peeking;
          LOBYTE(v129) = groupNavigationStyle;
          [(VOTElementFetcher *)self searchForElementInDirection:direction fromElement:v83 needsForceCacheUpdate:0 matchBlock:v154 rangeMatch:v137 searchType:searchType generation:clientGeneration2 startingRange:v196[2].location groupNavigationStyle:v196[2].length peeking:v129];
          v85 = 0;
          v78 = 0;
LABEL_196:
          v145 = 0;
LABEL_204:

          goto LABEL_205;
        }

        [(NSLock *)self->_cacheLock lock];
        v82 = *p_elementCache;
        if (direction == 1)
        {
          [(NSMutableArray *)v82 lastObject];
        }

        else
        {
          [(NSMutableArray *)v82 objectAtIndex:0];
        }
        v78 = ;

        [(NSLock *)self->_cacheLock unlock];
        if (!v152)
        {
          remoteParent = [element remoteParent];
          if (remoteParent)
          {
            v87 = +[NSNull null];
            v88 = v87;
            if (v78 == v87)
            {
              if (v164)
              {

                if (!fallbackLocalOpaqueParent)
                {
LABEL_156:
                  [(VOTElementFetcher *)self _searchForElementWithParameters:v139 searchFromOpaqueElementsInRemoteParent:1];
LABEL_164:
                  v85 = 0;
LABEL_165:
                  v145 = 0;
LABEL_205:
                  objc_autoreleasePoolPop(contexta);

                  v35 = v136;
LABEL_206:

                  searchUUID = searchUUID2;
LABEL_207:

                  goto LABEL_208;
                }

                goto LABEL_159;
              }
            }

            else
            {
              immediateRemoteParent = [element immediateRemoteParent];
              v90 = [immediateRemoteParent isEqual:v78];
              if (v164)
              {
                v91 = v90;
              }

              else
              {
                v91 = 0;
              }

              if (v91)
              {

                if (!fallbackLocalOpaqueParent)
                {
                  goto LABEL_156;
                }

                goto LABEL_159;
              }
            }
          }
        }

LABEL_159:
        v93 = +[NSNull null];
        v94 = v78 == v93;

        if (!v94)
        {
          v95 = VOTLogElement();
          if (os_log_type_enabled(v95, OS_LOG_TYPE_DEBUG))
          {
            sub_1001302AC();
          }

          if ([(VOTElementFetcher *)self _wasCanceledWithSearchGeneration:v149])
          {
            goto LABEL_164;
          }

          [(VOTElementFetcher *)self _updateCacheWithElement:v78];
          if ([(VOTElementFetcher *)self _wasCanceledWithSearchGeneration:v149])
          {
            goto LABEL_164;
          }

          [(NSLock *)self->_cacheLock lock];
          v123 = *p_elementCache;
          if (direction == 1)
          {
            [(NSMutableArray *)v123 lastObject];
          }

          else
          {
            [(NSMutableArray *)v123 objectAtIndex:0];
          }
          v85 = ;

          [(NSLock *)self->_cacheLock unlock];
          if (([v78 isEqual:v85] | v141) != 1)
          {
            v126 = VOTLogElement();
            if (os_log_type_enabled(v126, OS_LOG_TYPE_DEBUG))
            {
              sub_100130314();
            }

            clientGeneration3 = [v139 clientGeneration];
            BYTE1(v129) = peeking;
            LOBYTE(v129) = groupNavigationStyle;
            [(VOTElementFetcher *)self searchForElementInDirection:direction fromElement:v78 needsForceCacheUpdate:needsForceCacheUpdate matchBlock:v154 rangeMatch:v137 searchType:searchType generation:clientGeneration3 startingRange:v196[2].location groupNavigationStyle:v196[2].length peeking:v129];
            goto LABEL_165;
          }

          v125 = VOTLogElement();
          if (os_log_type_enabled(v125, OS_LOG_TYPE_DEBUG))
          {
            sub_10013037C();
          }

          v83 = +[VOTElementFetchFoundData fetchFoundData:forceUpdate:direction:generation:range:searchType:](VOTElementFetchFoundData, "fetchFoundData:forceUpdate:direction:generation:range:searchType:", 0, needsForceCacheUpdate, direction, [v139 clientGeneration], 0x7FFFFFFFLL, 0, searchType);
          [v83 setSearchEndedWithDifferentGroup:v141];
          v84 = objc_loadWeakRetained(&self->_delegate);
          [v84 elementFetchFound:v83];
LABEL_202:
          v145 = 0;
          goto LABEL_203;
        }

        [element updateVisiblePoint];
        [element visiblePoint];
        v97 = v96;
        v99 = v98;
        v100 = VOTLogElement();
        if (os_log_type_enabled(v100, OS_LOG_TYPE_DEBUG))
        {
          v213.x = v97;
          v213.y = v99;
          v101 = NSStringFromCGPoint(v213);
          sub_1001303E4(element, v101, buf, v100);
        }

        windowContextId = [element windowContextId];
        v103 = +[VOTElement systemWideElement];
        [v103 convertPoint:windowContextId fromContextId:{v97, v99}];
        v105 = v104;
        v107 = v106;

        v108 = VOTLogElement();
        if (os_log_type_enabled(v108, OS_LOG_TYPE_DEBUG))
        {
          v214.x = v105;
          v214.y = v107;
          v109 = NSStringFromCGPoint(v214);
          sub_100130454(v109, v202, windowContextId, v108);
        }

        v110 = 0;
        if (v105 == CGPointZero.x)
        {
          y = CGPointZero.y;
          v112 = element;
          if (v107 != y)
          {
            goto LABEL_180;
          }

          [v139 hitTestPoint];
          v105 = v113;
          v107 = v114;
          v115 = VOTLogElement();
          if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
          {
            v215.x = v105;
            v215.y = v107;
            v116 = NSStringFromCGPoint(v215);
            sub_1001304D4(element, v116, v201, v115);
          }

          v110 = 0;
          if (v105 == CGPointZero.x)
          {
            v112 = element;
            if (v107 != y)
            {
              goto LABEL_180;
            }

            v117 = VOTLogElement();
            if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
            {
              sub_100130544(v117);
            }

            v110 = 1;
          }
        }

        v112 = element;
LABEL_180:
        if (((v110 | [v112 isRemoteElement]) & 1) == 0)
        {
          v107 = [(VOTElementFetcher *)self _hitTestedElementForOriginalElement:v112 hitTestPoint:0 opaqueParent:v105, v107];
          v83 = v107;
          if (*(v192 + 24) != 1 || ([v107 opaqueParent], v121 = objc_claimAutoreleasedReturnValue(), v122 = [v164 isEqual:v121], v121, v112 = element, !v122))
          {
            if (v83 && (!groupNavigationStyle || ([v112 elementIsDescendant:v83]& 1) == 0))
            {
              v124 = VOTLogElement();
              if (os_log_type_enabled(v124, OS_LOG_TYPE_DEBUG))
              {
                sub_100130588();
              }

              BYTE1(v129) = peeking;
              LOBYTE(v129) = groupNavigationStyle;
              -[VOTElementFetcher searchForElementInDirection:fromElement:needsForceCacheUpdate:matchBlock:rangeMatch:searchType:generation:startingRange:groupNavigationStyle:peeking:](self, "searchForElementInDirection:fromElement:needsForceCacheUpdate:matchBlock:rangeMatch:searchType:generation:startingRange:groupNavigationStyle:peeking:", direction, v83, 1, v154, v137, searchType, [v139 clientGeneration], 0x7FFFFFFFLL, 0, v129);
              v85 = 0;
              goto LABEL_196;
            }

            goto LABEL_182;
          }
        }

        v83 = 0;
LABEL_182:
        v118 = VOTLogElement();
        if (os_log_type_enabled(v118, OS_LOG_TYPE_DEBUG))
        {
          sub_1001305F0();
        }

        v84 = +[VOTElementFetchFoundData fetchFoundData:forceUpdate:direction:generation:range:searchType:](VOTElementFetchFoundData, "fetchFoundData:forceUpdate:direction:generation:range:searchType:", 0, needsForceCacheUpdate, direction, [v139 clientGeneration], 0x7FFFFFFFLL, 0, searchType);
        [v84 setSearchEndedWithDifferentGroup:v141];
        v119 = objc_loadWeakRetained(&self->_delegate);
        [v119 elementFetchFound:v84];

        v85 = 0;
        goto LABEL_202;
      }
    }

    else
    {
    }

    fallbackOpaqueParent2 = VOTLogElement();
    if (os_log_type_enabled(fallbackOpaqueParent2, OS_LOG_TYPE_DEBUG))
    {
      fallbackOpaqueParent3 = [parametersCopy fallbackOpaqueParent];
      fallbackLocalOpaqueParent4 = [parametersCopy fallbackLocalOpaqueParent];
      *buf = 138544386;
      v204 = v165;
      v205 = 2114;
      v206 = fallbackOpaqueParent3;
      v207 = 2114;
      v208 = v160;
      v209 = 2114;
      v210 = fallbackLocalOpaqueParent4;
      v211 = 1024;
      v212 = v152;
      _os_log_debug_impl(&_mh_execute_header, fallbackOpaqueParent2, OS_LOG_TYPE_DEBUG, "Had to use fallback opaque parents. Opaque parent %{public}@ (fallback %{public}@), local opaque parent %{public}@ (fallback %{public}@), searchOpaqueRemoteParents %i,", buf, 0x30u);
    }

LABEL_19:

    goto LABEL_20;
  }

LABEL_212:
}

- (void)cancelPreviousSearch
{
  searchGenerationQueue = self->_searchGenerationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F6A68;
  block[3] = &unk_1001C76E8;
  block[4] = self;
  dispatch_sync(searchGenerationQueue, block);
  self->_retrievingAllElements = 0;
}

- (void)countElementsMatchingBlock:(id)block
{
  blockCopy = block;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  countGenerationQueue = self->_countGenerationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F6BF4;
  block[3] = &unk_1001C77F0;
  block[4] = self;
  block[5] = &v10;
  dispatch_sync(countGenerationQueue, block);
  self->_cacheSize = 1000;
  v6 = [blockCopy copy];
  fillerThread = self->_fillerThread;
  v8 = [NSNumber numberWithUnsignedLongLong:v11[3]];
  [(SCRCThread *)fillerThread performSelector:"_countElementsMatchingBlock:generation:" onTarget:self cancelMask:1 count:2 objects:v6, v8];

  _Block_object_dispose(&v10, 8);
}

- (void)searchForElementInDirection:(int64_t)direction fromElement:(id)element needsForceCacheUpdate:(BOOL)update matchBlock:(id)block rangeMatch:(id)match searchType:(int64_t)type generation:(unint64_t)generation startingRange:(_NSRange)self0 groupNavigationStyle:(BOOL)self1 peeking:(BOOL)self2
{
  updateCopy = update;
  elementCopy = element;
  blockCopy = block;
  matchCopy = match;
  v55 = 0;
  v56[0] = &v55;
  v56[1] = 0x2020000000;
  v56[2] = 0;
  searchGenerationQueue = self->_searchGenerationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F7204;
  block[3] = &unk_1001C77F0;
  block[4] = self;
  block[5] = &v55;
  dispatch_sync(searchGenerationQueue, block);
  *&self->_cacheSize = xmmword_10017E6B0;
  self->_retrievingAllElements = 0;
  v20 = VOTLogElement();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    sub_10013079C(v56);
  }

  v21 = elementCopy;
  opaqueParent = [v21 opaqueParent];
  localOpaqueParent = [v21 localOpaqueParent];
  [v21 centerPoint];
  MidX = v24;
  MidY = v26;
  [v21 frame];
  x = v68.origin.x;
  y = v68.origin.y;
  width = v68.size.width;
  height = v68.size.height;
  v73.origin.x = CGRectZero.origin.x;
  v73.origin.y = CGRectZero.origin.y;
  v73.size.width = CGRectZero.size.width;
  v73.size.height = CGRectZero.size.height;
  if (!CGRectEqualToRect(v68, v73))
  {
    v69.origin.x = x;
    v69.origin.y = y;
    v69.size.width = width;
    v69.size.height = height;
    v67.x = MidX;
    v67.y = MidY;
    if (!CGRectContainsPoint(v69, v67))
    {
      v32 = VOTLogElement();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        v70.origin.x = x;
        v70.origin.y = y;
        v70.size.width = width;
        v70.size.height = height;
        v33 = NSStringFromCGRect(v70);
        sub_100130814(v33, v63, v32);
      }

      v71.origin.x = x;
      v71.origin.y = y;
      v71.size.width = width;
      v71.size.height = height;
      MidX = CGRectGetMidX(v71);
      v72.origin.x = x;
      v72.origin.y = y;
      v72.size.width = width;
      v72.size.height = height;
      MidY = CGRectGetMidY(v72);
    }
  }

  windowContextId = [v21 windowContextId];
  v35 = +[VOTElement systemWideElement];
  [v35 convertPoint:objc_msgSend(v21 fromContextId:{"windowContextId"), MidX, MidY}];
  v37 = v36;
  v39 = v38;

  v40 = VOTLogElement();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
  {
    v65.x = v37;
    v65.y = v39;
    v49 = NSStringFromCGPoint(v65);
    v66.x = MidX;
    v66.y = MidY;
    v50 = NSStringFromCGPoint(v66);
    *buf = 138543874;
    v58 = v49;
    v59 = 1024;
    v60 = windowContextId;
    v61 = 2114;
    v51 = v50;
    v62 = v50;
    _os_log_debug_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEBUG, "Hit test point is %{public}@ with window context id %u and original center point %{public}@", buf, 0x1Cu);
  }

  v41 = v21;
  if (!v21)
  {
    v41 = 0;
    if (opaqueParent)
    {
      v42 = VOTLogElement();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        v64.x = v37;
        v64.y = v39;
        v43 = NSStringFromCGPoint(v64);
        sub_10013086C(opaqueParent, v43, buf, v42);
      }

      v41 = [(VOTElementFetcher *)self _hitTestedElementForOriginalElement:0 hitTestPoint:opaqueParent opaqueParent:v37, v39];
      if (v41)
      {
        v44 = VOTLogElement();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
        {
          sub_1001308D4();
        }

        v45 = v41;
      }
    }
  }

  if (v41 || !opaqueParent)
  {
    WeakRetained = objc_alloc_init(VOTElementFetcherSearchParameters);
    [(VOTElementFetcherSearchParameters *)WeakRetained setDirection:direction];
    [(VOTElementFetcherSearchParameters *)WeakRetained setElement:v41];
    [(VOTElementFetcherSearchParameters *)WeakRetained setNeedsForceCacheUpdate:updateCopy];
    [(VOTElementFetcherSearchParameters *)WeakRetained setMatchBlock:blockCopy];
    [(VOTElementFetcherSearchParameters *)WeakRetained setRangeBlock:matchCopy];
    [(VOTElementFetcherSearchParameters *)WeakRetained setSearchType:type];
    [(VOTElementFetcherSearchParameters *)WeakRetained setStartingRange:range.location, range.length];
    [(VOTElementFetcherSearchParameters *)WeakRetained setFallbackOpaqueParent:opaqueParent];
    [(VOTElementFetcherSearchParameters *)WeakRetained setFallbackLocalOpaqueParent:localOpaqueParent];
    [(VOTElementFetcherSearchParameters *)WeakRetained setHitTestPoint:v37, v39];
    [(VOTElementFetcherSearchParameters *)WeakRetained setGeneration:*(v56[0] + 24)];
    [(VOTElementFetcherSearchParameters *)WeakRetained setClientGeneration:generation];
    [(VOTElementFetcherSearchParameters *)WeakRetained setGroupNavigationStyle:style];
    [(VOTElementFetcherSearchParameters *)WeakRetained setPeeking:peeking];
    if ([(VOTElementFetcher *)self shouldPerformSearchSynchronously])
    {
      [(VOTElementFetcher *)self _searchForElementWithParameters:WeakRetained];
    }

    else
    {
      [(SCRCThread *)self->_fillerThread performSelector:"_searchForElementWithParameters:" onTarget:self cancelMask:1 count:1 objects:WeakRetained];
    }
  }

  else
  {
    v46 = VOTLogElement();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
    {
      sub_10013093C();
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    type = [VOTElementFetchFoundData fetchFoundData:0 forceUpdate:updateCopy direction:direction generation:generation range:0x7FFFFFFFLL searchType:0, type];
    [(VOTElementFetcherSearchParameters *)WeakRetained elementFetchFound:type];
  }

  _Block_object_dispose(&v55, 8);
}

- (void)didFinishBatchPeeking
{
  v3 = objc_opt_new();
  opaqueElementCache = self->_opaqueElementCache;
  self->_opaqueElementCache = v3;

  _objc_release_x1(v3, opaqueElementCache);
}

- (void)_informDelegateOfRetrieveElements
{
  [(NSLock *)self->_cacheLock lock];
  v3 = [(NSMutableArray *)self->_elementCache copyWithZone:0];
  [(NSLock *)self->_cacheLock unlock];
  v4 = VOTLogElement();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10013097C(v3);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained elementsRetrieved:v3 finished:!self->_retrievingAllElements];
}

- (void)_retrieveElementsWithElement:(id)element groupNavigationStyle:(id)style
{
  elementCopy = element;
  styleCopy = style;
  if (!self->_retrievingAllElements)
  {
    goto LABEL_49;
  }

  v8 = [(NSMutableArray *)self->_elementCache count];
  self->_retrievingAllElements = 1;
  self->_cacheSize = 1000;
  if (v8)
  {
    v9 = [(NSMutableArray *)self->_elementCache objectAtIndex:0];
    lastObject = [(NSMutableArray *)self->_elementCache lastObject];
  }

  else
  {
    opaqueParent = [elementCopy opaqueParent];
    v12 = opaqueParent;
    if (opaqueParent)
    {
      v13 = opaqueParent;

      elementCopy = v13;
    }

    lastObject = elementCopy;
    if (lastObject)
    {
      [(NSMutableArray *)self->_elementCache addObject:lastObject];
    }

    v9 = lastObject;
    elementCopy = lastObject;
  }

  v14 = VOTLogElement();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_1001309FC();
  }

  v15 = +[NSNull null];

  v16 = 1;
  if (lastObject != v15)
  {
    v17 = [lastObject elementsInDirection:1 withCount:300];
    if (v17)
    {
      [(NSLock *)self->_cacheLock lock];
      [(NSMutableArray *)self->_elementCache addObjectsFromArray:v17];
      v18 = [v17 count];
      v16 = v18 < 0x12C;
      if (v18 <= 0x12B)
      {
        elementCache = self->_elementCache;
        v20 = +[NSNull null];
        [(NSMutableArray *)elementCache addObject:v20];
      }

      [(NSLock *)self->_cacheLock unlock];
    }

    v21 = VOTLogElement();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      sub_100130A68(v17);
    }

    [(VOTElementFetcher *)self _informDelegateOfRetrieveElements];
  }

  v22 = +[NSNull null];

  v43 = elementCopy;
  v42 = v9;
  if (v9 == v22)
  {
    if (v16)
    {
LABEL_30:
      self->_retrievingAllElements = 0;
      goto LABEL_31;
    }
  }

  else
  {
    v23 = [v9 elementsInDirection:2 withCount:300];
    if (v23)
    {
      v24 = v23;
      [(NSLock *)self->_cacheLock lock];
      v25 = self->_elementCache;
      reverseObjectEnumerator = [v24 reverseObjectEnumerator];
      allObjects = [reverseObjectEnumerator allObjects];
      v28 = +[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", 0, [v24 count]);
      [(NSMutableArray *)v25 insertObjects:allObjects atIndexes:v28];

      if ([v24 count] > 0x12B)
      {
        LOBYTE(v16) = 0;
      }

      else
      {
        v29 = self->_elementCache;
        v30 = +[NSNull null];
        [(NSMutableArray *)v29 insertObject:v30 atIndex:0];
      }

      v31 = VOTLogElement();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        sub_100130AEC(v24);
      }

      [(NSLock *)self->_cacheLock unlock];
    }

    if (v16)
    {
      goto LABEL_30;
    }
  }

  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_1000F78E4;
  v48[3] = &unk_1001C7778;
  v48[4] = self;
  v49 = styleCopy;
  [(VOTElementFetcher *)self performAsyncBlock:v48 forThreadKey:self->_fillerThreadKey];

LABEL_31:
  [(NSLock *)self->_cacheLock lock];
  v32 = [(NSMutableArray *)self->_elementCache mutableCopy];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v33 = v32;
  v34 = [v33 countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v45;
    do
    {
      for (i = 0; i != v35; i = i + 1)
      {
        if (*v45 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = *(*(&v44 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v38 isAccessibilityOpaqueElementProvider] && (!styleCopy || (objc_msgSend(v38, "isAccessibleGroup") & 1) == 0))
        {
          visibleOpaqueElements = [v38 visibleOpaqueElements];
          if ([visibleOpaqueElements count])
          {
            v40 = [(NSMutableArray *)self->_elementCache indexOfObject:v38];
            if (v40 != 0x7FFFFFFFFFFFFFFFLL)
            {
              [(NSMutableArray *)self->_elementCache replaceObjectsInRange:v40 withObjectsFromArray:1, visibleOpaqueElements];
            }
          }
        }
      }

      v35 = [v33 countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v35);
  }

  [(NSLock *)self->_cacheLock unlock];
  v41 = VOTLogElement();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
  {
    sub_100130B70();
  }

  [(VOTElementFetcher *)self _informDelegateOfRetrieveElements];
  elementCopy = v43;
LABEL_49:
}

- (void)retrieveElementsWithElement:(id)element groupNavigationStyle:(BOOL)style
{
  if (!self->_retrievingAllElements)
  {
    styleCopy = style;
    self->_retrievingAllElements = 1;
    elementCopy = element;
    [(VOTElementFetcher *)self _informDelegateOfRetrieveElements];
    fillerThread = self->_fillerThread;
    v9 = [NSNumber numberWithBool:styleCopy];
    [(SCRCThread *)fillerThread performSelector:"_retrieveElementsWithElement:groupNavigationStyle:" onTarget:self cancelMask:1 count:2 objects:elementCopy, v9];
  }
}

- (id)_debugElementCache
{
  [(NSLock *)self->_cacheLock lock];
  v3 = [(NSMutableArray *)self->_elementCache copy];
  [(NSLock *)self->_cacheLock unlock];

  return v3;
}

- (void)fillCacheWithElements:(id)elements
{
  cacheLock = self->_cacheLock;
  elementsCopy = elements;
  [(NSLock *)cacheLock lock];
  [(NSMutableArray *)self->_elementCache removeAllObjects];
  elementCache = self->_elementCache;
  v7 = +[NSNull null];
  [(NSMutableArray *)elementCache addObject:v7];

  [(NSMutableArray *)self->_elementCache addObjectsFromArray:elementsCopy];
  v8 = self->_elementCache;
  v9 = +[NSNull null];
  [(NSMutableArray *)v8 addObject:v9];

  [(NSLock *)self->_cacheLock unlock];

  [(VOTElementFetcher *)self setShouldPerformSearchSynchronously:1];
}

- (VOTElementFetchDelegateProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end