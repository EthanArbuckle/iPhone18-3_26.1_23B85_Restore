@interface TUIFeedLayoutController
- (BOOL)_lq_shouldInstantiateEntry:(id)a3 sectionIndex:(unint64_t)a4 transactionGroup:(id)a5;
- (BOOL)_lq_shouldSubmitRenderModelUpdate:(BOOL)a3 transactionGroup:(id)a4;
- (BOOL)lq_updateHostingGeometryMap:(id)a3;
- (TUIActionHandlerDelegate)actionHandlerDelegate;
- (TUIFeedLayoutController)initWithFeedId:(id)a3 environment:(id)a4 factory:(id)a5 manager:(id)a6 renderMode:(unint64_t)a7;
- (TUIFeedLayoutControllerDelegate)delegate;
- (TUITransactionDependencyToken)lastContentTransactionToken;
- (TUITransactionDependencyToken)lastEnvironmentTransactionToken;
- (id)_infoForFinal:(BOOL)a3;
- (id)instantiateContext:(id)a3 serviceConformingToProtocol:(id)a4;
- (id)lq_createRenderModelForFeedEntry:(id)a3 section:(int64_t)a4;
- (id)lq_loadFeedEntry:(id)a3 data:(id)a4 section:(int64_t)a5 transactionGroup:(id)a6;
- (void)_cancelDataRequests;
- (void)_lq_scheduleLayoutRemainder;
- (void)_updateAfterLayoutConditionSuspendingUpdatesInvalidated;
- (void)beginLiveResize;
- (void)captureWithController:(id)a3 completion:(id)a4;
- (void)collectStatsWithCompletion:(id)a3;
- (void)dumpLayoutTreeForEntry:(id)a3 completion:(id)a4;
- (void)dumpModelTreeForEntry:(id)a3 completion:(id)a4;
- (void)endLiveResize;
- (void)layoutIfNeededWithTransaction:(id)a3;
- (void)lq_updateAXModelTreeWithTransactionGroup:(id)a3;
- (void)lq_updateContent:(id)a3 contentUpdateDate:(id)a4 transaction:(id)a5 transactionGroup:(id)a6;
- (void)lq_updateRenderModelsWithTransactionGroup:(id)a3;
- (void)resumeAndRebuildWithEnvironment:(id)a3 state:(id)a4 transaction:(id)a5;
- (void)setDelegate:(id)a3;
- (void)setLayoutState:(unint64_t)a3;
- (void)setPriority:(float)a3;
- (void)setStatsMode:(unint64_t)a3;
- (void)statRecordInitialResourcesRenderedDate;
- (void)statRecordResourcesLoadedDate;
- (void)statRecordResourcesStartLoadingDate;
- (void)statRecordViewWillAppear;
- (void)suspendAndTeardownWithTransaction:(id)a3;
- (void)suspendLayoutsUntilMeetingLayoutCondition:(id)a3;
- (void)suspendUpdatesUntilMeetingLayoutCondition:(id)a3;
- (void)transactionCoordinator:(id)a3 applyUpdatesFromTransactionGroup:(id)a4;
- (void)transactionCoordinator:(id)a3 timeoutForSynchronousTransactionGroup:(id)a4;
- (void)transactionCoordinator:(id)a3 updateWithTransactionGroup:(id)a4;
- (void)updateDatesCollectorWithBlock:(id)a3;
- (void)updateHostingGeometryMap:(id)a3 withTransaction:(id)a4;
- (void)updateWithContent:(id)a3 layoutUpToEntry:(id)a4 environment:(id)a5 transaction:(id)a6;
- (void)updateWithContent:(id)a3 transaction:(id)a4;
- (void)updateWithEnvironment:(id)a3 state:(id)a4 withTransaction:(id)a5;
@end

@implementation TUIFeedLayoutController

- (TUIFeedLayoutController)initWithFeedId:(id)a3 environment:(id)a4 factory:(id)a5 manager:(id)a6 renderMode:(unint64_t)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v48.receiver = self;
  v48.super_class = TUIFeedLayoutController;
  v16 = [(TUIFeedLayoutController *)&v48 init];
  v17 = v16;
  if (v16)
  {
    v16->_feedId.uniqueIdentifier = a3.var0;
    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_attr_make_with_qos_class(v18, QOS_CLASS_USER_INITIATED, 0);

    v17->_priority = 0.5;
    v20 = objc_alloc_init(TUIWorkQueueContext);
    queueContext = v17->_queueContext;
    v17->_queueContext = v20;

    v22 = dispatch_queue_create("TUIFeedLayoutController.dataRequestsSync", v19);
    dataRequestsSync = v17->_dataRequestsSync;
    v17->_dataRequestsSync = v22;

    objc_storeStrong(&v17->_environment, a4);
    objc_storeStrong(&v17->_manager, a6);
    objc_storeStrong(&v17->_templateFactory, a5);
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

    v17->_renderModelMode = a7;
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
      v40 = [(TUIWorkQueueContext *)v17->_queueContext workQueue];
      v41 = [(TUIRenderUpdateCollectionController *)v39 initWithLayoutQueue:v40 renderModel:0];
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

- (void)setDelegate:(id)a3
{
  obj = a3;
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

- (id)lq_createRenderModelForFeedEntry:(id)a3 section:(int64_t)a4
{
  v6 = a3;
  v7 = [[_TUIFeedLayoutSection alloc] initWithFeedId:self->_feedId.uniqueIdentifier section:a4 controller:self entry:v6];

  [(_TUIFeedLayoutSection *)v7 setStatsMode:self->_lq_statsMode];
  sections = self->_sections;
  v9 = [NSNumber numberWithInteger:a4];
  [(NSMutableDictionary *)sections setObject:v7 forKey:v9];

  v10 = [(_TUIFeedLayoutSection *)v7 renderModel];

  return v10;
}

- (id)lq_loadFeedEntry:(id)a3 data:(id)a4 section:(int64_t)a5 transactionGroup:(id)a6
{
  sections = self->_sections;
  v11 = a6;
  v12 = a4;
  v13 = a3;
  v14 = [NSNumber numberWithInteger:a5];
  v15 = [(NSMutableDictionary *)sections objectForKeyedSubscript:v14];

  [v15 lq_loadOrUpdateEntry:v13 data:v12 controller:self transactionGroup:v11];
  v16 = [v15 renderModel];

  return v16;
}

- (id)_infoForFinal:(BOOL)a3
{
  if (a3)
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

- (void)lq_updateRenderModelsWithTransactionGroup:(id)a3
{
  v3 = a3;
  kdebug_trace();
  v4 = TUILayoutLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    uniqueIdentifier = self->_feedId.uniqueIdentifier;
    *buf = 134218242;
    *&buf[4] = uniqueIdentifier;
    *&buf[12] = 2112;
    *&buf[14] = v3;
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

  v11 = self;
  statsLiveResize = self->_statsLiveResize;
  if (statsLiveResize)
  {
    [(TUIStatsLiveResize *)statsLiveResize beginFrame];
    [(NSMutableDictionary *)self->_sections enumerateKeysAndObjectsUsingBlock:&stru_260F60];
    v11 = self;
  }

  [(TUIStatsTimingCollector *)v11->_timingCollector startPhase:0];
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
  v13 = [*(*&buf[8] + 40) sections];
  v14 = v13;
  v15 = &__NSArray0__struct;
  if (v13)
  {
    v15 = v13;
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
    v19 = [(TUIFeedContent *)self->_content entries];
    v390[0] = _NSConcreteStackBlock;
    v390[1] = 3221225472;
    v390[2] = sub_C13CC;
    v390[3] = &unk_260F88;
    v390[4] = self;
    v20 = [v19 indexOfObjectPassingTest:v390];

    v21 = 0x7FFFFFFFFFFFFFFFLL;
    if (v20 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v22 = [(TUIFeedContent *)self->_content entries];
      v23 = v20 + 1 == [v22 count];

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
    v27 = self;
    while (1)
    {
      sections = v27->_sections;
      v29 = [NSNumber numberWithUnsignedInteger:v25];
      v30 = [(NSMutableDictionary *)sections objectForKeyedSubscript:v29];

      if (([v30 needsInstantiation] & 1) == 0 || (v25 > v21 ? (v31 = v21 != 0x7FFFFFFFFFFFFFFFLL) : (v31 = 0), v31 || (v21 == 0x7FFFFFFFFFFFFFFFLL || v25 > v21) && (objc_msgSend(v30, "entry"), v32 = objc_claimAutoreleasedReturnValue(), v33 = -[TUIFeedLayoutController _lq_shouldInstantiateEntry:sectionIndex:transactionGroup:](self, "_lq_shouldInstantiateEntry:sectionIndex:transactionGroup:", v32, v25, v3), v32, !v33)))
      {
        v325 = 0;
        goto LABEL_38;
      }

      v34 = objc_autoreleasePoolPush();
      [v30 lq_instantiateWithController:self transactionGroup:v3];
      objc_autoreleasePoolPop(v34);
      if (v21 == v25)
      {
        break;
      }

      v35 = [v30 renderModel];
      if (v35)
      {

        v36 = 1;
      }

      else
      {
        v37 = [v30 layerRenderModel];
        v36 = v37 != 0;

        if (!v36)
        {
          goto LABEL_35;
        }
      }

      v25 += v36;
      v27 = self;
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

  v328 = [v392[5] lastObject];
  *&v401 = 0;
  *(&v401 + 1) = &v401;
  v402 = 0x3010000000;
  v404 = 0;
  v405 = 0.0;
  v403 = "";
  [(TUIEnvironment *)self->_environment viewSize];
  v47 = v46;
  if (v328)
  {
    [v328 frame];
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
  v50 = [(TUIFeedContent *)self->_content currentStackName];
  v51 = [v50 value];
  v327 = TUIDynamicCast(v49, v51);

  v52 = self;
  if (!self->_environmentChanged || (layoutViewState = self->_layoutViewState) == 0 || !self->_prevEnvironment)
  {
    v338 = 0x7FFFFFFFFFFFFFFFLL;
    obj = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_58;
  }

  v54 = [(TUIFeedViewState *)layoutViewState feedScrollAnchor];
  v55 = [v54 anchor];
  v56 = [v55 identifier];

  if (!v56)
  {
LABEL_120:
    v338 = 0x7FFFFFFFFFFFFFFFLL;
    obj = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_251;
  }

  v57 = [(TUIFeedContent *)self->_content entries];
  v58 = [v57 valueForKey:@"uuid"];
  v59 = [v58 indexOfObject:v56];

  obj = 0x7FFFFFFFFFFFFFFFLL;
  v338 = 0x7FFFFFFFFFFFFFFFLL;
  if (v59 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v59 < self->_layoutNextSection)
    {
      v60 = self->_sections;
      v61 = [NSNumber numberWithUnsignedInteger:v59];
      v62 = [(NSMutableDictionary *)v60 objectForKeyedSubscript:v61];

      v63 = [v62 renderModel];
      [v63 size];
      v65 = v64;

      [(TUIEnvironment *)self->_prevEnvironment viewSize];
      v67 = v66;
      v68 = [v54 anchor];
      v69 = [v68 position];

      if (v69 == &dword_0 + 1)
      {
        v70 = v67 - v65;
        v71 = self;
      }

      else
      {
        v70 = 0.0;
        v71 = self;
        if (v69 == &dword_0 + 2)
        {
          v70 = (v67 - v65) * 0.5;
        }
      }

      [v54 relativeDistance];
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
            v306 = v71->_sections;
            v307 = [NSNumber numberWithUnsignedInteger:v304];
            v308 = [(NSMutableDictionary *)v306 objectForKeyedSubscript:v307];
            v309 = [v308 renderModel];
            [v309 size];
            v311 = v310;

            v199 = v304-- != 0;
            v71 = self;
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
      if ((v59 + 1) < v71->_layoutNextSection)
      {
        v313 = v67 - (v65 + v303);
        if (v313 > 0.0)
        {
          do
          {
            if (v312 >= v71->_layoutNextSection)
            {
              break;
            }

            v314 = v71->_sections;
            v315 = [NSNumber numberWithUnsignedInteger:v312];
            v316 = [(NSMutableDictionary *)v314 objectForKeyedSubscript:v315];
            v317 = [v316 renderModel];
            [v317 size];
            v319 = v318;

            v313 = v313 - v319;
            ++v312;
            v71 = self;
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

  v52 = self;
LABEL_58:
  prevEnvironment = v52->_prevEnvironment;
  v52->_prevEnvironment = 0;

  v73 = self;
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

      v73 = self;
    }

    if (v73->_layoutNextSection)
    {
      v78 = v73;
      v79 = 0;
      do
      {
        v80 = v78->_sections;
        v81 = [NSNumber numberWithUnsignedInteger:v79];
        v82 = [(NSMutableDictionary *)v80 objectForKeyedSubscript:v81];

        [v82 setEnvironmentNeedsUpdate:1];
        [(TUIEnvironment *)self->_environment viewSize];
        v84 = v83;
        v85 = [v82 renderModel];
        [v85 size];
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
        v89 = [v82 renderModel];
        [v77 addObject:v89];

        ++v79;
        v78 = self;
      }

      while (v79 < self->_layoutNextSection);
    }

    if (v77)
    {
      v90 = [v77 copy];
      v91 = v392[5];
      v392[5] = v90;
    }

    v73 = self;
  }

  v375[0] = _NSConcreteStackBlock;
  v375[1] = 3221225472;
  v375[2] = sub_C1414;
  v375[3] = &unk_260FB0;
  v375[4] = v73;
  v342 = v3;
  v376 = v342;
  v347 = v327;
  v377 = v347;
  v378 = &v380;
  v379 = &v384;
  v333 = objc_retainBlock(v375);
  v92 = self;
  layoutFlags = self->_layoutFlags;
  self->_layoutFlags = 0;
  v93 = self->_layoutViewState;
  if (!v93)
  {
    goto LABEL_82;
  }

  v94 = [(TUIFeedViewState *)v93 feedScrollAnchor];
  v95 = [v94 anchor];
  v96 = [v95 identifier];

  if (v96)
  {
    v97 = [(TUIFeedContent *)self->_content entries];
    v98 = [v97 valueForKey:@"uuid"];
    v99 = [v98 indexOfObject:v96];

    if (v99 != 0x7FFFFFFFFFFFFFFFLL && v99 < self->_layoutNextSection)
    {
      (v333[2])(v333, v99);
      v100 = self->_sections;
      v101 = [NSNumber numberWithUnsignedInteger:v99];
      v336 = [(NSMutableDictionary *)v100 objectForKeyedSubscript:v101];

      v102 = [v336 renderModel];
      [v102 size];
      v104 = v103;

      [(TUIEnvironment *)self->_environment viewSize];
      v106 = v105;
      v107 = [v94 anchor];
      v108 = [v107 position];

      if (v108 == &dword_0 + 1)
      {
        v109 = v106 - v104;
      }

      else
      {
        v109 = 0.0;
        if (v108 == &dword_0 + 2)
        {
          v109 = (v106 - v104) * 0.5;
        }
      }

      [v94 relativeDistance];
      v183 = v182;
      v184 = [v342 options];
      v185 = [v184 timingProvider];

      v186 = v109 + v106 * 0.5 * v183;
      if (v185)
      {
        v187 = v106 - (v104 + v186) + v106 * 0.5;
      }

      else
      {
        v187 = v106 - (v104 + v186);
      }

      if (v99)
      {
        if (v185)
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
          v195 = [v194 renderModel];
          [v195 size];
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
          v204 = [v203 renderModel];
          [v204 size];
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

  v92 = self;
LABEL_82:
  if (!v92->_layoutNumberOfSections)
  {
    v334 = 0;
    v339 = 1;
    goto LABEL_97;
  }

  v112 = 0;
  v113 = v92;
  v114 = 0.0;
  while (1)
  {
    v115 = v113->_sections;
    v116 = [NSNumber numberWithUnsignedInteger:v112];
    v117 = [(NSMutableDictionary *)v115 objectForKeyedSubscript:v116];

    v118 = [v117 renderModel];
    v334 = v118 != 0;

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
    v120 = [v117 renderModel];
    [v120 size];
    v122 = v121;

    v123 = [v117 entry];
    v124 = [v123 stackNames];
    v125 = [v124 containsObject:v347];

    if (!v125)
    {
      v122 = 0.0;
    }

    v114 = v114 + v122;
    ++v112;
    v113 = self;
    if (v112 >= self->_layoutNumberOfSections)
    {
      v334 = 0;
      v339 = 1;
      v92 = self;
      goto LABEL_97;
    }
  }

  v339 = 1;
LABEL_96:
  v92 = self;
LABEL_97:
  if (*(v381 + 24) == 1)
  {
    v126 = [v342 date];
    [(TUIStatsDatesCollector *)v92->_datesCollector setDynamicUpdateDate:v126];

    v92 = self;
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
          v133 = [v132 section];
          v134 = self->_sections;
          v135 = [NSNumber numberWithUnsignedInteger:v133];
          v136 = [(NSMutableDictionary *)v134 objectForKeyedSubscript:v135];

          if ([v385[5] containsIndex:v133])
          {
            v137 = [v136 renderModel];
          }

          else
          {
            v137 = v132;
          }

          [v137 size];
          v139 = v138;
          v141 = v140;
          v142 = [v136 entry];
          v143 = [v142 stackNames];
          v144 = [v143 containsObject:v347];

          if (!v144)
          {
            v141 = 0.0;
          }

          v145 = [v137 section];
          v146 = [v132 UUID];
          v147 = [v137 copyWithSection:v145 offset:v146 size:0.0 uuid:{v130, v139, v141}];

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

    v92 = self;
  }

  if (!v339)
  {
    goto LABEL_135;
  }

  v151 = v92->_layoutNextSection;
  if (!v92->_layoutUntilEntryWithUUID || !v151)
  {
LABEL_122:
    if (v151 < v92->_layoutNumberOfSections)
    {
      v159 = 0;
      while (1)
      {
        v160 = v92->_sections;
        v161 = [NSNumber numberWithUnsignedInteger:?];
        v158 = [(NSMutableDictionary *)v160 objectForKeyedSubscript:v161];

        v337 = [v158 renderModel];

        if (!v337)
        {
          v337 = 0;
          goto LABEL_175;
        }

        v162 = self;
        if (!self->_layoutUntilEntryWithUUID && (*&self->_flags & 1) != 0)
        {
          v163 = *(*(&v401 + 1) + 40);
          [(TUIEnvironment *)self->_environment viewSize];
          if (v163 > v164)
          {
            break;
          }

          v165 = self->_layoutNextSection;
          v166 = [(TUIFeedContent *)self->_content initialContentReadyEntryIndex];
          v162 = self;
          if (v165 > v166)
          {
            break;
          }
        }

        ++v162->_layoutNextSection;
        [v337 size];
        v168 = v167;
        v170 = v169;
        v171 = [v158 entry];
        v172 = [v171 stackNames];
        v173 = [v172 containsObject:v347];

        if (!v173)
        {
          v170 = 0.0;
        }

        v174 = [v337 section];
        v175 = *(*(&v401 + 1) + 40);
        v176 = [v337 UUID];
        v159 = [v337 copyWithSection:v174 offset:v176 size:0.0 uuid:{v175, v168, v170}];

        [v159 frame];
        *(*(&v401 + 1) + 40) = CGRectGetHeight(v412) + *(*(&v401 + 1) + 40);
        v177 = [v392[5] arrayByAddingObject:v159];
        v178 = v392[5];
        v392[5] = v177;

        if (self->_layoutUntilEntryWithUUID)
        {
          v179 = [v159 UUID];
          v180 = [v179 isEqual:self->_layoutUntilEntryWithUUID];

          if (v180)
          {
            layoutUntilEntryWithUUID = self->_layoutUntilEntryWithUUID;
            self->_layoutUntilEntryWithUUID = 0;

            v325 = 1;
            v331 = 1;
            v337 = v159;
            goto LABEL_175;
          }
        }

        v92 = self;
        v331 = 1;
        if (self->_layoutNextSection >= self->_layoutNumberOfSections)
        {
          v337 = v159;
          goto LABEL_176;
        }
      }

      v334 = 1;
      goto LABEL_175;
    }

LABEL_135:
    v337 = 0;
    goto LABEL_176;
  }

  v152 = v92->_sections;
  v153 = [NSNumber numberWithUnsignedInteger:v151 - 1];
  v154 = [(NSMutableDictionary *)v152 objectForKeyedSubscript:v153];
  v155 = [v154 renderModel];
  v156 = [v155 UUID];
  v157 = [v156 isEqual:v92->_layoutUntilEntryWithUUID];

  if ((v157 & 1) == 0)
  {
    v92 = self;
    v151 = self->_layoutNextSection;
    goto LABEL_122;
  }

  v337 = 0;
  v158 = self->_layoutUntilEntryWithUUID;
  self->_layoutUntilEntryWithUUID = 0;
  v325 = 1;
LABEL_175:

  v92 = self;
LABEL_176:
  v335 = objc_alloc_init(NSMutableArray);
  v332 = objc_alloc_init(NSMutableArray);
  v207 = [(TUIAnchorSet *)[TUIMutableAnchorSet alloc] initWithAxis:2];
  v340 = objc_opt_new();
  objb = objc_alloc_init(TUILayoutRenderModelCollector);
  if (v92->_layoutNextSection)
  {
    v208 = 0;
    do
    {
      v209 = v92->_sections;
      v210 = [NSNumber numberWithUnsignedInteger:v208];
      v211 = [(NSMutableDictionary *)v209 objectForKeyedSubscript:v210];

      v212 = [v211 renderModel];
      v213 = [v212 UUID];

      [v211 lq_appendAnchorsToSet:v207];
      v214 = [v211 renderModel];
      [v214 size];
      v216 = v215;

      if (!v208)
      {
        v217 = [[TUILogicalScrollAnchor alloc] initWithPosition:0 identifier:v213];
        [(TUIMutableAnchorSet *)v207 appendLogicalScrollAnchor:v217 withOffset:0.0];
      }

      v218 = [[TUILogicalScrollAnchor alloc] initWithPosition:2 identifier:v213];
      [(TUIMutableAnchorSet *)v207 appendLogicalScrollAnchor:v218 withOffset:v216 * 0.5];

      if (++v208 == self->_layoutNextSection)
      {
        v219 = [[TUILogicalScrollAnchor alloc] initWithPosition:1 identifier:v213];
        [(TUIMutableAnchorSet *)v207 appendLogicalScrollAnchor:v219 withOffset:v216];
      }

      [(TUIMutableAnchorSet *)v207 translationOffset];
      [(TUIMutableAnchorSet *)v207 setTranslationOffset:v216 + v220];
      [v211 lq_updateAuxiliaryLayoutWithTransactionGroup:v342];
      v221 = [v211 auxRenderModel];

      if (v221)
      {
        v222 = [v211 auxRenderModel];
        [v335 addObject:v222];
      }

      v223 = [v211 layoutController];
      v224 = [v223 rootLayout];
      v225 = [v211 renderModel];
      [v225 offset];
      [v224 appendVisibleBoundsObservers:v340 axis:2 offset:v226];

      v227 = [v211 layoutController];
      v228 = [v227 rootLayout];
      v229 = [v211 entry];
      v230 = [v229 uuid];
      [(TUILayoutRenderModelCollector *)objb collectWithRoot:v228 options:1 entryUUID:v230];

      v92 = self;
    }

    while (v208 < self->_layoutNextSection);
  }

  v231 = [(TUILayoutRenderModelCollector *)objb hostingCollectorFinalizeMap];
  if ([(TUIHostingMap *)v231 isEqualToMap:v92->_currentHostingMap])
  {
    currentHostingMap = v92->_currentHostingMap;
    v233 = v231;
    v231 = currentHostingMap;

    v92 = self;
  }

  v323 = v231;
  objc_storeStrong(&v92->_currentHostingMap, v231);
  v234 = self;
  v326 = [[TUIRenderModelAuxiliary alloc] initWithModels:v335];
  if (!self->_currentAuxiliaryModel || [v335 count] && !-[TUIRenderModelAuxiliary isEqualToRenderModel:](v326, "isEqualToRenderModel:", self->_currentAuxiliaryModel))
  {
    objc_storeStrong(&self->_currentAuxiliaryModel, v326);
    v234 = self;
  }

  if (v234->_renderModelMode == 1)
  {
    if (v234->_layoutNumberOfSections)
    {
      v235 = 0;
      v330 = 0;
      v236 = 0.0;
      v320 = 134218240;
      while (1)
      {
        v237 = v234->_sections;
        v238 = [NSNumber numberWithUnsignedInteger:v235, v320];
        v239 = [(NSMutableDictionary *)v237 objectForKeyedSubscript:v238];

        v240 = [v239 layerRenderModel];
        v241 = v240 == 0;

        if (v241)
        {
          break;
        }

        [v239 lq_updateLayerLayoutWithTransactionGroup:v342];
        v242 = [v239 layerRenderModel];
        v243 = [v242 identifier];
        v244 = v243 == 0;

        if (v244)
        {
          v245 = [v239 layerRenderModel];
          [v245 setIdentifier:&off_274D08];

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

        v247 = [v239 layerRenderModel];
        v248 = [[TUIRenderModelTransform alloc] initWithSubmodel:v247];
        [v247 size];
        v250 = v249;
        [v247 size];
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
        [v247 size];
        v255 = v254;
        [v332 addObject:v248];

        v236 = v236 + v255;
        ++v235;
        v234 = self;
        if (v235 >= self->_layoutNumberOfSections)
        {
          goto LABEL_204;
        }
      }

      v234 = self;
    }

    else
    {
      v330 = 0;
    }

LABEL_204:
    v257 = [v332 lastObject];
    [(TUIEnvironment *)v234->_environment viewSize];
    v259 = v258;
    if (v257)
    {
      [v257 frame];
      v260 = CGRectGetMaxY(v415);
    }

    else
    {
      v260 = 0.0;
    }

    v261 = [[TUIContainerLayerConfig alloc] initWithSize:v259, v260];
    v262 = [[TUIRenderModelLayer alloc] initWithSubmodels:v332 config:v261 erasableInsets:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
    [(TUIRenderModelLayer *)v262 setSize:v259, v260];
    if (!v234->_currentLayerRenderModel || [v332 count] && !-[TUIRenderModelLayer isEqualToRenderModel:](v262, "isEqualToRenderModel:", v234->_currentLayerRenderModel))
    {
      objc_storeStrong(&v234->_currentLayerRenderModel, v262);
    }

    v234 = self;
  }

  else
  {
    v330 = 0;
  }

  [(TUIEnvironment *)v234->_environment contentsScale];
  [(TUIMutableAnchorSet *)v207 finalizeWithContentsScale:?];
  v263 = [(TUIMutableAnchorSet *)v207 copy];
  anchorSet = v234->_anchorSet;
  v234->_anchorSet = v263;

  v265 = [v342 categories];
  v266 = [v265 containsObject:@"content-load"];

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

  v285 = self;
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
    v291 = self;
    if (self->_layoutNextSection)
    {
      v292 = 0;
      do
      {
        v293 = v291->_sections;
        v294 = [NSNumber numberWithUnsignedInteger:v292, v321];
        v295 = [(NSMutableDictionary *)v293 objectForKeyedSubscript:v294];
        v296 = [v295 entry];
        v297 = [v296 uid];
        [v290 addObject:v297];

        ++v292;
        v291 = self;
      }

      while (v292 < self->_layoutNextSection);
    }

    [(TUIStatsTimingCollector *)v291->_timingCollector finalizeWithTimebase:*v397, v321];
    v298 = v291;
    v299 = [[TUIStatsFeedPass alloc] initWithMode:v291->_lq_statsMode timingCollector:v291->_timingCollector passes:v289];
    [(TUIStatsCollector *)v298->_statsCollector updateWithPass:v299 currentEntriesUID:v290];

    v285 = self;
  }

  [(TUIStatsTimingCollector *)v285->_timingCollector reset];
  [(NSMutableDictionary *)v285->_sections enumerateKeysAndObjectsUsingBlock:&stru_2610D8];
  if (v285->_lq_statsMode & 0x10) != 0 && (*&v285->_delegateFlags)
  {
    v300 = [[TUIStatsFeed alloc] initWithDates:v285->_datesCollector collector:v285->_statsCollector];
    v349[0] = _NSConcreteStackBlock;
    v349[1] = 3221225472;
    v349[2] = sub_C21F0;
    v349[3] = &unk_261100;
    v349[4] = v285;
    v301 = v300;
    v350 = v301;
    [v279 appendUpdateBlock:v349];

    v285 = self;
  }

  v285->_environmentChanged = 0;
  objc_storeStrong(&v285->_previousStackName, v327);
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

- (BOOL)_lq_shouldInstantiateEntry:(id)a3 sectionIndex:(unint64_t)a4 transactionGroup:(id)a5
{
  v8 = a3;
  v9 = a5;
  os_unfair_lock_lock(&self->_layoutConditionsLock);
  v10 = [(NSHashTable *)self->_layoutConditionsSuspendingLayout allObjects];
  os_unfair_lock_unlock(&self->_layoutConditionsLock);
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v12)
  {
    v13 = v12;
    v27 = v9;
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
        if ([v18 evaluateWithEntry:v8 index:a4])
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
      v9 = v27;
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
    v9 = v27;
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

- (BOOL)_lq_shouldSubmitRenderModelUpdate:(BOOL)a3 transactionGroup:(id)a4
{
  v6 = a4;
  os_unfair_lock_lock(&self->_layoutConditionsLock);
  v7 = [(NSHashTable *)self->_layoutConditionsSuspendingUpdates allObjects];
  os_unfair_lock_unlock(&self->_layoutConditionsLock);
  if (a3)
  {
    v8 = 1;
  }

  else
  {
    v8 = [v6 flags] & 1;
  }

  renderModelMode = self->_renderModelMode;
  v34 = v6;
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
  v12 = v7;
  v13 = [v12 countByEnumeratingWithState:&v41 objects:v52 count:16];
  if (!v13)
  {

    v25 = v12;
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
    v25 = v12;
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

  v25 = [(NSHashTable *)self->_layoutConditionsSuspendingUpdates allObjects];
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
    v50 = v25;
    _os_log_impl(&dword_0, v29, OS_LOG_TYPE_INFO, "[fid:%lu] layout conditions not meet; forcing=%@; remaining conditions: %@", buf, 0x20u);
  }

  v28 = 0;
LABEL_41:

  return v8 | v28;
}

- (void)setPriority:(float)a3
{
  v4 = TUIPriorityClamp(a3);
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
      v15 = priority;
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

- (void)setStatsMode:(unint64_t)a3
{
  if (self->_statsMode != a3)
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
      v15 = a3;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "[fid:%lu] changing stats mode %04lx -> %04lx", buf, 0x20u);
    }

    self->_statsMode = a3;
    v8 = [(TUIWorkQueueContext *)self->_queueContext activeQueue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_C2E58;
    v9[3] = &unk_25DED0;
    v9[4] = self;
    v9[5] = a3;
    dispatch_async(v8, v9);
  }
}

- (void)setLayoutState:(unint64_t)a3
{
  if (self->_layoutState != a3)
  {
    delegateFlags = self->_delegateFlags;
    if ((delegateFlags & 2) != 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained feedLayoutController:self willTransitionToLayoutState:a3];

      delegateFlags = self->_delegateFlags;
    }

    self->_layoutState = a3;
    if ((delegateFlags & 4) != 0)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      [v7 feedLayoutController:self didTransitionToLayoutState:a3];
    }
  }
}

- (void)collectStatsWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(TUIWorkQueueContext *)self->_queueContext activeQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_C30DC;
    v6[3] = &unk_25EA78;
    v6[4] = self;
    v7 = v4;
    dispatch_async(v5, v6);
  }
}

- (void)statRecordInitialResourcesRenderedDate
{
  v3 = +[NSDate date];
  v4 = [(TUIWorkQueueContext *)self->_queueContext activeQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_C3208;
  v6[3] = &unk_25DCA0;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

- (void)statRecordResourcesStartLoadingDate
{
  v3 = +[NSDate date];
  v4 = [(TUIWorkQueueContext *)self->_queueContext activeQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_C3328;
  v6[3] = &unk_25DCA0;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

- (void)statRecordResourcesLoadedDate
{
  v3 = +[NSDate date];
  v4 = [(TUIWorkQueueContext *)self->_queueContext activeQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_C3448;
  v6[3] = &unk_25DCA0;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

- (void)statRecordViewWillAppear
{
  v3 = +[NSDate date];
  v4 = [(TUIWorkQueueContext *)self->_queueContext activeQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_C3568;
  v6[3] = &unk_25DCA0;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
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

- (void)updateWithContent:(id)a3 layoutUpToEntry:(id)a4 environment:(id)a5 transaction:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = a4;
  v14 = +[NSDate date];
  v15 = [v13 uuid];

  if (!v12)
  {
    v12 = +[TUITransaction currentOrImplicitTransaction];
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
    v37 = v12;
    v38 = 2112;
    v39 = WeakRetained;
    v40 = 2112;
    v41 = v19;
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "[fid:%lu] FeedLayoutController: updateWithContent:layoutUpToEntry:environment:transaction: - tx=%@, lastEnvironmentToken=%@, lastContentToken=%@", buf, 0x2Au);
  }

  v20 = objc_loadWeakRetained(&self->_lastEnvironmentTransactionToken);
  [v12 dependentOn:v20];

  v21 = objc_loadWeakRetained(&self->_lastContentTransactionToken);
  [v12 dependentOn:v21];

  v22 = [v12 dependencyToken];
  objc_storeWeak(&self->_lastEnvironmentTransactionToken, v22);

  v23 = [v12 dependencyToken];
  objc_storeWeak(&self->_lastContentTransactionToken, v23);

  transactionCoordinator = self->_transactionCoordinator;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_C3944;
  v29[3] = &unk_2611D0;
  v29[4] = self;
  v30 = v11;
  v31 = v15;
  v32 = v10;
  v33 = v14;
  v25 = v14;
  v26 = v10;
  v27 = v15;
  v28 = v11;
  [(TUITransactionCoordinating *)transactionCoordinator scheduleLayoutUpdateWithTransaction:v12 block:v29];
}

- (void)layoutIfNeededWithTransaction:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = +[TUITransaction currentOrImplicitTransaction];
  }

  v5 = v4;
  [(TUITransactionCoordinating *)self->_transactionCoordinator scheduleLayoutUpdateWithTransaction:v4 block:&stru_2611F0];
}

- (void)updateWithContent:(id)a3 transaction:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSDate date];
  if (!v7)
  {
    v7 = +[TUITransaction currentOrImplicitTransaction];
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
    v24 = v7;
    v25 = 2112;
    v26 = WeakRetained;
    v27 = 2112;
    v28 = v12;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "[fid:%lu] FeedLayoutController: updateWithContent: - tx=%@, lastEnvironmentToken=%@, lastContentToken=%@", buf, 0x2Au);
  }

  v13 = objc_loadWeakRetained(&self->_lastContentTransactionToken);
  [v7 dependentOn:v13];

  v14 = [v7 dependencyToken];
  objc_storeWeak(&self->_lastContentTransactionToken, v14);

  transactionCoordinator = self->_transactionCoordinator;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_C3C48;
  v18[3] = &unk_261218;
  v18[4] = self;
  v19 = v6;
  v20 = v8;
  v16 = v8;
  v17 = v6;
  [(TUITransactionCoordinating *)transactionCoordinator scheduleLayoutUpdateWithTransaction:v7 block:v18];
}

- (void)lq_updateContent:(id)a3 contentUpdateDate:(id)a4 transaction:(id)a5 transactionGroup:(id)a6
{
  v36 = a3;
  v38 = a4;
  v37 = a5;
  v35 = a6;
  v11 = [(TUIWorkQueueContext *)self->_queueContext workQueue];
  dispatch_assert_queue_V2(v11);

  v12 = TUILayoutLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    uniqueIdentifier = self->_feedId.uniqueIdentifier;
    LODWORD(buf) = 134217984;
    *(&buf + 4) = uniqueIdentifier;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "[fid:%lu] lq_updateContent", &buf, 0xCu);
  }

  [(TUIStatsDatesCollector *)self->_datesCollector setContentUpdateDate:v38];
  [(TUIStatsDatesCollector *)self->_datesCollector setInitialContentReadyDate:0];
  [(TUIStatsDatesCollector *)self->_datesCollector setDynamicUpdateDate:0];
  [(TUIStatsDatesCollector *)self->_datesCollector setResourcesLoadedDate:0];
  objc_storeStrong(&self->_content, a3);
  v42 = (self->_layoutGenerationId + 1);
  self->_layoutGenerationId = v42;
  p_layoutNextSection = &self->_layoutNextSection;
  *&self->_layoutNextSection = xmmword_24CD50;
  v40 = objc_opt_new();
  v43 = [v37 tx];
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
          v20 = [v43 options];
          v61 = [TUITransaction transactionWithOptions:v20];
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
          v22 = [(TUIWorkQueueContext *)self->_queueContext activeCallbackQueue];
          [v43 addSubTransaction:v21 completionQueue:v22];

          v23 = [v19 uuid];
          v24 = [v23 isEqual:self->_layoutUntilEntryWithUUID];

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

  v32 = [v36 entries];
  self->_layoutNumberOfSections = [v32 count];

  if (!self->_layoutUntilEntryWithUUID)
  {
    layoutNumberOfSections = self->_layoutNumberOfSections;
    if (layoutNumberOfSections != 0x7FFFFFFFFFFFFFFFLL && *p_layoutNextSection < layoutNumberOfSections)
    {
      [(TUIFeedLayoutController *)self setLayoutState:1];
    }
  }
}

- (void)updateDatesCollectorWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(TUIWorkQueueContext *)self->_queueContext workQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_C47AC;
  v7[3] = &unk_25EAA0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)updateWithEnvironment:(id)a3 state:(id)a4 withTransaction:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = a4;
  v12 = TUIInstantiationLog();
  if (os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TUIFeedLayoutController.updateWithEnvironment", "", buf, 2u);
  }

  os_unfair_lock_lock(&self->_environmentLock);
  objc_storeStrong(&self->_environmentPendingUpdate, a3);
  os_unfair_lock_unlock(&self->_environmentLock);
  if (!v10)
  {
    v10 = +[TUITransaction currentOrImplicitTransaction];
  }

  v13 = TUITransactionLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    uniqueIdentifier = self->_feedId.uniqueIdentifier;
    WeakRetained = objc_loadWeakRetained(&self->_lastEnvironmentTransactionToken);
    *buf = 134218498;
    v26 = uniqueIdentifier;
    v27 = 2112;
    v28 = v10;
    v29 = 2112;
    v30 = WeakRetained;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "[fid:%lu] FeedLayoutController: updateWithEnvironment:state:withTransaction: - tx=%@, lastEnvironmentToken=%@", buf, 0x20u);
  }

  v16 = objc_loadWeakRetained(&self->_lastEnvironmentTransactionToken);
  [v10 dependentOn:v16];

  v17 = [v10 dependencyToken];
  objc_storeWeak(&self->_lastEnvironmentTransactionToken, v17);

  v18 = [v11 copy];
  transactionCoordinator = self->_transactionCoordinator;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_C4A2C;
  v22[3] = &unk_261218;
  v22[4] = self;
  v23 = v9;
  v24 = v18;
  v20 = v18;
  v21 = v9;
  [(TUITransactionCoordinating *)transactionCoordinator scheduleLayoutUpdateWithTransaction:v10 block:v22];
}

- (void)updateHostingGeometryMap:(id)a3 withTransaction:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = TUITransactionLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    uniqueIdentifier = self->_feedId.uniqueIdentifier;
    WeakRetained = objc_loadWeakRetained(&self->_lastEnvironmentTransactionToken);
    *buf = 134218498;
    v18 = uniqueIdentifier;
    v19 = 2112;
    v20 = v7;
    v21 = 2112;
    v22 = WeakRetained;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "[fid:%lu] FeedLayoutController: updateHostingGeometryMap:withTransaction - tx=%@, lastEnvironmentTx=%@", buf, 0x20u);
  }

  if (!v7)
  {
    v7 = +[TUITransaction currentOrImplicitTransaction];
  }

  v11 = objc_loadWeakRetained(&self->_lastEnvironmentTransactionToken);
  [v7 dependentOn:v11];

  v12 = [v7 dependencyToken];
  objc_storeWeak(&self->_lastEnvironmentTransactionToken, v12);

  transactionCoordinator = self->_transactionCoordinator;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_C4D24;
  v15[3] = &unk_261290;
  v15[4] = self;
  v16 = v6;
  v14 = v6;
  [(TUITransactionCoordinating *)transactionCoordinator scheduleLayoutUpdateWithTransaction:v7 block:v15];
}

- (BOOL)lq_updateHostingGeometryMap:(id)a3
{
  v5 = a3;
  if (self->_hostingGeometryMap == v5)
  {
    LOBYTE(v11) = 0;
  }

  else
  {
    v6 = [_TUIHostingGeometryMapUpdate alloc];
    hostingGeometryMap = self->_hostingGeometryMap;
    v8 = [(TUIManager *)self->_manager viewRegistry];
    v9 = [v8 hostedViewFactoryTypesWithGeometryReuse];
    v10 = [(_TUIHostingGeometryMapUpdate *)v6 initWithFrom:hostingGeometryMap to:v5 reuseTypes:v9];

    objc_storeStrong(&self->_hostingGeometryMap, a3);
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

- (void)transactionCoordinator:(id)a3 applyUpdatesFromTransactionGroup:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained feedLayoutController:self applyUpdatesFromTransactionGroup:v5];
  }

  else
  {
    [v5 applyUpdates];
  }
}

- (void)transactionCoordinator:(id)a3 updateWithTransactionGroup:(id)a4
{
  v5 = a4;
  v6 = [(TUIWorkQueueContext *)self->_queueContext workQueue];
  dispatch_assert_queue_V2(v6);

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
    v14 = v5;
    [v14 computeFinalUpdatesWithBlock:v13];
  }

  else
  {
    v9 = +[UITraitCollection _currentTraitCollection];
    v10 = [(TUIEnvironment *)self->_environment traitCollection];
    [UITraitCollection _setCurrentTraitCollection:v10];

    [(TUIFeedLayoutController *)self lq_updateRenderModelsWithTransactionGroup:v5];
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

- (void)transactionCoordinator:(id)a3 timeoutForSynchronousTransactionGroup:(id)a4
{
  if (!self->_renderModelMode)
  {
    v6 = a4;
    v7 = [[TUIRenderModelCollection alloc] initWithContent:self->_content sections:0 size:0 insets:0 visibleBoundsObservers:0 info:[(TUIEnvironment *)self->_environment layoutDirection] anchorSet:CGSizeZero.width layoutDirection:CGSizeZero.height matchingUUID:UIEdgeInsetsZero.top matchingUID:UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right, 0, 0];
    [(TUIRenderUpdateCollectionController *)self->_updateController updateWithHostingMap:0 transactionGroup:v6];
    [(TUIRenderUpdateCollectionController *)self->_updateController updateWithRenderModel:v7 viewState:0 flags:0 transactionGroup:v6];
  }
}

- (id)instantiateContext:(id)a3 serviceConformingToProtocol:(id)a4
{
  if (protocol_isEqual(a4, &OBJC_PROTOCOL___TUIWPService))
  {
    v5 = self->_wpService;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)lq_updateAXModelTreeWithTransactionGroup:(id)a3
{
  v4 = a3;
  v5 = [(TUIWorkQueueContext *)self->_queueContext workQueue];
  dispatch_assert_queue_V2(v5);

  if ([(TUIEnvironment *)self->_environment accessibilityElementsNeeded])
  {
    v24 = v4;
    v6 = objc_opt_class();
    v7 = [(TUIFeedContent *)self->_content currentStackName];
    v8 = [v7 value];
    v9 = TUIDynamicCast(v6, v8);

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

        v15 = [v14 axModelTree];
        if (v15)
        {
          [v10 addObject:v15];
        }

        else
        {
          v16 = objc_opt_new();
          [v10 addObject:v16];
        }

        v17 = [v14 entry];
        v18 = [v17 stackNames];
        v19 = [v18 containsObject:v9];

        if ((v19 & 1) == 0)
        {
          [v15 setHidden:1];
        }

        v20 = [v14 renderModel];
        if (v20)
        {
          v21 = [NSNumber numberWithUnsignedInteger:v11];
          [v25 setObject:v20 forKeyedSubscript:v21];
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
    v28 = self;
    v23 = v25;
    v29 = v23;
    v4 = v24;
    [v24 appendUpdateBlock:v26];

    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }
}

- (void)suspendAndTeardownWithTransaction:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = +[TUITransaction currentOrImplicitTransaction];
  }

  transactionCoordinator = self->_transactionCoordinator;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_C55B4;
  v6[3] = &unk_25EB80;
  v6[4] = self;
  [(TUITransactionCoordinating *)transactionCoordinator scheduleLayoutUpdateWithTransaction:v4 block:v6];
}

- (void)resumeAndRebuildWithEnvironment:(id)a3 state:(id)a4 transaction:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (v9)
  {
    v10 = v9;
    v11 = a4;
  }

  else
  {
    v12 = a4;
    v10 = +[TUITransaction currentOrImplicitTransaction];
  }

  v13 = [a4 copy];

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

  v18 = [v10 dependencyToken];
  objc_storeWeak(&self->_lastEnvironmentTransactionToken, v18);

  transactionCoordinator = self->_transactionCoordinator;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_C586C;
  v22[3] = &unk_261218;
  v22[4] = self;
  v23 = v8;
  v24 = v13;
  v20 = v13;
  v21 = v8;
  [(TUITransactionCoordinating *)transactionCoordinator scheduleLayoutUpdateWithTransaction:v10 block:v22];
}

- (void)suspendUpdatesUntilMeetingLayoutCondition:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_initWeak(&location, self);
    v5 = _NSConcreteStackBlock;
    v6 = 3221225472;
    v7 = sub_C5A64;
    v8 = &unk_25E240;
    objc_copyWeak(&v9, &location);
    [v4 onInvalidate:&v5];
    os_unfair_lock_lock(&self->_layoutConditionsLock);
    [(NSHashTable *)self->_layoutConditionsSuspendingUpdates addObject:v4, v5, v6, v7, v8];
    os_unfair_lock_unlock(&self->_layoutConditionsLock);
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (void)suspendLayoutsUntilMeetingLayoutCondition:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_initWeak(&location, self);
    v5 = _NSConcreteStackBlock;
    v6 = 3221225472;
    v7 = sub_C5B98;
    v8 = &unk_25E240;
    objc_copyWeak(&v9, &location);
    [v4 onInvalidate:&v5];
    os_unfair_lock_lock(&self->_layoutConditionsLock);
    [(NSHashTable *)self->_layoutConditionsSuspendingLayout addObject:v4, v5, v6, v7, v8];
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
  v3 = [(TUIWorkQueueContext *)self->_queueContext activeQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_C5CCC;
  block[3] = &unk_25DE30;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)endLiveResize
{
  v3 = [(TUIWorkQueueContext *)self->_queueContext activeQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_C5EB0;
  block[3] = &unk_25DE30;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)captureWithController:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[TUITransaction implicitTransaction];
  transactionCoordinator = self->_transactionCoordinator;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_C60D0;
  v12[3] = &unk_261320;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  [(TUITransactionCoordinating *)transactionCoordinator scheduleLayoutUpdateWithTransaction:v8 block:v12];
}

- (void)dumpModelTreeForEntry:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TUIWorkQueueContext *)self->_queueContext activeQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_C6300;
  block[3] = &unk_261370;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)dumpLayoutTreeForEntry:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TUIWorkQueueContext *)self->_queueContext activeQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_C65FC;
  block[3] = &unk_261370;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
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