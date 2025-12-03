@interface BKThumbnailBookViewConfiguration
- (BKThumbnailBookViewConfiguration)initWithContext:(id)context;
- (BOOL)_isCompactHeight;
- (IMFrameEnvironment)context;
- (UIEdgeInsets)resumeButtonTitleEdgeInsets;
- (UIEdgeInsets)tocButtonImageEdgeInsets;
- (double)backgroundExtensionForWindow:(id)window;
- (double)sideContentInset;
- (double)singlePagePadding;
- (double)statusBarHeightForWindow:(id)window;
- (double)tapToTurnWidth;
- (id)libraryButtonTitle;
- (void)_setupCompactWidth;
- (void)_setupDefault;
- (void)_setupRegularWidth;
@end

@implementation BKThumbnailBookViewConfiguration

- (BKThumbnailBookViewConfiguration)initWithContext:(id)context
{
  contextCopy = context;
  v8.receiver = self;
  v8.super_class = BKThumbnailBookViewConfiguration;
  v5 = [(BKThumbnailBookViewConfiguration *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_context, contextCopy);
    [(BKThumbnailBookViewConfiguration *)v6 _setupCompactWidth];
    [(BKThumbnailBookViewConfiguration *)v6 _setupRegularWidth];
    [(BKThumbnailBookViewConfiguration *)v6 _setupDefault];
  }

  return v6;
}

- (double)sideContentInset
{
  context = [(BKThumbnailBookViewConfiguration *)self context];
  [(BKThumbnailBookViewConfiguration *)self floatForKey:@"sideContentInset" context:context];
  v5 = v4;

  return v5;
}

- (id)libraryButtonTitle
{
  context = [(BKThumbnailBookViewConfiguration *)self context];
  v4 = [(BKThumbnailBookViewConfiguration *)self stringForKey:@"libraryButtonTitle" context:context];

  return v4;
}

- (UIEdgeInsets)tocButtonImageEdgeInsets
{
  context = [(BKThumbnailBookViewConfiguration *)self context];
  [(BKThumbnailBookViewConfiguration *)self edgeInsetsForKey:@"tocButtonImageEdgeInsets" context:context];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.right = v15;
  result.bottom = v14;
  result.left = v13;
  result.top = v12;
  return result;
}

- (UIEdgeInsets)resumeButtonTitleEdgeInsets
{
  context = [(BKThumbnailBookViewConfiguration *)self context];
  [(BKThumbnailBookViewConfiguration *)self edgeInsetsForKey:@"resumeButtonTitleEdgeInsets" context:context];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.right = v15;
  result.bottom = v14;
  result.left = v13;
  result.top = v12;
  return result;
}

- (double)tapToTurnWidth
{
  context = [(BKThumbnailBookViewConfiguration *)self context];
  [(BKThumbnailBookViewConfiguration *)self floatForKey:@"tapToTurnWidth" context:context];
  v5 = v4;

  return v5;
}

- (double)singlePagePadding
{
  context = [(BKThumbnailBookViewConfiguration *)self context];
  [(BKThumbnailBookViewConfiguration *)self floatForKey:@"singlePagePadding" context:context];
  v5 = v4;

  return v5;
}

- (double)statusBarHeightForWindow:(id)window
{
  windowCopy = window;
  v5 = 0.0;
  if (![(BKThumbnailBookViewConfiguration *)self _isCompactHeight])
  {
    windowScene = [windowCopy windowScene];
    statusBarManager = [windowScene statusBarManager];
    [statusBarManager bc_defaultPortraitStatusBarHeight];
    v5 = v8;
  }

  return v5;
}

- (double)backgroundExtensionForWindow:(id)window
{
  windowCopy = window;
  v5 = 0.0;
  if (![(BKThumbnailBookViewConfiguration *)self _isCompactHeight])
  {
    WeakRetained = objc_loadWeakRetained(&self->_context);
    [WeakRetained im_frameEnvironmentSafeAreaInsets];
    v5 = v7;

    if (fabs(v5) < 2.22044605e-16)
    {
      [(BKThumbnailBookViewConfiguration *)self statusBarHeightForWindow:windowCopy];
      v5 = v8;
    }
  }

  return v5;
}

- (BOOL)_isCompactHeight
{
  context = [(BKThumbnailBookViewConfiguration *)self context];
  traitCollection = [context traitCollection];
  v4 = [traitCollection verticalSizeClass] == &dword_0 + 1;

  return v4;
}

- (void)_setupDefault
{
  v3 = +[IMConfigurationPredicate compactWidthPredicate];
  [(BKThumbnailBookViewConfiguration *)self addWithPredicate:v3 adder:&stru_1E3DD0];

  v4 = +[IMConfigurationPredicate regularWidthPredicate];
  [(BKThumbnailBookViewConfiguration *)self addWithPredicate:v4 adder:&stru_1E3DF0];
}

- (void)_setupCompactWidth
{
  v3 = +[IMConfigurationPredicate compactWidthPredicate];
  [(BKThumbnailBookViewConfiguration *)self addWithPredicate:v3 adder:&stru_1E3E10];
}

- (void)_setupRegularWidth
{
  v3 = +[IMConfigurationPredicate regularWidthPredicate];
  [(BKThumbnailBookViewConfiguration *)self addWithPredicate:v3 adder:&stru_1E3E70];
}

- (IMFrameEnvironment)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

@end