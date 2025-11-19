@interface AMSUIWebCameraReaderInfoView
- (AMSUIWebCameraReaderInfoView)initWithFrame:(CGRect)a3;
- (id)_createButtonWithTarget:(id)a3 selector:(SEL)a4;
- (id)_createLabelWithLines:(int64_t)a3 title:(BOOL)a4;
- (void)_bottomLinkSelected:(id)a3;
- (void)layoutSubviews;
@end

@implementation AMSUIWebCameraReaderInfoView

- (AMSUIWebCameraReaderInfoView)initWithFrame:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = AMSUIWebCameraReaderInfoView;
  v3 = [(AMSUICommonView *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[AMSUIWebAppearance systemBackgroundColor];
    [(UIView *)v3 ams_setBackgroundColor:v4];

    v5 = [(AMSUIWebCameraReaderInfoView *)v3 _createLabelWithLines:1 title:1];
    [(AMSUIWebCameraReaderInfoView *)v3 setPrimaryLabel:v5];

    v6 = [(AMSUIWebCameraReaderInfoView *)v3 primaryLabel];
    [(AMSUIWebCameraReaderInfoView *)v3 addSubview:v6];

    v7 = [(AMSUIWebCameraReaderInfoView *)v3 _createLabelWithLines:0 title:0];
    [(AMSUIWebCameraReaderInfoView *)v3 setSecondaryLabel:v7];

    v8 = [(AMSUIWebCameraReaderInfoView *)v3 secondaryLabel];
    [(AMSUIWebCameraReaderInfoView *)v3 addSubview:v8];

    v9 = [(AMSUIWebCameraReaderInfoView *)v3 _createButtonWithTarget:v3 selector:sel__bottomLinkSelected_];
    [(AMSUIWebCameraReaderInfoView *)v3 setBottomLink:v9];

    v10 = [(AMSUIWebCameraReaderInfoView *)v3 bottomLink];
    [(AMSUIWebCameraReaderInfoView *)v3 addSubview:v10];
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
  v17 = [(AMSUIWebCameraReaderInfoView *)self primaryLabel];
  [v17 sizeThatFits:{v15, v13}];
  v19 = v18;

  if (v16 < v19)
  {
    v19 = (v13 + -25.0 + -32.0) / 3.0;
  }

  v20 = [(AMSUIWebCameraReaderInfoView *)self primaryLabel];
  [v20 setFrame:{v14, 25.0, v15, v19}];

  v21 = [(AMSUIWebCameraReaderInfoView *)self bottomLink];
  v22 = [v21 titleLabel];
  v23 = [v22 text];
  v24 = [v23 length];

  if (v24)
  {
    v25 = (v13 + -25.0 + -32.0) / 3.0;
  }

  else
  {
    v25 = v16 + v16;
  }

  v26 = [(AMSUIWebCameraReaderInfoView *)self secondaryLabel];
  [v26 sizeThatFits:{v15, v13}];
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
  v30 = [(AMSUIWebCameraReaderInfoView *)self secondaryLabel];
  [v30 setFrame:{v14, v29, v15, v28}];

  v31 = [(AMSUIWebCameraReaderInfoView *)self bottomLink];
  v32 = [v31 titleLabel];
  [v32 sizeThatFits:{v15, v13}];
  v34 = v33;

  [(AMSUIWebCameraReaderInfoView *)self bounds];
  v36 = v35;
  [(AMSUIWebCameraReaderInfoView *)self safeAreaInsets];
  v38 = v37;
  v39 = [(AMSUIWebCameraReaderInfoView *)self bottomLinkAction];
  if (v39)
  {
    v40 = [(AMSUIWebCameraReaderInfoView *)self bottomLink];
    v41 = [v40 titleLabel];
    v42 = [v41 text];
    v43 = [v42 length] == 0;
  }

  else
  {
    v43 = 1;
  }

  if (v16 < v34)
  {
    v34 = v16;
  }

  v44 = [(AMSUIWebCameraReaderInfoView *)self bottomLink];
  [v44 setHidden:v43];

  v45 = [(AMSUIWebCameraReaderInfoView *)self bottomLink];
  [v45 setFrame:{v14, v36 - v38 - v34 + -16.0, v15, v34}];
}

- (void)_bottomLinkSelected:(id)a3
{
  v4 = [(AMSUIWebCameraReaderInfoView *)self bottomLinkAction];
  v3 = [v4 runAction];
}

- (id)_createButtonWithTarget:(id)a3 selector:(SEL)a4
{
  v5 = MEMORY[0x1E69DC738];
  v6 = a3;
  v7 = [v5 alloc];
  v8 = [v7 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  v9 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v10 = [v8 titleLabel];
  [v10 setFont:v9];

  v11 = [v8 titleLabel];
  [v11 setLineBreakMode:4];

  v12 = [v8 titleLabel];
  [v12 setNumberOfLines:1];

  v13 = [v8 titleLabel];
  [v13 setTextAlignment:1];

  v14 = [MEMORY[0x1E69DC888] systemBlueColor];
  [v8 setTitleColor:v14 forState:0];

  [v8 addTarget:v6 action:a4 forControlEvents:64];

  return v8;
}

- (id)_createLabelWithLines:(int64_t)a3 title:(BOOL)a4
{
  v4 = a4;
  v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  v7 = *MEMORY[0x1E69DDCF8];
  if (v4)
  {
    v8 = *MEMORY[0x1E69DDD58];

    v7 = v8;
  }

  v9 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v7];
  [v6 setFont:v9];

  [v6 setNumberOfLines:a3];
  [v6 setTextAlignment:1];

  return v6;
}

@end