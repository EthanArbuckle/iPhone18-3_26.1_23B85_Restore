@interface BSUIGoalsSharableImageRenderer
- (BSUIGoalsSharableImageRenderer)initWithOptions:(id)a3 completion:(id)a4 traitCollection:(id)a5;
- (CGSize)viewSize;
- (id)feedEntry:(id)a3 requestDataWithPriority:(float)a4 block:(id)a5;
- (void)_renderContent:(id)a3 completion:(id)a4;
- (void)renderSharableImage:(id)a3;
@end

@implementation BSUIGoalsSharableImageRenderer

- (BSUIGoalsSharableImageRenderer)initWithOptions:(id)a3 completion:(id)a4 traitCollection:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v35.receiver = self;
  v35.super_class = BSUIGoalsSharableImageRenderer;
  v11 = [(BSUIGoalsSharableImageRenderer *)&v35 init];
  v12 = v11;
  if (!v8 || !v11)
  {
    goto LABEL_9;
  }

  v13 = [BSUIDynamicValue alloc];
  v14 = [(BSUIDynamicValue *)v13 initWithValue:TUIFeedContentDefaultStackName options:v8];
  currentStackName = v12->_currentStackName;
  v12->_currentStackName = v14;

  v16 = [[JSAFeedController alloc] initWithOptions:v8 completion:v9];
  jsFeedController = v12->_jsFeedController;
  v12->_jsFeedController = v16;

  objc_storeStrong(&v12->_traitCollection, a5);
  objc_opt_class();
  v18 = [v8 objectForKey:@"shareableImageWidth"];
  v19 = BUDynamicCast();

  objc_opt_class();
  v20 = [v8 objectForKey:@"shareableImageHeight"];
  v21 = BUDynamicCast();

  if (v19)
  {
    if (v21)
    {
      goto LABEL_5;
    }
  }

  else
  {
    objc_opt_class();
    v33 = [v8 objectForKey:@"width"];
    v19 = BUDynamicCast();

    if (v21)
    {
      goto LABEL_5;
    }
  }

  objc_opt_class();
  v34 = [v8 objectForKey:@"height"];
  v21 = BUDynamicCast();

LABEL_5:
  [v19 doubleValue];
  v23 = v22;
  [v21 doubleValue];
  v25 = v24;
  v26 = [v8 objectForKeyedSubscript:@"style"];
  v12->_useDarkStyle = [v26 isEqualToString:@"dark"];

  v12->_viewSize.width = v23;
  v12->_viewSize.height = v25;
  objc_opt_class();
  v27 = [v8 objectForKey:@"shareableImageScale"];
  v28 = BUDynamicCast();

  if (v28 || (objc_opt_class(), [v8 objectForKey:@"scale"], v29 = objc_claimAutoreleasedReturnValue(), BUDynamicCast(), v28 = objc_claimAutoreleasedReturnValue(), v29, v28))
  {
    [v28 doubleValue];
    v31 = v30;
  }

  else
  {
    v31 = 1.0;
  }

  v12->_scale = v31;

LABEL_9:
  return v12;
}

- (void)renderSharableImage:(id)a3
{
  v4 = a3;
  v5 = [(BSUIGoalsSharableImageRenderer *)self jsFeedController];
  if (v5)
  {
    v6 = v5;
    v7 = [(BSUIGoalsSharableImageRenderer *)self feedContentLoadingState];

    if (!v7)
    {
      objc_initWeak(&location, self);
      [(BSUIGoalsSharableImageRenderer *)self setFeedContentLoadingState:1];
      v8 = [(BSUIGoalsSharableImageRenderer *)self jsFeedController];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_6180;
      v9[3] = &unk_386CA8;
      objc_copyWeak(&v11, &location);
      v9[4] = self;
      v10 = v4;
      [v8 requestEntriesWithCompletion:v9];

      objc_destroyWeak(&v11);
      objc_destroyWeak(&location);
    }
  }
}

- (id)feedEntry:(id)a3 requestDataWithPriority:(float)a4 block:(id)a5
{
  v7 = a3;
  v8 = a5;
  if (v8)
  {
    v9 = [(BSUIGoalsSharableImageRenderer *)self jsFeedController];

    if (v9)
    {
      v10 = [(BSUIGoalsSharableImageRenderer *)self jsFeedController];
      v11 = [v7 uid];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_64E4;
      v13[3] = &unk_386CD0;
      v14 = v8;
      [v10 requestCompleteDataForEntry:v11 completion:v13];
    }

    else
    {
      (*(v8 + 2))(v8, 0, 0);
    }
  }

  return 0;
}

- (void)_renderContent:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[TUIEnvironment alloc] initWithViewSize:self->_traitCollection viewSafeAreaInsets:self->_viewSize.width traitCollection:{self->_viewSize.height, UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  if ([(BSUIGoalsSharableImageRenderer *)self useDarkStyle])
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  [v8 setStyle:v9];
  [v8 contentsScale];
  [v8 setContentsScale:v10 * self->_scale];
  v11 = [[TUIFeedRendererOptions alloc] initWithResourceTimeout:0.3];
  v12 = [TUIFeedRenderer alloc];
  v13 = +[BSUITemplate factory];
  v14 = +[BSUITemplate manager];
  v15 = [v12 initWithContent:v7 environment:v8 factory:v13 manager:v14 options:v11];

  feedRenderer = self->_feedRenderer;
  self->_feedRenderer = v15;

  v17 = self->_feedRenderer;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_6704;
  v19[3] = &unk_386CF8;
  v20 = v6;
  v18 = v6;
  [(TUIFeedRenderer *)v17 capture:v19];
}

- (CGSize)viewSize
{
  width = self->_viewSize.width;
  height = self->_viewSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end