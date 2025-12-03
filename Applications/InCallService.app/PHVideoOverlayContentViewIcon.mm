@interface PHVideoOverlayContentViewIcon
- (PHVideoOverlayContentViewIcon)initWithSymbolType:(int64_t)type;
- (void)resetView;
- (void)setupViewWithSymbolType:(int64_t)type;
- (void)updateConstraints;
@end

@implementation PHVideoOverlayContentViewIcon

- (PHVideoOverlayContentViewIcon)initWithSymbolType:(int64_t)type
{
  v7.receiver = self;
  v7.super_class = PHVideoOverlayContentViewIcon;
  v4 = [(PHVideoOverlayContentViewIcon *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_symbolType = type;
    [(PHVideoOverlayContentViewIcon *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PHVideoOverlayContentViewIcon *)v5 setupViewWithSymbolType:type];
  }

  return v5;
}

- (void)setupViewWithSymbolType:(int64_t)type
{
  v5 = [UIImageView alloc];
  v6 = [UIImage tpImageForSymbolType:type textStyle:UIFontTextStyleLargeTitle scale:3 isStaticSize:1];
  v7 = [v5 initWithImage:v6];
  [(PHVideoOverlayContentViewIcon *)self setIconView:v7];

  v8 = +[UIColor whiteColor];
  iconView = [(PHVideoOverlayContentViewIcon *)self iconView];
  [iconView setTintColor:v8];

  iconView2 = [(PHVideoOverlayContentViewIcon *)self iconView];
  [iconView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  iconView3 = [(PHVideoOverlayContentViewIcon *)self iconView];
  [(PHVideoOverlayContentViewIcon *)self addSubview:iconView3];
}

- (void)updateConstraints
{
  v20.receiver = self;
  v20.super_class = PHVideoOverlayContentViewIcon;
  [(PHVideoOverlayContentViewIcon *)&v20 updateConstraints];
  iconView = [(PHVideoOverlayContentViewIcon *)self iconView];
  centerYAnchor = [iconView centerYAnchor];
  centerYAnchor2 = [(PHVideoOverlayContentViewIcon *)self centerYAnchor];
  v16 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v21[0] = v16;
  iconView2 = [(PHVideoOverlayContentViewIcon *)self iconView];
  centerXAnchor = [iconView2 centerXAnchor];
  centerXAnchor2 = [(PHVideoOverlayContentViewIcon *)self centerXAnchor];
  v12 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v21[1] = v12;
  iconView3 = [(PHVideoOverlayContentViewIcon *)self iconView];
  leadingAnchor = [iconView3 leadingAnchor];
  leadingAnchor2 = [(PHVideoOverlayContentViewIcon *)self leadingAnchor];
  v6 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2 constant:15.0];
  v21[2] = v6;
  iconView4 = [(PHVideoOverlayContentViewIcon *)self iconView];
  trailingAnchor = [iconView4 trailingAnchor];
  trailingAnchor2 = [(PHVideoOverlayContentViewIcon *)self trailingAnchor];
  v10 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2 constant:-15.0];
  v21[3] = v10;
  v11 = [NSArray arrayWithObjects:v21 count:4];
  [(PHVideoOverlayContentViewIcon *)self addConstraints:v11];
}

- (void)resetView
{
  v3.receiver = self;
  v3.super_class = PHVideoOverlayContentViewIcon;
  [(PHVideoOverlayContentView *)&v3 resetView];
  [(PHVideoOverlayContentViewIcon *)self setupViewWithSymbolType:[(PHVideoOverlayContentViewIcon *)self symbolType]];
}

@end