@interface TUIStatsIndicatorView
+ (id)renderModelWithIdentifier:(id)a3 stats:(id)a4 uid:(id)a5;
- (TUIStatsIndicatorView)initWithFrame:(CGRect)a3;
- (id)_presentedViewController;
- (void)_showStats:(id)a3;
- (void)applyLayoutAttributes:(id)a3;
@end

@implementation TUIStatsIndicatorView

+ (id)renderModelWithIdentifier:(id)a3 stats:(id)a4 uid:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[TUIStatsIndicatorRenderModel alloc] initWithStats:v8 uid:v7];

  v11 = [[TUIRenderModelView alloc] initWithReuseIdentifier:@"TUIReuseIdentifierStatsIndicatorView" identifier:v9 submodel:v10];
  [(TUIRenderModelView *)v11 setSize:180.0, 40.0];

  return v11;
}

- (TUIStatsIndicatorView)initWithFrame:(CGRect)a3
{
  v15.receiver = self;
  v15.super_class = TUIStatsIndicatorView;
  v3 = [(TUIStatsIndicatorView *)&v15 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

    v9 = [(UIButton *)v3->_button layer];
    [v9 setCornerRadius:6.0];

    v10 = v3->_button;
    v11 = +[UIColor blackColor];
    [(UIButton *)v10 setTitleColor:v11 forState:0];

    v12 = [UIFont boldSystemFontOfSize:18.0];
    v13 = [(UIButton *)v3->_button titleLabel];
    [v13 setFont:v12];

    [(UIButton *)v3->_button addTarget:v3 action:"_showStats:" forControlEvents:64];
    [(TUIStatsIndicatorView *)v3 addSubview:v3->_button];
  }

  return v3;
}

- (void)applyLayoutAttributes:(id)a3
{
  v22.receiver = self;
  v22.super_class = TUIStatsIndicatorView;
  v4 = a3;
  [(TUIReusableBaseView *)&v22 applyLayoutAttributes:v4];
  v5 = [v4 renderModel];

  v6 = [v5 submodel];
  statsModel = self->_statsModel;
  self->_statsModel = v6;

  v8 = [(TUIStatsIndicatorRenderModel *)self->_statsModel stats];
  v9 = [v8 entries];
  v10 = [(TUIStatsIndicatorRenderModel *)self->_statsModel uid];
  v11 = [v9 objectForKeyedSubscript:v10];

  v12 = [NSString alloc];
  [v11 elapsedTimeForPhase:0];
  v14 = v13 * 1000.0;
  v15 = [v11 passes];
  v16 = [v15 lastObject];
  [v16 elapsedTimeForPhase:0];
  v18 = v17 * 1000.0;
  v19 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v11 numberOfFullPasses]);
  v20 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v11 numberOfPartialPasses]);
  v21 = [v12 initWithFormat:@"σ %.1fms/%.1fms/%@/%@", *&v14, *&v18, v19, v20, v22.receiver, v22.super_class];

  [(UIButton *)self->_button setTitle:v21 forState:0];
}

- (id)_presentedViewController
{
  v2 = [(TUIStatsIndicatorView *)self window];
  v3 = [v2 rootViewController];

  v4 = [v3 presentedViewController];

  if (v4)
  {
    do
    {
      v5 = [v3 presentedViewController];

      v6 = [v5 presentedViewController];

      v3 = v5;
    }

    while (v6);
  }

  else
  {
    v5 = v3;
  }

  return v5;
}

- (void)_showStats:(id)a3
{
  v4 = [(TUIStatsIndicatorRenderModel *)self->_statsModel stats];
  v5 = [TUIStatsViewControllerFactory newViewControllerWithFeed:v4];

  v6 = [(TUIStatsIndicatorRenderModel *)self->_statsModel stats];
  v7 = [v6 entries];
  v8 = [(TUIStatsIndicatorRenderModel *)self->_statsModel uid];
  v9 = [v7 objectForKeyedSubscript:v8];
  v10 = [TUIStatsViewControllerFactory newViewControllerWithFeedEntry:v9];

  v11 = objc_alloc_init(UINavigationController);
  v14[0] = v5;
  v14[1] = v10;
  v12 = [NSArray arrayWithObjects:v14 count:2];
  [v11 setViewControllers:v12];

  v13 = [(TUIStatsIndicatorView *)self _presentedViewController];
  [v13 presentViewController:v11 animated:1 completion:0];
}

@end