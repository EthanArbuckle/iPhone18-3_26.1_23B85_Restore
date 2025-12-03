@interface BKContentLoadingView
- (BKContentLoadingView)initWithFrame:(CGRect)frame theme:(id)theme;
- (void)_updateColors;
- (void)setTheme:(id)theme;
@end

@implementation BKContentLoadingView

- (BKContentLoadingView)initWithFrame:(CGRect)frame theme:(id)theme
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  themeCopy = theme;
  v29.receiver = self;
  v29.super_class = BKContentLoadingView;
  height = [(BKContentLoadingView *)&v29 initWithFrame:x, y, width, height];
  if (height)
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
    [(BKContentLoadingView *)height addSubview:v14];
    objc_storeStrong(&height->_spinner, v14);
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
    objc_storeStrong(&height->_label, v20);
    [(BKContentLoadingView *)height addSubview:v20];
    [(BKContentLoadingView *)height setTheme:themeCopy];
    layer = [(BKContentLoadingView *)height layer];
    [layer setCornerRadius:7.0];

    v26 = +[UITraitCollection bc_allAPITraits];
    v27 = [(BKContentLoadingView *)height registerForTraitChanges:v26 withAction:"_traitCollectionDidChange:previousTraitCollection:"];
  }

  return height;
}

- (void)setTheme:(id)theme
{
  objc_storeStrong(&self->_theme, theme);

  [(BKContentLoadingView *)self _updateColors];
}

- (void)_updateColors
{
  theme = [(BKContentLoadingView *)self theme];
  traitCollection = [(BKContentLoadingView *)self traitCollection];
  v4 = [theme backgroundColorForTraitCollection:traitCollection];
  [(BKContentLoadingView *)self setBackgroundColor:v4];

  contentTextColor = [theme contentTextColor];
  label = [(BKContentLoadingView *)self label];
  [label setTextColor:contentTextColor];
}

@end