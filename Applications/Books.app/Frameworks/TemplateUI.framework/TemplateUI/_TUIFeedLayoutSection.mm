@interface _TUIFeedLayoutSection
- (BOOL)lq_updateAuxiliaryLayoutWithTransactionGroup:(id)a3;
- (BOOL)lq_updateLayerLayoutWithTransactionGroup:(id)a3;
- (BOOL)lq_updateLayoutWithTransactionGroup:(id)a3;
- (TUIFeedLayoutController)feedLayoutController;
- (_TUIFeedLayoutSection)initWithFeedId:(id)a3 section:(unint64_t)a4 controller:(id)a5 entry:(id)a6;
- (id)UUID;
- (id)loadingRenderModelWithSize:(CGSize)a3 center:(CGPoint)a4 environment:(id)a5;
- (void)_instantiateTemplateWithTransactionGroup:(id)a3;
- (void)_setupController;
- (void)_teardownController;
- (void)debugDumpEnvironmentContainerStructure;
- (void)lq_appendAnchorsToSet:(id)a3;
- (void)lq_createEmptyRenderModelWithSize:(CGSize)a3;
- (void)lq_instantiateWithController:(id)a3 transactionGroup:(id)a4;
- (void)lq_loadOrUpdateEntry:(id)a3 data:(id)a4 controller:(id)a5 transactionGroup:(id)a6;
- (void)lq_updateEnvironment:(id)a3 withTransactionGroup:(id)a4;
- (void)setStatsMode:(unint64_t)a3;
- (void)suspendAndTeardownWithTransactionGroup:(id)a3;
@end

@implementation _TUIFeedLayoutSection

- (_TUIFeedLayoutSection)initWithFeedId:(id)a3 section:(unint64_t)a4 controller:(id)a5 entry:(id)a6
{
  v10 = a5;
  v11 = a6;
  v17.receiver = self;
  v17.super_class = _TUIFeedLayoutSection;
  v12 = [(_TUIFeedLayoutSection *)&v17 init];
  v13 = v12;
  if (v12)
  {
    v12->_feedId.uniqueIdentifier = a3.var0;
    v12->_section = a4;
    v14 = [v10 queueContext];
    queueContext = v13->_queueContext;
    v13->_queueContext = v14;

    objc_storeStrong(&v13->_entry, a6);
    objc_storeWeak(&v13->_feedLayoutController, v10);
    [(_TUIFeedLayoutSection *)v13 _setupController];
  }

  return v13;
}

- (void)_setupController
{
  WeakRetained = objc_loadWeakRetained(&self->_feedLayoutController);
  if (self->_template)
  {
    v21 = [TUILayoutController alloc];
    v3 = [(TUITemplate *)self->_template package];
    v20 = [WeakRetained manager];
    v4 = [WeakRetained transactionCoordinator];
    instantiateState = self->_instantiateState;
    v5 = [(TUIFeedEntry *)self->_entry identifierMap];
    entry = self->_entry;
    v7 = [WeakRetained environment];
    v8 = [WeakRetained actionHandlerDelegate];
    v9 = [WeakRetained queueContext];
    v10 = [v9 workQueue];
    v11 = objc_loadWeakRetained(&self->_feedLayoutController);
    v12 = -[TUILayoutController initWithPackage:feedId:manager:transactionCoordinator:state:identifierMap:entry:environment:instantiateDelegate:actionDelegate:queue:renderMode:](v21, "initWithPackage:feedId:manager:transactionCoordinator:state:identifierMap:entry:environment:instantiateDelegate:actionDelegate:queue:renderMode:", v3, self->_feedId.uniqueIdentifier, v20, v4, instantiateState, v5, entry, v7, WeakRetained, v8, v10, [v11 renderModelMode]);
    layoutController = self->_layoutController;
    self->_layoutController = v12;

    v14 = [(TUIFeedEntry *)self->_entry uid];
    [(TUILayoutController *)self->_layoutController setUid:v14];

    v15 = [(TUIFeedEntry *)self->_entry uuid];
    [(TUILayoutController *)self->_layoutController setUUID:v15];

    [(TUILayoutController *)self->_layoutController setStatsCollector:self->_eventCollector];
    eventCollector = self->_eventCollector;
    v17 = [(TUILayoutController *)self->_layoutController instantiateContext];
    [v17 setStatsCollector:eventCollector];
  }

  v18 = self->_instantiateState;
  self->_instantiateState = 0;
}

- (void)_teardownController
{
  v3 = [(TUILayoutController *)self->_layoutController instantiateContext];
  v4 = [v3 saveState];
  instantiateState = self->_instantiateState;
  self->_instantiateState = v4;

  layoutController = self->_layoutController;
  self->_layoutController = 0;
}

- (void)suspendAndTeardownWithTransactionGroup:(id)a3
{
  [(_TUIFeedLayoutSection *)self _teardownController];
  renderModel = self->_renderModel;
  self->_renderModel = 0;

  auxRenderModel = self->_auxRenderModel;
  self->_auxRenderModel = 0;

  layerRenderModel = self->_layerRenderModel;
  self->_layerRenderModel = 0;
}

- (void)setStatsMode:(unint64_t)a3
{
  if (self->_statsMode != a3)
  {
    self->_statsMode = a3;
    eventCollector = self->_eventCollector;
    self->_eventCollector = 0;

    timingCollector = self->_timingCollector;
    self->_timingCollector = 0;

    statsMode = self->_statsMode;
    if ((statsMode & 8) != 0)
    {
      v8 = objc_alloc_init(TUIStatsEventCollector);
      v9 = self->_eventCollector;
      self->_eventCollector = v8;

      statsMode = self->_statsMode;
    }

    if ((statsMode & 4) != 0)
    {
      v10 = [[TUIStatsTimingCollector alloc] initWithMode:self->_statsMode];
      v11 = self->_timingCollector;
      self->_timingCollector = v10;
    }

    [(TUILayoutController *)self->_layoutController setStatsCollector:self->_eventCollector];
    v12 = self->_eventCollector;
    v13 = [(TUILayoutController *)self->_layoutController instantiateContext];
    [v13 setStatsCollector:v12];
  }
}

- (void)lq_loadOrUpdateEntry:(id)a3 data:(id)a4 controller:(id)a5 transactionGroup:(id)a6
{
  v8 = a3;
  v9 = [a4 dictionary];
  v12 = v9;
  if (v9)
  {
    v9 = [[TUIBindings alloc] initWithData:v9];
  }

  bindings = self->_bindings;
  self->_bindings = v9;

  self->_needsInstantiation = 1;
  entry = self->_entry;
  self->_entry = v8;
}

- (void)lq_instantiateWithController:(id)a3 transactionGroup:(id)a4
{
  v6 = a3;
  v7 = a4;
  self->_needsInstantiation = 0;
  if (self->_updated)
  {
    v8 = 4;
  }

  else
  {
    v8 = 8;
  }

  [(TUIStatsTimingCollector *)self->_timingCollector recordReason:v8];
  [(TUIStatsTimingCollector *)self->_timingCollector startPhase:0];
  v9 = [(TUITemplate *)self->_template url];
  v10 = [(TUIFeedEntry *)self->_entry templateURL];
  v11 = [v9 isEqual:v10];

  if ((v11 & 1) == 0)
  {
    [(TUIStatsTimingCollector *)self->_timingCollector startPhase:1];
    v12 = [v6 templateFactory];
    v13 = [(TUIFeedEntry *)self->_entry templateURL];
    v14 = [v12 templateFromURL:v13];
    v15 = self->_template;
    self->_template = v14;

    [(TUIStatsTimingCollector *)self->_timingCollector endPhase:1];
    v16 = [(TUILayoutController *)self->_layoutController package];
    v17 = [(TUITemplate *)self->_template package];

    if (v16 != v17)
    {
      [(_TUIFeedLayoutSection *)self _setupController];
    }
  }

  layoutController = self->_layoutController;
  v19 = [v6 environment];
  [(TUILayoutController *)layoutController updateEnvironment:v19];

  updated = self->_updated;
  v21 = TUILayoutLog();
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_INFO);
  if (updated)
  {
    if (!v22)
    {
      goto LABEL_13;
    }

    uniqueIdentifier = self->_feedId.uniqueIdentifier;
    v24 = self->_updated;
    section = self->_section;
    entry = self->_entry;
    *v41 = 134218754;
    *&v41[4] = uniqueIdentifier;
    *&v41[12] = 2048;
    *&v41[14] = v24;
    *&v41[22] = 1024;
    *&v41[24] = section;
    *&v41[28] = 2112;
    *&v41[30] = entry;
    v27 = "[fid:%lu] feed data update #%lu at section %d: %@";
    v28 = v21;
    v29 = 38;
  }

  else
  {
    if (!v22)
    {
      goto LABEL_13;
    }

    v30 = self->_feedId.uniqueIdentifier;
    v31 = self->_section;
    v32 = self->_entry;
    *v41 = 134218498;
    *&v41[4] = v30;
    *&v41[12] = 1024;
    *&v41[14] = v31;
    *&v41[18] = 2112;
    *&v41[20] = v32;
    v27 = "[fid:%lu] feed data loaded at section %d: %@";
    v28 = v21;
    v29 = 28;
  }

  _os_log_impl(&dword_0, v28, OS_LOG_TYPE_INFO, v27, v41, v29);
LABEL_13:

  ++self->_updated;
  if (!self->_template)
  {
    v33 = TUILayoutLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_19AF68(self, &self->_entry, v33);
    }
  }

  captureController = self->_captureController;
  if (captureController)
  {
    [(TUIFeedCaptureController *)captureController captureSectionWithEntry:self->_entry bindings:self->_bindings template:self->_template];
    v35 = [(TUIFeedCaptureController *)self->_captureController instantiateCaptureForEntry:self->_entry];
    v36 = [(TUILayoutController *)self->_layoutController instantiateContext];
    [v36 setCapture:v35];
  }

  WeakRetained = objc_loadWeakRetained(&self->_feedLayoutController);
  v38 = [WeakRetained suspended];

  if ((v38 & 1) == 0)
  {
    [(_TUIFeedLayoutSection *)self _instantiateTemplateWithTransactionGroup:v7];
  }

  if (self->_captureController)
  {
    v39 = [(TUILayoutController *)self->_layoutController instantiateContext];
    [v39 setCapture:0];

    v40 = self->_captureController;
    self->_captureController = 0;
  }

  [(TUIStatsTimingCollector *)self->_timingCollector endPhase:0, *v41, *&v41[16], *&v41[24]];
}

- (void)_instantiateTemplateWithTransactionGroup:(id)a3
{
  v22 = a3;
  if (!self->_layoutController)
  {
    [(_TUIFeedLayoutSection *)self lq_createEmptyRenderModelWithSize:CGSizeZero.width, CGSizeZero.height];
    goto LABEL_9;
  }

  [(TUIStatsTimingCollector *)self->_timingCollector startPhase:2];
  v4 = objc_autoreleasePoolPush();
  v5 = [(TUILayoutController *)self->_layoutController instantiateContext];
  v6 = [v5 instantiateTemplate:self->_template bindings:self->_bindings actionObject:self->_entry];

  layoutController = self->_layoutController;
  v8 = [(TUILayoutController *)layoutController instantiateContext];
  v9 = [v8 evaluationErrors];
  [(TUILayoutController *)layoutController addErrors:v9];

  objc_autoreleasePoolPop(v4);
  [(TUIStatsTimingCollector *)self->_timingCollector endPhase:2];
  [(TUIStatsTimingCollector *)self->_timingCollector startPhase:3];
  v10 = objc_autoreleasePoolPush();
  [(TUILayoutController *)self->_layoutController setRootBox:v6];
  [(TUILayoutController *)self->_layoutController validateLayouts];
  objc_autoreleasePoolPop(v10);
  [(TUIStatsTimingCollector *)self->_timingCollector endPhase:3];
  [(TUIStatsTimingCollector *)self->_timingCollector startPhase:4];
  v11 = objc_autoreleasePoolPush();
  v12 = [(_TUIFeedLayoutSection *)self feedLayoutController];
  v13 = [v12 renderModelMode];

  if (v13 == &dword_0 + 1)
  {
    v21 = [(TUILayoutController *)self->_layoutController renderModelLayer:v22];
    layerRenderModel = self->_layerRenderModel;
    self->_layerRenderModel = v21;
    goto LABEL_7;
  }

  if (!v13)
  {
    v14 = [(TUILayoutController *)self->_layoutController renderModelAuxiliary:v22];
    auxRenderModel = self->_auxRenderModel;
    self->_auxRenderModel = v14;

    v16 = self->_layoutController;
    section = self->_section;
    layerRenderModel = [(_TUIFeedLayoutSection *)self UUID];
    v19 = [(TUILayoutController *)v16 renderModelSection:section offset:layerRenderModel uuid:v22 transactionGroup:CGPointZero.x, CGPointZero.y];
    renderModel = self->_renderModel;
    self->_renderModel = v19;

LABEL_7:
  }

  objc_autoreleasePoolPop(v11);
  [(TUIStatsTimingCollector *)self->_timingCollector endPhase:4];

LABEL_9:
}

- (id)UUID
{
  v2 = [(TUIFeedEntry *)self->_entry identifierMap];
  v3 = [v2 UUID];

  return v3;
}

- (void)lq_updateEnvironment:(id)a3 withTransactionGroup:(id)a4
{
  layoutController = self->_layoutController;
  if (layoutController)
  {
    [(TUILayoutController *)layoutController updateEnvironment:a3, a4];
  }

  self->_environmentNeedsUpdate = 0;
}

- (BOOL)lq_updateLayoutWithTransactionGroup:(id)a3
{
  v4 = a3;
  if (self->_layoutController)
  {
    [(TUIStatsTimingCollector *)self->_timingCollector recordReason:1];
    [(TUIStatsTimingCollector *)self->_timingCollector startPhase:0];
    v5 = [(TUIWorkQueueContext *)self->_queueContext workQueue];
    dispatch_assert_queue_V2(v5);

    [(TUIStatsTimingCollector *)self->_timingCollector startPhase:2];
    [(TUILayoutController *)self->_layoutController validateInstantiationWithTransactionGroup:v4];
    [(TUIStatsTimingCollector *)self->_timingCollector endPhase:2];
    [(TUIStatsTimingCollector *)self->_timingCollector startPhase:3];
    [(TUILayoutController *)self->_layoutController validateLayouts];
    [(TUIStatsTimingCollector *)self->_timingCollector endPhase:3];
    [(TUIStatsTimingCollector *)self->_timingCollector startPhase:4];
    [(TUILayoutController *)self->_layoutController validateRenderModelsWithTransactionGroup:v4];
    v6 = [(_TUIFeedLayoutSection *)self feedLayoutController];
    v7 = [v6 renderModelMode];

    v8 = 0;
    if (!v7)
    {
      layoutController = self->_layoutController;
      section = self->_section;
      v11 = [(_TUIFeedLayoutSection *)self UUID];
      v8 = [(TUILayoutController *)layoutController renderModelSection:section offset:v11 uuid:v4 transactionGroup:CGPointZero.x, CGPointZero.y];
    }

    [(TUIStatsTimingCollector *)self->_timingCollector endPhase:4];
    renderModel = self->_renderModel;
    v13 = v8 != renderModel;
    if (v8 != renderModel)
    {
      objc_storeStrong(&self->_renderModel, v8);
    }

    [(TUIStatsTimingCollector *)self->_timingCollector endPhase:0];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)lq_createEmptyRenderModelWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(_TUIFeedLayoutSection *)self feedLayoutController];
  v7 = [v6 renderModelMode];

  if (!v7)
  {
    v8 = [TUIRenderModelSection alloc];
    entry = self->_entry;
    v10 = [(TUIWorkQueueContext *)self->_queueContext workQueue];
    memset(v16, 0, sizeof(v16));
    v17 = 0;
    v18 = 0;
    v11 = [(TUIRenderModelSection *)v8 initWithEntry:entry submodels:0 config:v16 impressions:0 linkEntities:0 hoverRegions:0 identifierMap:0 layoutQueue:v10];
    section = self->_section;
    v13 = [(_TUIFeedLayoutSection *)self UUID];
    v14 = [(TUIRenderModelSection *)v11 copyWithSection:section offset:v13 uuid:CGPointZero.x, CGPointZero.y];
    renderModel = self->_renderModel;
    self->_renderModel = v14;

    [(TUIRenderModelSection *)self->_renderModel setSize:width, height];
  }
}

- (BOOL)lq_updateAuxiliaryLayoutWithTransactionGroup:(id)a3
{
  timingCollector = self->_timingCollector;
  v5 = a3;
  [(TUIStatsTimingCollector *)timingCollector startPhase:4];
  v6 = [(TUILayoutController *)self->_layoutController renderModelAuxiliary:v5];

  [(TUIStatsTimingCollector *)self->_timingCollector endPhase:4];
  auxRenderModel = self->_auxRenderModel;
  p_auxRenderModel = &self->_auxRenderModel;
  v8 = auxRenderModel;
  if (v6 != auxRenderModel)
  {
    objc_storeStrong(p_auxRenderModel, v6);
  }

  return v6 != v8;
}

- (BOOL)lq_updateLayerLayoutWithTransactionGroup:(id)a3
{
  timingCollector = self->_timingCollector;
  v5 = a3;
  [(TUIStatsTimingCollector *)timingCollector startPhase:4];
  v6 = [(TUILayoutController *)self->_layoutController renderModelLayer:v5];

  [(TUIStatsTimingCollector *)self->_timingCollector endPhase:4];
  layerRenderModel = self->_layerRenderModel;
  p_layerRenderModel = &self->_layerRenderModel;
  v8 = layerRenderModel;
  if (v6 != layerRenderModel)
  {
    objc_storeStrong(p_layerRenderModel, v6);
  }

  return v6 != v8;
}

- (void)lq_appendAnchorsToSet:(id)a3
{
  v8 = a3;
  v4 = [(TUILayoutController *)self->_layoutController rootBox];

  if (v4)
  {
    layoutController = self->_layoutController;
    v6 = [(TUILayoutController *)layoutController rootBox];
    v7 = [(TUILayoutController *)layoutController layoutForModel:v6];

    [v7 appendAnchorsToSet:v8 inRoot:v7];
  }
}

- (id)loadingRenderModelWithSize:(CGSize)a3 center:(CGPoint)a4 environment:(id)a5
{
  y = a4.y;
  x = a4.x;
  height = a3.height;
  width = a3.width;
  entry = self->_entry;
  v11 = a5;
  v12 = [(TUIFeedEntry *)entry identifierMap];
  v13 = [v12 loadingIdentifier];
  v31 = [TUISpinnerView renderModelWithIdentifier:v13];

  v14 = [[TUIRenderModelTransform alloc] initWithSubmodel:v31];
  [(TUIRenderModelTransform *)v14 setSize:width, height];
  [(TUIRenderModelTransform *)v14 setCenter:x, y];
  v15 = [v11 layoutDirection] == &dword_0 + 2;
  [v11 viewSize];
  v17 = v16;
  v18 = [TUIRenderModelSection alloc];
  v19 = self->_entry;
  v35 = v14;
  v20 = [NSArray arrayWithObjects:&v35 count:1];
  v21 = [(TUIFeedEntry *)self->_entry identifierMap];
  v22 = [v21 renderModelIdentifierMap];
  v23 = [(TUIWorkQueueContext *)self->_queueContext workQueue];
  v32[0] = v15;
  memset(&v32[1], 0, 7);
  v33 = v17;
  v34 = 0;
  v24 = [(TUIRenderModelSection *)v18 initWithEntry:v19 submodels:v20 config:v32 impressions:0 linkEntities:0 hoverRegions:0 identifierMap:v22 layoutQueue:v23];

  [v11 viewSize];
  v26 = v25;

  [(TUIRenderModelSection *)v24 setSize:v26, height];
  section = self->_section;
  v28 = [(_TUIFeedLayoutSection *)self UUID];
  v29 = [(TUIRenderModelSection *)v24 copyWithSection:section offset:v28 uuid:CGPointZero.x, CGPointZero.y];

  return v29;
}

- (void)debugDumpEnvironmentContainerStructure
{
  v4 = [(TUIFeedEntry *)self->_entry templateURL];
  v3 = [(TUILayoutController *)self->_layoutController debugDumpEnvironmentContainerStructure];
  NSLog(@"\nEntry: %@\n\n%@", v4, v3);
}

- (TUIFeedLayoutController)feedLayoutController
{
  WeakRetained = objc_loadWeakRetained(&self->_feedLayoutController);

  return WeakRetained;
}

@end