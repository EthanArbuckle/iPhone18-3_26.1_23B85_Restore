@interface BKContentLoadingView
- (BKContentLoadingView)initWithFrame:(CGRect)a3 theme:(id)a4;
- (void)_updateColors;
- (void)setTheme:(id)a3;
@end

@implementation BKContentLoadingView

- (BKContentLoadingView)initWithFrame:(CGRect)a3 theme:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v29.receiver = self;
  v29.super_class = BKContentLoadingView;
  v10 = [(BKContentLoadingView *)&v29 initWithFrame:x, y, width, height];
  if (v10)
  {
    v11 = CGRectZero.origin.y;
    v30.origin.x = CGRectZero.origin.x;
    v30.origin.y = v11;
    v30.size.width = 142.0;
    v30.size.height = 97.0;
    v12 = CGRectGetWidth(v30);
    v31.origin.x = CGRectZero.origin.x;
    v31.origin.y = v11;
    v31.size.width = 142.0;
    v31.size.height = 97.0;
    v13 = CGRectGetHeight(v31);
    v14 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:101];
    [v14 frame];
    v15 = v32.origin.x;
    v16 = v32.origin.y;
    v17 = v32.size.width;
    v18 = v32.size.height;
    v19 = CGRectGetWidth(v32);
    v33.origin.x = v15;
    v33.origin.y = v16;
    v33.size.width = v17;
    v33.size.height = v18;
    [v14 setFrame:{floor((v12 - v19) * 0.5), floor((v13 - CGRectGetHeight(v33)) * 0.5) + -13.0, v17, v18}];
    [(BKContentLoadingView *)v10 addSubview:v14];
    objc_storeStrong(&v10->_spinner, v14);
    [v14 startAnimating];
    v20 = objc_alloc_init(UILabel);
    v21 = AEBundle();
    v22 = [v21 localizedStringForKey:@"Loading…" value:&stru_1E7188 table:0];
    [v20 setText:v22];

    v23 = [UIFont boldSystemFontOfSize:14.0];
    [v20 setFont:v23];

    [v20 setFrame:{0.0, 60.0, 142.0, 25.0}];
    [v20 setTextAlignment:1];
    v24 = +[UIColor clearColor];
    [v20 setBackgroundColor:v24];

    [v20 setOpaque:0];
    objc_storeStrong(&v10->_label, v20);
    [(BKContentLoadingView *)v10 addSubview:v20];
    [(BKContentLoadingView *)v10 setTheme:v9];
    v25 = [(BKContentLoadingView *)v10 layer];
    [v25 setCornerRadius:7.0];

    v26 = +[UITraitCollection bc_allAPITraits];
    v27 = [(BKContentLoadingView *)v10 registerForTraitChanges:v26 withAction:"_traitCollectionDidChange:previousTraitCollection:"];
  }

  return v10;
}

- (void)setTheme:(id)a3
{
  objc_storeStrong(&self->_theme, a3);

  [(BKContentLoadingView *)self _updateColors];
}

- (void)_updateColors
{
  v7 = [(BKContentLoadingView *)self theme];
  v3 = [(BKContentLoadingView *)self traitCollection];
  v4 = [v7 backgroundColorForTraitCollection:v3];
  [(BKContentLoadingView *)self setBackgroundColor:v4];

  v5 = [v7 contentTextColor];
  v6 = [(BKContentLoadingView *)self label];
  [v6 setTextColor:v5];
}

@end