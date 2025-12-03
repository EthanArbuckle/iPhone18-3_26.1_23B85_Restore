@interface TUIFeedRenderer
- (TUIFeedRenderer)initWithContent:(id)content environment:(id)environment factory:(id)factory manager:(id)manager options:(id)options;
- (id)_buildRootLayerFromRenderModel:(id)model;
- (void)applyLayerModelUpdate:(id)update hasInvalidLayouts:(BOOL)layouts;
- (void)capture:(id)capture;
- (void)dealloc;
@end

@implementation TUIFeedRenderer

- (TUIFeedRenderer)initWithContent:(id)content environment:(id)environment factory:(id)factory manager:(id)manager options:(id)options
{
  contentCopy = content;
  environmentCopy = environment;
  factoryCopy = factory;
  managerCopy = manager;
  optionsCopy = options;
  v27.receiver = self;
  v27.super_class = TUIFeedRenderer;
  v18 = [(TUIFeedRenderer *)&v27 init];
  if (v18)
  {
    v18->_feedId.uniqueIdentifier = TUIFeedIdentifierGenerate();
    v19 = TUIDefaultLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      uniqueIdentifier = v18->_feedId.uniqueIdentifier;
      *buf = 134218242;
      v29 = uniqueIdentifier;
      v30 = 2112;
      v31 = v18;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "[fid:%lu] created feed renderer: %@", buf, 0x16u);
    }

    objc_storeStrong(&v18->_content, content);
    [environmentCopy contentsScale];
    v18->_contentScale = v21;
    objc_storeStrong(&v18->_options, options);
    v22 = [[TUIFeedLayoutController alloc] initWithFeedId:v18->_feedId.uniqueIdentifier environment:environmentCopy factory:factoryCopy manager:managerCopy renderMode:1];
    layoutController = v18->_layoutController;
    v18->_layoutController = v22;

    layerUpdateController = [(TUIFeedLayoutController *)v18->_layoutController layerUpdateController];
    v25 = [layerUpdateController registerDelegate:v18];
  }

  return v18;
}

- (void)dealloc
{
  layerUpdateController = [(TUIFeedLayoutController *)self->_layoutController layerUpdateController];
  [layerUpdateController unregisterDelegate:self];

  v4.receiver = self;
  v4.super_class = TUIFeedRenderer;
  [(TUIFeedRenderer *)&v4 dealloc];
}

- (void)capture:(id)capture
{
  content = self->_content;
  layoutController = self->_layoutController;
  captureCopy = capture;
  [(TUIFeedLayoutController *)layoutController updateWithContent:content transaction:0];
  v7 = [TUIFeedSuspendLayoutLayerUpdateCondition alloc];
  entries = [(TUIFeedContent *)self->_content entries];
  v9 = -[TUIFeedSuspendLayoutLayerUpdateCondition initWithSectionCount:completion:](v7, "initWithSectionCount:completion:", [entries count], 0);
  layoutCondition = self->_layoutCondition;
  self->_layoutCondition = v9;

  [(TUIFeedLayoutController *)self->_layoutController suspendUpdatesUntilMeetingLayoutCondition:self->_layoutCondition];
  v11 = objc_retainBlock(captureCopy);

  completion = self->_completion;
  self->_completion = v11;
}

- (void)applyLayerModelUpdate:(id)update hasInvalidLayouts:(BOOL)layouts
{
  updateCopy = update;
  options = self->_options;
  if (options)
  {
    [(TUIFeedRendererOptions *)options timeout];
    v9 = v8;
  }

  else
  {
    v9 = 3.0;
  }

  v10 = [[TUIFeedRendererImageResourceObserver alloc] initWithRenderModel:updateCopy timeout:v9];
  resourceObserver = self->_resourceObserver;
  self->_resourceObserver = v10;

  v12 = self->_resourceObserver;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_166DC4;
  v14[3] = &unk_2632E8;
  v14[4] = self;
  v15 = updateCopy;
  layoutsCopy = layouts;
  v13 = updateCopy;
  [(TUIFeedRendererImageResourceObserver *)v12 waitForImageResources:v14];
}

- (id)_buildRootLayerFromRenderModel:(id)model
{
  modelCopy = model;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_167254;
  v16 = sub_167264;
  v17 = objc_alloc_init(CALayer);
  [v13[5] setAnchorPoint:{0.5, 0.5}];
  [modelCopy size];
  v6 = v5;
  [modelCopy size];
  [v13[5] setFrame:{0.0, 0.0, v6, v7}];
  [v13[5] setContentsScale:self->_contentScale];
  [v13[5] setRasterizationScale:self->_contentScale];
  [v13[5] setShouldRasterize:1];
  submodels = [modelCopy submodels];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_16726C;
  v11[3] = &unk_263310;
  v11[4] = &v12;
  [submodels enumerateObjectsUsingBlock:v11];

  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

@end