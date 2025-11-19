@interface CRLInteractiveCanvasRepContentUpdater
- (BOOL)isChildWrapperLayer:(id)a3;
- (BOOL)isRepContainerLayer:(id)a3;
- (BOOL)isRepContentLayer:(id)a3;
- (CALayerDelegate)layerDelegate;
- (CRLInteractiveCanvasRepContentUpdater)initWithCanvas:(id)a3 layerDelegate:(id)a4;
- (id)containerRenderablesForRep:(id)a3;
- (id)i_descriptionOfLayerTreeRootedAt:(id)a3;
- (id)i_firstDifferenceBetweenLayerTreeDescription:(id)a3 andDescription:(id)a4;
- (id)i_stringFromLayerDescription:(id)a3;
- (id)p_layerDescriptionFromString:(id)a3;
- (id)repForLayer:(id)a3;
- (void)p_accumulateNonRenderableBackedRepAndDescendants:(id)a3 into:(id)a4;
- (void)p_discardRenderable:(id)a3 forRep:(id)a4;
- (void)p_recursivelyUpdateRenderableForRep:(id)a3 accumulatingRepContentPiles:(id)a4 andReps:(id)a5 suppressLayers:(BOOL)a6 hidingLayersForReps:(id)a7 forcingUpdateOfValidLayers:(BOOL)a8;
- (void)p_updateChildWrapperLayer:(id)a3 forRep:(id)a4 withLayer:(id)a5;
- (void)p_visitLayer:(id)a3 atLevel:(unint64_t)a4 appendTo:(id)a5;
- (void)teardown;
- (void)updateLayerFramesOnlyForReps:(id)a3;
- (void)updateRepContentForcingUpdateOfValidLayers:(BOOL)a3;
@end

@implementation CRLInteractiveCanvasRepContentUpdater

- (CRLInteractiveCanvasRepContentUpdater)initWithCanvas:(id)a3 layerDelegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v27.receiver = self;
  v27.super_class = CRLInteractiveCanvasRepContentUpdater;
  v9 = [(CRLInteractiveCanvasRepContentUpdater *)&v27 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_canvas, a3);
    objc_storeWeak(&v10->_layerDelegate, v8);
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

- (void)updateRepContentForcingUpdateOfValidLayers:(BOOL)a3
{
  v3 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  v6 = objc_alloc_init(NSMutableOrderedSet);
  v7 = [(NSMutableArray *)self->_clonedParentRepLayers mutableCopy];
  previousClonedParentRepLayers = self->_previousClonedParentRepLayers;
  self->_previousClonedParentRepLayers = v7;

  [(NSMutableArray *)self->_clonedParentRepLayers removeAllObjects];
  context = objc_autoreleasePoolPush();
  v9 = [(NSMapTable *)self->_repRenderablesByRep keyEnumerator];
  v10 = [v9 allObjects];

  v38 = [(CRLCanvas *)self->_canvas canvasController];
  v11 = [v38 repsToHide];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v12 = [(CRLCanvas *)self->_canvas topLevelReps];
  v13 = [v12 countByEnumeratingWithState:&v52 objects:v58 count:16];
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
          objc_enumerationMutation(v12);
        }

        [(CRLInteractiveCanvasRepContentUpdater *)self p_recursivelyUpdateRenderableForRep:*(*(&v52 + 1) + 8 * i) accumulatingRepContentPiles:v5 andReps:v6 suppressLayers:0 hidingLayersForReps:v11 forcingUpdateOfValidLayers:v3];
      }

      v14 = [v12 countByEnumeratingWithState:&v52 objects:v58 count:16];
    }

    while (v14);
  }

  v37 = v11;
  v40 = v5;

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v10;
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

- (void)updateLayerFramesOnlyForReps:(id)a3
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = a3;
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
          v16 = [v9 layer];
          [(CRLInteractiveCanvasRepContentUpdater *)self p_updateChildWrapperLayer:v15 forRep:v8 withLayer:v16];
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

- (void)p_recursivelyUpdateRenderableForRep:(id)a3 accumulatingRepContentPiles:(id)a4 andReps:(id)a5 suppressLayers:(BOOL)a6 hidingLayersForReps:(id)a7 forcingUpdateOfValidLayers:(BOOL)a8
{
  v8 = a8;
  v10 = a6;
  v14 = a3;
  v192 = a4;
  v186 = a5;
  v15 = a7;
  v196 = v8;
  if (v8)
  {
    v190 = 1;
  }

  else
  {
    v190 = [(CRLCanvas *)self->_canvas i_areContentLayersInvalidForRep:v14];
  }

  v203 = self;
  [(CRLCanvas *)self->_canvas contentsScale];
  v17 = v16;
  v264 = 0;
  v265 = &v264;
  v266 = 0x3032000000;
  v267 = sub_1001E6A48;
  v268 = sub_1001E6A58;
  v18 = objc_opt_class();
  v19 = [v192 lastObject];
  v269 = sub_100013F00(v18, v19);

  if (!v265[5])
  {
    v20 = objc_alloc_init(CRLInteractiveCanvasRepLayerPile);
    v21 = v265[5];
    v265[5] = v20;

    [v192 addObject:v265[5]];
  }

  v22 = [(NSMapTable *)self->_containerLayersByRep objectForKey:v14];
  v23 = [v22 mutableCopy];

  v24 = objc_alloc_init(NSMutableArray);
  v256[0] = _NSConcreteStackBlock;
  v256[1] = 3221225472;
  v256[2] = sub_1001E6A60;
  v256[3] = &unk_101847648;
  v181 = v23;
  v257 = v181;
  v198 = v14;
  v258 = v198;
  v259 = v203;
  v262 = &v264;
  v183 = v15;
  v260 = v183;
  v263 = v190;
  v184 = v24;
  v261 = v184;
  v185 = objc_retainBlock(v256);
  v25 = (v185[2])();
  [v265[5] pushParentLayer:v25];
  v182 = v25;
  v188 = [(CRLInteractiveCanvasRepContentUpdater *)v203 renderableForRep:v198];
  v193 = [v188 layer];
  if (v190)
  {
    v26 = [v198 layerClass];
    if (v193)
    {
      if ([v193 isMemberOfClass:v26] && !v10)
      {
        goto LABEL_20;
      }

      [(CRLInteractiveCanvasRepContentUpdater *)v203 p_discardRenderable:v188 forRep:v198];

      v188 = 0;
    }

    if (v10)
    {
      v193 = 0;
    }

    else
    {
      v193 = objc_alloc_init(v26);
      v27 = [CRLCanvasRenderable renderableFromLayer:v193];

      [(NSMapTable *)v203->_repRenderablesByRep setObject:v27 forKey:v198];
      [(NSMapTable *)v203->_repsByRepRenderables setObject:v198 forKey:v27];
      WeakRetained = objc_loadWeakRetained(&v203->_layerDelegate);
      [v193 setDelegate:WeakRetained];

      if (([v198 directlyManagesLayerContent] & 1) == 0)
      {
        [v193 setNeedsDisplay];
      }

      v29 = objc_opt_class();
      v30 = sub_100014370(v29, v193);
      if (v30)
      {
        [v30 setTilingMode:{objc_msgSend(v198, "tilingMode")}];
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [v193 setContentsScale:v17];
      }

      v188 = v27;
    }
  }

LABEL_20:
  [v186 addObject:v198];
  if (!v193)
  {
    [v265[5] popParentLayer];
    goto LABEL_250;
  }

  v180 = [v198 childReps];
  if ([v180 count])
  {
    v31 = 1;
  }

  else
  {
    v31 = [v198 wantsChildRepLayerUpdatingCallsEvenWithNoChildren];
  }

  if (v190)
  {
    [v198 willUpdateRenderable:v188];
    [v198 updateRenderableGeometryFromLayout:v188];
    [v193 setMasksToBounds:{objc_msgSend(v198, "masksToBounds")}];
    [v193 setOpaque:{objc_msgSend(v198, "isOpaque")}];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [v193 setContentsScale:v17];
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

        v35 = [*(*(&v252 + 1) + 8 * i) layer];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [v35 setContentsScale:v17];
        }

        [v265[5] addLayer:v35];
      }

      v32 = [obj countByEnumeratingWithState:&v252 objects:v291 count:16];
    }

    while (v32);
  }

  if ([v198 directlyManagesAdditionalPlatformViewUnderRenderable])
  {
    v36 = [[CRLInteractiveCanvasRepContentPlatformViewPile alloc] initWithRep:v198 kind:0];
    [v192 addObject:v36];
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
    v43 = [v37 newRepLayerPileByTransferringAndCloningParentLayers:&v251 reusingPreviouslyClonedLayers:v203->_previousClonedParentRepLayers];
    v44 = v251;
    v45 = v265[5];
    v265[5] = v43;

    [v192 addObject:v265[5]];
    if ([v44 count])
    {
      if (!v203->_clonedParentRepLayers)
      {
        v46 = +[NSMutableArray array];
        clonedParentRepLayers = v203->_clonedParentRepLayers;
        v203->_clonedParentRepLayers = v46;
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

            [(NSMutableArray *)v203->_clonedParentRepLayers addObject:*(*(&v247 + 1) + 8 * j)];
          }

          v49 = [v48 countByEnumeratingWithState:&v247 objects:v290 count:16];
        }

        while (v49);
      }
    }
  }

  [v265[5] addLayer:v193];
  [(NSMapTable *)v203->_containerLayersByRep setObject:v184 forKey:v198];
  v52 = [(NSMapTable *)v203->_childWrapperLayersByRep objectForKeyedSubscript:v198];
  v191 = v52;
  if (v52)
  {
    v53 = 0;
  }

  else
  {
    v53 = v31;
  }

  if (v53 == 1)
  {
    v191 = objc_alloc_init(CRLNoDefaultImplicitActionLayer);
    v54 = objc_opt_class();
    v55 = NSStringFromClass(v54);
    v56 = [NSString stringWithFormat:@"child wrapper for %@ %p", v55, v198];
    [(CRLNoDefaultImplicitActionLayer *)v191 setName:v56];

    [(NSMapTable *)v203->_childWrapperLayersByRep setObject:v191 forKey:v198];
    [(NSMapTable *)v203->_repsByChildWrapperLayer setObject:v198 forKey:v191];
  }

  else
  {
    if (v52)
    {
      v57 = v31;
    }

    else
    {
      v57 = 1;
    }

    if ((v57 & 1) == 0)
    {
      [(NSMapTable *)v203->_childWrapperLayersByRep removeObjectForKey:v198];
      [(NSMapTable *)v203->_repsByChildWrapperLayer removeObjectForKey:v191];
    }
  }

  if (v31)
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

    [CRLInteractiveCanvasRepContentUpdater p_updateChildWrapperLayer:v203 forRep:"p_updateChildWrapperLayer:forRep:withLayer:" withLayer:?];
  }

  v63 = [v198 directlyManagesContentPlatformView];
  v64 = [v198 directlyManagesAdditionalPlatformViewOverRenderable];
  if ((v63 | v64))
  {
    if (v31)
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

    if (v63)
    {
      v70 = [[CRLInteractiveCanvasRepContentPlatformViewPile alloc] initWithRep:v198 kind:1];
      [v192 addObject:v70];
    }

    if (v64)
    {
      v71 = [[CRLInteractiveCanvasRepContentPlatformViewPile alloc] initWithRep:v198 kind:2];
      [v192 addObject:v71];
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
    v78 = [v72 newRepLayerPileByTransferringAndCloningParentLayers:&v246 reusingPreviouslyClonedLayers:v203->_previousClonedParentRepLayers];
    v79 = v246;
    v80 = v265[5];
    v265[5] = v78;

    [v192 addObject:v265[5]];
    if ([v79 count])
    {
      if (!v203->_clonedParentRepLayers)
      {
        v81 = +[NSMutableArray array];
        v82 = v203->_clonedParentRepLayers;
        v203->_clonedParentRepLayers = v81;
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

            [(NSMutableArray *)v203->_clonedParentRepLayers addObject:*(*(&v242 + 1) + 8 * k)];
          }

          v84 = [v83 countByEnumeratingWithState:&v242 objects:v289 count:16];
        }

        while (v84);
      }
    }

    v87 = v31 ^ 1;
    if (!v31)
    {
      goto LABEL_121;
    }

LABEL_131:
    [v198 willUpdateChildLayers];
    v93 = +[NSSet set];
    if ([v198 drawsDescendantsIntoLayer])
    {
      v94 = [NSSet setWithArray:v180];

      v95 = [v198 childrenToExcludeWhenDrawingDescendantsIntoLayer];
      v93 = [v94 crl_setBySubtractingSet:v95];
    }

    v189 = [NSMutableOrderedSet orderedSetWithArray:v180];
    v235[0] = _NSConcreteStackBlock;
    v235[1] = 3221225472;
    v235[2] = sub_1001E6DC4;
    v235[3] = &unk_101847770;
    v201 = v93;
    v236 = v201;
    v237 = v203;
    v200 = v186;
    v238 = v200;
    v195 = v192;
    v239 = v195;
    v194 = v183;
    v240 = v194;
    v241 = v8;
    v187 = objc_retainBlock(v235);
    if (([v198 directlyManagesContentPlatformView] & 1) == 0)
    {
      [v265[5] pushParentLayer:v193];
      v96 = [v198 renderablesDescendingDirectlyFromContentRenderable];
      if ([v96 count])
      {
        v233 = 0u;
        v234 = 0u;
        v231 = 0u;
        v232 = 0u;
        v97 = v96;
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
              v102 = [*(*(&v231 + 1) + 8 * m) layer];
              [v101 addLayer:v102];
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
      v103 = v180;
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
      v109 = [v195 lastObject];
      v110 = sub_100013F00(v108, v109);
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
          v123 = [v121 layer];
          [v122 addLayer:v123];
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

            if ([v201 containsObject:v133])
            {
              [(CRLInteractiveCanvasRepContentUpdater *)v203 p_accumulateNonRenderableBackedRepAndDescendants:v133 into:v200];
            }

            else
            {
              [(CRLInteractiveCanvasRepContentUpdater *)v203 p_recursivelyUpdateRenderableForRep:v133 accumulatingRepContentPiles:v195 andReps:v200 suppressLayers:0 hidingLayersForReps:v194 forcingUpdateOfValidLayers:v196];
            }

            v132 = v132 + 1;
          }

          while (v130 != v132);
          v130 = [v197 countByEnumeratingWithState:&v219 objects:v285 count:16];
        }

        while (v130);
      }

      v148 = objc_opt_class();
      v149 = [v195 lastObject];
      v150 = sub_100013F00(v148, v149);
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
  if (v31)
  {
    goto LABEL_131;
  }

LABEL_121:
  v201 = [v198 renderablesDescendingDirectlyFromContentRenderable];
  if ([v201 count])
  {
    [v265[5] pushParentLayer:v193];
    v215 = 0u;
    v216 = 0u;
    v213 = 0u;
    v214 = 0u;
    v201 = v201;
    v88 = [v201 countByEnumeratingWithState:&v213 objects:v272 count:16];
    if (v88)
    {
      v89 = *v214;
      do
      {
        for (ii = 0; ii != v88; ii = ii + 1)
        {
          if (*v214 != v89)
          {
            objc_enumerationMutation(v201);
          }

          v91 = v265[5];
          v92 = [*(*(&v213 + 1) + 8 * ii) layer];
          [v91 addLayer:v92];
        }

        v88 = [v201 countByEnumeratingWithState:&v213 objects:v272 count:16];
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

        v163 = [*(*(&v209 + 1) + 8 * jj) layer];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [v163 setContentsScale:v17];
        }

        [v265[5] addLayer:v163];
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
      [v192 addObject:v164];
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
      v171 = [v165 newRepLayerPileByTransferringAndCloningParentLayers:&v208 reusingPreviouslyClonedLayers:v203->_previousClonedParentRepLayers];
      v172 = v208;
      v173 = v265[5];
      v265[5] = v171;

      [v192 addObject:v265[5]];
      if ([v172 count])
      {
        if (!v203->_clonedParentRepLayers)
        {
          v174 = +[NSMutableArray array];
          v175 = v203->_clonedParentRepLayers;
          v203->_clonedParentRepLayers = v174;
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

              [(NSMutableArray *)v203->_clonedParentRepLayers addObject:*(*(&v204 + 1) + 8 * kk)];
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

- (void)p_updateChildWrapperLayer:(id)a3 forRep:(id)a4 withLayer:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  [v7 setMasksToBounds:{objc_msgSend(v9, "masksToBounds")}];
  v10 = [v9 isOpaque];

  [v7 setOpaque:v10];
  [v8 layerFrameInScaledCanvasRelativeToParent];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  memset(&v37[1], 0, sizeof(CGAffineTransform));
  if (v8)
  {
    [v8 i_layerTransform];
  }

  v37[0] = v37[1];
  [v7 crl_setIfDifferentFrame:v37 orTransform:{v12, v14, v16, v18}];
  [v8 rectToClipChildRepRenderables];
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
    [v7 setMask:0];
  }

  else
  {
    if (v8)
    {
      [v8 transformToConvertNaturalToLayerRelative];
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
    v31 = [v7 mask];
    if (!v31)
    {
      v31 = +[CRLNoDefaultImplicitActionLayer layer];
      v32 = +[CRLColor blackColor];
      [v31 setBackgroundColor:{objc_msgSend(v32, "CGColor")}];

      [v7 setMask:v31];
    }

    [v31 frame];
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
      [v31 setFrame:{x, y, width, height}];
    }
  }
}

- (void)p_discardRenderable:(id)a3 forRep:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [v8 layer];
  [v7 setDelegate:0];
  if (v8)
  {
    [v7 setContents:0];
    [(NSMapTable *)self->_repsByRepRenderables removeObjectForKey:v8];
    [v7 crl_cancelLayoutForTilingLayers];
  }

  if (v6)
  {
    [(NSMapTable *)self->_repRenderablesByRep removeObjectForKey:v6];
  }
}

- (void)p_accumulateNonRenderableBackedRepAndDescendants:(id)a3 into:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v7 addObject:v6];
  v8 = [(CRLInteractiveCanvasRepContentUpdater *)self renderableForRep:v6];
  if (v8)
  {
    [(CRLInteractiveCanvasRepContentUpdater *)self p_discardRenderable:v8 forRep:v6];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = [v6 childReps];
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v9);
        }

        [(CRLInteractiveCanvasRepContentUpdater *)self p_accumulateNonRenderableBackedRepAndDescendants:*(*(&v14 + 1) + 8 * v13) into:v7];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (id)repForLayer:(id)a3
{
  repsByRepRenderables = self->_repsByRepRenderables;
  v4 = [CRLCanvasRenderable renderableFromLayer:a3];
  v5 = [(NSMapTable *)repsByRepRenderables objectForKey:v4];

  return v5;
}

- (id)containerRenderablesForRep:(id)a3
{
  v3 = [(NSMapTable *)self->_containerLayersByRep objectForKey:a3];
  v4 = [v3 crl_arrayByMappingObjectsUsingBlock:&stru_101847918];

  return v4;
}

- (BOOL)isRepContentLayer:(id)a3
{
  repsByRepRenderables = self->_repsByRepRenderables;
  v4 = [CRLCanvasRenderable renderableFromLayer:a3];
  v5 = [(NSMapTable *)repsByRepRenderables objectForKey:v4];
  LOBYTE(repsByRepRenderables) = v5 != 0;

  return repsByRepRenderables;
}

- (BOOL)isRepContainerLayer:(id)a3
{
  v3 = [(NSMapTable *)self->_repsByContainerLayer objectForKey:a3];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)isChildWrapperLayer:(id)a3
{
  v3 = [(NSMapTable *)self->_repsByChildWrapperLayer objectForKey:a3];
  v4 = v3 != 0;

  return v4;
}

- (CALayerDelegate)layerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_layerDelegate);

  return WeakRetained;
}

- (id)i_stringFromLayerDescription:(id)a3
{
  v3 = a3;
  v4 = [&stru_1018BCA28 stringByPaddingToLength:4 * objc_msgSend(v3 withString:"levelInTree") startingAtIndex:{@" ", 0}];
  v5 = [v3 layerClass];
  v6 = [v3 layerPointer];
  v7 = [v3 layerPurpose];
  v8 = [v3 repClass];
  v9 = [v3 repPointer];
  v10 = [v3 layerPosition];
  v11 = [v3 layerBounds];

  v12 = [NSString stringWithFormat:@"%@%@ %@ %@ %@ %@ %@ %@", v4, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (id)p_layerDescriptionFromString:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_CRLLayerDescription);
  v5 = 0;
  if ([v3 length])
  {
    do
    {
      if ([v3 characterAtIndex:v5] != 32)
      {
        break;
      }

      ++v5;
    }

    while (v5 < [v3 length]);
  }

  [(_CRLLayerDescription *)v4 setLevelInTree:v5 >> 2];
  v6 = [v3 substringFromIndex:v5];
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

- (void)p_visitLayer:(id)a3 atLevel:(unint64_t)a4 appendTo:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = objc_alloc_init(_CRLLayerDescription);
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  [(_CRLLayerDescription *)v10 setLayerClass:v12];

  v13 = [NSString stringWithFormat:@"%p", v8];
  [(_CRLLayerDescription *)v10 setLayerPointer:v13];

  [(_CRLLayerDescription *)v10 setLevelInTree:a4];
  [v8 bounds];
  v14 = NSStringFromCGRect(v39);
  v15 = [v14 stringByReplacingOccurrencesOfString:@" " withString:&stru_1018BCA28];
  [(_CRLLayerDescription *)v10 setLayerBounds:v15];

  [v8 position];
  v16 = NSStringFromCGPoint(v38);
  v17 = [v16 stringByReplacingOccurrencesOfString:@" " withString:&stru_1018BCA28];
  [(_CRLLayerDescription *)v10 setLayerPosition:v17];

  repsByRepRenderables = self->_repsByRepRenderables;
  v19 = [CRLCanvasRenderable renderableFromLayer:v8];
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

  v22 = [(NSMapTable *)self->_repsByContainerLayer objectForKey:v8];
  if (v22)
  {
    v20 = v22;
    v21 = @"RepContainer";
    goto LABEL_7;
  }

  v23 = [(NSMapTable *)self->_repsByChildWrapperLayer objectForKey:v8];
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
  [v9 appendFormat:@"%@\n", v27];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v28 = [v8 sublayers];
  v29 = [v28 countByEnumeratingWithState:&v33 objects:v37 count:16];
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
          objc_enumerationMutation(v28);
        }

        [(CRLInteractiveCanvasRepContentUpdater *)self p_visitLayer:*(*(&v33 + 1) + 8 * v32) atLevel:a4 + 1 appendTo:v9];
        v32 = v32 + 1;
      }

      while (v30 != v32);
      v30 = [v28 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v30);
  }
}

- (id)i_descriptionOfLayerTreeRootedAt:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableString string];
  [(CRLInteractiveCanvasRepContentUpdater *)self p_visitLayer:v4 atLevel:0 appendTo:v5];

  return v5;
}

- (id)i_firstDifferenceBetweenLayerTreeDescription:(id)a3 andDescription:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSMutableArray array];
  v37 = v6;
  v9 = [v6 componentsSeparatedByString:@"\n"];
  v36 = v7;
  v10 = [v7 componentsSeparatedByString:@"\n"];
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
          v33 = [v15 levelInTree];
          if (v33 == [v16 levelInTree])
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