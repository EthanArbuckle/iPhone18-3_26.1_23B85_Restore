@interface _TUIFeedLayoutSection
- (BOOL)lq_updateAuxiliaryLayoutWithTransactionGroup:(id)group;
- (BOOL)lq_updateLayerLayoutWithTransactionGroup:(id)group;
- (BOOL)lq_updateLayoutWithTransactionGroup:(id)group;
- (TUIFeedLayoutController)feedLayoutController;
- (_TUIFeedLayoutSection)initWithFeedId:(id)id section:(unint64_t)section controller:(id)controller entry:(id)entry;
- (id)UUID;
- (id)loadingRenderModelWithSize:(CGSize)size center:(CGPoint)center environment:(id)environment;
- (void)_instantiateTemplateWithTransactionGroup:(id)group;
- (void)_setupController;
- (void)_teardownController;
- (void)debugDumpEnvironmentContainerStructure;
- (void)lq_appendAnchorsToSet:(id)set;
- (void)lq_createEmptyRenderModelWithSize:(CGSize)size;
- (void)lq_instantiateWithController:(id)controller transactionGroup:(id)group;
- (void)lq_loadOrUpdateEntry:(id)entry data:(id)data controller:(id)controller transactionGroup:(id)group;
- (void)lq_updateEnvironment:(id)environment withTransactionGroup:(id)group;
- (void)setStatsMode:(unint64_t)mode;
- (void)suspendAndTeardownWithTransactionGroup:(id)group;
@end

@implementation _TUIFeedLayoutSection

- (_TUIFeedLayoutSection)initWithFeedId:(id)id section:(unint64_t)section controller:(id)controller entry:(id)entry
{
  controllerCopy = controller;
  entryCopy = entry;
  v17.receiver = self;
  v17.super_class = _TUIFeedLayoutSection;
  v12 = [(_TUIFeedLayoutSection *)&v17 init];
  v13 = v12;
  if (v12)
  {
    v12->_feedId.uniqueIdentifier = id.var0;
    v12->_section = section;
    queueContext = [controllerCopy queueContext];
    queueContext = v13->_queueContext;
    v13->_queueContext = queueContext;

    objc_storeStrong(&v13->_entry, entry);
    objc_storeWeak(&v13->_feedLayoutController, controllerCopy);
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
    package = [(TUITemplate *)self->_template package];
    manager = [WeakRetained manager];
    transactionCoordinator = [WeakRetained transactionCoordinator];
    instantiateState = self->_instantiateState;
    identifierMap = [(TUIFeedEntry *)self->_entry identifierMap];
    entry = self->_entry;
    environment = [WeakRetained environment];
    actionHandlerDelegate = [WeakRetained actionHandlerDelegate];
    queueContext = [WeakRetained queueContext];
    workQueue = [queueContext workQueue];
    v11 = objc_loadWeakRetained(&self->_feedLayoutController);
    v12 = -[TUILayoutController initWithPackage:feedId:manager:transactionCoordinator:state:identifierMap:entry:environment:instantiateDelegate:actionDelegate:queue:renderMode:](v21, "initWithPackage:feedId:manager:transactionCoordinator:state:identifierMap:entry:environment:instantiateDelegate:actionDelegate:queue:renderMode:", package, self->_feedId.uniqueIdentifier, manager, transactionCoordinator, instantiateState, identifierMap, entry, environment, WeakRetained, actionHandlerDelegate, workQueue, [v11 renderModelMode]);
    layoutController = self->_layoutController;
    self->_layoutController = v12;

    v14 = [(TUIFeedEntry *)self->_entry uid];
    [(TUILayoutController *)self->_layoutController setUid:v14];

    uuid = [(TUIFeedEntry *)self->_entry uuid];
    [(TUILayoutController *)self->_layoutController setUUID:uuid];

    [(TUILayoutController *)self->_layoutController setStatsCollector:self->_eventCollector];
    eventCollector = self->_eventCollector;
    instantiateContext = [(TUILayoutController *)self->_layoutController instantiateContext];
    [instantiateContext setStatsCollector:eventCollector];
  }

  v18 = self->_instantiateState;
  self->_instantiateState = 0;
}

- (void)_teardownController
{
  instantiateContext = [(TUILayoutController *)self->_layoutController instantiateContext];
  saveState = [instantiateContext saveState];
  instantiateState = self->_instantiateState;
  self->_instantiateState = saveState;

  layoutController = self->_layoutController;
  self->_layoutController = 0;
}

- (void)suspendAndTeardownWithTransactionGroup:(id)group
{
  [(_TUIFeedLayoutSection *)self _teardownController];
  renderModel = self->_renderModel;
  self->_renderModel = 0;

  auxRenderModel = self->_auxRenderModel;
  self->_auxRenderModel = 0;

  layerRenderModel = self->_layerRenderModel;
  self->_layerRenderModel = 0;
}

- (void)setStatsMode:(unint64_t)mode
{
  if (self->_statsMode != mode)
  {
    self->_statsMode = mode;
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
    instantiateContext = [(TUILayoutController *)self->_layoutController instantiateContext];
    [instantiateContext setStatsCollector:v12];
  }
}

- (void)lq_loadOrUpdateEntry:(id)entry data:(id)data controller:(id)controller transactionGroup:(id)group
{
  entryCopy = entry;
  dictionary = [data dictionary];
  v12 = dictionary;
  if (dictionary)
  {
    dictionary = [[TUIBindings alloc] initWithData:dictionary];
  }

  bindings = self->_bindings;
  self->_bindings = dictionary;

  self->_needsInstantiation = 1;
  entry = self->_entry;
  self->_entry = entryCopy;
}

- (void)lq_instantiateWithController:(id)controller transactionGroup:(id)group
{
  controllerCopy = controller;
  groupCopy = group;
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
  templateURL = [(TUIFeedEntry *)self->_entry templateURL];
  v11 = [v9 isEqual:templateURL];

  if ((v11 & 1) == 0)
  {
    [(TUIStatsTimingCollector *)self->_timingCollector startPhase:1];
    templateFactory = [controllerCopy templateFactory];
    templateURL2 = [(TUIFeedEntry *)self->_entry templateURL];
    v14 = [templateFactory templateFromURL:templateURL2];
    v15 = self->_template;
    self->_template = v14;

    [(TUIStatsTimingCollector *)self->_timingCollector endPhase:1];
    package = [(TUILayoutController *)self->_layoutController package];
    package2 = [(TUITemplate *)self->_template package];

    if (package != package2)
    {
      [(_TUIFeedLayoutSection *)self _setupController];
    }
  }

  layoutController = self->_layoutController;
  environment = [controllerCopy environment];
  [(TUILayoutController *)layoutController updateEnvironment:environment];

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
    instantiateContext = [(TUILayoutController *)self->_layoutController instantiateContext];
    [instantiateContext setCapture:v35];
  }

  WeakRetained = objc_loadWeakRetained(&self->_feedLayoutController);
  suspended = [WeakRetained suspended];

  if ((suspended & 1) == 0)
  {
    [(_TUIFeedLayoutSection *)self _instantiateTemplateWithTransactionGroup:groupCopy];
  }

  if (self->_captureController)
  {
    instantiateContext2 = [(TUILayoutController *)self->_layoutController instantiateContext];
    [instantiateContext2 setCapture:0];

    v40 = self->_captureController;
    self->_captureController = 0;
  }

  [(TUIStatsTimingCollector *)self->_timingCollector endPhase:0, *v41, *&v41[16], *&v41[24]];
}

- (void)_instantiateTemplateWithTransactionGroup:(id)group
{
  groupCopy = group;
  if (!self->_layoutController)
  {
    [(_TUIFeedLayoutSection *)self lq_createEmptyRenderModelWithSize:CGSizeZero.width, CGSizeZero.height];
    goto LABEL_9;
  }

  [(TUIStatsTimingCollector *)self->_timingCollector startPhase:2];
  v4 = objc_autoreleasePoolPush();
  instantiateContext = [(TUILayoutController *)self->_layoutController instantiateContext];
  v6 = [instantiateContext instantiateTemplate:self->_template bindings:self->_bindings actionObject:self->_entry];

  layoutController = self->_layoutController;
  instantiateContext2 = [(TUILayoutController *)layoutController instantiateContext];
  evaluationErrors = [instantiateContext2 evaluationErrors];
  [(TUILayoutController *)layoutController addErrors:evaluationErrors];

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
  feedLayoutController = [(_TUIFeedLayoutSection *)self feedLayoutController];
  renderModelMode = [feedLayoutController renderModelMode];

  if (renderModelMode == &dword_0 + 1)
  {
    v21 = [(TUILayoutController *)self->_layoutController renderModelLayer:groupCopy];
    layerRenderModel = self->_layerRenderModel;
    self->_layerRenderModel = v21;
    goto LABEL_7;
  }

  if (!renderModelMode)
  {
    v14 = [(TUILayoutController *)self->_layoutController renderModelAuxiliary:groupCopy];
    auxRenderModel = self->_auxRenderModel;
    self->_auxRenderModel = v14;

    v16 = self->_layoutController;
    section = self->_section;
    layerRenderModel = [(_TUIFeedLayoutSection *)self UUID];
    v19 = [(TUILayoutController *)v16 renderModelSection:section offset:layerRenderModel uuid:groupCopy transactionGroup:CGPointZero.x, CGPointZero.y];
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
  identifierMap = [(TUIFeedEntry *)self->_entry identifierMap];
  uUID = [identifierMap UUID];

  return uUID;
}

- (void)lq_updateEnvironment:(id)environment withTransactionGroup:(id)group
{
  layoutController = self->_layoutController;
  if (layoutController)
  {
    [(TUILayoutController *)layoutController updateEnvironment:environment, group];
  }

  self->_environmentNeedsUpdate = 0;
}

- (BOOL)lq_updateLayoutWithTransactionGroup:(id)group
{
  groupCopy = group;
  if (self->_layoutController)
  {
    [(TUIStatsTimingCollector *)self->_timingCollector recordReason:1];
    [(TUIStatsTimingCollector *)self->_timingCollector startPhase:0];
    workQueue = [(TUIWorkQueueContext *)self->_queueContext workQueue];
    dispatch_assert_queue_V2(workQueue);

    [(TUIStatsTimingCollector *)self->_timingCollector startPhase:2];
    [(TUILayoutController *)self->_layoutController validateInstantiationWithTransactionGroup:groupCopy];
    [(TUIStatsTimingCollector *)self->_timingCollector endPhase:2];
    [(TUIStatsTimingCollector *)self->_timingCollector startPhase:3];
    [(TUILayoutController *)self->_layoutController validateLayouts];
    [(TUIStatsTimingCollector *)self->_timingCollector endPhase:3];
    [(TUIStatsTimingCollector *)self->_timingCollector startPhase:4];
    [(TUILayoutController *)self->_layoutController validateRenderModelsWithTransactionGroup:groupCopy];
    feedLayoutController = [(_TUIFeedLayoutSection *)self feedLayoutController];
    renderModelMode = [feedLayoutController renderModelMode];

    v8 = 0;
    if (!renderModelMode)
    {
      layoutController = self->_layoutController;
      section = self->_section;
      uUID = [(_TUIFeedLayoutSection *)self UUID];
      v8 = [(TUILayoutController *)layoutController renderModelSection:section offset:uUID uuid:groupCopy transactionGroup:CGPointZero.x, CGPointZero.y];
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

- (void)lq_createEmptyRenderModelWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  feedLayoutController = [(_TUIFeedLayoutSection *)self feedLayoutController];
  renderModelMode = [feedLayoutController renderModelMode];

  if (!renderModelMode)
  {
    v8 = [TUIRenderModelSection alloc];
    entry = self->_entry;
    workQueue = [(TUIWorkQueueContext *)self->_queueContext workQueue];
    memset(v16, 0, sizeof(v16));
    v17 = 0;
    v18 = 0;
    v11 = [(TUIRenderModelSection *)v8 initWithEntry:entry submodels:0 config:v16 impressions:0 linkEntities:0 hoverRegions:0 identifierMap:0 layoutQueue:workQueue];
    section = self->_section;
    uUID = [(_TUIFeedLayoutSection *)self UUID];
    v14 = [(TUIRenderModelSection *)v11 copyWithSection:section offset:uUID uuid:CGPointZero.x, CGPointZero.y];
    renderModel = self->_renderModel;
    self->_renderModel = v14;

    [(TUIRenderModelSection *)self->_renderModel setSize:width, height];
  }
}

- (BOOL)lq_updateAuxiliaryLayoutWithTransactionGroup:(id)group
{
  timingCollector = self->_timingCollector;
  groupCopy = group;
  [(TUIStatsTimingCollector *)timingCollector startPhase:4];
  v6 = [(TUILayoutController *)self->_layoutController renderModelAuxiliary:groupCopy];

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

- (BOOL)lq_updateLayerLayoutWithTransactionGroup:(id)group
{
  timingCollector = self->_timingCollector;
  groupCopy = group;
  [(TUIStatsTimingCollector *)timingCollector startPhase:4];
  v6 = [(TUILayoutController *)self->_layoutController renderModelLayer:groupCopy];

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

- (void)lq_appendAnchorsToSet:(id)set
{
  setCopy = set;
  rootBox = [(TUILayoutController *)self->_layoutController rootBox];

  if (rootBox)
  {
    layoutController = self->_layoutController;
    rootBox2 = [(TUILayoutController *)layoutController rootBox];
    v7 = [(TUILayoutController *)layoutController layoutForModel:rootBox2];

    [v7 appendAnchorsToSet:setCopy inRoot:v7];
  }
}

- (id)loadingRenderModelWithSize:(CGSize)size center:(CGPoint)center environment:(id)environment
{
  y = center.y;
  x = center.x;
  height = size.height;
  width = size.width;
  entry = self->_entry;
  environmentCopy = environment;
  identifierMap = [(TUIFeedEntry *)entry identifierMap];
  loadingIdentifier = [identifierMap loadingIdentifier];
  v31 = [TUISpinnerView renderModelWithIdentifier:loadingIdentifier];

  v14 = [[TUIRenderModelTransform alloc] initWithSubmodel:v31];
  [(TUIRenderModelTransform *)v14 setSize:width, height];
  [(TUIRenderModelTransform *)v14 setCenter:x, y];
  v15 = [environmentCopy layoutDirection] == &dword_0 + 2;
  [environmentCopy viewSize];
  v17 = v16;
  v18 = [TUIRenderModelSection alloc];
  v19 = self->_entry;
  v35 = v14;
  v20 = [NSArray arrayWithObjects:&v35 count:1];
  identifierMap2 = [(TUIFeedEntry *)self->_entry identifierMap];
  renderModelIdentifierMap = [identifierMap2 renderModelIdentifierMap];
  workQueue = [(TUIWorkQueueContext *)self->_queueContext workQueue];
  v32[0] = v15;
  memset(&v32[1], 0, 7);
  v33 = v17;
  v34 = 0;
  v24 = [(TUIRenderModelSection *)v18 initWithEntry:v19 submodels:v20 config:v32 impressions:0 linkEntities:0 hoverRegions:0 identifierMap:renderModelIdentifierMap layoutQueue:workQueue];

  [environmentCopy viewSize];
  v26 = v25;

  [(TUIRenderModelSection *)v24 setSize:v26, height];
  section = self->_section;
  uUID = [(_TUIFeedLayoutSection *)self UUID];
  v29 = [(TUIRenderModelSection *)v24 copyWithSection:section offset:uUID uuid:CGPointZero.x, CGPointZero.y];

  return v29;
}

- (void)debugDumpEnvironmentContainerStructure
{
  templateURL = [(TUIFeedEntry *)self->_entry templateURL];
  debugDumpEnvironmentContainerStructure = [(TUILayoutController *)self->_layoutController debugDumpEnvironmentContainerStructure];
  NSLog(@"\nEntry: %@\n\n%@", templateURL, debugDumpEnvironmentContainerStructure);
}

- (TUIFeedLayoutController)feedLayoutController
{
  WeakRetained = objc_loadWeakRetained(&self->_feedLayoutController);

  return WeakRetained;
}

@end