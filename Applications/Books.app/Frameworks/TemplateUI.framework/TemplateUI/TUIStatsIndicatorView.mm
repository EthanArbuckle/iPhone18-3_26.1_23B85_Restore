@interface TUIStatsIndicatorView
+ (id)renderModelWithIdentifier:(id)identifier stats:(id)stats uid:(id)uid;
- (TUIStatsIndicatorView)initWithFrame:(CGRect)frame;
- (id)_presentedViewController;
- (void)_showStats:(id)stats;
- (void)applyLayoutAttributes:(id)attributes;
@end

@implementation TUIStatsIndicatorView

+ (id)renderModelWithIdentifier:(id)identifier stats:(id)stats uid:(id)uid
{
  uidCopy = uid;
  statsCopy = stats;
  identifierCopy = identifier;
  v10 = [[TUIStatsIndicatorRenderModel alloc] initWithStats:statsCopy uid:uidCopy];

  v11 = [[TUIRenderModelView alloc] initWithReuseIdentifier:@"TUIReuseIdentifierStatsIndicatorView" identifier:identifierCopy submodel:v10];
  [(TUIRenderModelView *)v11 setSize:180.0, 40.0];

  return v11;
}

- (TUIStatsIndicatorView)initWithFrame:(CGRect)frame
{
  v15.receiver = self;
  v15.super_class = TUIStatsIndicatorView;
  v3 = [(TUIStatsIndicatorView *)&v15 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [UIButton alloc];
    [(TUIStatsIndicatorView *)v3 bounds];
    v5 = [v4 initWithFrame:?];
    button = v3->_button;
    v3->_button = v5;

    [(UIButton *)v3->_button setAutoresizingMask:18];
    v7 = +[UIColor blackColor];
    [(UIButton *)v3->_button setTintColor:v7];

    v8 = [UIColor colorWithWhite:0.3 alpha:0.5];
    [(UIButton *)v3->_button setBackgroundColor:v8];

    layer = [(UIButton *)v3->_button layer];
    [layer setCornerRadius:6.0];

    v10 = v3->_button;
    v11 = +[UIColor blackColor];
    [(UIButton *)v10 setTitleColor:v11 forState:0];

    v12 = [UIFont boldSystemFontOfSize:18.0];
    titleLabel = [(UIButton *)v3->_button titleLabel];
    [titleLabel setFont:v12];

    [(UIButton *)v3->_button addTarget:v3 action:"_showStats:" forControlEvents:64];
    [(TUIStatsIndicatorView *)v3 addSubview:v3->_button];
  }

  return v3;
}

- (void)applyLayoutAttributes:(id)attributes
{
  v22.receiver = self;
  v22.super_class = TUIStatsIndicatorView;
  attributesCopy = attributes;
  [(TUIReusableBaseView *)&v22 applyLayoutAttributes:attributesCopy];
  renderModel = [attributesCopy renderModel];

  submodel = [renderModel submodel];
  statsModel = self->_statsModel;
  self->_statsModel = submodel;

  stats = [(TUIStatsIndicatorRenderModel *)self->_statsModel stats];
  entries = [stats entries];
  v10 = [(TUIStatsIndicatorRenderModel *)self->_statsModel uid];
  v11 = [entries objectForKeyedSubscript:v10];

  v12 = [NSString alloc];
  [v11 elapsedTimeForPhase:0];
  v14 = v13 * 1000.0;
  passes = [v11 passes];
  lastObject = [passes lastObject];
  [lastObject elapsedTimeForPhase:0];
  v18 = v17 * 1000.0;
  v19 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v11 numberOfFullPasses]);
  v20 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v11 numberOfPartialPasses]);
  v21 = [v12 initWithFormat:@"σ %.1fms/%.1fms/%@/%@", *&v14, *&v18, v19, v20, v22.receiver, v22.super_class];

  [(UIButton *)self->_button setTitle:v21 forState:0];
}

- (id)_presentedViewController
{
  window = [(TUIStatsIndicatorView *)self window];
  rootViewController = [window rootViewController];

  presentedViewController = [rootViewController presentedViewController];

  if (presentedViewController)
  {
    do
    {
      presentedViewController2 = [rootViewController presentedViewController];

      v5PresentedViewController = [presentedViewController2 presentedViewController];

      rootViewController = presentedViewController2;
    }

    while (v5PresentedViewController);
  }

  else
  {
    presentedViewController2 = rootViewController;
  }

  return presentedViewController2;
}

- (void)_showStats:(id)stats
{
  stats = [(TUIStatsIndicatorRenderModel *)self->_statsModel stats];
  v5 = [TUIStatsViewControllerFactory newViewControllerWithFeed:stats];

  stats2 = [(TUIStatsIndicatorRenderModel *)self->_statsModel stats];
  entries = [stats2 entries];
  v8 = [(TUIStatsIndicatorRenderModel *)self->_statsModel uid];
  v9 = [entries objectForKeyedSubscript:v8];
  v10 = [TUIStatsViewControllerFactory newViewControllerWithFeedEntry:v9];

  v11 = objc_alloc_init(UINavigationController);
  v14[0] = v5;
  v14[1] = v10;
  v12 = [NSArray arrayWithObjects:v14 count:2];
  [v11 setViewControllers:v12];

  _presentedViewController = [(TUIStatsIndicatorView *)self _presentedViewController];
  [_presentedViewController presentViewController:v11 animated:1 completion:0];
}

@end