@interface AMSUIWebCameraReaderInfoView
- (AMSUIWebCameraReaderInfoView)initWithFrame:(CGRect)frame;
- (id)_createButtonWithTarget:(id)target selector:(SEL)selector;
- (id)_createLabelWithLines:(int64_t)lines title:(BOOL)title;
- (void)_bottomLinkSelected:(id)selected;
- (void)layoutSubviews;
@end

@implementation AMSUIWebCameraReaderInfoView

- (AMSUIWebCameraReaderInfoView)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = AMSUIWebCameraReaderInfoView;
  v3 = [(AMSUICommonView *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[AMSUIWebAppearance systemBackgroundColor];
    [(UIView *)v3 ams_setBackgroundColor:v4];

    v5 = [(AMSUIWebCameraReaderInfoView *)v3 _createLabelWithLines:1 title:1];
    [(AMSUIWebCameraReaderInfoView *)v3 setPrimaryLabel:v5];

    primaryLabel = [(AMSUIWebCameraReaderInfoView *)v3 primaryLabel];
    [(AMSUIWebCameraReaderInfoView *)v3 addSubview:primaryLabel];

    v7 = [(AMSUIWebCameraReaderInfoView *)v3 _createLabelWithLines:0 title:0];
    [(AMSUIWebCameraReaderInfoView *)v3 setSecondaryLabel:v7];

    secondaryLabel = [(AMSUIWebCameraReaderInfoView *)v3 secondaryLabel];
    [(AMSUIWebCameraReaderInfoView *)v3 addSubview:secondaryLabel];

    v9 = [(AMSUIWebCameraReaderInfoView *)v3 _createButtonWithTarget:v3 selector:sel__bottomLinkSelected_];
    [(AMSUIWebCameraReaderInfoView *)v3 setBottomLink:v9];

    bottomLink = [(AMSUIWebCameraReaderInfoView *)v3 bottomLink];
    [(AMSUIWebCameraReaderInfoView *)v3 addSubview:bottomLink];
  }

  return v3;
}

- (void)layoutSubviews
{
  v46.receiver = self;
  v46.super_class = AMSUIWebCameraReaderInfoView;
  [(AMSUIWebCameraReaderInfoView *)&v46 layoutSubviews];
  [(AMSUIWebCameraReaderInfoView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [(AMSUIWebCameraReaderInfoView *)self safeAreaInsets];
  v13 = v8 - (v11 + v12);
  v14 = v4 + v9 + 16.0;
  v15 = v6 - (v9 + v10) + -32.0;
  v16 = (v13 + -25.0 + -32.0) / 3.0;
  primaryLabel = [(AMSUIWebCameraReaderInfoView *)self primaryLabel];
  [primaryLabel sizeThatFits:{v15, v13}];
  v19 = v18;

  if (v16 < v19)
  {
    v19 = (v13 + -25.0 + -32.0) / 3.0;
  }

  primaryLabel2 = [(AMSUIWebCameraReaderInfoView *)self primaryLabel];
  [primaryLabel2 setFrame:{v14, 25.0, v15, v19}];

  bottomLink = [(AMSUIWebCameraReaderInfoView *)self bottomLink];
  titleLabel = [bottomLink titleLabel];
  text = [titleLabel text];
  v24 = [text length];

  if (v24)
  {
    v25 = (v13 + -25.0 + -32.0) / 3.0;
  }

  else
  {
    v25 = v16 + v16;
  }

  secondaryLabel = [(AMSUIWebCameraReaderInfoView *)self secondaryLabel];
  [secondaryLabel sizeThatFits:{v15, v13}];
  v28 = v27;

  if (v25 < v28)
  {
    v28 = v25;
  }

  v47.origin.y = 25.0;
  v47.origin.x = v14;
  v47.size.width = v15;
  v47.size.height = v19;
  v29 = CGRectGetMaxY(v47) + 16.0;
  secondaryLabel2 = [(AMSUIWebCameraReaderInfoView *)self secondaryLabel];
  [secondaryLabel2 setFrame:{v14, v29, v15, v28}];

  bottomLink2 = [(AMSUIWebCameraReaderInfoView *)self bottomLink];
  titleLabel2 = [bottomLink2 titleLabel];
  [titleLabel2 sizeThatFits:{v15, v13}];
  v34 = v33;

  [(AMSUIWebCameraReaderInfoView *)self bounds];
  v36 = v35;
  [(AMSUIWebCameraReaderInfoView *)self safeAreaInsets];
  v38 = v37;
  bottomLinkAction = [(AMSUIWebCameraReaderInfoView *)self bottomLinkAction];
  if (bottomLinkAction)
  {
    bottomLink3 = [(AMSUIWebCameraReaderInfoView *)self bottomLink];
    titleLabel3 = [bottomLink3 titleLabel];
    text2 = [titleLabel3 text];
    v43 = [text2 length] == 0;
  }

  else
  {
    v43 = 1;
  }

  if (v16 < v34)
  {
    v34 = v16;
  }

  bottomLink4 = [(AMSUIWebCameraReaderInfoView *)self bottomLink];
  [bottomLink4 setHidden:v43];

  bottomLink5 = [(AMSUIWebCameraReaderInfoView *)self bottomLink];
  [bottomLink5 setFrame:{v14, v36 - v38 - v34 + -16.0, v15, v34}];
}

- (void)_bottomLinkSelected:(id)selected
{
  bottomLinkAction = [(AMSUIWebCameraReaderInfoView *)self bottomLinkAction];
  runAction = [bottomLinkAction runAction];
}

- (id)_createButtonWithTarget:(id)target selector:(SEL)selector
{
  v5 = MEMORY[0x1E69DC738];
  targetCopy = target;
  v7 = [v5 alloc];
  v8 = [v7 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  v9 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  titleLabel = [v8 titleLabel];
  [titleLabel setFont:v9];

  titleLabel2 = [v8 titleLabel];
  [titleLabel2 setLineBreakMode:4];

  titleLabel3 = [v8 titleLabel];
  [titleLabel3 setNumberOfLines:1];

  titleLabel4 = [v8 titleLabel];
  [titleLabel4 setTextAlignment:1];

  systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  [v8 setTitleColor:systemBlueColor forState:0];

  [v8 addTarget:targetCopy action:selector forControlEvents:64];

  return v8;
}

- (id)_createLabelWithLines:(int64_t)lines title:(BOOL)title
{
  titleCopy = title;
  v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  v7 = *MEMORY[0x1E69DDCF8];
  if (titleCopy)
  {
    v8 = *MEMORY[0x1E69DDD58];

    v7 = v8;
  }

  v9 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v7];
  [v6 setFont:v9];

  [v6 setNumberOfLines:lines];
  [v6 setTextAlignment:1];

  return v6;
}

@end