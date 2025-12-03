@interface EKCustomTitleView
- (CGRect)_centerAndClipFrame:(CGRect)frame;
- (CGSize)sizeThatFits:(CGSize)fits;
- (EKCustomTitleView)initWithTitle:(id)title subTitle:(id)subTitle eventViewController:(id)controller;
- (id)accessibilityElementAtIndex:(int64_t)index;
- (void)animateInWithCompletionBlock:(id)block;
- (void)animateOutWithCompletionBlock:(id)block;
- (void)layoutSubviews;
@end

@implementation EKCustomTitleView

- (EKCustomTitleView)initWithTitle:(id)title subTitle:(id)subTitle eventViewController:(id)controller
{
  titleCopy = title;
  subTitleCopy = subTitle;
  v32.receiver = self;
  v32.super_class = EKCustomTitleView;
  v9 = [(EKCustomTitleView *)&v32 init];
  if (v9)
  {
    v10 = objc_opt_new();
    originalTitle = v9->_originalTitle;
    v9->_originalTitle = v10;

    [(UILabel *)v9->_originalTitle setText:titleCopy];
    v12 = *MEMORY[0x1E69DB980];
    v13 = [MEMORY[0x1E69DB878] systemFontOfSize:17.0 weight:*MEMORY[0x1E69DB980]];
    [(UILabel *)v9->_originalTitle setFont:v13];

    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v9->_originalTitle setTextColor:labelColor];

    [(UILabel *)v9->_originalTitle setTextAlignment:1];
    [(EKCustomTitleView *)v9 addSubview:v9->_originalTitle];
    [(UILabel *)v9->_originalTitle sizeToFit];
    v15 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v16 = captureImageFromView(v9->_originalTitle, 0);
    v17 = [v15 initWithImage:v16];
    originalImage = v9->_originalImage;
    v9->_originalImage = v17;

    [(EKCustomTitleView *)v9 addSubview:v9->_originalImage];
    [(UILabel *)v9->_originalTitle setAlpha:0.0];
    v19 = objc_opt_new();
    title = v9->_title;
    v9->_title = v19;

    [(UILabel *)v9->_title setText:titleCopy];
    v21 = [MEMORY[0x1E69DB878] systemFontOfSize:15.0 weight:v12];
    [(UILabel *)v9->_title setFont:v21];

    labelColor2 = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v9->_title setTextColor:labelColor2];

    [(UILabel *)v9->_title setTextAlignment:1];
    [(EKCustomTitleView *)v9 addSubview:v9->_title];
    [(UILabel *)v9->_title sizeToFit];
    v23 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v24 = captureImageFromView(v9->_title, 0);
    v25 = [v23 initWithImage:v24];
    titleImage = v9->_titleImage;
    v9->_titleImage = v25;

    [(EKCustomTitleView *)v9 addSubview:v9->_titleImage];
    [(UILabel *)v9->_title setAlpha:0.0];
    v27 = objc_opt_new();
    subTitle = v9->_subTitle;
    v9->_subTitle = v27;

    [(UILabel *)v9->_subTitle setText:subTitleCopy];
    v29 = [MEMORY[0x1E69DB878] systemFontOfSize:11.0 weight:*MEMORY[0x1E69DB970]];
    [(UILabel *)v9->_subTitle setFont:v29];

    labelColor3 = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v9->_subTitle setTextColor:labelColor3];

    [(UILabel *)v9->_subTitle setTextAlignment:1];
    [(UILabel *)v9->_subTitle setAlpha:0.0];
    [(EKCustomTitleView *)v9 addSubview:v9->_subTitle];
  }

  [(EKCustomTitleView *)v9 sizeToFit];

  return v9;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(UILabel *)self->_originalTitle sizeThatFits:?];
  v7 = v6;
  [(UILabel *)self->_subTitle sizeThatFits:width, height];
  if (v7 >= v8)
  {
    v8 = v7;
  }

  v9 = 44.0;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGRect)_centerAndClipFrame:(CGRect)frame
{
  rect_16 = frame.origin.y;
  rect_24 = frame.size.height;
  width = frame.size.width;
  rect = frame.origin.x;
  window = [(EKCustomTitleView *)self window];
  [window bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [(EKCustomTitleView *)self bounds];
  v16 = v15;
  v18 = v17;
  v19 = v14;
  rect_8 = v20;
  if (width >= v14)
  {
    width = v14;
  }

  v44.origin.x = v7;
  v44.origin.y = v9;
  v44.size.width = v11;
  v44.size.height = v13;
  MinX = CGRectGetMinX(v44);
  v45.origin.x = v7;
  v45.origin.y = v9;
  v45.size.width = v11;
  v21 = v16;
  v45.size.height = v13;
  v22 = CGRectGetWidth(v45);
  v46.origin.x = rect;
  v46.origin.y = rect_16;
  v46.size.width = width;
  v23 = width;
  v46.size.height = rect_24;
  v24 = MinX + (v22 - CGRectGetWidth(v46)) * 0.5;
  [(EKCustomTitleView *)self contentScaleFactor];
  v26 = EKRoundWithScale(v24, v25);
  window2 = [(EKCustomTitleView *)self window];
  v28 = 0.0;
  [window2 convertPoint:self toView:{v26, 0.0}];
  v30 = v29;

  v38 = v30;
  v47.origin.x = v30;
  v47.origin.y = rect_16;
  v47.size.width = v23;
  v47.size.height = rect_24;
  v31 = CGRectGetMinX(v47);
  v48.origin.x = v21;
  v48.origin.y = v18;
  v48.size.width = v19;
  v48.size.height = rect_8;
  if (v31 >= CGRectGetMinX(v48))
  {
    v28 = v38;
    v49.origin.x = v38;
    v49.origin.y = rect_16;
    v49.size.height = rect_24;
    v49.size.width = v23;
    MaxX = CGRectGetMaxX(v49);
    v50.origin.y = v18;
    v50.origin.x = v21;
    v50.size.width = v19;
    v50.size.height = rect_8;
    if (MaxX > CGRectGetMaxX(v50))
    {
      v51.origin.y = v18;
      v51.origin.x = v21;
      v51.size.width = v19;
      v51.size.height = rect_8;
      v33 = CGRectGetMaxX(v51);
      v52.origin.x = v38;
      v52.origin.y = rect_16;
      v52.size.height = rect_24;
      v52.size.width = v23;
      v28 = v33 - CGRectGetWidth(v52);
    }
  }

  v34 = v28;
  v35 = rect_16;
  v36 = rect_24;
  v37 = v23;
  result.size.height = v36;
  result.size.width = v37;
  result.origin.y = v35;
  result.origin.x = v34;
  return result;
}

- (void)layoutSubviews
{
  [(EKCustomTitleView *)self bounds];
  v4 = v3;
  v6 = v5;
  v52.receiver = self;
  v52.super_class = EKCustomTitleView;
  [(EKCustomTitleView *)&v52 layoutSubviews];
  window = [(EKCustomTitleView *)self window];

  if (window)
  {
    if (self->_showSubtitle)
    {
      font = [(UILabel *)self->_title font];
      [(UILabel *)self->_title sizeThatFits:v4, v6];
      v10 = v9;
      v12 = v11;
      [font ascender];
      v14 = v13;
      [(EKCustomTitleView *)self contentScaleFactor];
      v16 = 19.0 - EKRoundWithScale(v14, v15);
      v17 = 1.0;
      v18 = 0.0;
    }

    else
    {
      font = [(UILabel *)self->_originalTitle font];
      [(UILabel *)self->_originalTitle sizeThatFits:v4, v6];
      v10 = v19;
      v12 = v20;
      [(EKCustomTitleView *)self bounds];
      v22 = (v21 - v12) * 0.5;
      [(EKCustomTitleView *)self contentScaleFactor];
      v16 = EKRoundWithScale(v22, v23);
      v17 = 0.0;
      v18 = 1.0;
    }

    [(UIImageView *)self->_originalImage setAlpha:v18];
    [(UIImageView *)self->_titleImage setAlpha:v17];
    [(UILabel *)self->_subTitle setAlpha:v17];
    [(UILabel *)self->_subTitle sizeThatFits:v4, v6];
    v25 = v24;
    v27 = v26;
    [font descender];
    v29 = v28;
    font2 = [(UILabel *)self->_subTitle font];
    [font2 ascender];
    v32 = v31 - v29;
    [(EKCustomTitleView *)self contentScaleFactor];
    v34 = 16.0 - EKRoundWithScale(v32, v33);

    v53.origin.x = 0.0;
    v53.origin.y = v16;
    v53.size.width = v10;
    v53.size.height = v12;
    v35 = v34 + CGRectGetMaxY(v53);
    [(EKCustomTitleView *)self _centerAndClipFrame:0.0, v16, v10, v12];
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;
    [(EKCustomTitleView *)self _centerAndClipFrame:0.0, v35, v25, v27];
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v51 = v50;
    [(UILabel *)self->_title setFrame:v37, v39, v41, v43];
    [(UIImageView *)self->_originalImage setFrame:v37, v39, v41, v43];
    [(UIImageView *)self->_titleImage setFrame:v37, v39, v41, v43];
    [(UILabel *)self->_subTitle setFrame:v45, v47, v49, v51];
  }
}

- (void)animateInWithCompletionBlock:(id)block
{
  blockCopy = block;
  [(EKCustomTitleView *)self layoutIfNeeded];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__EKCustomTitleView_animateInWithCompletionBlock___block_invoke;
  v5[3] = &unk_1E843EC60;
  v5[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v5 animations:blockCopy completion:0.300000012];
}

uint64_t __50__EKCustomTitleView_animateInWithCompletionBlock___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 408) = 1;
  [*(a1 + 32) setNeedsLayout];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (void)animateOutWithCompletionBlock:(id)block
{
  blockCopy = block;
  [(EKCustomTitleView *)self layoutIfNeeded];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__EKCustomTitleView_animateOutWithCompletionBlock___block_invoke;
  v5[3] = &unk_1E843EC60;
  v5[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v5 animations:blockCopy completion:0.300000012];
}

uint64_t __51__EKCustomTitleView_animateOutWithCompletionBlock___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 408) = 0;
  [*(a1 + 32) setNeedsLayout];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (id)accessibilityElementAtIndex:(int64_t)index
{
  v3 = &OBJC_IVAR___EKCustomTitleView__subTitle;
  if (!index)
  {
    v3 = &OBJC_IVAR___EKCustomTitleView__title;
  }

  return *(&self->super.super.super.isa + *v3);
}

@end