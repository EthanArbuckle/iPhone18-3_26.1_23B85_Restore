@interface QLWaveformView
- (CGRect)visibleRect;
- (void)_expandWaveform;
- (void)_updateWithWaveformImage:(id)a3;
- (void)layoutSubviews;
- (void)setAsset:(id)a3;
- (void)updateImage;
@end

@implementation QLWaveformView

- (void)setAsset:(id)a3
{
  v5 = a3;
  if (self->_asset != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_asset, a3);
    [(QLWaveformView *)self updateImage];
    v5 = v6;
  }
}

- (void)updateImage
{
  v37[4] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D43EF8];
  v4 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v4 = *v3;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23A714000, v4, OS_LOG_TYPE_DEFAULT, "Updating waveform image #Waveform", buf, 2u);
  }

  if (!self->_asset || (p_waveSize = &self->_waveSize, self->_waveSize.height == 0.0) || (width = p_waveSize->width, p_waveSize->width == 0.0))
  {
    waveImage = self->_waveImage;
    self->_waveImage = 0;
  }

  else
  {
    if (!self->_lineView)
    {
      v9 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, self->_waveSize.height * 0.5 + -0.5, p_waveSize->width, 1.0}];
      lineView = self->_lineView;
      self->_lineView = v9;

      v11 = [MEMORY[0x277D75348] secondaryLabelColor];
      [(UIView *)self->_lineView setBackgroundColor:v11];

      [(QLWaveformView *)self addSubview:self->_lineView];
    }

    waveView = self->_waveView;
    if (!waveView)
    {
      v13 = objc_alloc(MEMORY[0x277D755E8]);
      v14 = [v13 initWithFrame:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
      v15 = self->_waveView;
      self->_waveView = v14;

      [(UIImageView *)self->_waveView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(QLWaveformView *)self addSubview:self->_waveView];
      v31 = [(UIImageView *)self->_waveView leftAnchor];
      v30 = [(QLWaveformView *)self leftAnchor];
      v29 = [v31 constraintEqualToAnchor:v30];
      v37[0] = v29;
      v28 = [(UIImageView *)self->_waveView rightAnchor];
      v27 = [(QLWaveformView *)self rightAnchor];
      v26 = [v28 constraintEqualToAnchor:v27];
      v37[1] = v26;
      v16 = [(UIImageView *)self->_waveView bottomAnchor];
      v17 = [(QLWaveformView *)self bottomAnchor];
      v18 = [v16 constraintEqualToAnchor:v17];
      v37[2] = v18;
      v19 = [(UIImageView *)self->_waveView topAnchor];
      v20 = [(QLWaveformView *)self topAnchor];
      v21 = [v19 constraintEqualToAnchor:v20];
      v37[3] = v21;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:4];
      [(QLWaveformView *)self addConstraints:v22];

      waveView = self->_waveView;
    }

    v23 = [(UIImageView *)waveView image];
    v24 = v23 == 0;

    if (v24)
    {
      *buf = 0;
      v34 = buf;
      v35 = 0x2020000000;
      v36 = 1;
      v25 = [(QLWaveformView *)self asset];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __29__QLWaveformView_updateImage__block_invoke;
      v32[3] = &unk_278B57F90;
      v32[4] = self;
      v32[5] = buf;
      [QLWaveformScrubberViewProvider generateWaveformForSize:v25 asset:v32 updateHandler:p_waveSize->width, self->_waveSize.height];

      _Block_object_dispose(buf, 8);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __29__QLWaveformView_updateImage__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = MEMORY[0x277D43EF8];
  v7 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v7 = *v6;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_23A714000, v7, OS_LOG_TYPE_DEFAULT, "Waveform image delivered #Waveform", v8, 2u);
  }

  [*(a1 + 32) _updateWithWaveformImage:v5];
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    [*(a1 + 32) _expandWaveform];
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

- (void)_expandWaveform
{
  [(UIImageView *)self->_waveView setAlpha:0.0];
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  *&v7.a = *MEMORY[0x277CBF2C0];
  *&v7.c = v3;
  *&v7.tx = *(MEMORY[0x277CBF2C0] + 32);
  CGAffineTransformScale(&v8, &v7, 1.0, 0.0);
  waveView = self->_waveView;
  v7 = v8;
  [(UIImageView *)waveView setTransform:&v7];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__QLWaveformView__expandWaveform__block_invoke;
  v6[3] = &unk_278B57190;
  v6[4] = self;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __33__QLWaveformView__expandWaveform__block_invoke_2;
  v5[3] = &unk_278B571B8;
  v5[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:0 delay:v6 usingSpringWithDamping:v5 initialSpringVelocity:0.3 options:0.0 animations:0.98 completion:40.0];
}

uint64_t __33__QLWaveformView__expandWaveform__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 424) setAlpha:0.0];
  [*(*(a1 + 32) + 440) setAlpha:1.0];
  v2 = *(*(a1 + 32) + 440);
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  v5[0] = *MEMORY[0x277CBF2C0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x277CBF2C0] + 32);
  return [v2 setTransform:v5];
}

void __33__QLWaveformView__expandWaveform__block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 424) removeFromSuperview];
  v2 = *(a1 + 32);
  v3 = *(v2 + 424);
  *(v2 + 424) = 0;
}

- (void)_updateWithWaveformImage:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D75D18];
  waveView = self->_waveView;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__QLWaveformView__updateWithWaveformImage___block_invoke;
  v8[3] = &unk_278B56E50;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v5 transitionWithView:waveView duration:5242880 options:v8 animations:0 completion:0.25];
}

void __43__QLWaveformView__updateWithWaveformImage___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 440) setImage:*(a1 + 40)];
  v1 = MEMORY[0x277D43EF8];
  v2 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v2 = *v1;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_23A714000, v2, OS_LOG_TYPE_DEFAULT, "Waveform image was updated. #Waveform", v3, 2u);
  }
}

- (void)layoutSubviews
{
  p_waveSize = &self->_waveSize;
  [(QLWaveformView *)self frame];
  height = p_waveSize->height;
  if (p_waveSize->width != v6 || height != v4)
  {
    [(QLWaveformView *)self frame:p_waveSize->width];
    p_waveSize->width = v8;
    p_waveSize->height = v9;
    [(QLWaveformView *)self updateImage];
  }

  v10.receiver = self;
  v10.super_class = QLWaveformView;
  [(QLWaveformView *)&v10 layoutSubviews];
}

- (CGRect)visibleRect
{
  x = self->visibleRect.origin.x;
  y = self->visibleRect.origin.y;
  width = self->visibleRect.size.width;
  height = self->visibleRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end