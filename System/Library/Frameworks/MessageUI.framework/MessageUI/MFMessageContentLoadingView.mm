@interface MFMessageContentLoadingView
- (BOOL)isLoadingIndicatorVisible;
- (MFMessageContentLoadingView)initWithFrame:(CGRect)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setLoadingIndicatorVisible:(BOOL)a3 animated:(BOOL)a4;
- (void)setLoadingTitle:(id)a3;
@end

@implementation MFMessageContentLoadingView

- (void)dealloc
{
  [(UIActivityIndicatorView *)self->_activityIndicatorView stopAnimating];
  v3.receiver = self;
  v3.super_class = MFMessageContentLoadingView;
  [(MFMessageContentLoadingView *)&v3 dealloc];
}

- (MFMessageContentLoadingView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = MFMessageContentLoadingView;
  v3 = [(MFMessageContentLoadingView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E696AAE8] mainBundle];
    v5 = [v4 localizedStringForKey:@"LOADING_ALL_CAPS" value:&stru_1F3CF3758 table:@"Main"];
    [(MFMessageContentLoadingView *)v3 setLoadingTitle:v5];

    [(MFMessageContentLoadingView *)v3 setUserInteractionEnabled:0];
    v6 = [MEMORY[0x1E69DC888] tertiarySystemBackgroundColor];
    [(MFMessageContentLoadingView *)v3 setBackgroundColor:v6];
  }

  return v3;
}

- (void)setLoadingTitle:(id)a3
{
  v7 = a3;
  v4 = [v7 copy];
  loadingTitle = self->_loadingTitle;
  self->_loadingTitle = v4;

  loadingLabel = self->_loadingLabel;
  if (loadingLabel)
  {
    [(UILabel *)loadingLabel setText:self->_loadingTitle];
  }
}

- (BOOL)isLoadingIndicatorVisible
{
  v3 = [(UILabel *)self->_loadingLabel superview];
  if (v3)
  {
    [(UILabel *)self->_loadingLabel alpha];
    v5 = v4 == 1.0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setLoadingIndicatorVisible:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(MFMessageContentLoadingView *)self isLoadingIndicatorVisible]!= a3)
  {
    if (v5)
    {
      v7 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
      activityIndicatorView = self->_activityIndicatorView;
      self->_activityIndicatorView = v7;

      v9 = v7;
      [(UIActivityIndicatorView *)self->_activityIndicatorView setHidesWhenStopped:0];
      [(UIActivityIndicatorView *)self->_activityIndicatorView setAccessibilityIdentifier:*MEMORY[0x1E69ADB58]];
      v10 = objc_alloc_init(MEMORY[0x1E69DCC10]);
      loadingLabel = self->_loadingLabel;
      self->_loadingLabel = v10;

      v12 = v10;
      v13 = [(MFMessageContentLoadingView *)self loadingTitle];
      [(UILabel *)self->_loadingLabel setText:v13];

      v14 = [MEMORY[0x1E69DC888] grayColor];
      [(UILabel *)self->_loadingLabel setTextColor:v14];

      v15 = [MEMORY[0x1E69DB878] systemFontOfSize:12.0];
      [(UILabel *)self->_loadingLabel setFont:v15];

      [(UILabel *)self->_loadingLabel setAccessibilityIdentifier:*MEMORY[0x1E69ADB60]];
      [(UILabel *)self->_loadingLabel sizeToFit];
      [(MFMessageContentLoadingView *)self addSubview:self->_activityIndicatorView];
      [(MFMessageContentLoadingView *)self addSubview:self->_loadingLabel];
      [(UIActivityIndicatorView *)self->_activityIndicatorView setAlpha:0.0];
      [(UILabel *)self->_loadingLabel setAlpha:0.0];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __67__MFMessageContentLoadingView_setLoadingIndicatorVisible_animated___block_invoke;
      aBlock[3] = &unk_1E806C520;
      v16 = &v39;
      v17 = v9;
      v18 = &v40;
      v39 = v17;
      v40 = v12;
      v19 = v12;
      v20 = _Block_copy(aBlock);
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __67__MFMessageContentLoadingView_setLoadingIndicatorVisible_animated___block_invoke_2;
      v36[3] = &unk_1E806D6F0;
      v21 = &v37;
      v37 = v17;
      v22 = v17;
      v23 = _Block_copy(v36);
    }

    else
    {
      v24 = self->_activityIndicatorView;
      v25 = self->_loadingLabel;
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __67__MFMessageContentLoadingView_setLoadingIndicatorVisible_animated___block_invoke_3;
      v33[3] = &unk_1E806C520;
      v16 = &v34;
      v26 = v24;
      v34 = v26;
      v18 = &v35;
      v27 = v25;
      v35 = v27;
      v20 = _Block_copy(v33);
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __67__MFMessageContentLoadingView_setLoadingIndicatorVisible_animated___block_invoke_4;
      v30[3] = &unk_1E8070308;
      v21 = &v31;
      v31 = v26;
      v32 = v27;
      v22 = v27;
      v19 = v26;
      v23 = _Block_copy(v30);
      v28 = self->_activityIndicatorView;
      self->_activityIndicatorView = 0;

      v29 = self->_loadingLabel;
      self->_loadingLabel = 0;
    }

    if (v4)
    {
      [MEMORY[0x1E69DD250] animateWithDuration:v20 animations:v23 completion:0.6];
    }

    else
    {
      v20[2](v20);
      if (v23)
      {
        v23[2](v23, 1);
      }
    }
  }
}

uint64_t __67__MFMessageContentLoadingView_setLoadingIndicatorVisible_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(a1 + 40);

  return [v2 setAlpha:1.0];
}

uint64_t __67__MFMessageContentLoadingView_setLoadingIndicatorVisible_animated___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 40);

  return [v2 setAlpha:0.0];
}

uint64_t __67__MFMessageContentLoadingView_setLoadingIndicatorVisible_animated___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) stopAnimating];
  [*(a1 + 32) removeFromSuperview];
  v2 = *(a1 + 40);

  return [v2 removeFromSuperview];
}

- (void)layoutSubviews
{
  v28.receiver = self;
  v28.super_class = MFMessageContentLoadingView;
  [(MFMessageContentLoadingView *)&v28 layoutSubviews];
  [(MFMessageContentLoadingView *)self bounds];
  v4 = v3;
  v5 = [(MFMessageContentLoadingView *)self activityIndicatorView];
  [v5 bounds];
  v7 = v6;
  v9 = v8;

  v10 = [(MFMessageContentLoadingView *)self loadingLabel];
  [v10 bounds];
  v27 = v11;
  v13 = v12;

  UIRoundToViewScale();
  v15 = v14;
  UIRoundToViewScale();
  v17 = v16;
  if (v4 >= 135.0)
  {
    v20 = [(MFMessageContentLoadingView *)self loadingLabel];
    [v20 _firstBaselineOffsetFromTop];
    UIRoundToViewScale();
    v19 = v21;
  }

  else
  {
    UIRoundToViewScale();
    v19 = v18;
  }

  v22 = [(MFMessageContentLoadingView *)self loadingLabel];
  [v22 _firstBaselineOffsetFromTop];
  v24 = v23;

  v25 = [(MFMessageContentLoadingView *)self activityIndicatorView];
  [v25 setFrame:{v15, v19, v7, v9}];

  v26 = [(MFMessageContentLoadingView *)self loadingLabel];
  [v26 setFrame:{v17, v9 + 18.0 + v19 - v24, v13, v27}];
}

@end