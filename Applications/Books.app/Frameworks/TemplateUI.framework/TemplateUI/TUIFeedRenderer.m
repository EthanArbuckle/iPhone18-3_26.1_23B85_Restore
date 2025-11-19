@interface TUIFeedRenderer
- (TUIFeedRenderer)initWithContent:(id)a3 environment:(id)a4 factory:(id)a5 manager:(id)a6 options:(id)a7;
- (id)_buildRootLayerFromRenderModel:(id)a3;
- (void)applyLayerModelUpdate:(id)a3 hasInvalidLayouts:(BOOL)a4;
- (void)capture:(id)a3;
- (void)dealloc;
@end

@implementation TUIFeedRenderer

- (TUIFeedRenderer)initWithContent:(id)a3 environment:(id)a4 factory:(id)a5 manager:(id)a6 options:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
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

    objc_storeStrong(&v18->_content, a3);
    [v14 contentsScale];
    v18->_contentScale = v21;
    objc_storeStrong(&v18->_options, a7);
    v22 = [[TUIFeedLayoutController alloc] initWithFeedId:v18->_feedId.uniqueIdentifier environment:v14 factory:v15 manager:v16 renderMode:1];
    layoutController = v18->_layoutController;
    v18->_layoutController = v22;

    v24 = [(TUIFeedLayoutController *)v18->_layoutController layerUpdateController];
    v25 = [v24 registerDelegate:v18];
  }

  return v18;
}

- (void)dealloc
{
  v3 = [(TUIFeedLayoutController *)self->_layoutController layerUpdateController];
  [v3 unregisterDelegate:self];

  v4.receiver = self;
  v4.super_class = TUIFeedRenderer;
  [(TUIFeedRenderer *)&v4 dealloc];
}

- (void)capture:(id)a3
{
  content = self->_content;
  layoutController = self->_layoutController;
  v6 = a3;
  [(TUIFeedLayoutController *)layoutController updateWithContent:content transaction:0];
  v7 = [TUIFeedSuspendLayoutLayerUpdateCondition alloc];
  v8 = [(TUIFeedContent *)self->_content entries];
  v9 = -[TUIFeedSuspendLayoutLayerUpdateCondition initWithSectionCount:completion:](v7, "initWithSectionCount:completion:", [v8 count], 0);
  layoutCondition = self->_layoutCondition;
  self->_layoutCondition = v9;

  [(TUIFeedLayoutController *)self->_layoutController suspendUpdatesUntilMeetingLayoutCondition:self->_layoutCondition];
  v11 = objc_retainBlock(v6);

  completion = self->_completion;
  self->_completion = v11;
}

- (void)applyLayerModelUpdate:(id)a3 hasInvalidLayouts:(BOOL)a4
{
  v6 = a3;
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

  v10 = [[TUIFeedRendererImageResourceObserver alloc] initWithRenderModel:v6 timeout:v9];
  resourceObserver = self->_resourceObserver;
  self->_resourceObserver = v10;

  v12 = self->_resourceObserver;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_166DC4;
  v14[3] = &unk_2632E8;
  v14[4] = self;
  v15 = v6;
  v16 = a4;
  v13 = v6;
  [(TUIFeedRendererImageResourceObserver *)v12 waitForImageResources:v14];
}

- (id)_buildRootLayerFromRenderModel:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_167254;
  v16 = sub_167264;
  v17 = objc_alloc_init(CALayer);
  [v13[5] setAnchorPoint:{0.5, 0.5}];
  [v4 size];
  v6 = v5;
  [v4 size];
  [v13[5] setFrame:{0.0, 0.0, v6, v7}];
  [v13[5] setContentsScale:self->_contentScale];
  [v13[5] setRasterizationScale:self->_contentScale];
  [v13[5] setShouldRasterize:1];
  v8 = [v4 submodels];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_16726C;
  v11[3] = &unk_263310;
  v11[4] = &v12;
  [v8 enumerateObjectsUsingBlock:v11];

  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

@end