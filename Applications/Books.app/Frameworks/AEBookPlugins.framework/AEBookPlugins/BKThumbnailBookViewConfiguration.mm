@interface BKThumbnailBookViewConfiguration
- (BKThumbnailBookViewConfiguration)initWithContext:(id)a3;
- (BOOL)_isCompactHeight;
- (IMFrameEnvironment)context;
- (UIEdgeInsets)resumeButtonTitleEdgeInsets;
- (UIEdgeInsets)tocButtonImageEdgeInsets;
- (double)backgroundExtensionForWindow:(id)a3;
- (double)sideContentInset;
- (double)singlePagePadding;
- (double)statusBarHeightForWindow:(id)a3;
- (double)tapToTurnWidth;
- (id)libraryButtonTitle;
- (void)_setupCompactWidth;
- (void)_setupDefault;
- (void)_setupRegularWidth;
@end

@implementation BKThumbnailBookViewConfiguration

- (BKThumbnailBookViewConfiguration)initWithContext:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = BKThumbnailBookViewConfiguration;
  v5 = [(BKThumbnailBookViewConfiguration *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_context, v4);
    [(BKThumbnailBookViewConfiguration *)v6 _setupCompactWidth];
    [(BKThumbnailBookViewConfiguration *)v6 _setupRegularWidth];
    [(BKThumbnailBookViewConfiguration *)v6 _setupDefault];
  }

  return v6;
}

- (double)sideContentInset
{
  v3 = [(BKThumbnailBookViewConfiguration *)self context];
  [(BKThumbnailBookViewConfiguration *)self floatForKey:@"sideContentInset" context:v3];
  v5 = v4;

  return v5;
}

- (id)libraryButtonTitle
{
  v3 = [(BKThumbnailBookViewConfiguration *)self context];
  v4 = [(BKThumbnailBookViewConfiguration *)self stringForKey:@"libraryButtonTitle" context:v3];

  return v4;
}

- (UIEdgeInsets)tocButtonImageEdgeInsets
{
  v3 = [(BKThumbnailBookViewConfiguration *)self context];
  [(BKThumbnailBookViewConfiguration *)self edgeInsetsForKey:@"tocButtonImageEdgeInsets" context:v3];
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
  v3 = [(BKThumbnailBookViewConfiguration *)self context];
  [(BKThumbnailBookViewConfiguration *)self edgeInsetsForKey:@"resumeButtonTitleEdgeInsets" context:v3];
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
  v3 = [(BKThumbnailBookViewConfiguration *)self context];
  [(BKThumbnailBookViewConfiguration *)self floatForKey:@"tapToTurnWidth" context:v3];
  v5 = v4;

  return v5;
}

- (double)singlePagePadding
{
  v3 = [(BKThumbnailBookViewConfiguration *)self context];
  [(BKThumbnailBookViewConfiguration *)self floatForKey:@"singlePagePadding" context:v3];
  v5 = v4;

  return v5;
}

- (double)statusBarHeightForWindow:(id)a3
{
  v4 = a3;
  v5 = 0.0;
  if (![(BKThumbnailBookViewConfiguration *)self _isCompactHeight])
  {
    v6 = [v4 windowScene];
    v7 = [v6 statusBarManager];
    [v7 bc_defaultPortraitStatusBarHeight];
    v5 = v8;
  }

  return v5;
}

- (double)backgroundExtensionForWindow:(id)a3
{
  v4 = a3;
  v5 = 0.0;
  if (![(BKThumbnailBookViewConfiguration *)self _isCompactHeight])
  {
    WeakRetained = objc_loadWeakRetained(&self->_context);
    [WeakRetained im_frameEnvironmentSafeAreaInsets];
    v5 = v7;

    if (fabs(v5) < 2.22044605e-16)
    {
      [(BKThumbnailBookViewConfiguration *)self statusBarHeightForWindow:v4];
      v5 = v8;
    }
  }

  return v5;
}

- (BOOL)_isCompactHeight
{
  v2 = [(BKThumbnailBookViewConfiguration *)self context];
  v3 = [v2 traitCollection];
  v4 = [v3 verticalSizeClass] == &dword_0 + 1;

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