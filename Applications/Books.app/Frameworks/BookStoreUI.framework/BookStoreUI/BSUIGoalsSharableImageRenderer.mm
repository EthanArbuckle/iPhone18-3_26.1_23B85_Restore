@interface BSUIGoalsSharableImageRenderer
- (BSUIGoalsSharableImageRenderer)initWithOptions:(id)options completion:(id)completion traitCollection:(id)collection;
- (CGSize)viewSize;
- (id)feedEntry:(id)entry requestDataWithPriority:(float)priority block:(id)block;
- (void)_renderContent:(id)content completion:(id)completion;
- (void)renderSharableImage:(id)image;
@end

@implementation BSUIGoalsSharableImageRenderer

- (BSUIGoalsSharableImageRenderer)initWithOptions:(id)options completion:(id)completion traitCollection:(id)collection
{
  optionsCopy = options;
  completionCopy = completion;
  collectionCopy = collection;
  v35.receiver = self;
  v35.super_class = BSUIGoalsSharableImageRenderer;
  v11 = [(BSUIGoalsSharableImageRenderer *)&v35 init];
  v12 = v11;
  if (!optionsCopy || !v11)
  {
    goto LABEL_9;
  }

  v13 = [BSUIDynamicValue alloc];
  v14 = [(BSUIDynamicValue *)v13 initWithValue:TUIFeedContentDefaultStackName options:optionsCopy];
  currentStackName = v12->_currentStackName;
  v12->_currentStackName = v14;

  v16 = [[JSAFeedController alloc] initWithOptions:optionsCopy completion:completionCopy];
  jsFeedController = v12->_jsFeedController;
  v12->_jsFeedController = v16;

  objc_storeStrong(&v12->_traitCollection, collection);
  objc_opt_class();
  v18 = [optionsCopy objectForKey:@"shareableImageWidth"];
  v19 = BUDynamicCast();

  objc_opt_class();
  v20 = [optionsCopy objectForKey:@"shareableImageHeight"];
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
    v33 = [optionsCopy objectForKey:@"width"];
    v19 = BUDynamicCast();

    if (v21)
    {
      goto LABEL_5;
    }
  }

  objc_opt_class();
  v34 = [optionsCopy objectForKey:@"height"];
  v21 = BUDynamicCast();

LABEL_5:
  [v19 doubleValue];
  v23 = v22;
  [v21 doubleValue];
  v25 = v24;
  v26 = [optionsCopy objectForKeyedSubscript:@"style"];
  v12->_useDarkStyle = [v26 isEqualToString:@"dark"];

  v12->_viewSize.width = v23;
  v12->_viewSize.height = v25;
  objc_opt_class();
  v27 = [optionsCopy objectForKey:@"shareableImageScale"];
  v28 = BUDynamicCast();

  if (v28 || (objc_opt_class(), [optionsCopy objectForKey:@"scale"], v29 = objc_claimAutoreleasedReturnValue(), BUDynamicCast(), v28 = objc_claimAutoreleasedReturnValue(), v29, v28))
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

- (void)renderSharableImage:(id)image
{
  imageCopy = image;
  jsFeedController = [(BSUIGoalsSharableImageRenderer *)self jsFeedController];
  if (jsFeedController)
  {
    v6 = jsFeedController;
    feedContentLoadingState = [(BSUIGoalsSharableImageRenderer *)self feedContentLoadingState];

    if (!feedContentLoadingState)
    {
      objc_initWeak(&location, self);
      [(BSUIGoalsSharableImageRenderer *)self setFeedContentLoadingState:1];
      jsFeedController2 = [(BSUIGoalsSharableImageRenderer *)self jsFeedController];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_6180;
      v9[3] = &unk_386CA8;
      objc_copyWeak(&v11, &location);
      v9[4] = self;
      v10 = imageCopy;
      [jsFeedController2 requestEntriesWithCompletion:v9];

      objc_destroyWeak(&v11);
      objc_destroyWeak(&location);
    }
  }
}

- (id)feedEntry:(id)entry requestDataWithPriority:(float)priority block:(id)block
{
  entryCopy = entry;
  blockCopy = block;
  if (blockCopy)
  {
    jsFeedController = [(BSUIGoalsSharableImageRenderer *)self jsFeedController];

    if (jsFeedController)
    {
      jsFeedController2 = [(BSUIGoalsSharableImageRenderer *)self jsFeedController];
      v11 = [entryCopy uid];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_64E4;
      v13[3] = &unk_386CD0;
      v14 = blockCopy;
      [jsFeedController2 requestCompleteDataForEntry:v11 completion:v13];
    }

    else
    {
      (*(blockCopy + 2))(blockCopy, 0, 0);
    }
  }

  return 0;
}

- (void)_renderContent:(id)content completion:(id)completion
{
  completionCopy = completion;
  contentCopy = content;
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
  v15 = [v12 initWithContent:contentCopy environment:v8 factory:v13 manager:v14 options:v11];

  feedRenderer = self->_feedRenderer;
  self->_feedRenderer = v15;

  v17 = self->_feedRenderer;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_6704;
  v19[3] = &unk_386CF8;
  v20 = completionCopy;
  v18 = completionCopy;
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