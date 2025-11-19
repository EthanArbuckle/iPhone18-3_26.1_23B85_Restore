@interface PHVideoOverlayContentViewIcon
- (PHVideoOverlayContentViewIcon)initWithSymbolType:(int64_t)a3;
- (void)resetView;
- (void)setupViewWithSymbolType:(int64_t)a3;
- (void)updateConstraints;
@end

@implementation PHVideoOverlayContentViewIcon

- (PHVideoOverlayContentViewIcon)initWithSymbolType:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = PHVideoOverlayContentViewIcon;
  v4 = [(PHVideoOverlayContentViewIcon *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_symbolType = a3;
    [(PHVideoOverlayContentViewIcon *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PHVideoOverlayContentViewIcon *)v5 setupViewWithSymbolType:a3];
  }

  return v5;
}

- (void)setupViewWithSymbolType:(int64_t)a3
{
  v5 = [UIImageView alloc];
  v6 = [UIImage tpImageForSymbolType:a3 textStyle:UIFontTextStyleLargeTitle scale:3 isStaticSize:1];
  v7 = [v5 initWithImage:v6];
  [(PHVideoOverlayContentViewIcon *)self setIconView:v7];

  v8 = +[UIColor whiteColor];
  v9 = [(PHVideoOverlayContentViewIcon *)self iconView];
  [v9 setTintColor:v8];

  v10 = [(PHVideoOverlayContentViewIcon *)self iconView];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

  v11 = [(PHVideoOverlayContentViewIcon *)self iconView];
  [(PHVideoOverlayContentViewIcon *)self addSubview:v11];
}

- (void)updateConstraints
{
  v20.receiver = self;
  v20.super_class = PHVideoOverlayContentViewIcon;
  [(PHVideoOverlayContentViewIcon *)&v20 updateConstraints];
  v19 = [(PHVideoOverlayContentViewIcon *)self iconView];
  v18 = [v19 centerYAnchor];
  v17 = [(PHVideoOverlayContentViewIcon *)self centerYAnchor];
  v16 = [v18 constraintEqualToAnchor:v17];
  v21[0] = v16;
  v15 = [(PHVideoOverlayContentViewIcon *)self iconView];
  v14 = [v15 centerXAnchor];
  v13 = [(PHVideoOverlayContentViewIcon *)self centerXAnchor];
  v12 = [v14 constraintEqualToAnchor:v13];
  v21[1] = v12;
  v3 = [(PHVideoOverlayContentViewIcon *)self iconView];
  v4 = [v3 leadingAnchor];
  v5 = [(PHVideoOverlayContentViewIcon *)self leadingAnchor];
  v6 = [v4 constraintGreaterThanOrEqualToAnchor:v5 constant:15.0];
  v21[2] = v6;
  v7 = [(PHVideoOverlayContentViewIcon *)self iconView];
  v8 = [v7 trailingAnchor];
  v9 = [(PHVideoOverlayContentViewIcon *)self trailingAnchor];
  v10 = [v8 constraintLessThanOrEqualToAnchor:v9 constant:-15.0];
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