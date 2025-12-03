@interface TUIFeedLayoutController
- (BOOL)_lq_shouldInstantiateEntry:(id)entry sectionIndex:(unint64_t)index transactionGroup:(id)group;
- (BOOL)_lq_shouldSubmitRenderModelUpdate:(BOOL)update transactionGroup:(id)group;
- (BOOL)lq_updateHostingGeometryMap:(id)map;
- (TUIActionHandlerDelegate)actionHandlerDelegate;
- (TUIFeedLayoutController)initWithFeedId:(id)id environment:(id)environment factory:(id)factory manager:(id)manager renderMode:(unint64_t)mode;
- (TUIFeedLayoutControllerDelegate)delegate;
- (TUITransactionDependencyToken)lastContentTransactionToken;
- (TUITransactionDependencyToken)lastEnvironmentTransactionToken;
- (id)_infoForFinal:(BOOL)final;
- (id)instantiateContext:(id)context serviceConformingToProtocol:(id)protocol;
- (id)lq_createRenderModelForFeedEntry:(id)entry section:(int64_t)section;
- (id)lq_loadFeedEntry:(id)entry data:(id)data section:(int64_t)section transactionGroup:(id)group;
- (void)_cancelDataRequests;
- (void)_lq_scheduleLayoutRemainder;
- (void)_updateAfterLayoutConditionSuspendingUpdatesInvalidated;
- (void)beginLiveResize;
- (void)captureWithController:(id)controller completion:(id)completion;
- (void)collectStatsWithCompletion:(id)completion;
- (void)dumpLayoutTreeForEntry:(id)entry completion:(id)completion;
- (void)dumpModelTreeForEntry:(id)entry completion:(id)completion;
- (void)endLiveResize;
- (void)layoutIfNeededWithTransaction:(id)transaction;
- (void)lq_updateAXModelTreeWithTransactionGroup:(id)group;
- (void)lq_updateContent:(id)content contentUpdateDate:(id)date transaction:(id)transaction transactionGroup:(id)group;
- (void)lq_updateRenderModelsWithTransactionGroup:(id)group;
- (void)resumeAndRebuildWithEnvironment:(id)environment state:(id)state transaction:(id)transaction;
- (void)setDelegate:(id)delegate;
- (void)setLayoutState:(unint64_t)state;
- (void)setPriority:(float)priority;
- (void)setStatsMode:(unint64_t)mode;
- (void)statRecordInitialResourcesRenderedDate;
- (void)statRecordResourcesLoadedDate;
- (void)statRecordResourcesStartLoadingDate;
- (void)statRecordViewWillAppear;
- (void)suspendAndTeardownWithTransaction:(id)transaction;
- (void)suspendLayoutsUntilMeetingLayoutCondition:(id)condition;
- (void)suspendUpdatesUntilMeetingLayoutCondition:(id)condition;
- (void)transactionCoordinator:(id)coordinator applyUpdatesFromTransactionGroup:(id)group;
- (void)transactionCoordinator:(id)coordinator timeoutForSynchronousTransactionGroup:(id)group;
- (void)transactionCoordinator:(id)coordinator updateWithTransactionGroup:(id)group;
- (void)updateDatesCollectorWithBlock:(id)block;
- (void)updateHostingGeometryMap:(id)map withTransaction:(id)transaction;
- (void)updateWithContent:(id)content layoutUpToEntry:(id)entry environment:(id)environment transaction:(id)transaction;
- (void)updateWithContent:(id)content transaction:(id)transaction;
- (void)updateWithEnvironment:(id)environment state:(id)state withTransaction:(id)transaction;
@end

@implementation TUIFeedLayoutController

- (TUIFeedLayoutController)initWithFeedId:(id)id environment:(id)environment factory:(id)factory manager:(id)manager renderMode:(unint64_t)mode
{
  environmentCopy = environment;
  factoryCopy = factory;
  managerCopy = manager;
  v48.receiver = self;
  v48.super_class = TUIFeedLayoutController;
  v16 = [(TUIFeedLayoutController *)&v48 init];
  v17 = v16;
  if (v16)
  {
    v16->_feedId.uniqueIdentifier = id.var0;
    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_attr_make_with_qos_class(v18, QOS_CLASS_USER_INITIATED, 0);

    v17->_priority = 0.5;
    v20 = objc_alloc_init(TUIWorkQueueContext);
    queueContext = v17->_queueContext;
    v17->_queueContext = v20;

    v22 = dispatch_queue_create("TUIFeedLayoutController.dataRequestsSync", v19);
    dataRequestsSync = v17->_dataRequestsSync;
    v17->_dataRequestsSync = v22;

    objc_storeStrong(&v17->_environment, environment);
    objc_storeStrong(&v17->_manager, manager);
    objc_storeStrong(&v17->_templateFactory, factory);
    v24 = objc_opt_new();
    sections = v17->_sections;
    v17->_sections = v24;

    v26 = [[TUITransactionCoordinator alloc] initWithFeedId:v17->_feedId.uniqueIdentifier layoutQueueContext:v17->_queueContext delegate:v17];
    transactionCoordinator = v17->_transactionCoordinator;
    v17->_transactionCoordinator = v26;

    v17->_loadingFooterHeight = 60.0;
    v28 = objc_alloc_init(TUIWPService);
    wpService = v17->_wpService;
    v17->_wpService = v28;

    v30 = objc_alloc_init(TUIStatsDatesCollector);
    datesCollector = v17->_datesCollector;
    v17->_datesCollector = v30;

    v32 = +[NSDate date];
    [(TUIStatsDatesCollector *)v17->_datesCollector setCreationDate:v32];

    v17->_layoutState = 0;
    v17->_layoutConditionsLock._os_unfair_lock_opaque = 0;
    v33 = [NSHashTable hashTableWithOptions:517];
    layoutConditionsSuspendingUpdates = v17->_layoutConditionsSuspendingUpdates;
    v17->_layoutConditionsSuspendingUpdates = v33;

    v35 = [NSHashTable hashTableWithOptions:517];
    layoutConditionsSuspendingLayout = v17->_layoutConditionsSuspendingLayout;
    v17->_layoutConditionsSuspendingLayout = v35;

    v17->_renderModelMode = mode;
    v17->_environmentLock._os_unfair_lock_opaque = 0;
    environmentPendingUpdate = v17->_environmentPendingUpdate;
    v17->_environmentPendingUpdate = 0;

    *&v17->_flags = 1;
    renderModelMode = v17->_renderModelMode;
    if (renderModelMode == 1)
    {
      v43 = off_25CD10;
      v44 = 120;
    }

    else
    {
      if (renderModelMode)
      {
LABEL_7:

        goto LABEL_8;
      }

      v39 = [TUIRenderUpdateCollectionController alloc];
      workQueue = [(TUIWorkQueueContext *)v17->_queueContext workQueue];
      v41 = [(TUIRenderUpdateCollectionController *)v39 initWithLayoutQueue:workQueue renderModel:0];
      updateController = v17->_updateController;
      v17->_updateController = v41;

      v43 = off_25CD08;
      v44 = 112;
    }

    v45 = objc_alloc_init(*v43);
    v46 = *(&v17->super.isa + v44);
    *(&v17->super.isa + v44) = v45;

    goto LABEL_7;
  }

LABEL_8:

  return v17;
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    *&self->_delegateFlags = *&self->_delegateFlags & 0xFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xFD | v5;
    if (objc_opt_respondsToSelector())
    {
      v6 = 4;
    }

    else
    {
      v6 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xFB | v6;
    if (objc_opt_respondsToSelector())
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xF7 | v7;
    if (objc_opt_respondsToSelector())
    {
      v8 = 16;
    }

    else
    {
      v8 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xEF | v8;
  }
}

- (id)lq_createRenderModelForFeedEntry:(id)entry section:(int64_t)section
{
  entryCopy = entry;
  v7 = [[_TUIFeedLayoutSection alloc] initWithFeedId:self->_feedId.uniqueIdentifier section:section controller:self entry:entryCopy];

  [(_TUIFeedLayoutSection *)v7 setStatsMode:self->_lq_statsMode];
  sections = self->_sections;
  v9 = [NSNumber numberWithInteger:section];
  [(NSMutableDictionary *)sections setObject:v7 forKey:v9];

  renderModel = [(_TUIFeedLayoutSection *)v7 renderModel];

  return renderModel;
}

- (id)lq_loadFeedEntry:(id)entry data:(id)data section:(int64_t)section transactionGroup:(id)group
{
  sections = self->_sections;
  groupCopy = group;
  dataCopy = data;
  entryCopy = entry;
  v14 = [NSNumber numberWithInteger:section];
  v15 = [(NSMutableDictionary *)sections objectForKeyedSubscript:v14];

  [v15 lq_loadOrUpdateEntry:entryCopy data:dataCopy controller:self transactionGroup:groupCopy];
  renderModel = [v15 renderModel];

  return renderModel;
}

- (id)_infoForFinal:(BOOL)final
{
  if (final)
  {
    v5 = @"TUIRenderInfoKeyIsFinal";
    v6 = &__kCFBooleanTrue;
    v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)lq_updateRenderModelsWithTransactionGroup:(id)group
{
  groupCopy = group;
  kdebug_trace();
  v4 = TUILayoutLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    uniqueIdentifier = self->_feedId.uniqueIdentifier;
    *buf = 134218242;
    *&buf[4] = uniqueIdentifier;
    *&buf[12] = 2112;
    *&buf[14] = groupCopy;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "[fid:%lu] Ariadne FeedLayoutStart group=%@", buf, 0x16u);
  }

  v324 = +[NSDate date];
  if (self->_inLiveResize)
  {
    ++self->_liveResizeLayoutCount;
  }

  v6 = TUIInstantiationLog();
  self->_frameSignpost = os_signpost_id_generate(v6);

  v7 = TUIInstantiationLog();
  v8 = v7;
  frameSignpost = self->_frameSignpost;
  if (frameSignpost - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = self->_feedId.uniqueIdentifier;
    *buf = 134217984;
    *&buf[4] = v10;
    _os_signpost_emit_with_name_impl(&dword_0, v8, OS_SIGNPOST_INTERVAL_BEGIN, frameSignpost, "Instantiation", "[fid:%lu] ", buf, 0xCu);
  }

  selfCopy2 = self;
  statsLiveResize = self->_statsLiveResize;
  if (statsLiveResize)
  {
    [(TUIStatsLiveResize *)statsLiveResize beginFrame];
    [(NSMutableDictionary *)self->_sections enumerateKeysAndObjectsUsingBlock:&stru_260F60];
    selfCopy2 = self;
  }

  [(TUIStatsTimingCollector *)selfCopy2->_timingCollector startPhase:0];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v407 = sub_C13B4;
  v408 = sub_C13C4;
  v409 = self->_currentRenderModel;
  v391 = 0;
  v392 = &v391;
  v393 = 0x3032000000;
  v394 = sub_C13B4;
  v395 = sub_C13C4;
  sections = [*(*&buf[8] + 40) sections];
  v14 = sections;
  v15 = &__NSArray0__struct;
  if (sections)
  {
    v15 = sections;
  }

  v396 = v15;

  layoutNextSection = self->_layoutNextSection;
  if (layoutNextSection < [v392[5] count])
  {
    v17 = [v392[5] subarrayWithRange:{0, self->_layoutNextSection}];
    v18 = v392[5];
    v392[5] = v17;
  }

  if (self->_layoutUntilEntryWithUUID)
  {
    entries = [(TUIFeedContent *)self->_content entries];
    v390[0] = _NSConcreteStackBlock;
    v390[1] = 3221225472;
    v390[2] = sub_C13CC;
    v390[3] = &unk_260F88;
    v390[4] = self;
    v20 = [entries indexOfObjectPassingTest:v390];

    v21 = 0x7FFFFFFFFFFFFFFFLL;
    if (v20 != 0x7FFFFFFFFFFFFFFFLL)
    {
      entries2 = [(TUIFeedContent *)self->_content entries];
      v23 = v20 + 1 == [entries2 count];

      if (v23)
      {
        v21 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = v20;
      }
    }
  }

  else
  {
    v21 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v25 = self->_layoutNextSection;
  layoutNumberOfSections = self->_layoutNumberOfSections;
  v331 = v25 < layoutNumberOfSections;
  if (v25 >= layoutNumberOfSections)
  {
LABEL_35:
    v325 = 0;
  }

  else
  {
    v26 = 0;
    selfCopy4 = self;
    while (1)
    {
      sections = selfCopy4->_sections;
      v29 = [NSNumber numberWithUnsignedInteger:v25];
      v30 = [(NSMutableDictionary *)sections objectForKeyedSubscript:v29];

      if (([v30 needsInstantiation] & 1) == 0 || (v25 > v21 ? (v31 = v21 != 0x7FFFFFFFFFFFFFFFLL) : (v31 = 0), v31 || (v21 == 0x7FFFFFFFFFFFFFFFLL || v25 > v21) && (objc_msgSend(v30, "entry"), v32 = objc_claimAutoreleasedReturnValue(), v33 = -[TUIFeedLayoutController _lq_shouldInstantiateEntry:sectionIndex:transactionGroup:](self, "_lq_shouldInstantiateEntry:sectionIndex:transactionGroup:", v32, v25, groupCopy), v32, !v33)))
      {
        v325 = 0;
        goto LABEL_38;
      }

      v34 = objc_autoreleasePoolPush();
      [v30 lq_instantiateWithController:self transactionGroup:groupCopy];
      objc_autoreleasePoolPop(v34);
      if (v21 == v25)
      {
        break;
      }

      renderModel = [v30 renderModel];
      if (renderModel)
      {

        v36 = 1;
      }

      else
      {
        layerRenderModel = [v30 layerRenderModel];
        v36 = layerRenderModel != 0;

        if (!v36)
        {
          goto LABEL_35;
        }
      }

      v25 += v36;
      selfCopy4 = self;
      v26 = 1;
      if (v25 >= self->_layoutNumberOfSections)
      {
        goto LABEL_35;
      }
    }

    v325 = 1;
    v26 = 1;
LABEL_38:

    v331 = v26;
  }

  v38 = TUIInstantiationLog();
  v39 = v38;
  v40 = self->_frameSignpost;
  if (v40 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
  {
    v41 = self->_feedId.uniqueIdentifier;
    LODWORD(v401) = 134217984;
    *(&v401 + 4) = v41;
    _os_signpost_emit_with_name_impl(&dword_0, v39, OS_SIGNPOST_INTERVAL_END, v40, "Instantiation", "[fid:%lu] ", &v401, 0xCu);
  }

  v42 = TUIInstantiationLog();
  v43 = v42;
  v44 = self->_frameSignpost;
  if (v44 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v42))
  {
    v45 = self->_feedId.uniqueIdentifier;
    LODWORD(v401) = 134217984;
    *(&v401 + 4) = v45;
    _os_signpost_emit_with_name_impl(&dword_0, v43, OS_SIGNPOST_INTERVAL_BEGIN, v44, "Layout", "[fid:%lu] ", &v401, 0xCu);
  }

  lastObject = [v392[5] lastObject];
  *&v401 = 0;
  *(&v401 + 1) = &v401;
  v402 = 0x3010000000;
  v404 = 0;
  v405 = 0.0;
  v403 = "";
  [(TUIEnvironment *)self->_environment viewSize];
  v47 = v46;
  if (lastObject)
  {
    [lastObject frame];
    MaxY = CGRectGetMaxY(v410);
  }

  else
  {
    MaxY = 0.0;
  }

  v404 = v47;
  v405 = MaxY;
  v384 = 0;
  v385 = &v384;
  v386 = 0x3032000000;
  v387 = sub_C13B4;
  v388 = sub_C13C4;
  v389 = 0;
  v380 = 0;
  v381 = &v380;
  v382 = 0x2020000000;
  v383 = 0;
  v49 = objc_opt_class();
  currentStackName = [(TUIFeedContent *)self->_content currentStackName];
  value = [currentStackName value];
  v327 = TUIDynamicCast(v49, value);

  selfCopy10 = self;
  if (!self->_environmentChanged || (layoutViewState = self->_layoutViewState) == 0 || !self->_prevEnvironment)
  {
    v338 = 0x7FFFFFFFFFFFFFFFLL;
    obj = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_58;
  }

  feedScrollAnchor = [(TUIFeedViewState *)layoutViewState feedScrollAnchor];
  anchor = [feedScrollAnchor anchor];
  identifier = [anchor identifier];

  if (!identifier)
  {
LABEL_120:
    v338 = 0x7FFFFFFFFFFFFFFFLL;
    obj = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_251;
  }

  entries3 = [(TUIFeedContent *)self->_content entries];
  v58 = [entries3 valueForKey:@"uuid"];
  v59 = [v58 indexOfObject:identifier];

  obj = 0x7FFFFFFFFFFFFFFFLL;
  v338 = 0x7FFFFFFFFFFFFFFFLL;
  if (v59 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v59 < self->_layoutNextSection)
    {
      v60 = self->_sections;
      v61 = [NSNumber numberWithUnsignedInteger:v59];
      v62 = [(NSMutableDictionary *)v60 objectForKeyedSubscript:v61];

      renderModel2 = [v62 renderModel];
      [renderModel2 size];
      v65 = v64;

      [(TUIEnvironment *)self->_prevEnvironment viewSize];
      v67 = v66;
      anchor2 = [feedScrollAnchor anchor];
      position = [anchor2 position];

      if (position == &dword_0 + 1)
      {
        v70 = v67 - v65;
        selfCopy9 = self;
      }

      else
      {
        v70 = 0.0;
        selfCopy9 = self;
        if (position == &dword_0 + 2)
        {
          v70 = (v67 - v65) * 0.5;
        }
      }

      [feedScrollAnchor relativeDistance];
      v303 = v70 + v67 * 0.5 * v302;
      if (v59)
      {
        obj = v59;
        if (v303 > 0.0)
        {
          v304 = v59 - 1;
          v305 = v70 + v67 * 0.5 * v302;
          do
          {
            v306 = selfCopy9->_sections;
            v307 = [NSNumber numberWithUnsignedInteger:v304];
            v308 = [(NSMutableDictionary *)v306 objectForKeyedSubscript:v307];
            renderModel3 = [v308 renderModel];
            [renderModel3 size];
            v311 = v310;

            v199 = v304-- != 0;
            selfCopy9 = self;
            if (!v199)
            {
              break;
            }

            v305 = v305 - v311;
          }

          while (v305 > 0.0);
          obj = (v304 + 1);
        }
      }

      else
      {
        obj = 0;
      }

      v312 = v59 + 1;
      if ((v59 + 1) < selfCopy9->_layoutNextSection)
      {
        v313 = v67 - (v65 + v303);
        if (v313 > 0.0)
        {
          do
          {
            if (v312 >= selfCopy9->_layoutNextSection)
            {
              break;
            }

            v314 = selfCopy9->_sections;
            v315 = [NSNumber numberWithUnsignedInteger:v312];
            v316 = [(NSMutableDictionary *)v314 objectForKeyedSubscript:v315];
            renderModel4 = [v316 renderModel];
            [renderModel4 size];
            v319 = v318;

            v313 = v313 - v319;
            ++v312;
            selfCopy9 = self;
          }

          while (v313 > 0.0);
          v59 = v312 - 1;
        }
      }

      v338 = v59;
      goto LABEL_251;
    }

    goto LABEL_120;
  }

LABEL_251:

  selfCopy10 = self;
LABEL_58:
  prevEnvironment = selfCopy10->_prevEnvironment;
  selfCopy10->_prevEnvironment = 0;

  selfCopy14 = self;
  if (self->_environmentChanged)
  {
    [(TUIEnvironment *)self->_environment viewSize];
    v74 = *(&v401 + 1);
    *(*(&v401 + 1) + 32) = v75;
    *(v74 + 40) = 0;
    [(TUIEnvironment *)self->_environment viewSize];
    self->_loadingFooterMinY = v76 * 0.5;
    if (self->_currentRenderModel)
    {
      v77 = 0;
    }

    else
    {
      v77 = objc_opt_new();

      selfCopy14 = self;
    }

    if (selfCopy14->_layoutNextSection)
    {
      selfCopy13 = selfCopy14;
      v79 = 0;
      do
      {
        v80 = selfCopy13->_sections;
        v81 = [NSNumber numberWithUnsignedInteger:v79];
        v82 = [(NSMutableDictionary *)v80 objectForKeyedSubscript:v81];

        [v82 setEnvironmentNeedsUpdate:1];
        [(TUIEnvironment *)self->_environment viewSize];
        v84 = v83;
        renderModel5 = [v82 renderModel];
        [renderModel5 size];
        [v82 lq_createEmptyRenderModelWithSize:v84];

        v86 = v385[5];
        if (!v86)
        {
          v87 = objc_opt_new();
          v88 = v385[5];
          v385[5] = v87;

          v86 = v385[5];
        }

        [v86 addIndex:v79];
        renderModel6 = [v82 renderModel];
        [v77 addObject:renderModel6];

        ++v79;
        selfCopy13 = self;
      }

      while (v79 < self->_layoutNextSection);
    }

    if (v77)
    {
      v90 = [v77 copy];
      v91 = v392[5];
      v392[5] = v90;
    }

    selfCopy14 = self;
  }

  v375[0] = _NSConcreteStackBlock;
  v375[1] = 3221225472;
  v375[2] = sub_C1414;
  v375[3] = &unk_260FB0;
  v375[4] = selfCopy14;
  v342 = groupCopy;
  v376 = v342;
  v347 = v327;
  v377 = v347;
  v378 = &v380;
  v379 = &v384;
  v333 = objc_retainBlock(v375);
  selfCopy28 = self;
  layoutFlags = self->_layoutFlags;
  self->_layoutFlags = 0;
  v93 = self->_layoutViewState;
  if (!v93)
  {
    goto LABEL_82;
  }

  feedScrollAnchor2 = [(TUIFeedViewState *)v93 feedScrollAnchor];
  anchor3 = [feedScrollAnchor2 anchor];
  identifier2 = [anchor3 identifier];

  if (identifier2)
  {
    entries4 = [(TUIFeedContent *)self->_content entries];
    v98 = [entries4 valueForKey:@"uuid"];
    v99 = [v98 indexOfObject:identifier2];

    if (v99 != 0x7FFFFFFFFFFFFFFFLL && v99 < self->_layoutNextSection)
    {
      (v333[2])(v333, v99);
      v100 = self->_sections;
      v101 = [NSNumber numberWithUnsignedInteger:v99];
      v336 = [(NSMutableDictionary *)v100 objectForKeyedSubscript:v101];

      renderModel7 = [v336 renderModel];
      [renderModel7 size];
      v104 = v103;

      [(TUIEnvironment *)self->_environment viewSize];
      v106 = v105;
      anchor4 = [feedScrollAnchor2 anchor];
      position2 = [anchor4 position];

      if (position2 == &dword_0 + 1)
      {
        v109 = v106 - v104;
      }

      else
      {
        v109 = 0.0;
        if (position2 == &dword_0 + 2)
        {
          v109 = (v106 - v104) * 0.5;
        }
      }

      [feedScrollAnchor2 relativeDistance];
      v183 = v182;
      options = [v342 options];
      timingProvider = [options timingProvider];

      v186 = v109 + v106 * 0.5 * v183;
      if (timingProvider)
      {
        v187 = v106 - (v104 + v186) + v106 * 0.5;
      }

      else
      {
        v187 = v106 - (v104 + v186);
      }

      if (v99)
      {
        if (timingProvider)
        {
          v188 = v186 + v106 * 0.5;
        }

        else
        {
          v188 = v186;
        }

        v189 = v99;
        do
        {
          v191 = (obj == 0x7FFFFFFFFFFFFFFFLL || obj > v189) && v188 <= 0.0;
          if (v191)
          {
            break;
          }

          (v333[2])(v333, --v189);
          v192 = self->_sections;
          v193 = [NSNumber numberWithUnsignedInteger:v189];
          v194 = [(NSMutableDictionary *)v192 objectForKeyedSubscript:v193];
          renderModel8 = [v194 renderModel];
          [renderModel8 size];
          v197 = v196;

          v188 = v188 - v197;
        }

        while (v189);
      }

      else
      {
        v191 = 0;
      }

      v198 = (v99 + 1);
      if (v198 >= self->_layoutNextSection)
      {
        if (!v191)
        {
LABEL_173:

          v110 = 0;
          goto LABEL_78;
        }
      }

      else
      {
        do
        {
          v199 = v338 != 0x7FFFFFFFFFFFFFFFLL && v338 >= v198;
          v200 = !v199 && v187 <= 0.0;
          if (v200)
          {
            break;
          }

          (v333[2])(v333, v198);
          v201 = self->_sections;
          v202 = [NSNumber numberWithUnsignedInteger:v198];
          v203 = [(NSMutableDictionary *)v201 objectForKeyedSubscript:v202];
          renderModel9 = [v203 renderModel];
          [renderModel9 size];
          v206 = v205;

          v187 = v187 - v206;
          ++v198;
        }

        while (v198 < self->_layoutNextSection);
        if (!v191 && !v200)
        {
          goto LABEL_173;
        }
      }

      if (self->_inLiveResize)
      {
        self->_needsLayoutAfterLiveResize = 1;
      }

      else
      {
        v374[0] = _NSConcreteStackBlock;
        v374[1] = 3221225472;
        v374[2] = sub_C15B4;
        v374[3] = &unk_25DE30;
        v374[4] = self;
        [v342 addCompletion:v374];
      }

      goto LABEL_173;
    }
  }

  v110 = 1;
LABEL_78:
  if (!self->_needsLayoutAfterLiveResize)
  {
    v111 = self->_layoutViewState;
    self->_layoutViewState = 0;
  }

  layoutFlags |= 1uLL;
  if (!v110)
  {
    v339 = 0;
    v334 = 0;
    goto LABEL_96;
  }

  selfCopy28 = self;
LABEL_82:
  if (!selfCopy28->_layoutNumberOfSections)
  {
    v334 = 0;
    v339 = 1;
    goto LABEL_97;
  }

  v112 = 0;
  selfCopy17 = selfCopy28;
  v114 = 0.0;
  while (1)
  {
    v115 = selfCopy17->_sections;
    v116 = [NSNumber numberWithUnsignedInteger:v112];
    v117 = [(NSMutableDictionary *)v115 objectForKeyedSubscript:v116];

    renderModel10 = [v117 renderModel];
    v334 = renderModel10 != 0;

    if (!v334)
    {
      break;
    }

    if (!self->_layoutUntilEntryWithUUID && (*&self->_flags & 1) != 0)
    {
      [(TUIEnvironment *)self->_environment viewSize];
      if (v114 > v119 || v112 > [(TUIFeedContent *)self->_content initialContentReadyEntryIndex])
      {
        break;
      }
    }

    (v333[2])(v333, v112);
    renderModel11 = [v117 renderModel];
    [renderModel11 size];
    v122 = v121;

    entry = [v117 entry];
    stackNames = [entry stackNames];
    v125 = [stackNames containsObject:v347];

    if (!v125)
    {
      v122 = 0.0;
    }

    v114 = v114 + v122;
    ++v112;
    selfCopy17 = self;
    if (v112 >= self->_layoutNumberOfSections)
    {
      v334 = 0;
      v339 = 1;
      selfCopy28 = self;
      goto LABEL_97;
    }
  }

  v339 = 1;
LABEL_96:
  selfCopy28 = self;
LABEL_97:
  if (*(v381 + 24) == 1)
  {
    date = [v342 date];
    [(TUIStatsDatesCollector *)selfCopy28->_datesCollector setDynamicUpdateDate:date];

    selfCopy28 = self;
  }

  if (v385[5])
  {
    v127 = objc_opt_new();
    v372 = 0u;
    v373 = 0u;
    v370 = 0u;
    v371 = 0u;
    obja = v392[5];
    v128 = [obja countByEnumeratingWithState:&v370 objects:v400 count:16];
    if (v128)
    {
      v129 = *v371;
      v130 = 0.0;
      do
      {
        for (i = 0; i != v128; i = i + 1)
        {
          if (*v371 != v129)
          {
            objc_enumerationMutation(obja);
          }

          v132 = *(*(&v370 + 1) + 8 * i);
          section = [v132 section];
          v134 = self->_sections;
          v135 = [NSNumber numberWithUnsignedInteger:section];
          v136 = [(NSMutableDictionary *)v134 objectForKeyedSubscript:v135];

          if ([v385[5] containsIndex:section])
          {
            renderModel12 = [v136 renderModel];
          }

          else
          {
            renderModel12 = v132;
          }

          [renderModel12 size];
          v139 = v138;
          v141 = v140;
          entry2 = [v136 entry];
          stackNames2 = [entry2 stackNames];
          v144 = [stackNames2 containsObject:v347];

          if (!v144)
          {
            v141 = 0.0;
          }

          section2 = [renderModel12 section];
          uUID = [v132 UUID];
          v147 = [renderModel12 copyWithSection:section2 offset:uUID size:0.0 uuid:{v130, v139, v141}];

          [v147 frame];
          Height = CGRectGetHeight(v411);
          [v127 addObject:v147];

          v130 = v130 + Height;
        }

        v128 = [obja countByEnumeratingWithState:&v370 objects:v400 count:16];
      }

      while (v128);
    }

    else
    {
      v130 = 0.0;
    }

    *(*(&v401 + 1) + 40) = v130;
    v149 = [v127 copy];
    v150 = v392[5];
    v392[5] = v149;

    selfCopy28 = self;
  }

  if (!v339)
  {
    goto LABEL_135;
  }

  v151 = selfCopy28->_layoutNextSection;
  if (!selfCopy28->_layoutUntilEntryWithUUID || !v151)
  {
LABEL_122:
    if (v151 < selfCopy28->_layoutNumberOfSections)
    {
      v159 = 0;
      while (1)
      {
        v160 = selfCopy28->_sections;
        v161 = [NSNumber numberWithUnsignedInteger:?];
        v158 = [(NSMutableDictionary *)v160 objectForKeyedSubscript:v161];

        renderModel13 = [v158 renderModel];

        if (!renderModel13)
        {
          renderModel13 = 0;
          goto LABEL_175;
        }

        selfCopy23 = self;
        if (!self->_layoutUntilEntryWithUUID && (*&self->_flags & 1) != 0)
        {
          v163 = *(*(&v401 + 1) + 40);
          [(TUIEnvironment *)self->_environment viewSize];
          if (v163 > v164)
          {
            break;
          }

          v165 = self->_layoutNextSection;
          initialContentReadyEntryIndex = [(TUIFeedContent *)self->_content initialContentReadyEntryIndex];
          selfCopy23 = self;
          if (v165 > initialContentReadyEntryIndex)
          {
            break;
          }
        }

        ++selfCopy23->_layoutNextSection;
        [renderModel13 size];
        v168 = v167;
        v170 = v169;
        entry3 = [v158 entry];
        stackNames3 = [entry3 stackNames];
        v173 = [stackNames3 containsObject:v347];

        if (!v173)
        {
          v170 = 0.0;
        }

        section3 = [renderModel13 section];
        v175 = *(*(&v401 + 1) + 40);
        uUID2 = [renderModel13 UUID];
        v159 = [renderModel13 copyWithSection:section3 offset:uUID2 size:0.0 uuid:{v175, v168, v170}];

        [v159 frame];
        *(*(&v401 + 1) + 40) = CGRectGetHeight(v412) + *(*(&v401 + 1) + 40);
        v177 = [v392[5] arrayByAddingObject:v159];
        v178 = v392[5];
        v392[5] = v177;

        if (self->_layoutUntilEntryWithUUID)
        {
          uUID3 = [v159 UUID];
          v180 = [uUID3 isEqual:self->_layoutUntilEntryWithUUID];

          if (v180)
          {
            layoutUntilEntryWithUUID = self->_layoutUntilEntryWithUUID;
            self->_layoutUntilEntryWithUUID = 0;

            v325 = 1;
            v331 = 1;
            renderModel13 = v159;
            goto LABEL_175;
          }
        }

        selfCopy28 = self;
        v331 = 1;
        if (self->_layoutNextSection >= self->_layoutNumberOfSections)
        {
          renderModel13 = v159;
          goto LABEL_176;
        }
      }

      v334 = 1;
      goto LABEL_175;
    }

LABEL_135:
    renderModel13 = 0;
    goto LABEL_176;
  }

  v152 = selfCopy28->_sections;
  v153 = [NSNumber numberWithUnsignedInteger:v151 - 1];
  v154 = [(NSMutableDictionary *)v152 objectForKeyedSubscript:v153];
  renderModel14 = [v154 renderModel];
  uUID4 = [renderModel14 UUID];
  v157 = [uUID4 isEqual:selfCopy28->_layoutUntilEntryWithUUID];

  if ((v157 & 1) == 0)
  {
    selfCopy28 = self;
    v151 = self->_layoutNextSection;
    goto LABEL_122;
  }

  renderModel13 = 0;
  v158 = self->_layoutUntilEntryWithUUID;
  self->_layoutUntilEntryWithUUID = 0;
  v325 = 1;
LABEL_175:

  selfCopy28 = self;
LABEL_176:
  v335 = objc_alloc_init(NSMutableArray);
  v332 = objc_alloc_init(NSMutableArray);
  v207 = [(TUIAnchorSet *)[TUIMutableAnchorSet alloc] initWithAxis:2];
  v340 = objc_opt_new();
  objb = objc_alloc_init(TUILayoutRenderModelCollector);
  if (selfCopy28->_layoutNextSection)
  {
    v208 = 0;
    do
    {
      v209 = selfCopy28->_sections;
      v210 = [NSNumber numberWithUnsignedInteger:v208];
      v211 = [(NSMutableDictionary *)v209 objectForKeyedSubscript:v210];

      renderModel15 = [v211 renderModel];
      uUID5 = [renderModel15 UUID];

      [v211 lq_appendAnchorsToSet:v207];
      renderModel16 = [v211 renderModel];
      [renderModel16 size];
      v216 = v215;

      if (!v208)
      {
        v217 = [[TUILogicalScrollAnchor alloc] initWithPosition:0 identifier:uUID5];
        [(TUIMutableAnchorSet *)v207 appendLogicalScrollAnchor:v217 withOffset:0.0];
      }

      v218 = [[TUILogicalScrollAnchor alloc] initWithPosition:2 identifier:uUID5];
      [(TUIMutableAnchorSet *)v207 appendLogicalScrollAnchor:v218 withOffset:v216 * 0.5];

      if (++v208 == self->_layoutNextSection)
      {
        v219 = [[TUILogicalScrollAnchor alloc] initWithPosition:1 identifier:uUID5];
        [(TUIMutableAnchorSet *)v207 appendLogicalScrollAnchor:v219 withOffset:v216];
      }

      [(TUIMutableAnchorSet *)v207 translationOffset];
      [(TUIMutableAnchorSet *)v207 setTranslationOffset:v216 + v220];
      [v211 lq_updateAuxiliaryLayoutWithTransactionGroup:v342];
      auxRenderModel = [v211 auxRenderModel];

      if (auxRenderModel)
      {
        auxRenderModel2 = [v211 auxRenderModel];
        [v335 addObject:auxRenderModel2];
      }

      layoutController = [v211 layoutController];
      rootLayout = [layoutController rootLayout];
      renderModel17 = [v211 renderModel];
      [renderModel17 offset];
      [rootLayout appendVisibleBoundsObservers:v340 axis:2 offset:v226];

      layoutController2 = [v211 layoutController];
      rootLayout2 = [layoutController2 rootLayout];
      entry4 = [v211 entry];
      uuid = [entry4 uuid];
      [(TUILayoutRenderModelCollector *)objb collectWithRoot:rootLayout2 options:1 entryUUID:uuid];

      selfCopy28 = self;
    }

    while (v208 < self->_layoutNextSection);
  }

  hostingCollectorFinalizeMap = [(TUILayoutRenderModelCollector *)objb hostingCollectorFinalizeMap];
  if ([(TUIHostingMap *)hostingCollectorFinalizeMap isEqualToMap:selfCopy28->_currentHostingMap])
  {
    currentHostingMap = selfCopy28->_currentHostingMap;
    v233 = hostingCollectorFinalizeMap;
    hostingCollectorFinalizeMap = currentHostingMap;

    selfCopy28 = self;
  }

  v323 = hostingCollectorFinalizeMap;
  objc_storeStrong(&selfCopy28->_currentHostingMap, hostingCollectorFinalizeMap);
  selfCopy33 = self;
  v326 = [[TUIRenderModelAuxiliary alloc] initWithModels:v335];
  if (!self->_currentAuxiliaryModel || [v335 count] && !-[TUIRenderModelAuxiliary isEqualToRenderModel:](v326, "isEqualToRenderModel:", self->_currentAuxiliaryModel))
  {
    objc_storeStrong(&self->_currentAuxiliaryModel, v326);
    selfCopy33 = self;
  }

  if (selfCopy33->_renderModelMode == 1)
  {
    if (selfCopy33->_layoutNumberOfSections)
    {
      v235 = 0;
      v330 = 0;
      v236 = 0.0;
      v320 = 134218240;
      while (1)
      {
        v237 = selfCopy33->_sections;
        v320 = [NSNumber numberWithUnsignedInteger:v235, v320];
        v239 = [(NSMutableDictionary *)v237 objectForKeyedSubscript:v320];

        layerRenderModel2 = [v239 layerRenderModel];
        v241 = layerRenderModel2 == 0;

        if (v241)
        {
          break;
        }

        [v239 lq_updateLayerLayoutWithTransactionGroup:v342];
        layerRenderModel3 = [v239 layerRenderModel];
        identifier3 = [layerRenderModel3 identifier];
        v244 = identifier3 == 0;

        if (v244)
        {
          layerRenderModel4 = [v239 layerRenderModel];
          [layerRenderModel4 setIdentifier:&off_274D08];

          v246 = TUILayoutLog();
          if (os_log_type_enabled(v246, OS_LOG_TYPE_ERROR))
          {
            v256 = self->_feedId.uniqueIdentifier;
            *v397 = v320;
            *&v397[4] = v256;
            v398 = 2048;
            v399 = v235;
            _os_log_error_impl(&dword_0, v246, OS_LOG_TYPE_ERROR, "[fid:%lu] invalid layout for render model in section: %lu during layout for feed capture!! Check <template> for multiple root elements!!", v397, 0x16u);
          }

          v330 = 1;
        }

        layerRenderModel5 = [v239 layerRenderModel];
        v248 = [[TUIRenderModelTransform alloc] initWithSubmodel:layerRenderModel5];
        [layerRenderModel5 size];
        v250 = v249;
        [layerRenderModel5 size];
        v252 = v251;
        v413.origin.x = 0.0;
        v413.origin.y = v236;
        v413.size.width = v250;
        v413.size.height = v252;
        MidX = CGRectGetMidX(v413);
        v414.origin.x = 0.0;
        v414.origin.y = v236;
        v414.size.width = v250;
        v414.size.height = v252;
        [(TUIRenderModelTransform *)v248 setCenter:MidX, CGRectGetMidY(v414)];
        [layerRenderModel5 size];
        v255 = v254;
        [v332 addObject:v248];

        v236 = v236 + v255;
        ++v235;
        selfCopy33 = self;
        if (v235 >= self->_layoutNumberOfSections)
        {
          goto LABEL_204;
        }
      }

      selfCopy33 = self;
    }

    else
    {
      v330 = 0;
    }

LABEL_204:
    lastObject2 = [v332 lastObject];
    [(TUIEnvironment *)selfCopy33->_environment viewSize];
    v259 = v258;
    if (lastObject2)
    {
      [lastObject2 frame];
      v260 = CGRectGetMaxY(v415);
    }

    else
    {
      v260 = 0.0;
    }

    v260 = [[TUIContainerLayerConfig alloc] initWithSize:v259, v260];
    v262 = [[TUIRenderModelLayer alloc] initWithSubmodels:v332 config:v260 erasableInsets:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
    [(TUIRenderModelLayer *)v262 setSize:v259, v260];
    if (!selfCopy33->_currentLayerRenderModel || [v332 count] && !-[TUIRenderModelLayer isEqualToRenderModel:](v262, "isEqualToRenderModel:", selfCopy33->_currentLayerRenderModel))
    {
      objc_storeStrong(&selfCopy33->_currentLayerRenderModel, v262);
    }

    selfCopy33 = self;
  }

  else
  {
    v330 = 0;
  }

  [(TUIEnvironment *)selfCopy33->_environment contentsScale];
  [(TUIMutableAnchorSet *)v207 finalizeWithContentsScale:?];
  v263 = [(TUIMutableAnchorSet *)v207 copy];
  anchorSet = selfCopy33->_anchorSet;
  selfCopy33->_anchorSet = v263;

  categories = [v342 categories];
  v266 = [categories containsObject:@"content-load"];

  v267 = self->_restoreViewState;
  restoreViewState = self->_restoreViewState;
  self->_restoreViewState = 0;

  kdebug_trace();
  v269 = TUILayoutLog();
  if (os_log_type_enabled(v269, OS_LOG_TYPE_INFO))
  {
    v270 = self->_feedId.uniqueIdentifier;
    *v397 = 134218242;
    *&v397[4] = v270;
    v398 = 2112;
    v399 = v342;
    _os_log_impl(&dword_0, v269, OS_LOG_TYPE_INFO, "[fid:%lu] Ariadne FeedLayoutEnd group=%@", v397, 0x16u);
  }

  v271 = TUIInstantiationLog();
  v272 = v271;
  v273 = self->_frameSignpost;
  if (v273 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v271))
  {
    v274 = self->_feedId.uniqueIdentifier;
    *v397 = 134217984;
    *&v397[4] = v274;
    _os_signpost_emit_with_name_impl(&dword_0, v272, OS_SIGNPOST_INTERVAL_END, v273, "Layout", "[fid:%lu] ", v397, 0xCu);
  }

  v275 = TUIInstantiationLog();
  v276 = v275;
  v277 = self->_frameSignpost;
  if (v277 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v275))
  {
    v278 = self->_feedId.uniqueIdentifier;
    *v397 = 134217984;
    *&v397[4] = v278;
    _os_signpost_emit_with_name_impl(&dword_0, v276, OS_SIGNPOST_INTERVAL_BEGIN, v277, "UpdateRenderModels", "[fid:%lu] ", v397, 0xCu);
  }

  v355[0] = _NSConcreteStackBlock;
  v355[1] = 3221225472;
  v355[2] = sub_C15BC;
  v355[3] = &unk_261068;
  v366 = v266;
  v355[4] = self;
  v361 = buf;
  v362 = &v391;
  v363 = &v401;
  v341 = v340;
  v356 = v341;
  v321 = v207;
  v357 = v321;
  v367 = v325;
  v279 = v342;
  v358 = v279;
  v280 = v267;
  v368 = v330 & 1;
  v369 = v331;
  v359 = v280;
  v364 = &v384;
  v365 = layoutFlags;
  v343 = v324;
  v360 = v343;
  [v279 computeFinalUpdatesWithBlock:v355];
  [(TUIStatsTimingCollector *)self->_timingCollector endPhase:0];
  v281 = TUIInstantiationLog();
  v282 = v281;
  v283 = self->_frameSignpost;
  if (v283 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v281))
  {
    v284 = self->_feedId.uniqueIdentifier;
    *v397 = 134217984;
    *&v397[4] = v284;
    _os_signpost_emit_with_name_impl(&dword_0, v282, OS_SIGNPOST_INTERVAL_END, v283, "UpdateRenderModels", "[fid:%lu] ", v397, 0xCu);
  }

  selfCopy38 = self;
  if (self->_statsLiveResize)
  {
    v286 = self->_sections;
    v354[0] = _NSConcreteStackBlock;
    v354[1] = 3221225472;
    v354[2] = sub_C1F5C;
    v354[3] = &unk_261090;
    v354[4] = self;
    [(NSMutableDictionary *)v286 enumerateKeysAndObjectsUsingBlock:v354, v321];
    [(TUIStatsLiveResize *)self->_statsLiveResize endFrame];
  }

  if (self->_statsCollector)
  {
    *v397 = 0;
    mach_timebase_info(v397);
    v287 = objc_opt_new();
    v288 = self->_sections;
    v351[0] = _NSConcreteStackBlock;
    v351[1] = 3221225472;
    v351[2] = sub_C1FE8;
    v351[3] = &unk_2610B8;
    v353 = *v397;
    v351[4] = self;
    v289 = v287;
    v352 = v289;
    [(NSMutableDictionary *)v288 enumerateKeysAndObjectsUsingBlock:v351];
    v290 = objc_opt_new();
    selfCopy36 = self;
    if (self->_layoutNextSection)
    {
      v292 = 0;
      do
      {
        v293 = selfCopy36->_sections;
        v321 = [NSNumber numberWithUnsignedInteger:v292, v321];
        v295 = [(NSMutableDictionary *)v293 objectForKeyedSubscript:v321];
        entry5 = [v295 entry];
        v297 = [entry5 uid];
        [v290 addObject:v297];

        ++v292;
        selfCopy36 = self;
      }

      while (v292 < self->_layoutNextSection);
    }

    [(TUIStatsTimingCollector *)selfCopy36->_timingCollector finalizeWithTimebase:*v397, v321];
    v298 = selfCopy36;
    v299 = [[TUIStatsFeedPass alloc] initWithMode:selfCopy36->_lq_statsMode timingCollector:selfCopy36->_timingCollector passes:v289];
    [(TUIStatsCollector *)v298->_statsCollector updateWithPass:v299 currentEntriesUID:v290];

    selfCopy38 = self;
  }

  [(TUIStatsTimingCollector *)selfCopy38->_timingCollector reset];
  [(NSMutableDictionary *)selfCopy38->_sections enumerateKeysAndObjectsUsingBlock:&stru_2610D8];
  if (selfCopy38->_lq_statsMode & 0x10) != 0 && (*&selfCopy38->_delegateFlags)
  {
    v300 = [[TUIStatsFeed alloc] initWithDates:selfCopy38->_datesCollector collector:selfCopy38->_statsCollector];
    v349[0] = _NSConcreteStackBlock;
    v349[1] = 3221225472;
    v349[2] = sub_C21F0;
    v349[3] = &unk_261100;
    v349[4] = selfCopy38;
    v301 = v300;
    v350 = v301;
    [v279 appendUpdateBlock:v349];

    selfCopy38 = self;
  }

  selfCopy38->_environmentChanged = 0;
  objc_storeStrong(&selfCopy38->_previousStackName, v327);
  if (v334)
  {
    *&self->_flags &= ~1u;
    [(TUIFeedLayoutController *)self layoutIfNeededWithTransaction:0];
  }

  _Block_object_dispose(&v380, 8);
  _Block_object_dispose(&v384, 8);

  _Block_object_dispose(&v401, 8);
  _Block_object_dispose(&v391, 8);

  _Block_object_dispose(buf, 8);
}

- (void)_lq_scheduleLayoutRemainder
{
  v3 = +[TUITransaction noAnimationTransaction];
  transactionCoordinator = self->_transactionCoordinator;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_C22D8;
  v5[3] = &unk_25EB80;
  v5[4] = self;
  [(TUITransactionCoordinating *)transactionCoordinator scheduleLayoutUpdateWithTransaction:v3 block:v5];
}

- (BOOL)_lq_shouldInstantiateEntry:(id)entry sectionIndex:(unint64_t)index transactionGroup:(id)group
{
  entryCopy = entry;
  groupCopy = group;
  os_unfair_lock_lock(&self->_layoutConditionsLock);
  allObjects = [(NSHashTable *)self->_layoutConditionsSuspendingLayout allObjects];
  os_unfair_lock_unlock(&self->_layoutConditionsLock);
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v11 = allObjects;
  v12 = [v11 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v12)
  {
    v13 = v12;
    v27 = groupCopy;
    v14 = 0;
    v15 = *v35;
    v16 = 1;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v35 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v18 = *(*(&v34 + 1) + 8 * i);
        if ([v18 evaluateWithEntry:entryCopy index:index])
        {
          if (!v14)
          {
            v14 = objc_opt_new();
          }

          [v14 addObject:{v18, v27}];
        }

        else
        {
          v16 = 0;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v13);

    if (!v14)
    {
      v24 = 0;
      groupCopy = v27;
      goto LABEL_25;
    }

    os_unfair_lock_lock(&self->_layoutConditionsLock);
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v19 = v14;
    v20 = [v19 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v31;
      do
      {
        for (j = 0; j != v21; j = j + 1)
        {
          if (*v31 != v22)
          {
            objc_enumerationMutation(v19);
          }

          [(NSHashTable *)self->_layoutConditionsSuspendingLayout removeObject:*(*(&v30 + 1) + 8 * j), v27];
        }

        v21 = [v19 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v21);
    }

    os_unfair_lock_unlock(&self->_layoutConditionsLock);
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_C25AC;
    v28[3] = &unk_25DE30;
    v24 = v19;
    v29 = v24;
    groupCopy = v27;
    [v27 addCompletion:v28];
    v25 = v29;
  }

  else
  {
    v24 = 0;
    v16 = 1;
    v25 = v11;
  }

LABEL_25:
  return v16 & 1;
}

- (BOOL)_lq_shouldSubmitRenderModelUpdate:(BOOL)update transactionGroup:(id)group
{
  groupCopy = group;
  os_unfair_lock_lock(&self->_layoutConditionsLock);
  allObjects = [(NSHashTable *)self->_layoutConditionsSuspendingUpdates allObjects];
  os_unfair_lock_unlock(&self->_layoutConditionsLock);
  if (update)
  {
    v8 = 1;
  }

  else
  {
    v8 = [groupCopy flags] & 1;
  }

  renderModelMode = self->_renderModelMode;
  v34 = groupCopy;
  if (!renderModelMode)
  {
    v10 = 256;
    goto LABEL_8;
  }

  if (renderModelMode == 1)
  {
    v10 = 280;
LABEL_8:
    v11 = *(&self->super.isa + v10);
    goto LABEL_10;
  }

  v11 = 0;
LABEL_10:
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v12 = allObjects;
  v13 = [v12 countByEnumeratingWithState:&v41 objects:v52 count:16];
  if (!v13)
  {

    allObjects2 = v12;
    goto LABEL_34;
  }

  v14 = v13;
  v33 = v8;
  v15 = 0;
  v16 = *v42;
  v17 = 1;
  do
  {
    for (i = 0; i != v14; i = i + 1)
    {
      if (*v42 != v16)
      {
        objc_enumerationMutation(v12);
      }

      v19 = *(*(&v41 + 1) + 8 * i);
      if ([v19 evaluateWithRenderModel:v11])
      {
        if (!v15)
        {
          v15 = objc_opt_new();
        }

        [v15 addObject:v19];
      }

      else
      {
        v17 = 0;
      }
    }

    v14 = [v12 countByEnumeratingWithState:&v41 objects:v52 count:16];
  }

  while (v14);

  if (!v15)
  {
    allObjects2 = v12;
    v8 = v33;
    if ((v17 & 1) == 0)
    {
      v27 = v34;
      goto LABEL_36;
    }

LABEL_34:
    v15 = 0;
    v28 = 1;
    v27 = v34;
    goto LABEL_41;
  }

  os_unfair_lock_lock(&self->_layoutConditionsLock);
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v20 = v15;
  v21 = [v20 countByEnumeratingWithState:&v37 objects:v51 count:16];
  v8 = v33;
  if (v21)
  {
    v22 = v21;
    v23 = *v38;
    do
    {
      for (j = 0; j != v22; j = j + 1)
      {
        if (*v38 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [(NSHashTable *)self->_layoutConditionsSuspendingUpdates removeObject:*(*(&v37 + 1) + 8 * j)];
      }

      v22 = [v20 countByEnumeratingWithState:&v37 objects:v51 count:16];
    }

    while (v22);
  }

  allObjects2 = [(NSHashTable *)self->_layoutConditionsSuspendingUpdates allObjects];
  os_unfair_lock_unlock(&self->_layoutConditionsLock);
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_C2A58;
  v35[3] = &unk_25DE30;
  v26 = v20;
  v36 = v26;
  v27 = v34;
  [v34 addCompletion:v35];

  if (v17)
  {
    v28 = 1;
    v15 = v26;
    goto LABEL_41;
  }

LABEL_36:
  v29 = TUITransactionLog();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    uniqueIdentifier = self->_feedId.uniqueIdentifier;
    v31 = @"NO";
    *buf = 134218498;
    if (v8)
    {
      v31 = @"YES";
    }

    v46 = uniqueIdentifier;
    v47 = 2112;
    v48 = v31;
    v49 = 2112;
    v50 = allObjects2;
    _os_log_impl(&dword_0, v29, OS_LOG_TYPE_INFO, "[fid:%lu] layout conditions not meet; forcing=%@; remaining conditions: %@", buf, 0x20u);
  }

  v28 = 0;
LABEL_41:

  return v8 | v28;
}

- (void)setPriority:(float)priority
{
  v4 = TUIPriorityClamp(priority);
  if (self->_priority != v4)
  {
    v5 = TUILayoutLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      uniqueIdentifier = self->_feedId.uniqueIdentifier;
      priority = self->_priority;
      *buf = 134218496;
      v13 = uniqueIdentifier;
      v14 = 2048;
      priorityCopy = priority;
      v16 = 2048;
      v17 = v4;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "[fid:%lu] changing priority %f -> %f", buf, 0x20u);
    }

    *&v8 = v4;
    [(TUIWorkQueueContext *)self->_queueContext setPriority:v8];
    self->_priority = v4;
    dataRequestsSync = self->_dataRequestsSync;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_C2C90;
    v10[3] = &unk_261148;
    v10[4] = self;
    v11 = v4;
    dispatch_sync(dataRequestsSync, v10);
  }
}

- (void)setStatsMode:(unint64_t)mode
{
  if (self->_statsMode != mode)
  {
    v5 = TUILayoutLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      uniqueIdentifier = self->_feedId.uniqueIdentifier;
      statsMode = self->_statsMode;
      *buf = 134218496;
      v11 = uniqueIdentifier;
      v12 = 2048;
      v13 = statsMode;
      v14 = 2048;
      modeCopy = mode;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "[fid:%lu] changing stats mode %04lx -> %04lx", buf, 0x20u);
    }

    self->_statsMode = mode;
    activeQueue = [(TUIWorkQueueContext *)self->_queueContext activeQueue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_C2E58;
    v9[3] = &unk_25DED0;
    v9[4] = self;
    v9[5] = mode;
    dispatch_async(activeQueue, v9);
  }
}

- (void)setLayoutState:(unint64_t)state
{
  if (self->_layoutState != state)
  {
    delegateFlags = self->_delegateFlags;
    if ((delegateFlags & 2) != 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained feedLayoutController:self willTransitionToLayoutState:state];

      delegateFlags = self->_delegateFlags;
    }

    self->_layoutState = state;
    if ((delegateFlags & 4) != 0)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      [v7 feedLayoutController:self didTransitionToLayoutState:state];
    }
  }
}

- (void)collectStatsWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    activeQueue = [(TUIWorkQueueContext *)self->_queueContext activeQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_C30DC;
    v6[3] = &unk_25EA78;
    v6[4] = self;
    v7 = completionCopy;
    dispatch_async(activeQueue, v6);
  }
}

- (void)statRecordInitialResourcesRenderedDate
{
  v3 = +[NSDate date];
  activeQueue = [(TUIWorkQueueContext *)self->_queueContext activeQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_C3208;
  v6[3] = &unk_25DCA0;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  dispatch_async(activeQueue, v6);
}

- (void)statRecordResourcesStartLoadingDate
{
  v3 = +[NSDate date];
  activeQueue = [(TUIWorkQueueContext *)self->_queueContext activeQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_C3328;
  v6[3] = &unk_25DCA0;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  dispatch_async(activeQueue, v6);
}

- (void)statRecordResourcesLoadedDate
{
  v3 = +[NSDate date];
  activeQueue = [(TUIWorkQueueContext *)self->_queueContext activeQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_C3448;
  v6[3] = &unk_25DCA0;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  dispatch_async(activeQueue, v6);
}

- (void)statRecordViewWillAppear
{
  v3 = +[NSDate date];
  activeQueue = [(TUIWorkQueueContext *)self->_queueContext activeQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_C3568;
  v6[3] = &unk_25DCA0;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  dispatch_async(activeQueue, v6);
}

- (void)_cancelDataRequests
{
  dataRequestsSync = self->_dataRequestsSync;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_C363C;
  block[3] = &unk_25DE30;
  block[4] = self;
  dispatch_sync(dataRequestsSync, block);
}

- (void)updateWithContent:(id)content layoutUpToEntry:(id)entry environment:(id)environment transaction:(id)transaction
{
  contentCopy = content;
  environmentCopy = environment;
  transactionCopy = transaction;
  entryCopy = entry;
  v14 = +[NSDate date];
  uuid = [entryCopy uuid];

  if (!transactionCopy)
  {
    transactionCopy = +[TUITransaction currentOrImplicitTransaction];
  }

  [(TUIFeedLayoutController *)self _cancelDataRequests];
  v16 = TUITransactionLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    uniqueIdentifier = self->_feedId.uniqueIdentifier;
    WeakRetained = objc_loadWeakRetained(&self->_lastEnvironmentTransactionToken);
    v19 = objc_loadWeakRetained(&self->_lastContentTransactionToken);
    *buf = 134218754;
    v35 = uniqueIdentifier;
    v36 = 2112;
    v37 = transactionCopy;
    v38 = 2112;
    v39 = WeakRetained;
    v40 = 2112;
    v41 = v19;
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "[fid:%lu] FeedLayoutController: updateWithContent:layoutUpToEntry:environment:transaction: - tx=%@, lastEnvironmentToken=%@, lastContentToken=%@", buf, 0x2Au);
  }

  v20 = objc_loadWeakRetained(&self->_lastEnvironmentTransactionToken);
  [transactionCopy dependentOn:v20];

  v21 = objc_loadWeakRetained(&self->_lastContentTransactionToken);
  [transactionCopy dependentOn:v21];

  dependencyToken = [transactionCopy dependencyToken];
  objc_storeWeak(&self->_lastEnvironmentTransactionToken, dependencyToken);

  dependencyToken2 = [transactionCopy dependencyToken];
  objc_storeWeak(&self->_lastContentTransactionToken, dependencyToken2);

  transactionCoordinator = self->_transactionCoordinator;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_C3944;
  v29[3] = &unk_2611D0;
  v29[4] = self;
  v30 = environmentCopy;
  v31 = uuid;
  v32 = contentCopy;
  v33 = v14;
  v25 = v14;
  v26 = contentCopy;
  v27 = uuid;
  v28 = environmentCopy;
  [(TUITransactionCoordinating *)transactionCoordinator scheduleLayoutUpdateWithTransaction:transactionCopy block:v29];
}

- (void)layoutIfNeededWithTransaction:(id)transaction
{
  transactionCopy = transaction;
  if (!transactionCopy)
  {
    transactionCopy = +[TUITransaction currentOrImplicitTransaction];
  }

  v5 = transactionCopy;
  [(TUITransactionCoordinating *)self->_transactionCoordinator scheduleLayoutUpdateWithTransaction:transactionCopy block:&stru_2611F0];
}

- (void)updateWithContent:(id)content transaction:(id)transaction
{
  contentCopy = content;
  transactionCopy = transaction;
  v8 = +[NSDate date];
  if (!transactionCopy)
  {
    transactionCopy = +[TUITransaction currentOrImplicitTransaction];
  }

  [(TUIFeedLayoutController *)self _cancelDataRequests];
  v9 = TUITransactionLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    uniqueIdentifier = self->_feedId.uniqueIdentifier;
    WeakRetained = objc_loadWeakRetained(&self->_lastEnvironmentTransactionToken);
    v12 = objc_loadWeakRetained(&self->_lastContentTransactionToken);
    *buf = 134218754;
    v22 = uniqueIdentifier;
    v23 = 2112;
    v24 = transactionCopy;
    v25 = 2112;
    v26 = WeakRetained;
    v27 = 2112;
    v28 = v12;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "[fid:%lu] FeedLayoutController: updateWithContent: - tx=%@, lastEnvironmentToken=%@, lastContentToken=%@", buf, 0x2Au);
  }

  v13 = objc_loadWeakRetained(&self->_lastContentTransactionToken);
  [transactionCopy dependentOn:v13];

  dependencyToken = [transactionCopy dependencyToken];
  objc_storeWeak(&self->_lastContentTransactionToken, dependencyToken);

  transactionCoordinator = self->_transactionCoordinator;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_C3C48;
  v18[3] = &unk_261218;
  v18[4] = self;
  v19 = contentCopy;
  v20 = v8;
  v16 = v8;
  v17 = contentCopy;
  [(TUITransactionCoordinating *)transactionCoordinator scheduleLayoutUpdateWithTransaction:transactionCopy block:v18];
}

- (void)lq_updateContent:(id)content contentUpdateDate:(id)date transaction:(id)transaction transactionGroup:(id)group
{
  contentCopy = content;
  dateCopy = date;
  transactionCopy = transaction;
  groupCopy = group;
  workQueue = [(TUIWorkQueueContext *)self->_queueContext workQueue];
  dispatch_assert_queue_V2(workQueue);

  v12 = TUILayoutLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    uniqueIdentifier = self->_feedId.uniqueIdentifier;
    LODWORD(buf) = 134217984;
    *(&buf + 4) = uniqueIdentifier;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "[fid:%lu] lq_updateContent", &buf, 0xCu);
  }

  [(TUIStatsDatesCollector *)self->_datesCollector setContentUpdateDate:dateCopy];
  [(TUIStatsDatesCollector *)self->_datesCollector setInitialContentReadyDate:0];
  [(TUIStatsDatesCollector *)self->_datesCollector setDynamicUpdateDate:0];
  [(TUIStatsDatesCollector *)self->_datesCollector setResourcesLoadedDate:0];
  objc_storeStrong(&self->_content, content);
  v42 = (self->_layoutGenerationId + 1);
  self->_layoutGenerationId = v42;
  p_layoutNextSection = &self->_layoutNextSection;
  *&self->_layoutNextSection = xmmword_24CD50;
  v40 = objc_opt_new();
  v43 = [transactionCopy tx];
  layoutUntilEntryWithUUID = self->_layoutUntilEntryWithUUID;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = [(TUIFeedContent *)self->_content entries];
  v15 = [obj countByEnumeratingWithState:&v53 objects:v62 count:16];
  if (v15)
  {
    v16 = 0;
    v17 = layoutUntilEntryWithUUID != 0;
    v41 = *v54;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v54 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v53 + 1) + 8 * i);
        *&buf = 0;
        *(&buf + 1) = &buf;
        v58 = 0x3032000000;
        v59 = sub_C13B4;
        v60 = sub_C13C4;
        if (v17)
        {
          options = [v43 options];
          v61 = [TUITransaction transactionWithOptions:options];
        }

        else
        {
          v61 = +[TUITransaction currentOrImplicitTransaction];
        }

        v21 = [*(*(&buf + 1) + 40) tx];
        [*(*(&buf + 1) + 40) addCategory:@"content-load"];
        [v21 addCompletionDeferral];
        [v21 addSubTransactionCompletionDeferral];
        if (v17)
        {
          activeCallbackQueue = [(TUIWorkQueueContext *)self->_queueContext activeCallbackQueue];
          [v43 addSubTransaction:v21 completionQueue:activeCallbackQueue];

          uuid = [v19 uuid];
          v24 = [uuid isEqual:self->_layoutUntilEntryWithUUID];

          v17 = v24 ^ 1;
        }

        else
        {
          v17 = 0;
        }

        v25 = [(TUIFeedLayoutController *)self lq_createRenderModelForFeedEntry:v19 section:v16];
        objc_initWeak(&location, self);
        objc_initWeak(&from, v19);
        v50[0] = 0;
        v50[1] = v50;
        v50[2] = 0x2020000000;
        v50[3] = -1;
        priority = self->_priority;
        v44[0] = _NSConcreteStackBlock;
        v44[1] = 3221225472;
        v44[2] = sub_C4220;
        v44[3] = &unk_261268;
        objc_copyWeak(&v48, &location);
        objc_copyWeak(v49, &from);
        v46 = v50;
        p_buf = &buf;
        v49[1] = v16;
        v49[2] = v42;
        v27 = v21;
        v45 = v27;
        *&v28 = priority;
        v29 = [v19 requestDataWithPriority:v44 block:v28];
        if (v29)
        {
          [v40 addObject:v29];
        }

        objc_destroyWeak(v49);
        objc_destroyWeak(&v48);
        _Block_object_dispose(v50, 8);
        objc_destroyWeak(&from);
        objc_destroyWeak(&location);

        _Block_object_dispose(&buf, 8);
        ++v16;
      }

      v15 = [obj countByEnumeratingWithState:&v53 objects:v62 count:16];
    }

    while (v15);
  }

  v30 = [v40 copy];
  dataRequests = self->_dataRequests;
  self->_dataRequests = v30;

  entries = [contentCopy entries];
  self->_layoutNumberOfSections = [entries count];

  if (!self->_layoutUntilEntryWithUUID)
  {
    layoutNumberOfSections = self->_layoutNumberOfSections;
    if (layoutNumberOfSections != 0x7FFFFFFFFFFFFFFFLL && *p_layoutNextSection < layoutNumberOfSections)
    {
      [(TUIFeedLayoutController *)self setLayoutState:1];
    }
  }
}

- (void)updateDatesCollectorWithBlock:(id)block
{
  blockCopy = block;
  workQueue = [(TUIWorkQueueContext *)self->_queueContext workQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_C47AC;
  v7[3] = &unk_25EAA0;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(workQueue, v7);
}

- (void)updateWithEnvironment:(id)environment state:(id)state withTransaction:(id)transaction
{
  environmentCopy = environment;
  transactionCopy = transaction;
  stateCopy = state;
  v12 = TUIInstantiationLog();
  if (os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TUIFeedLayoutController.updateWithEnvironment", "", buf, 2u);
  }

  os_unfair_lock_lock(&self->_environmentLock);
  objc_storeStrong(&self->_environmentPendingUpdate, environment);
  os_unfair_lock_unlock(&self->_environmentLock);
  if (!transactionCopy)
  {
    transactionCopy = +[TUITransaction currentOrImplicitTransaction];
  }

  v13 = TUITransactionLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    uniqueIdentifier = self->_feedId.uniqueIdentifier;
    WeakRetained = objc_loadWeakRetained(&self->_lastEnvironmentTransactionToken);
    *buf = 134218498;
    v26 = uniqueIdentifier;
    v27 = 2112;
    v28 = transactionCopy;
    v29 = 2112;
    v30 = WeakRetained;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "[fid:%lu] FeedLayoutController: updateWithEnvironment:state:withTransaction: - tx=%@, lastEnvironmentToken=%@", buf, 0x20u);
  }

  v16 = objc_loadWeakRetained(&self->_lastEnvironmentTransactionToken);
  [transactionCopy dependentOn:v16];

  dependencyToken = [transactionCopy dependencyToken];
  objc_storeWeak(&self->_lastEnvironmentTransactionToken, dependencyToken);

  v18 = [stateCopy copy];
  transactionCoordinator = self->_transactionCoordinator;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_C4A2C;
  v22[3] = &unk_261218;
  v22[4] = self;
  v23 = environmentCopy;
  v24 = v18;
  v20 = v18;
  v21 = environmentCopy;
  [(TUITransactionCoordinating *)transactionCoordinator scheduleLayoutUpdateWithTransaction:transactionCopy block:v22];
}

- (void)updateHostingGeometryMap:(id)map withTransaction:(id)transaction
{
  mapCopy = map;
  transactionCopy = transaction;
  v8 = TUITransactionLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    uniqueIdentifier = self->_feedId.uniqueIdentifier;
    WeakRetained = objc_loadWeakRetained(&self->_lastEnvironmentTransactionToken);
    *buf = 134218498;
    v18 = uniqueIdentifier;
    v19 = 2112;
    v20 = transactionCopy;
    v21 = 2112;
    v22 = WeakRetained;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "[fid:%lu] FeedLayoutController: updateHostingGeometryMap:withTransaction - tx=%@, lastEnvironmentTx=%@", buf, 0x20u);
  }

  if (!transactionCopy)
  {
    transactionCopy = +[TUITransaction currentOrImplicitTransaction];
  }

  v11 = objc_loadWeakRetained(&self->_lastEnvironmentTransactionToken);
  [transactionCopy dependentOn:v11];

  dependencyToken = [transactionCopy dependencyToken];
  objc_storeWeak(&self->_lastEnvironmentTransactionToken, dependencyToken);

  transactionCoordinator = self->_transactionCoordinator;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_C4D24;
  v15[3] = &unk_261290;
  v15[4] = self;
  v16 = mapCopy;
  v14 = mapCopy;
  [(TUITransactionCoordinating *)transactionCoordinator scheduleLayoutUpdateWithTransaction:transactionCopy block:v15];
}

- (BOOL)lq_updateHostingGeometryMap:(id)map
{
  mapCopy = map;
  if (self->_hostingGeometryMap == mapCopy)
  {
    LOBYTE(v11) = 0;
  }

  else
  {
    v6 = [_TUIHostingGeometryMapUpdate alloc];
    hostingGeometryMap = self->_hostingGeometryMap;
    viewRegistry = [(TUIManager *)self->_manager viewRegistry];
    hostedViewFactoryTypesWithGeometryReuse = [viewRegistry hostedViewFactoryTypesWithGeometryReuse];
    v10 = [(_TUIHostingGeometryMapUpdate *)v6 initWithFrom:hostingGeometryMap to:mapCopy reuseTypes:hostedViewFactoryTypesWithGeometryReuse];

    objc_storeStrong(&self->_hostingGeometryMap, map);
    if (self->_layoutNumberOfSections)
    {
      v11 = 0;
      v12 = 0;
      do
      {
        sections = self->_sections;
        v14 = [NSNumber numberWithUnsignedInteger:v12];
        v15 = [(NSMutableDictionary *)sections objectForKeyedSubscript:v14];

        v11 |= [v15 lq_updateHostingGeometryMap:v10];
        ++v12;
      }

      while (v12 < self->_layoutNumberOfSections);
    }

    else
    {
      LOBYTE(v11) = 0;
    }
  }

  return v11 & 1;
}

- (void)transactionCoordinator:(id)coordinator applyUpdatesFromTransactionGroup:(id)group
{
  groupCopy = group;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained feedLayoutController:self applyUpdatesFromTransactionGroup:groupCopy];
  }

  else
  {
    [groupCopy applyUpdates];
  }
}

- (void)transactionCoordinator:(id)coordinator updateWithTransactionGroup:(id)group
{
  groupCopy = group;
  workQueue = [(TUIWorkQueueContext *)self->_queueContext workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (self->_suspended)
  {
    currentRenderModel = self->_currentRenderModel;
    self->_currentRenderModel = 0;

    currentHostingMap = self->_currentHostingMap;
    self->_currentHostingMap = 0;

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_C5018;
    v13[3] = &unk_25DCA0;
    v13[4] = self;
    v14 = groupCopy;
    [v14 computeFinalUpdatesWithBlock:v13];
  }

  else
  {
    v9 = +[UITraitCollection _currentTraitCollection];
    traitCollection = [(TUIEnvironment *)self->_environment traitCollection];
    [UITraitCollection _setCurrentTraitCollection:traitCollection];

    [(TUIFeedLayoutController *)self lq_updateRenderModelsWithTransactionGroup:groupCopy];
    [UITraitCollection _setCurrentTraitCollection:v9];
    captureController = self->_captureController;
    if (captureController)
    {
      [(TUIFeedCaptureController *)captureController endCapture];
      v12 = self->_captureController;
      self->_captureController = 0;
    }
  }
}

- (void)transactionCoordinator:(id)coordinator timeoutForSynchronousTransactionGroup:(id)group
{
  if (!self->_renderModelMode)
  {
    groupCopy = group;
    v7 = [[TUIRenderModelCollection alloc] initWithContent:self->_content sections:0 size:0 insets:0 visibleBoundsObservers:0 info:[(TUIEnvironment *)self->_environment layoutDirection] anchorSet:CGSizeZero.width layoutDirection:CGSizeZero.height matchingUUID:UIEdgeInsetsZero.top matchingUID:UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right, 0, 0];
    [(TUIRenderUpdateCollectionController *)self->_updateController updateWithHostingMap:0 transactionGroup:groupCopy];
    [(TUIRenderUpdateCollectionController *)self->_updateController updateWithRenderModel:v7 viewState:0 flags:0 transactionGroup:groupCopy];
  }
}

- (id)instantiateContext:(id)context serviceConformingToProtocol:(id)protocol
{
  if (protocol_isEqual(protocol, &OBJC_PROTOCOL___TUIWPService))
  {
    v5 = self->_wpService;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)lq_updateAXModelTreeWithTransactionGroup:(id)group
{
  groupCopy = group;
  workQueue = [(TUIWorkQueueContext *)self->_queueContext workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([(TUIEnvironment *)self->_environment accessibilityElementsNeeded])
  {
    v24 = groupCopy;
    v6 = objc_opt_class();
    currentStackName = [(TUIFeedContent *)self->_content currentStackName];
    value = [currentStackName value];
    v9 = TUIDynamicCast(v6, value);

    v10 = objc_opt_new();
    v25 = objc_opt_new();
    if ([(NSMutableDictionary *)self->_sections count])
    {
      v11 = 0;
      do
      {
        sections = self->_sections;
        v13 = [NSNumber numberWithUnsignedInteger:v11];
        v14 = [(NSMutableDictionary *)sections objectForKey:v13];

        axModelTree = [v14 axModelTree];
        if (axModelTree)
        {
          [v10 addObject:axModelTree];
        }

        else
        {
          v16 = objc_opt_new();
          [v10 addObject:v16];
        }

        entry = [v14 entry];
        stackNames = [entry stackNames];
        v19 = [stackNames containsObject:v9];

        if ((v19 & 1) == 0)
        {
          [axModelTree setHidden:1];
        }

        renderModel = [v14 renderModel];
        if (renderModel)
        {
          v21 = [NSNumber numberWithUnsignedInteger:v11];
          [v25 setObject:renderModel forKeyedSubscript:v21];
        }

        ++v11;
      }

      while (v11 < [(NSMutableDictionary *)self->_sections count]);
    }

    objc_initWeak(&location, self);
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_C54A4;
    v26[3] = &unk_2612B8;
    objc_copyWeak(&v30, &location);
    v22 = v10;
    v27 = v22;
    selfCopy = self;
    v23 = v25;
    v29 = v23;
    groupCopy = v24;
    [v24 appendUpdateBlock:v26];

    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }
}

- (void)suspendAndTeardownWithTransaction:(id)transaction
{
  transactionCopy = transaction;
  if (!transactionCopy)
  {
    transactionCopy = +[TUITransaction currentOrImplicitTransaction];
  }

  transactionCoordinator = self->_transactionCoordinator;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_C55B4;
  v6[3] = &unk_25EB80;
  v6[4] = self;
  [(TUITransactionCoordinating *)transactionCoordinator scheduleLayoutUpdateWithTransaction:transactionCopy block:v6];
}

- (void)resumeAndRebuildWithEnvironment:(id)environment state:(id)state transaction:(id)transaction
{
  environmentCopy = environment;
  transactionCopy = transaction;
  if (transactionCopy)
  {
    v10 = transactionCopy;
    stateCopy = state;
  }

  else
  {
    stateCopy2 = state;
    v10 = +[TUITransaction currentOrImplicitTransaction];
  }

  v13 = [state copy];

  v14 = TUITransactionLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    uniqueIdentifier = self->_feedId.uniqueIdentifier;
    WeakRetained = objc_loadWeakRetained(&self->_lastEnvironmentTransactionToken);
    *buf = 134218498;
    v26 = uniqueIdentifier;
    v27 = 2112;
    v28 = v10;
    v29 = 2112;
    v30 = WeakRetained;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "[fid:%lu] FeedLayoutController: resumeAndRebuildWithEnvironment - tx=%@, lastEnvironmentToken=%@", buf, 0x20u);
  }

  v17 = objc_loadWeakRetained(&self->_lastEnvironmentTransactionToken);
  [v10 dependentOn:v17];

  dependencyToken = [v10 dependencyToken];
  objc_storeWeak(&self->_lastEnvironmentTransactionToken, dependencyToken);

  transactionCoordinator = self->_transactionCoordinator;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_C586C;
  v22[3] = &unk_261218;
  v22[4] = self;
  v23 = environmentCopy;
  v24 = v13;
  v20 = v13;
  v21 = environmentCopy;
  [(TUITransactionCoordinating *)transactionCoordinator scheduleLayoutUpdateWithTransaction:v10 block:v22];
}

- (void)suspendUpdatesUntilMeetingLayoutCondition:(id)condition
{
  conditionCopy = condition;
  if (conditionCopy)
  {
    objc_initWeak(&location, self);
    v5 = _NSConcreteStackBlock;
    v6 = 3221225472;
    v7 = sub_C5A64;
    v8 = &unk_25E240;
    objc_copyWeak(&v9, &location);
    [conditionCopy onInvalidate:&v5];
    os_unfair_lock_lock(&self->_layoutConditionsLock);
    [(NSHashTable *)self->_layoutConditionsSuspendingUpdates addObject:conditionCopy, v5, v6, v7, v8];
    os_unfair_lock_unlock(&self->_layoutConditionsLock);
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (void)suspendLayoutsUntilMeetingLayoutCondition:(id)condition
{
  conditionCopy = condition;
  if (conditionCopy)
  {
    objc_initWeak(&location, self);
    v5 = _NSConcreteStackBlock;
    v6 = 3221225472;
    v7 = sub_C5B98;
    v8 = &unk_25E240;
    objc_copyWeak(&v9, &location);
    [conditionCopy onInvalidate:&v5];
    os_unfair_lock_lock(&self->_layoutConditionsLock);
    [(NSHashTable *)self->_layoutConditionsSuspendingLayout addObject:conditionCopy, v5, v6, v7, v8];
    os_unfair_lock_unlock(&self->_layoutConditionsLock);
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (void)_updateAfterLayoutConditionSuspendingUpdatesInvalidated
{
  v3 = +[TUITransaction implicitTransaction];
  [(TUITransactionCoordinating *)self->_transactionCoordinator scheduleLayoutUpdateWithTransaction:v3 block:&stru_2612D8];
}

- (void)beginLiveResize
{
  activeQueue = [(TUIWorkQueueContext *)self->_queueContext activeQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_C5CCC;
  block[3] = &unk_25DE30;
  block[4] = self;
  dispatch_async(activeQueue, block);
}

- (void)endLiveResize
{
  activeQueue = [(TUIWorkQueueContext *)self->_queueContext activeQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_C5EB0;
  block[3] = &unk_25DE30;
  block[4] = self;
  dispatch_async(activeQueue, block);
}

- (void)captureWithController:(id)controller completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  v8 = +[TUITransaction implicitTransaction];
  transactionCoordinator = self->_transactionCoordinator;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_C60D0;
  v12[3] = &unk_261320;
  v12[4] = self;
  v13 = controllerCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = controllerCopy;
  [(TUITransactionCoordinating *)transactionCoordinator scheduleLayoutUpdateWithTransaction:v8 block:v12];
}

- (void)dumpModelTreeForEntry:(id)entry completion:(id)completion
{
  entryCopy = entry;
  completionCopy = completion;
  activeQueue = [(TUIWorkQueueContext *)self->_queueContext activeQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_C6300;
  block[3] = &unk_261370;
  block[4] = self;
  v12 = entryCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = entryCopy;
  dispatch_async(activeQueue, block);
}

- (void)dumpLayoutTreeForEntry:(id)entry completion:(id)completion
{
  entryCopy = entry;
  completionCopy = completion;
  activeQueue = [(TUIWorkQueueContext *)self->_queueContext activeQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_C65FC;
  block[3] = &unk_261370;
  block[4] = self;
  v12 = entryCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = entryCopy;
  dispatch_async(activeQueue, block);
}

- (TUIFeedLayoutControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (TUIActionHandlerDelegate)actionHandlerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionHandlerDelegate);

  return WeakRetained;
}

- (TUITransactionDependencyToken)lastEnvironmentTransactionToken
{
  WeakRetained = objc_loadWeakRetained(&self->_lastEnvironmentTransactionToken);

  return WeakRetained;
}

- (TUITransactionDependencyToken)lastContentTransactionToken
{
  WeakRetained = objc_loadWeakRetained(&self->_lastContentTransactionToken);

  return WeakRetained;
}

@end