@interface CRLInteractiveCanvasRepContentUpdater
- (BOOL)isChildWrapperLayer:(id)layer;
- (BOOL)isRepContainerLayer:(id)layer;
- (BOOL)isRepContentLayer:(id)layer;
- (CALayerDelegate)layerDelegate;
- (CRLInteractiveCanvasRepContentUpdater)initWithCanvas:(id)canvas layerDelegate:(id)delegate;
- (id)containerRenderablesForRep:(id)rep;
- (id)i_descriptionOfLayerTreeRootedAt:(id)at;
- (id)i_firstDifferenceBetweenLayerTreeDescription:(id)description andDescription:(id)andDescription;
- (id)i_stringFromLayerDescription:(id)description;
- (id)p_layerDescriptionFromString:(id)string;
- (id)repForLayer:(id)layer;
- (void)p_accumulateNonRenderableBackedRepAndDescendants:(id)descendants into:(id)into;
- (void)p_discardRenderable:(id)renderable forRep:(id)rep;
- (void)p_recursivelyUpdateRenderableForRep:(id)rep accumulatingRepContentPiles:(id)piles andReps:(id)reps suppressLayers:(BOOL)layers hidingLayersForReps:(id)forReps forcingUpdateOfValidLayers:(BOOL)validLayers;
- (void)p_updateChildWrapperLayer:(id)layer forRep:(id)rep withLayer:(id)withLayer;
- (void)p_visitLayer:(id)layer atLevel:(unint64_t)level appendTo:(id)to;
- (void)teardown;
- (void)updateLayerFramesOnlyForReps:(id)reps;
- (void)updateRepContentForcingUpdateOfValidLayers:(BOOL)layers;
@end

@implementation CRLInteractiveCanvasRepContentUpdater

- (CRLInteractiveCanvasRepContentUpdater)initWithCanvas:(id)canvas layerDelegate:(id)delegate
{
  canvasCopy = canvas;
  delegateCopy = delegate;
  v27.receiver = self;
  v27.super_class = CRLInteractiveCanvasRepContentUpdater;
  v9 = [(CRLInteractiveCanvasRepContentUpdater *)&v27 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_canvas, canvas);
    objc_storeWeak(&v10->_layerDelegate, delegateCopy);
    v11 = [[NSMapTable alloc] initWithKeyOptions:512 valueOptions:0 capacity:0];
    repRenderablesByRep = v10->_repRenderablesByRep;
    v10->_repRenderablesByRep = v11;

    v13 = [[NSMapTable alloc] initWithKeyOptions:0 valueOptions:512 capacity:0];
    repsByRepRenderables = v10->_repsByRepRenderables;
    v10->_repsByRepRenderables = v13;

    v15 = [[NSMapTable alloc] initWithKeyOptions:512 valueOptions:512 capacity:0];
    containerLayersByRep = v10->_containerLayersByRep;
    v10->_containerLayersByRep = v15;

    v17 = [[NSMapTable alloc] initWithKeyOptions:512 valueOptions:512 capacity:0];
    repsByContainerLayer = v10->_repsByContainerLayer;
    v10->_repsByContainerLayer = v17;

    v19 = [[NSMapTable alloc] initWithKeyOptions:512 valueOptions:512 capacity:0];
    childWrapperLayersByRep = v10->_childWrapperLayersByRep;
    v10->_childWrapperLayersByRep = v19;

    v21 = [[NSMapTable alloc] initWithKeyOptions:512 valueOptions:512 capacity:0];
    repsByChildWrapperLayer = v10->_repsByChildWrapperLayer;
    v10->_repsByChildWrapperLayer = v21;

    repContentPiles = v10->_repContentPiles;
    v10->_repContentPiles = &__NSArray0__struct;

    v24 = objc_alloc_init(NSOrderedSet);
    allReps = v10->_allReps;
    v10->_allReps = v24;
  }

  return v10;
}

- (void)teardown
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_repsByRepRenderables;
  v3 = [(NSMapTable *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) setDelegate:{0, v7}];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [(NSMapTable *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)updateRepContentForcingUpdateOfValidLayers:(BOOL)layers
{
  layersCopy = layers;
  v5 = objc_alloc_init(NSMutableArray);
  v6 = objc_alloc_init(NSMutableOrderedSet);
  v7 = [(NSMutableArray *)self->_clonedParentRepLayers mutableCopy];
  previousClonedParentRepLayers = self->_previousClonedParentRepLayers;
  self->_previousClonedParentRepLayers = v7;

  [(NSMutableArray *)self->_clonedParentRepLayers removeAllObjects];
  context = objc_autoreleasePoolPush();
  keyEnumerator = [(NSMapTable *)self->_repRenderablesByRep keyEnumerator];
  allObjects = [keyEnumerator allObjects];

  canvasController = [(CRLCanvas *)self->_canvas canvasController];
  repsToHide = [canvasController repsToHide];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  topLevelReps = [(CRLCanvas *)self->_canvas topLevelReps];
  v13 = [topLevelReps countByEnumeratingWithState:&v52 objects:v58 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v53;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v53 != v15)
        {
          objc_enumerationMutation(topLevelReps);
        }

        [(CRLInteractiveCanvasRepContentUpdater *)self p_recursivelyUpdateRenderableForRep:*(*(&v52 + 1) + 8 * i) accumulatingRepContentPiles:v5 andReps:v6 suppressLayers:0 hidingLayersForReps:repsToHide forcingUpdateOfValidLayers:layersCopy];
      }

      v14 = [topLevelReps countByEnumeratingWithState:&v52 objects:v58 count:16];
    }

    while (v14);
  }

  v37 = repsToHide;
  v40 = v5;

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = allObjects;
  v17 = [obj countByEnumeratingWithState:&v48 objects:v57 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v49;
    v41 = *v49;
    do
    {
      v20 = 0;
      v42 = v18;
      do
      {
        if (*v49 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v48 + 1) + 8 * v20);
        if (![(NSOrderedSet *)v6 containsObject:v21])
        {
          v22 = v6;
          v23 = [(NSMapTable *)self->_repRenderablesByRep objectForKey:v21];
          v24 = [(NSMapTable *)self->_containerLayersByRep objectForKey:v21];
          v25 = [(NSMapTable *)self->_childWrapperLayersByRep objectForKey:v21];
          [(CRLInteractiveCanvasRepContentUpdater *)self p_discardRenderable:v23 forRep:v21];
          [(NSMapTable *)self->_containerLayersByRep removeObjectForKey:v21];
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v26 = v24;
          v27 = [v26 countByEnumeratingWithState:&v44 objects:v56 count:16];
          if (v27)
          {
            v28 = v27;
            v29 = *v45;
            do
            {
              for (j = 0; j != v28; j = j + 1)
              {
                if (*v45 != v29)
                {
                  objc_enumerationMutation(v26);
                }

                [(NSMapTable *)self->_repsByContainerLayer removeObjectForKey:*(*(&v44 + 1) + 8 * j)];
              }

              v28 = [v26 countByEnumeratingWithState:&v44 objects:v56 count:16];
            }

            while (v28);
          }

          [(NSMapTable *)self->_childWrapperLayersByRep removeObjectForKey:v21];
          [(NSMapTable *)self->_repsByChildWrapperLayer removeObjectForKey:v25];

          v6 = v22;
          v19 = v41;
          v18 = v42;
        }

        v20 = v20 + 1;
      }

      while (v20 != v18);
      v18 = [obj countByEnumeratingWithState:&v48 objects:v57 count:16];
    }

    while (v18);
  }

  objc_autoreleasePoolPop(context);
  if (![(NSArray *)v40 count])
  {
    v31 = objc_alloc_init(CRLInteractiveCanvasRepLayerPile);
    [(NSArray *)v40 addObject:v31];
  }

  repContentPiles = self->_repContentPiles;
  self->_repContentPiles = v40;
  v33 = v40;

  allReps = self->_allReps;
  self->_allReps = v6;
  v35 = v6;

  v36 = self->_previousClonedParentRepLayers;
  self->_previousClonedParentRepLayers = 0;
}

- (void)updateLayerFramesOnlyForReps:(id)reps
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = reps;
  v4 = [obj countByEnumeratingWithState:&v20 objects:v34 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      v7 = 0;
      do
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v20 + 1) + 8 * v7);
        v9 = [(CRLInteractiveCanvasRepContentUpdater *)self renderableForRep:v8];
        if (!v9)
        {
          v10 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_101330114();
          }

          v11 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            *buf = 67110146;
            v25 = v10;
            v26 = 2082;
            v27 = "[CRLInteractiveCanvasRepContentUpdater updateLayerFramesOnlyForReps:]";
            v28 = 2082;
            v29 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasRepContentUpdater.m";
            v30 = 1024;
            v31 = 141;
            v32 = 2082;
            v33 = "renderable";
            _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", buf, 0x2Cu);
          }

          if (qword_101AD5A10 != -1)
          {
            sub_10133013C();
          }

          v12 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            v17 = v12;
            v18 = +[CRLAssertionHandler packedBacktraceString];
            *buf = 67109378;
            v25 = v10;
            v26 = 2114;
            v27 = v18;
            _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
          }

          v13 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasRepContentUpdater updateLayerFramesOnlyForReps:]"];
          v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasRepContentUpdater.m"];
          [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:141 isFatal:0 description:"invalid nil value for '%{public}s'", "renderable"];
        }

        [v8 willUpdateRenderable:v9];
        [v8 updateRenderableGeometryFromLayout:v9];
        v15 = [(NSMapTable *)self->_childWrapperLayersByRep objectForKeyedSubscript:v8];
        if (v15)
        {
          layer = [v9 layer];
          [(CRLInteractiveCanvasRepContentUpdater *)self p_updateChildWrapperLayer:v15 forRep:v8 withLayer:layer];
        }

        [v8 didUpdateRenderable:v9];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v20 objects:v34 count:16];
    }

    while (v5);
  }
}

- (void)p_recursivelyUpdateRenderableForRep:(id)rep accumulatingRepContentPiles:(id)piles andReps:(id)reps suppressLayers:(BOOL)layers hidingLayersForReps:(id)forReps forcingUpdateOfValidLayers:(BOOL)validLayers
{
  validLayersCopy = validLayers;
  layersCopy = layers;
  repCopy = rep;
  pilesCopy = piles;
  repsCopy = reps;
  forRepsCopy = forReps;
  v196 = validLayersCopy;
  if (validLayersCopy)
  {
    v190 = 1;
  }

  else
  {
    v190 = [(CRLCanvas *)self->_canvas i_areContentLayersInvalidForRep:repCopy];
  }

  selfCopy = self;
  [(CRLCanvas *)self->_canvas contentsScale];
  v17 = v16;
  v264 = 0;
  v265 = &v264;
  v266 = 0x3032000000;
  v267 = sub_1001E6A48;
  v268 = sub_1001E6A58;
  v18 = objc_opt_class();
  lastObject = [pilesCopy lastObject];
  v269 = sub_100013F00(v18, lastObject);

  if (!v265[5])
  {
    v20 = objc_alloc_init(CRLInteractiveCanvasRepLayerPile);
    v21 = v265[5];
    v265[5] = v20;

    [pilesCopy addObject:v265[5]];
  }

  v22 = [(NSMapTable *)self->_containerLayersByRep objectForKey:repCopy];
  v23 = [v22 mutableCopy];

  v24 = objc_alloc_init(NSMutableArray);
  v256[0] = _NSConcreteStackBlock;
  v256[1] = 3221225472;
  v256[2] = sub_1001E6A60;
  v256[3] = &unk_101847648;
  v181 = v23;
  v257 = v181;
  v198 = repCopy;
  v258 = v198;
  v259 = selfCopy;
  v262 = &v264;
  v183 = forRepsCopy;
  v260 = v183;
  v263 = v190;
  v184 = v24;
  v261 = v184;
  v185 = objc_retainBlock(v256);
  v25 = (v185[2])();
  [v265[5] pushParentLayer:v25];
  v182 = v25;
  v188 = [(CRLInteractiveCanvasRepContentUpdater *)selfCopy renderableForRep:v198];
  layer = [v188 layer];
  if (v190)
  {
    layerClass = [v198 layerClass];
    if (layer)
    {
      if ([layer isMemberOfClass:layerClass] && !layersCopy)
      {
        goto LABEL_20;
      }

      [(CRLInteractiveCanvasRepContentUpdater *)selfCopy p_discardRenderable:v188 forRep:v198];

      v188 = 0;
    }

    if (layersCopy)
    {
      layer = 0;
    }

    else
    {
      layer = objc_alloc_init(layerClass);
      v27 = [CRLCanvasRenderable renderableFromLayer:layer];

      [(NSMapTable *)selfCopy->_repRenderablesByRep setObject:v27 forKey:v198];
      [(NSMapTable *)selfCopy->_repsByRepRenderables setObject:v198 forKey:v27];
      WeakRetained = objc_loadWeakRetained(&selfCopy->_layerDelegate);
      [layer setDelegate:WeakRetained];

      if (([v198 directlyManagesLayerContent] & 1) == 0)
      {
        [layer setNeedsDisplay];
      }

      v29 = objc_opt_class();
      v30 = sub_100014370(v29, layer);
      if (v30)
      {
        [v30 setTilingMode:{objc_msgSend(v198, "tilingMode")}];
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [layer setContentsScale:v17];
      }

      v188 = v27;
    }
  }

LABEL_20:
  [repsCopy addObject:v198];
  if (!layer)
  {
    [v265[5] popParentLayer];
    goto LABEL_250;
  }

  childReps = [v198 childReps];
  if ([childReps count])
  {
    wantsChildRepLayerUpdatingCallsEvenWithNoChildren = 1;
  }

  else
  {
    wantsChildRepLayerUpdatingCallsEvenWithNoChildren = [v198 wantsChildRepLayerUpdatingCallsEvenWithNoChildren];
  }

  if (v190)
  {
    [v198 willUpdateRenderable:v188];
    [v198 updateRenderableGeometryFromLayout:v188];
    [layer setMasksToBounds:{objc_msgSend(v198, "masksToBounds")}];
    [layer setOpaque:{objc_msgSend(v198, "isOpaque")}];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [layer setContentsScale:v17];
    }
  }

  [v198 additionalRenderablesUnderRenderable];
  v255 = 0u;
  v253 = 0u;
  v254 = 0u;
  obj = v252 = 0u;
  v32 = [obj countByEnumeratingWithState:&v252 objects:v291 count:16];
  if (v32)
  {
    v33 = *v253;
    do
    {
      for (i = 0; i != v32; i = i + 1)
      {
        if (*v253 != v33)
        {
          objc_enumerationMutation(obj);
        }

        layer2 = [*(*(&v252 + 1) + 8 * i) layer];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [layer2 setContentsScale:v17];
        }

        [v265[5] addLayer:layer2];
      }

      v32 = [obj countByEnumeratingWithState:&v252 objects:v291 count:16];
    }

    while (v32);
  }

  if ([v198 directlyManagesAdditionalPlatformViewUnderRenderable])
  {
    v36 = [[CRLInteractiveCanvasRepContentPlatformViewPile alloc] initWithRep:v198 kind:0];
    [pilesCopy addObject:v36];
    v37 = v265[5];
    if (!v37)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101330164();
      }

      v38 = off_1019EDA68;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        sub_10133018C();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101330220();
      }

      v39 = off_1019EDA68;
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = +[CRLAssertionHandler packedBacktraceString];
        sub_101330248(v40);
      }

      v41 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasRepContentUpdater p_recursivelyUpdateRenderableForRep:accumulatingRepContentPiles:andReps:suppressLayers:hidingLayersForReps:forcingUpdateOfValidLayers:]"];
      v42 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasRepContentUpdater.m"];
      [CRLAssertionHandler handleFailureInFunction:v41 file:v42 lineNumber:300 isFatal:0 description:"invalid nil value for '%{public}s'", "topRepLayerPile"];

      v37 = v265[5];
    }

    v251 = 0;
    v43 = [v37 newRepLayerPileByTransferringAndCloningParentLayers:&v251 reusingPreviouslyClonedLayers:selfCopy->_previousClonedParentRepLayers];
    v44 = v251;
    v45 = v265[5];
    v265[5] = v43;

    [pilesCopy addObject:v265[5]];
    if ([v44 count])
    {
      if (!selfCopy->_clonedParentRepLayers)
      {
        v46 = +[NSMutableArray array];
        clonedParentRepLayers = selfCopy->_clonedParentRepLayers;
        selfCopy->_clonedParentRepLayers = v46;
      }

      v249 = 0u;
      v250 = 0u;
      v247 = 0u;
      v248 = 0u;
      v48 = v44;
      v49 = [v48 countByEnumeratingWithState:&v247 objects:v290 count:16];
      if (v49)
      {
        v50 = *v248;
        do
        {
          for (j = 0; j != v49; j = j + 1)
          {
            if (*v248 != v50)
            {
              objc_enumerationMutation(v48);
            }

            [(NSMutableArray *)selfCopy->_clonedParentRepLayers addObject:*(*(&v247 + 1) + 8 * j)];
          }

          v49 = [v48 countByEnumeratingWithState:&v247 objects:v290 count:16];
        }

        while (v49);
      }
    }
  }

  [v265[5] addLayer:layer];
  [(NSMapTable *)selfCopy->_containerLayersByRep setObject:v184 forKey:v198];
  v52 = [(NSMapTable *)selfCopy->_childWrapperLayersByRep objectForKeyedSubscript:v198];
  v191 = v52;
  if (v52)
  {
    v53 = 0;
  }

  else
  {
    v53 = wantsChildRepLayerUpdatingCallsEvenWithNoChildren;
  }

  if (v53 == 1)
  {
    v191 = objc_alloc_init(CRLNoDefaultImplicitActionLayer);
    v54 = objc_opt_class();
    v55 = NSStringFromClass(v54);
    v198 = [NSString stringWithFormat:@"child wrapper for %@ %p", v55, v198];
    [(CRLNoDefaultImplicitActionLayer *)v191 setName:v198];

    [(NSMapTable *)selfCopy->_childWrapperLayersByRep setObject:v191 forKey:v198];
    [(NSMapTable *)selfCopy->_repsByChildWrapperLayer setObject:v198 forKey:v191];
  }

  else
  {
    if (v52)
    {
      v57 = wantsChildRepLayerUpdatingCallsEvenWithNoChildren;
    }

    else
    {
      v57 = 1;
    }

    if ((v57 & 1) == 0)
    {
      [(NSMapTable *)selfCopy->_childWrapperLayersByRep removeObjectForKey:v198];
      [(NSMapTable *)selfCopy->_repsByChildWrapperLayer removeObjectForKey:v191];
    }
  }

  if (wantsChildRepLayerUpdatingCallsEvenWithNoChildren)
  {
    if (!v191)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10133029C();
      }

      v58 = off_1019EDA68;
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        sub_1013302C4();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101330358();
      }

      v59 = off_1019EDA68;
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        v60 = +[CRLAssertionHandler packedBacktraceString];
        sub_101330248(v60);
      }

      v61 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasRepContentUpdater p_recursivelyUpdateRenderableForRep:accumulatingRepContentPiles:andReps:suppressLayers:hidingLayersForReps:forcingUpdateOfValidLayers:]"];
      v62 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasRepContentUpdater.m"];
      [CRLAssertionHandler handleFailureInFunction:v61 file:v62 lineNumber:346 isFatal:0 description:"invalid nil value for '%{public}s'", "childWrapperLayer"];
    }

    [CRLInteractiveCanvasRepContentUpdater p_updateChildWrapperLayer:selfCopy forRep:"p_updateChildWrapperLayer:forRep:withLayer:" withLayer:?];
  }

  directlyManagesContentPlatformView = [v198 directlyManagesContentPlatformView];
  directlyManagesAdditionalPlatformViewOverRenderable = [v198 directlyManagesAdditionalPlatformViewOverRenderable];
  if ((directlyManagesContentPlatformView | directlyManagesAdditionalPlatformViewOverRenderable))
  {
    if (wantsChildRepLayerUpdatingCallsEvenWithNoChildren)
    {
      if (!v191)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101330380();
        }

        v65 = off_1019EDA68;
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          sub_1013303A8();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10133043C();
        }

        v66 = off_1019EDA68;
        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          v67 = +[CRLAssertionHandler packedBacktraceString];
          sub_101330248(v67);
        }

        v68 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasRepContentUpdater p_recursivelyUpdateRenderableForRep:accumulatingRepContentPiles:andReps:suppressLayers:hidingLayersForReps:forcingUpdateOfValidLayers:]"];
        v69 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasRepContentUpdater.m"];
        [CRLAssertionHandler handleFailureInFunction:v68 file:v69 lineNumber:358 isFatal:0 description:"invalid nil value for '%{public}s'", "childWrapperLayer"];
      }

      [v265[5] addLayer:?];
      [v265[5] pushParentLayer:v191];
    }

    if (directlyManagesContentPlatformView)
    {
      v70 = [[CRLInteractiveCanvasRepContentPlatformViewPile alloc] initWithRep:v198 kind:1];
      [pilesCopy addObject:v70];
    }

    if (directlyManagesAdditionalPlatformViewOverRenderable)
    {
      v71 = [[CRLInteractiveCanvasRepContentPlatformViewPile alloc] initWithRep:v198 kind:2];
      [pilesCopy addObject:v71];
    }

    v72 = v265[5];
    if (!v72)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101330464();
      }

      v73 = off_1019EDA68;
      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        sub_10133048C();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101330520();
      }

      v74 = off_1019EDA68;
      if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
      {
        v75 = +[CRLAssertionHandler packedBacktraceString];
        sub_101330248(v75);
      }

      v76 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasRepContentUpdater p_recursivelyUpdateRenderableForRep:accumulatingRepContentPiles:andReps:suppressLayers:hidingLayersForReps:forcingUpdateOfValidLayers:]"];
      v77 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasRepContentUpdater.m"];
      [CRLAssertionHandler handleFailureInFunction:v76 file:v77 lineNumber:382 isFatal:0 description:"invalid nil value for '%{public}s'", "topRepLayerPile"];

      v72 = v265[5];
    }

    v246 = 0;
    v78 = [v72 newRepLayerPileByTransferringAndCloningParentLayers:&v246 reusingPreviouslyClonedLayers:selfCopy->_previousClonedParentRepLayers];
    v79 = v246;
    v80 = v265[5];
    v265[5] = v78;

    [pilesCopy addObject:v265[5]];
    if ([v79 count])
    {
      if (!selfCopy->_clonedParentRepLayers)
      {
        v81 = +[NSMutableArray array];
        v82 = selfCopy->_clonedParentRepLayers;
        selfCopy->_clonedParentRepLayers = v81;
      }

      v244 = 0u;
      v245 = 0u;
      v242 = 0u;
      v243 = 0u;
      v83 = v79;
      v84 = [v83 countByEnumeratingWithState:&v242 objects:v289 count:16];
      if (v84)
      {
        v85 = *v243;
        do
        {
          for (k = 0; k != v84; k = k + 1)
          {
            if (*v243 != v85)
            {
              objc_enumerationMutation(v83);
            }

            [(NSMutableArray *)selfCopy->_clonedParentRepLayers addObject:*(*(&v242 + 1) + 8 * k)];
          }

          v84 = [v83 countByEnumeratingWithState:&v242 objects:v289 count:16];
        }

        while (v84);
      }
    }

    v87 = wantsChildRepLayerUpdatingCallsEvenWithNoChildren ^ 1;
    if (!wantsChildRepLayerUpdatingCallsEvenWithNoChildren)
    {
      goto LABEL_121;
    }

LABEL_131:
    [v198 willUpdateChildLayers];
    v93 = +[NSSet set];
    if ([v198 drawsDescendantsIntoLayer])
    {
      v94 = [NSSet setWithArray:childReps];

      childrenToExcludeWhenDrawingDescendantsIntoLayer = [v198 childrenToExcludeWhenDrawingDescendantsIntoLayer];
      v93 = [v94 crl_setBySubtractingSet:childrenToExcludeWhenDrawingDescendantsIntoLayer];
    }

    v189 = [NSMutableOrderedSet orderedSetWithArray:childReps];
    v235[0] = _NSConcreteStackBlock;
    v235[1] = 3221225472;
    v235[2] = sub_1001E6DC4;
    v235[3] = &unk_101847770;
    renderablesDescendingDirectlyFromContentRenderable2 = v93;
    v236 = renderablesDescendingDirectlyFromContentRenderable2;
    v237 = selfCopy;
    v200 = repsCopy;
    v238 = v200;
    v195 = pilesCopy;
    v239 = v195;
    v194 = v183;
    v240 = v194;
    v241 = validLayersCopy;
    v187 = objc_retainBlock(v235);
    if (([v198 directlyManagesContentPlatformView] & 1) == 0)
    {
      [v265[5] pushParentLayer:layer];
      renderablesDescendingDirectlyFromContentRenderable = [v198 renderablesDescendingDirectlyFromContentRenderable];
      if ([renderablesDescendingDirectlyFromContentRenderable count])
      {
        v233 = 0u;
        v234 = 0u;
        v231 = 0u;
        v232 = 0u;
        v97 = renderablesDescendingDirectlyFromContentRenderable;
        v98 = [v97 countByEnumeratingWithState:&v231 objects:v288 count:16];
        if (v98)
        {
          v99 = *v232;
          do
          {
            for (m = 0; m != v98; m = m + 1)
            {
              if (*v232 != v99)
              {
                objc_enumerationMutation(v97);
              }

              v101 = v265[5];
              layer3 = [*(*(&v231 + 1) + 8 * m) layer];
              [v101 addLayer:layer3];
            }

            v98 = [v97 countByEnumeratingWithState:&v231 objects:v288 count:16];
          }

          while (v98);
        }
      }

      v229 = 0u;
      v230 = 0u;
      v227 = 0u;
      v228 = 0u;
      v103 = childReps;
      v104 = [v103 countByEnumeratingWithState:&v227 objects:v287 count:16];
      if (v104)
      {
        v105 = *v228;
LABEL_145:
        v106 = 0;
        while (1)
        {
          if (*v228 != v105)
          {
            objc_enumerationMutation(v103);
          }

          v107 = *(*(&v227 + 1) + 8 * v106);
          if (![v107 wantsRenderableToBeDescendedFromParentRepRenderable])
          {
            break;
          }

          [v189 removeObject:v107];
          (v187[2])(v187, v107);
          if (v104 == ++v106)
          {
            v104 = [v103 countByEnumeratingWithState:&v227 objects:v287 count:16];
            if (v104)
            {
              goto LABEL_145;
            }

            break;
          }
        }
      }

      v108 = objc_opt_class();
      lastObject2 = [v195 lastObject];
      v110 = sub_100013F00(v108, lastObject2);
      v111 = v265[5];
      v265[5] = v110;

      v112 = v265[5];
      if (!v112)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101330548();
        }

        v113 = off_1019EDA68;
        if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
        {
          sub_101330570();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_101330604();
        }

        v114 = off_1019EDA68;
        if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
        {
          v115 = +[CRLAssertionHandler packedBacktraceString];
          sub_101330248(v115);
        }

        v116 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasRepContentUpdater p_recursivelyUpdateRenderableForRep:accumulatingRepContentPiles:andReps:suppressLayers:hidingLayersForReps:forcingUpdateOfValidLayers:]"];
        v117 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasRepContentUpdater.m"];
        [CRLAssertionHandler handleFailureInFunction:v116 file:v117 lineNumber:466 isFatal:0 description:"invalid nil value for '%{public}s'", "topRepLayerPile"];

        v112 = v265[5];
      }

      [v112 popParentLayer];
    }

    [v198 additionalRenderablesUnderChildRenderables];
    v225 = 0u;
    v226 = 0u;
    v223 = 0u;
    v199 = v224 = 0u;
    v118 = [v199 countByEnumeratingWithState:&v223 objects:v286 count:16];
    if (v118)
    {
      v119 = *v224;
      do
      {
        for (n = 0; n != v118; n = n + 1)
        {
          if (*v224 != v119)
          {
            objc_enumerationMutation(v199);
          }

          v121 = *(*(&v223 + 1) + 8 * n);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [v121 setContentsScale:v17];
          }

          v122 = v265[5];
          layer4 = [v121 layer];
          [v122 addLayer:layer4];
        }

        v118 = [v199 countByEnumeratingWithState:&v223 objects:v286 count:16];
      }

      while (v118);
    }

    v124 = v191;
    if (v87)
    {
      if (!v191)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10133062C();
        }

        v125 = off_1019EDA68;
        if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
        {
          sub_101330654();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_1013306E8();
        }

        v126 = off_1019EDA68;
        if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
        {
          v127 = +[CRLAssertionHandler packedBacktraceString];
          sub_101330248(v127);
        }

        v128 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasRepContentUpdater p_recursivelyUpdateRenderableForRep:accumulatingRepContentPiles:andReps:suppressLayers:hidingLayersForReps:forcingUpdateOfValidLayers:]"];
        v129 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasRepContentUpdater.m"];
        [CRLAssertionHandler handleFailureInFunction:v128 file:v129 lineNumber:485 isFatal:0 description:"invalid nil value for '%{public}s'", "childWrapperLayer"];

        v124 = 0;
      }

      [v265[5] addLayer:v124];
      [v265[5] pushParentLayer:v124];
    }

    if ([v189 count])
    {
      v221 = 0u;
      v222 = 0u;
      v219 = 0u;
      v220 = 0u;
      v197 = v189;
      v130 = [v197 countByEnumeratingWithState:&v219 objects:v285 count:16];
      if (v130)
      {
        v131 = *v220;
        do
        {
          v132 = 0;
          do
          {
            if (*v220 != v131)
            {
              objc_enumerationMutation(v197);
            }

            v133 = *(*(&v219 + 1) + 8 * v132);
            if ([v133 wantsRenderableToBeDescendedFromParentRepRenderable])
            {
              v134 = +[CRLAssertionHandler _atomicIncrementAssertCount];
              if (qword_101AD5A10 != -1)
              {
                sub_101330710();
              }

              v135 = off_1019EDA68;
              if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
              {
                v143 = objc_opt_class();
                v144 = NSStringFromClass(v143);
                v145 = objc_opt_class();
                v146 = NSStringFromClass(v145);
                *buf = 67110402;
                v274 = v134;
                v275 = 2082;
                v276 = "[CRLInteractiveCanvasRepContentUpdater p_recursivelyUpdateRenderableForRep:accumulatingRepContentPiles:andReps:suppressLayers:hidingLayersForReps:forcingUpdateOfValidLayers:]";
                v277 = 2082;
                v278 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasRepContentUpdater.m";
                v279 = 1024;
                v280 = 496;
                v281 = 2114;
                v282 = v144;
                v283 = 2114;
                v284 = v146;
                _os_log_error_impl(&_mh_execute_header, v135, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Cannot make this layer descend from parent %{public}@ rep's layer, but the rep %{public}@ is asking to", buf, 0x36u);
              }

              if (qword_101AD5A10 != -1)
              {
                sub_101330738();
              }

              v136 = off_1019EDA68;
              if (os_log_type_enabled(v136, OS_LOG_TYPE_ERROR))
              {
                v147 = +[CRLAssertionHandler packedBacktraceString];
                *buf = 67109378;
                v274 = v134;
                v275 = 2114;
                v276 = v147;
                _os_log_error_impl(&_mh_execute_header, v136, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
              }

              v137 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasRepContentUpdater p_recursivelyUpdateRenderableForRep:accumulatingRepContentPiles:andReps:suppressLayers:hidingLayersForReps:forcingUpdateOfValidLayers:]"];
              v138 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasRepContentUpdater.m"];
              v139 = objc_opt_class();
              v140 = NSStringFromClass(v139);
              v141 = objc_opt_class();
              v142 = NSStringFromClass(v141);
              [CRLAssertionHandler handleFailureInFunction:v137 file:v138 lineNumber:496 isFatal:0 description:"Cannot make this layer descend from parent %{public}@ rep's layer, but the rep %{public}@ is asking to", v140, v142];
            }

            if ([renderablesDescendingDirectlyFromContentRenderable2 containsObject:v133])
            {
              [(CRLInteractiveCanvasRepContentUpdater *)selfCopy p_accumulateNonRenderableBackedRepAndDescendants:v133 into:v200];
            }

            else
            {
              [(CRLInteractiveCanvasRepContentUpdater *)selfCopy p_recursivelyUpdateRenderableForRep:v133 accumulatingRepContentPiles:v195 andReps:v200 suppressLayers:0 hidingLayersForReps:v194 forcingUpdateOfValidLayers:v196];
            }

            v132 = v132 + 1;
          }

          while (v130 != v132);
          v130 = [v197 countByEnumeratingWithState:&v219 objects:v285 count:16];
        }

        while (v130);
      }

      v148 = objc_opt_class();
      lastObject3 = [v195 lastObject];
      v150 = sub_100013F00(v148, lastObject3);
      v151 = v265[5];
      v265[5] = v150;

      if (!v265[5])
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101330760();
        }

        v152 = off_1019EDA68;
        if (os_log_type_enabled(v152, OS_LOG_TYPE_ERROR))
        {
          sub_101330788();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10133081C();
        }

        v153 = off_1019EDA68;
        if (os_log_type_enabled(v153, OS_LOG_TYPE_ERROR))
        {
          v154 = +[CRLAssertionHandler packedBacktraceString];
          sub_101330248(v154);
        }

        v155 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasRepContentUpdater p_recursivelyUpdateRenderableForRep:accumulatingRepContentPiles:andReps:suppressLayers:hidingLayersForReps:forcingUpdateOfValidLayers:]"];
        v156 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasRepContentUpdater.m"];
        [CRLAssertionHandler handleFailureInFunction:v155 file:v156 lineNumber:516 isFatal:0 description:"invalid nil value for '%{public}s'", "topRepLayerPile"];
      }
    }

    v157 = v265[5];
    v217[0] = _NSConcreteStackBlock;
    v217[1] = 3221225472;
    v217[2] = sub_1001E706C;
    v217[3] = &unk_101847898;
    v158 = v198;
    v218 = v158;
    [v157 mutateLayersUsingBlock:v217];
    [v158 didUpdateChildLayers];
    [v265[5] popParentLayer];

    goto LABEL_215;
  }

  v87 = 1;
  if (wantsChildRepLayerUpdatingCallsEvenWithNoChildren)
  {
    goto LABEL_131;
  }

LABEL_121:
  renderablesDescendingDirectlyFromContentRenderable2 = [v198 renderablesDescendingDirectlyFromContentRenderable];
  if ([renderablesDescendingDirectlyFromContentRenderable2 count])
  {
    [v265[5] pushParentLayer:layer];
    v215 = 0u;
    v216 = 0u;
    v213 = 0u;
    v214 = 0u;
    renderablesDescendingDirectlyFromContentRenderable2 = renderablesDescendingDirectlyFromContentRenderable2;
    v88 = [renderablesDescendingDirectlyFromContentRenderable2 countByEnumeratingWithState:&v213 objects:v272 count:16];
    if (v88)
    {
      v89 = *v214;
      do
      {
        for (ii = 0; ii != v88; ii = ii + 1)
        {
          if (*v214 != v89)
          {
            objc_enumerationMutation(renderablesDescendingDirectlyFromContentRenderable2);
          }

          v91 = v265[5];
          layer5 = [*(*(&v213 + 1) + 8 * ii) layer];
          [v91 addLayer:layer5];
        }

        v88 = [renderablesDescendingDirectlyFromContentRenderable2 countByEnumeratingWithState:&v213 objects:v272 count:16];
      }

      while (v88);
    }

    [v265[5] popParentLayer];
  }

LABEL_215:

  [v198 i_additionalRenderablesOverRenderableIncludingKnobs];
  v211 = 0u;
  v212 = 0u;
  v209 = 0u;
  v159 = v210 = 0u;
  v160 = [v159 countByEnumeratingWithState:&v209 objects:v271 count:16];
  if (v160)
  {
    v161 = *v210;
    do
    {
      for (jj = 0; jj != v160; jj = jj + 1)
      {
        if (*v210 != v161)
        {
          objc_enumerationMutation(v159);
        }

        layer6 = [*(*(&v209 + 1) + 8 * jj) layer];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [layer6 setContentsScale:v17];
        }

        [v265[5] addLayer:layer6];
      }

      v160 = [v159 countByEnumeratingWithState:&v209 objects:v271 count:16];
    }

    while (v160);
  }

  [v265[5] popParentLayer];
  if (v190)
  {
    if ([v198 directlyManagesAdditionalPlatformViewOverChildRenderables])
    {
      v164 = [[CRLInteractiveCanvasRepContentPlatformViewPile alloc] initWithRep:v198 kind:3];
      [pilesCopy addObject:v164];
      v165 = v265[5];
      if (!v165)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101330844();
        }

        v166 = off_1019EDA68;
        if (os_log_type_enabled(v166, OS_LOG_TYPE_ERROR))
        {
          sub_10133086C();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_101330900();
        }

        v167 = off_1019EDA68;
        if (os_log_type_enabled(v167, OS_LOG_TYPE_ERROR))
        {
          v168 = +[CRLAssertionHandler packedBacktraceString];
          sub_101330248(v168);
        }

        v169 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasRepContentUpdater p_recursivelyUpdateRenderableForRep:accumulatingRepContentPiles:andReps:suppressLayers:hidingLayersForReps:forcingUpdateOfValidLayers:]"];
        v170 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasRepContentUpdater.m"];
        [CRLAssertionHandler handleFailureInFunction:v169 file:v170 lineNumber:575 isFatal:0 description:"invalid nil value for '%{public}s'", "topRepLayerPile"];

        v165 = v265[5];
      }

      v208 = 0;
      v171 = [v165 newRepLayerPileByTransferringAndCloningParentLayers:&v208 reusingPreviouslyClonedLayers:selfCopy->_previousClonedParentRepLayers];
      v172 = v208;
      v173 = v265[5];
      v265[5] = v171;

      [pilesCopy addObject:v265[5]];
      if ([v172 count])
      {
        if (!selfCopy->_clonedParentRepLayers)
        {
          v174 = +[NSMutableArray array];
          v175 = selfCopy->_clonedParentRepLayers;
          selfCopy->_clonedParentRepLayers = v174;
        }

        v206 = 0u;
        v207 = 0u;
        v204 = 0u;
        v205 = 0u;
        v176 = v172;
        v177 = [v176 countByEnumeratingWithState:&v204 objects:v270 count:16];
        if (v177)
        {
          v178 = *v205;
          do
          {
            for (kk = 0; kk != v177; kk = kk + 1)
            {
              if (*v205 != v178)
              {
                objc_enumerationMutation(v176);
              }

              [(NSMutableArray *)selfCopy->_clonedParentRepLayers addObject:*(*(&v204 + 1) + 8 * kk)];
            }

            v177 = [v176 countByEnumeratingWithState:&v204 objects:v270 count:16];
          }

          while (v177);
        }
      }
    }

    [v198 didUpdateRenderable:v188];
  }

LABEL_250:
  _Block_object_dispose(&v264, 8);
}

- (void)p_updateChildWrapperLayer:(id)layer forRep:(id)rep withLayer:(id)withLayer
{
  layerCopy = layer;
  repCopy = rep;
  withLayerCopy = withLayer;
  [layerCopy setMasksToBounds:{objc_msgSend(withLayerCopy, "masksToBounds")}];
  isOpaque = [withLayerCopy isOpaque];

  [layerCopy setOpaque:isOpaque];
  [repCopy layerFrameInScaledCanvasRelativeToParent];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  memset(&v37[1], 0, sizeof(CGAffineTransform));
  if (repCopy)
  {
    [repCopy i_layerTransform];
  }

  v37[0] = v37[1];
  [layerCopy crl_setIfDifferentFrame:v37 orTransform:{v12, v14, v16, v18}];
  [repCopy rectToClipChildRepRenderables];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v38.origin.x = CGRectNull.origin.x;
  v38.origin.y = CGRectNull.origin.y;
  v38.size.width = CGRectNull.size.width;
  v38.size.height = CGRectNull.size.height;
  v42.origin.x = v20;
  v42.origin.y = v22;
  v42.size.width = v24;
  v42.size.height = v26;
  if (CGRectEqualToRect(v38, v42))
  {
    [layerCopy setMask:0];
  }

  else
  {
    if (repCopy)
    {
      [repCopy transformToConvertNaturalToLayerRelative];
    }

    else
    {
      memset(v37, 0, 48);
    }

    v39.origin.x = v20;
    v39.origin.y = v22;
    v39.size.width = v24;
    v39.size.height = v26;
    v40 = CGRectApplyAffineTransform(v39, v37);
    x = v40.origin.x;
    y = v40.origin.y;
    width = v40.size.width;
    height = v40.size.height;
    mask = [layerCopy mask];
    if (!mask)
    {
      mask = +[CRLNoDefaultImplicitActionLayer layer];
      v32 = +[CRLColor blackColor];
      [mask setBackgroundColor:{objc_msgSend(v32, "CGColor")}];

      [layerCopy setMask:mask];
    }

    [mask frame];
    v43.origin.x = v33;
    v43.origin.y = v34;
    v43.size.width = v35;
    v43.size.height = v36;
    v41.origin.x = x;
    v41.origin.y = y;
    v41.size.width = width;
    v41.size.height = height;
    if (!CGRectEqualToRect(v41, v43))
    {
      [mask setFrame:{x, y, width, height}];
    }
  }
}

- (void)p_discardRenderable:(id)renderable forRep:(id)rep
{
  renderableCopy = renderable;
  repCopy = rep;
  layer = [renderableCopy layer];
  [layer setDelegate:0];
  if (renderableCopy)
  {
    [layer setContents:0];
    [(NSMapTable *)self->_repsByRepRenderables removeObjectForKey:renderableCopy];
    [layer crl_cancelLayoutForTilingLayers];
  }

  if (repCopy)
  {
    [(NSMapTable *)self->_repRenderablesByRep removeObjectForKey:repCopy];
  }
}

- (void)p_accumulateNonRenderableBackedRepAndDescendants:(id)descendants into:(id)into
{
  descendantsCopy = descendants;
  intoCopy = into;
  [intoCopy addObject:descendantsCopy];
  v8 = [(CRLInteractiveCanvasRepContentUpdater *)self renderableForRep:descendantsCopy];
  if (v8)
  {
    [(CRLInteractiveCanvasRepContentUpdater *)self p_discardRenderable:v8 forRep:descendantsCopy];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  childReps = [descendantsCopy childReps];
  v10 = [childReps countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(childReps);
        }

        [(CRLInteractiveCanvasRepContentUpdater *)self p_accumulateNonRenderableBackedRepAndDescendants:*(*(&v14 + 1) + 8 * v13) into:intoCopy];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [childReps countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (id)repForLayer:(id)layer
{
  repsByRepRenderables = self->_repsByRepRenderables;
  v4 = [CRLCanvasRenderable renderableFromLayer:layer];
  v5 = [(NSMapTable *)repsByRepRenderables objectForKey:v4];

  return v5;
}

- (id)containerRenderablesForRep:(id)rep
{
  v3 = [(NSMapTable *)self->_containerLayersByRep objectForKey:rep];
  v4 = [v3 crl_arrayByMappingObjectsUsingBlock:&stru_101847918];

  return v4;
}

- (BOOL)isRepContentLayer:(id)layer
{
  repsByRepRenderables = self->_repsByRepRenderables;
  v4 = [CRLCanvasRenderable renderableFromLayer:layer];
  v5 = [(NSMapTable *)repsByRepRenderables objectForKey:v4];
  LOBYTE(repsByRepRenderables) = v5 != 0;

  return repsByRepRenderables;
}

- (BOOL)isRepContainerLayer:(id)layer
{
  v3 = [(NSMapTable *)self->_repsByContainerLayer objectForKey:layer];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)isChildWrapperLayer:(id)layer
{
  v3 = [(NSMapTable *)self->_repsByChildWrapperLayer objectForKey:layer];
  v4 = v3 != 0;

  return v4;
}

- (CALayerDelegate)layerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_layerDelegate);

  return WeakRetained;
}

- (id)i_stringFromLayerDescription:(id)description
{
  descriptionCopy = description;
  v4 = [&stru_1018BCA28 stringByPaddingToLength:4 * objc_msgSend(descriptionCopy withString:"levelInTree") startingAtIndex:{@" ", 0}];
  layerClass = [descriptionCopy layerClass];
  layerPointer = [descriptionCopy layerPointer];
  layerPurpose = [descriptionCopy layerPurpose];
  repClass = [descriptionCopy repClass];
  repPointer = [descriptionCopy repPointer];
  layerPosition = [descriptionCopy layerPosition];
  layerBounds = [descriptionCopy layerBounds];

  v12 = [NSString stringWithFormat:@"%@%@ %@ %@ %@ %@ %@ %@", v4, layerClass, layerPointer, layerPurpose, repClass, repPointer, layerPosition, layerBounds];

  return v12;
}

- (id)p_layerDescriptionFromString:(id)string
{
  stringCopy = string;
  v4 = objc_alloc_init(_CRLLayerDescription);
  v5 = 0;
  if ([stringCopy length])
  {
    do
    {
      if ([stringCopy characterAtIndex:v5] != 32)
      {
        break;
      }

      ++v5;
    }

    while (v5 < [stringCopy length]);
  }

  [(_CRLLayerDescription *)v4 setLevelInTree:v5 >> 2];
  v6 = [stringCopy substringFromIndex:v5];
  v7 = [v6 componentsSeparatedByString:@" "];
  if ([v7 count])
  {
    v8 = 0;
    do
    {
      v9 = [v7 objectAtIndexedSubscript:v8];
      if (v8 <= 2)
      {
        if (v8)
        {
          if (v8 == 2)
          {
            [(_CRLLayerDescription *)v4 setLayerPurpose:v9];
          }
        }

        else
        {
          [(_CRLLayerDescription *)v4 setLayerClass:v9];
        }
      }

      else
      {
        switch(v8)
        {
          case 3:
            [(_CRLLayerDescription *)v4 setRepClass:v9];
            break;
          case 5:
            [(_CRLLayerDescription *)v4 setLayerPosition:v9];
            break;
          case 6:
            [(_CRLLayerDescription *)v4 setLayerBounds:v9];
            break;
        }
      }

      ++v8;
    }

    while (v8 < [v7 count]);
  }

  return v4;
}

- (void)p_visitLayer:(id)layer atLevel:(unint64_t)level appendTo:(id)to
{
  layerCopy = layer;
  toCopy = to;
  v10 = objc_alloc_init(_CRLLayerDescription);
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  [(_CRLLayerDescription *)v10 setLayerClass:v12];

  layerCopy = [NSString stringWithFormat:@"%p", layerCopy];
  [(_CRLLayerDescription *)v10 setLayerPointer:layerCopy];

  [(_CRLLayerDescription *)v10 setLevelInTree:level];
  [layerCopy bounds];
  v14 = NSStringFromCGRect(v39);
  v15 = [v14 stringByReplacingOccurrencesOfString:@" " withString:&stru_1018BCA28];
  [(_CRLLayerDescription *)v10 setLayerBounds:v15];

  [layerCopy position];
  v16 = NSStringFromCGPoint(v38);
  v17 = [v16 stringByReplacingOccurrencesOfString:@" " withString:&stru_1018BCA28];
  [(_CRLLayerDescription *)v10 setLayerPosition:v17];

  repsByRepRenderables = self->_repsByRepRenderables;
  v19 = [CRLCanvasRenderable renderableFromLayer:layerCopy];
  v20 = [(NSMapTable *)repsByRepRenderables objectForKey:v19];

  if (v20)
  {
    v21 = @"RepContent";
LABEL_7:
    [(_CRLLayerDescription *)v10 setLayerPurpose:v21];
    v24 = [NSString stringWithFormat:@"%p", v20];
    [(_CRLLayerDescription *)v10 setRepPointer:v24];

    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    [(_CRLLayerDescription *)v10 setRepClass:v26];

    goto LABEL_8;
  }

  v22 = [(NSMapTable *)self->_repsByContainerLayer objectForKey:layerCopy];
  if (v22)
  {
    v20 = v22;
    v21 = @"RepContainer";
    goto LABEL_7;
  }

  v23 = [(NSMapTable *)self->_repsByChildWrapperLayer objectForKey:layerCopy];
  if (v23)
  {
    v20 = v23;
    v21 = @"ChildWrapper";
    goto LABEL_7;
  }

  [(_CRLLayerDescription *)v10 setLayerPurpose:@"-"];
  [(_CRLLayerDescription *)v10 setRepPointer:@"-"];
  [(_CRLLayerDescription *)v10 setRepClass:@"-"];
LABEL_8:
  v27 = [(CRLInteractiveCanvasRepContentUpdater *)self i_stringFromLayerDescription:v10];
  [toCopy appendFormat:@"%@\n", v27];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  sublayers = [layerCopy sublayers];
  v29 = [sublayers countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v34;
    do
    {
      v32 = 0;
      do
      {
        if (*v34 != v31)
        {
          objc_enumerationMutation(sublayers);
        }

        [(CRLInteractiveCanvasRepContentUpdater *)self p_visitLayer:*(*(&v33 + 1) + 8 * v32) atLevel:level + 1 appendTo:toCopy];
        v32 = v32 + 1;
      }

      while (v30 != v32);
      v30 = [sublayers countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v30);
  }
}

- (id)i_descriptionOfLayerTreeRootedAt:(id)at
{
  atCopy = at;
  v5 = +[NSMutableString string];
  [(CRLInteractiveCanvasRepContentUpdater *)self p_visitLayer:atCopy atLevel:0 appendTo:v5];

  return v5;
}

- (id)i_firstDifferenceBetweenLayerTreeDescription:(id)description andDescription:(id)andDescription
{
  descriptionCopy = description;
  andDescriptionCopy = andDescription;
  v8 = +[NSMutableArray array];
  v37 = descriptionCopy;
  v9 = [descriptionCopy componentsSeparatedByString:@"\n"];
  v36 = andDescriptionCopy;
  v10 = [andDescriptionCopy componentsSeparatedByString:@"\n"];
  v11 = [v9 count];
  v39 = v10;
  v38 = v8;
  if (v11 == [v10 count])
  {
    if ([v9 count] != 1)
    {
      v12 = 0;
      while (1)
      {
        if ((([v9 objectAtIndexedSubscript:v12], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v39, "objectAtIndexedSubscript:", v12), v14 = objc_claimAutoreleasedReturnValue(), -[CRLInteractiveCanvasRepContentUpdater p_layerDescriptionFromString:](self, "p_layerDescriptionFromString:", v13), v15 = objc_claimAutoreleasedReturnValue(), -[CRLInteractiveCanvasRepContentUpdater p_layerDescriptionFromString:](self, "p_layerDescriptionFromString:", v14), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v15, "levelInTree"), v17 != objc_msgSend(v16, "levelInTree")) || (objc_msgSend(v15, "layerClass"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "layerClass"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v18, "isEqualToString:", v19), v19, v18, (v20 & 1) == 0)) && (objc_msgSend(v15, "layerPurpose"), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "layerPurpose"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v21, "isEqualToString:", v22), v22, v21, (v23) || (objc_msgSend(v15, "repClass"), v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "repClass"), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v24, "isEqualToString:", v25), v25, v24, (v26 & 1) == 0)) && (objc_msgSend(v15, "layerBounds"), v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "layerBounds"), v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v27, "isEqualToString:", v28), v28, v27, (v29) || (objc_msgSend(v15, "layerPosition"), v30 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "layerPosition"), v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v30, "isEqualToString:", v31), v31, v30, (v32 & 1) == 0))
        {
          levelInTree = [v15 levelInTree];
          if (levelInTree == [v16 levelInTree])
          {
            break;
          }
        }

        if (++v12 >= [v9 count] - 1)
        {
          goto LABEL_14;
        }
      }

      v40[0] = v13;
      v40[1] = v14;
      v35 = [NSArray arrayWithObjects:v40 count:2];
      [v38 addObjectsFromArray:v35];
    }
  }

  else
  {
    [v8 addObject:@"Count of layers"];
  }

LABEL_14:

  return v38;
}

@end