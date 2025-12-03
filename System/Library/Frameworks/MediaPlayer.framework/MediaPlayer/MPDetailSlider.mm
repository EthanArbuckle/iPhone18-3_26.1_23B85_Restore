@interface MPDetailSlider
- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event;
- (CGRect)thumbHitRect;
- (CGRect)thumbRectForBounds:(CGRect)bounds trackRect:(CGRect)rect value:(float)value;
- (CGRect)trackRectForBounds:(CGRect)bounds;
- (MPDetailSlider)initWithFrame:(CGRect)frame style:(int64_t)style maxTrackWidth:(double)width;
- (MPDetailSliderDelegate)delegate;
- (NSString)localizedScrubSpeedText;
- (UIEdgeInsets)_thumbHitEdgeInsets;
- (id)_colorSliceImageWithColor:(id)color height:(double)height;
- (id)_modernThumbImageWithColor:(id)color height:(double)height includeShadow:(BOOL)shadow;
- (id)_stringForCurrentTime:(double)time;
- (id)_stringForInverseCurrentTime:(double)time;
- (id)_stringForTime:(double)time elapsed:(BOOL)elapsed;
- (id)createThumbView;
- (id)currentThumbImage;
- (id)timeLabelFontForStyle:(int64_t)style;
- (id)timeLabelTextColorForStyle:(int64_t)style;
- (void)_autoscrubTick:(id)tick;
- (void)_commitValue;
- (void)_resetScrubInfo;
- (void)_setValueWhileTracking:(float)tracking duration:(double)duration;
- (void)_setupControlsForStyle;
- (void)_updateForAvailableDuraton;
- (void)_updateTimeDisplayForTime:(double)time force:(BOOL)force;
- (void)_updateTrackInset;
- (void)cancelTracking;
- (void)cancelTrackingWithEvent:(id)event;
- (void)dealloc;
- (void)detailScrubController:(id)controller didChangeScrubSpeed:(int64_t)speed;
- (void)detailScrubController:(id)controller didChangeValue:(float)value;
- (void)endTrackingWithTouch:(id)touch withEvent:(id)event;
- (void)layoutSubviews;
- (void)setAllowsScrubbing:(BOOL)allowsScrubbing;
- (void)setAvailableDuration:(double)duration;
- (void)setBounds:(CGRect)bounds;
- (void)setDuration:(double)duration;
- (void)setFrame:(CGRect)frame;
- (void)setMinTimeLabelWidth:(double)width;
- (void)setTimeLabelStyle:(int64_t)style;
- (void)setValue:(float)value duration:(double)duration;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation MPDetailSlider

- (MPDetailSliderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateForAvailableDuraton
{
  [(MPDetailSlider *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (!self->_thumbImageView)
  {
    [(MPDetailSlider *)self setNeedsLayout];
    [(MPDetailSlider *)self layoutIfNeeded];
  }

  v81.origin.x = v4;
  v81.origin.y = v6;
  v81.size.width = v8;
  v81.size.height = v10;
  if (CGRectGetWidth(v81) > 0.0)
  {
    style = self->_style;
    if ((style - 1) < 2)
    {
      if (self->_availableDuration < self->_duration)
      {
        [(MPDetailSlider *)self trackRectForBounds:v4, v6, v8, v10];
        v45 = v44;
        v47 = v46;
        v49 = v48;
        v51 = v50;
        [(MPDetailSlider *)self value];
        LODWORD(v79) = v52;
        [(MPDetailSlider *)self thumbRectForBounds:v4 trackRect:v6 value:v8, v10, v45, v47, v49, v51, v79];
        v54 = v53;
        v56 = v55;
        v58 = v57;
        v60 = v59;
        v89.origin.x = v45;
        v89.origin.y = v47;
        v89.size.width = v49;
        v89.size.height = v51;
        v61 = -CGRectGetMinX(v89);
        v90.origin.x = v54;
        v90.origin.y = v56;
        v90.size.width = v58;
        v90.size.height = v60;
        v91 = CGRectOffset(v90, v61, 0.0);
        MidX = CGRectGetMidX(v91);
        v63 = self->_availableDuration / self->_duration;
        v92.origin.x = v45;
        v92.origin.y = v47;
        v92.size.width = v49;
        v92.size.height = v51;
        v64 = -(MidX - v63 * CGRectGetWidth(v92));
        v93.origin.x = v45;
        v93.origin.y = v47;
        v93.size.width = v49;
        v93.size.height = v51;
        MinX = CGRectGetMinX(v93);
        v94.size.height = 1.0;
        v94.origin.x = MidX;
        v94.origin.y = v47 + 1.0;
        v94.size.width = v64;
        v95 = CGRectOffset(v94, MinX, 0.0);
        x = v95.origin.x;
        if (v95.size.width < 0.00000011920929)
        {
          return;
        }

        y = v95.origin.y;
        width = v95.size.width;
        height = v95.size.height;
        downloadingTrackOverlay = self->_downloadingTrackOverlay;
        if (downloadingTrackOverlay)
        {
          goto LABEL_21;
        }

        if (self->_thumbImageView)
        {
          v66 = MEMORY[0x1E69DCAB8];
          mediaPlayerBundle = [MEMORY[0x1E696AAE8] mediaPlayerBundle];
          v68 = [v66 imageNamed:@"VideoPlayer_Slider_Track_Hollow" inBundle:mediaPlayerBundle];

          blackColor = [MEMORY[0x1E69DC888] blackColor];
          v70 = [v68 _flatImageWithColor:blackColor];

          [(MPDetailSlider *)self setMaximumTrackImage:v70 forState:0];
          _maxTrackView = [(MPDetailSlider *)self _maxTrackView];
          [_maxTrackView _setDrawsAsBackdropOverlay:1];

          _maxTrackView2 = [(MPDetailSlider *)self _maxTrackView];
          [_maxTrackView2 setAlpha:0.4];

          v73 = objc_alloc(MEMORY[0x1E69DD250]);
          v74 = [v73 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
          v75 = self->_downloadingTrackOverlay;
          self->_downloadingTrackOverlay = v74;

          [(UIView *)self->_downloadingTrackOverlay _setDrawsAsBackdropOverlay:1];
          v76 = self->_downloadingTrackOverlay;
          blackColor2 = [MEMORY[0x1E69DC888] blackColor];
          [(UIView *)v76 setBackgroundColor:blackColor2];

          [(UIView *)self->_downloadingTrackOverlay setAlpha:0.4];
          [(MPDetailSlider *)self insertSubview:self->_downloadingTrackOverlay belowSubview:self->_thumbImageView];

          downloadingTrackOverlay = self->_downloadingTrackOverlay;
          goto LABEL_21;
        }

LABEL_20:
        downloadingTrackOverlay = 0;
        goto LABEL_21;
      }
    }

    else
    {
      if ((style - 3) > 1)
      {
        return;
      }

      if (self->_availableDuration < self->_duration)
      {
        [(MPDetailSlider *)self trackRectForBounds:v4, v6, v8, v10];
        v13 = v12;
        v15 = v14;
        v17 = v16;
        v19 = v18;
        [(MPDetailSlider *)self value];
        LODWORD(v79) = v20;
        [(MPDetailSlider *)self thumbRectForBounds:v4 trackRect:v6 value:v8, v10, v13, v15, v17, v19, v79];
        v22 = v21;
        v24 = v23;
        v26 = v25;
        v28 = v27;
        v82.origin.x = v13;
        v82.origin.y = v15;
        v82.size.width = v17;
        v82.size.height = v19;
        v29 = -CGRectGetMinX(v82);
        v83.origin.x = v22;
        v83.origin.y = v24;
        v83.size.width = v26;
        v83.size.height = v28;
        v84 = CGRectOffset(v83, v29, 0.0);
        v30 = CGRectGetMidX(v84);
        v31 = self->_availableDuration / self->_duration;
        v85.origin.x = v13;
        v85.origin.y = v15;
        v85.size.width = v17;
        v85.size.height = v19;
        v32 = -(v30 - v31 * CGRectGetWidth(v85));
        v86.origin.x = v13;
        v86.origin.y = v15;
        v86.size.width = v17;
        v86.size.height = v19;
        v33 = CGRectGetMinX(v86);
        v87.origin.x = v30;
        v87.origin.y = v15;
        v87.size.width = v32;
        v87.size.height = v19;
        v88 = CGRectOffset(v87, v33, 0.0);
        x = v88.origin.x;
        if (v88.size.width < 0.00000011920929)
        {
          return;
        }

        y = v88.origin.y;
        width = v88.size.width;
        height = v88.size.height;
        downloadingTrackOverlay = self->_downloadingTrackOverlay;
        if (downloadingTrackOverlay)
        {
          goto LABEL_21;
        }

        if (self->_thumbImageView)
        {
          v39 = objc_alloc(MEMORY[0x1E69DD250]);
          v40 = [v39 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
          v41 = self->_downloadingTrackOverlay;
          self->_downloadingTrackOverlay = v40;

          [(UIView *)self->_downloadingTrackOverlay _setDrawsAsBackdropOverlayWithBlendMode:2];
          v42 = self->_downloadingTrackOverlay;
          v43 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.05];
          [(UIView *)v42 setBackgroundColor:v43];

          [(MPDetailSlider *)self insertSubview:self->_downloadingTrackOverlay belowSubview:self->_thumbImageView];
          downloadingTrackOverlay = self->_downloadingTrackOverlay;
LABEL_21:

          [(UIView *)downloadingTrackOverlay setFrame:x, y, width, height];
          return;
        }

        goto LABEL_20;
      }
    }

    [(MPDetailSlider *)self _setupControlsForStyle];
    [(UIView *)self->_downloadingTrackOverlay removeFromSuperview];
    v78 = self->_downloadingTrackOverlay;
    self->_downloadingTrackOverlay = 0;
  }
}

- (void)_commitValue
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [(MPDetailSlider *)self value];
    v4 = self->_duration * v3;
    *&v4 = v4;
    [WeakRetained detailSlider:self didChangeValue:v4];
  }
}

- (void)_resetScrubInfo
{
  thumbImageView = self->_thumbImageView;
  currentThumbImage = [(MPDetailSlider *)self currentThumbImage];
  [(UIImageView *)thumbImageView setImage:currentThumbImage];

  layer = [(UIImageView *)self->_glowDetailScrubImageView layer];
  [layer removeAnimationForKey:@"pulseAnimation"];
}

- (id)_stringForInverseCurrentTime:(double)time
{
  timeLabelStyle = self->_timeLabelStyle;
  if (timeLabelStyle == 3 || timeLabelStyle == 2 && fabs(time) < 30.0)
  {
    v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:{@"com.apple.MediaPlayer", time}];
    v5 = [v4 localizedStringForKey:@"LIVE" value:&stru_1F149ECA8 table:@"MediaPlayer"];
  }

  else
  {
    v5 = [(MPDetailSlider *)self _stringForTime:0 elapsed:time];
  }

  return v5;
}

- (id)_stringForCurrentTime:(double)time
{
  timeLabelStyle = self->_timeLabelStyle;
  if (timeLabelStyle == 3 || timeLabelStyle == 2 && vabdd_f64(self->_duration, time) < 30.0)
  {
    v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaPlayer"];
    v5 = [v4 localizedStringForKey:@"UNKNOWN_DURATION" value:&stru_1F149ECA8 table:@"MediaPlayer"];
  }

  else
  {
    v5 = [(MPDetailSlider *)self _stringForTime:1 elapsed:time];
  }

  return v5;
}

- (id)_stringForTime:(double)time elapsed:(BOOL)elapsed
{
  formatter = self->_formatter;
  if (elapsed)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  [(AVTimeFormatter *)formatter setStyle:v7];
  v8 = self->_formatter;

  return [(AVTimeFormatter *)v8 stringFromSeconds:time];
}

- (void)_updateTimeDisplayForTime:(double)time force:(BOOL)force
{
  v5 = floor(time);
  if (force || vabdd_f64(self->_currentTime, v5) > 2.22044605e-16)
  {
    if (self->_timeLabelStyle != 1)
    {
      currentTimeLabel = self->_currentTimeLabel;
      v7 = [(MPDetailSlider *)self _stringForCurrentTime:v5];
      [(UILabel *)currentTimeLabel setText:v7];

      currentTimeInverseLabel = self->_currentTimeInverseLabel;
      v9 = [(MPDetailSlider *)self _stringForInverseCurrentTime:self->_duration - v5];
      [(UILabel *)currentTimeInverseLabel setText:v9];

      [(MPDetailSlider *)self setNeedsLayout];
    }

    self->_currentTime = v5;
  }
}

- (void)_updateTrackInset
{
  [(MPDetailSlider *)self duration];
  v3 = [(MPDetailSlider *)self _stringForInverseCurrentTime:?];
  font = [(UILabel *)self->_currentTimeInverseLabel font];
  [v3 _legacy_sizeWithFont:font];
  v6 = v5;

  timeLabelStyle = self->_timeLabelStyle;
  if ((timeLabelStyle & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaPlayer"];
    v9 = [v8 localizedStringForKey:@"LIVE" value:&stru_1F149ECA8 table:@"MediaPlayer"];
    font2 = [(UILabel *)self->_currentTimeInverseLabel font];
    [v9 _legacy_sizeWithFont:font2];
    v12 = v11;

    if (v6 < v12)
    {
      v6 = v12;
    }

    timeLabelStyle = self->_timeLabelStyle;
  }

  v13 = 0.0;
  if (timeLabelStyle != 1)
  {
    minTimeLabelWidth = self->_minTimeLabelWidth;
    if (minTimeLabelWidth < v6)
    {
      minTimeLabelWidth = v6;
    }

    v13 = minTimeLabelWidth + 4.0;
  }

  self->_trackInset = v13;
  if (self->_maxTrackWidth > 0.0)
  {
    [(MPDetailSlider *)self bounds];
    v18.receiver = self;
    v18.super_class = MPDetailSlider;
    [(MPDetailSlider *)&v18 trackRectForBounds:?];
    v20 = CGRectInset(v19, self->_trackInset, 0.0);
    Width = CGRectGetWidth(v20);
    maxTrackWidth = self->_maxTrackWidth;
    if (Width > maxTrackWidth)
    {
      v17 = (Width - maxTrackWidth) * 0.5;
      self->_trackInset = self->_trackInset + ceilf(v17);
    }
  }
}

- (void)_setupControlsForStyle
{
  mediaPlayerBundle = [MEMORY[0x1E696AAE8] mediaPlayerBundle];
  if (self->_timeLabelStyle == 3)
  {
    v31.width = 1.0;
    v31.height = 1.0;
    UIGraphicsBeginImageContextWithOptions(v31, 0, 0.0);
    v4 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    [(MPDetailSlider *)self setThumbImage:v4 forState:0];

    v5 = 1;
  }

  else
  {
    if (self->_style == 5)
    {
      [(MPDetailSlider *)self duration];
    }

    v5 = 0;
  }

  style = self->_style;
  if ((style - 1) < 2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__MPDetailSlider__setupControlsForStyle__block_invoke_3;
    block[3] = &unk_1E7682518;
    v9 = mediaPlayerBundle;
    v26 = v9;
    if (_setupControlsForStyle___trackImageOnce_92 == -1)
    {
      if ((v5 & 1) == 0)
      {
LABEL_16:
        v20 = MEMORY[0x1E69E9820];
        v21 = 3221225472;
        v22 = __40__MPDetailSlider__setupControlsForStyle__block_invoke_4;
        v23 = &unk_1E7682518;
        v24 = v9;
        if (_setupControlsForStyle___thumbImageOnce_94 != -1)
        {
          dispatch_once(&_setupControlsForStyle___thumbImageOnce_94, &v20);
        }

        [(MPDetailSlider *)self setThumbImage:_setupControlsForStyle___thumbImage_93 forState:0, v20, v21, v22, v23];
      }
    }

    else
    {
      dispatch_once(&_setupControlsForStyle___trackImageOnce_92, block);
      if ((v5 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    [(MPDetailSlider *)self setMinimumTrackImage:_setupControlsForStyle___minTrackImage_90 forState:0];
    [(MPDetailSlider *)self setMaximumTrackImage:_setupControlsForStyle___maxTrackImage_91 forState:0];
    v8 = v26;
    goto LABEL_20;
  }

  if ((style - 3) < 2)
  {
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __40__MPDetailSlider__setupControlsForStyle__block_invoke;
    v29[3] = &unk_1E7682518;
    v7 = mediaPlayerBundle;
    v30 = v7;
    if (_setupControlsForStyle___trackImageOnce == -1)
    {
      if ((v5 & 1) == 0)
      {
LABEL_10:
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __40__MPDetailSlider__setupControlsForStyle__block_invoke_2;
        v27[3] = &unk_1E7682518;
        v28 = v7;
        if (_setupControlsForStyle___thumbImageOnce != -1)
        {
          dispatch_once(&_setupControlsForStyle___thumbImageOnce, v27);
        }

        [(MPDetailSlider *)self setThumbImage:_setupControlsForStyle___thumbImage forState:0];
      }
    }

    else
    {
      dispatch_once(&_setupControlsForStyle___trackImageOnce, v29);
      if ((v5 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    [(MPDetailSlider *)self setMinimumTrackImage:_setupControlsForStyle___minTrackImage forState:0];
    [(MPDetailSlider *)self setMaximumTrackImage:_setupControlsForStyle___maxTrackImage forState:0];
    v8 = v30;
LABEL_20:

    goto LABEL_21;
  }

  if (style == 5)
  {
    if ((v5 & 1) == 0)
    {
      allowsScrubbing = [(MPDetailSlider *)self allowsScrubbing];
      if (allowsScrubbing)
      {
        tintColor = [(MPDetailSlider *)self tintColor];
        v12 = 15.0;
      }

      else
      {
        tintColor = [MEMORY[0x1E69DC888] blackColor];
        v12 = 7.0;
      }

      v13 = [(MPDetailSlider *)self _modernThumbImageWithColor:tintColor height:allowsScrubbing includeShadow:v12];
      [(MPDetailSlider *)self setThumbImage:v13 forState:0];
    }

    traitCollection = [(MPDetailSlider *)self traitCollection];
    if ([traitCollection userInterfaceStyle] == 2)
    {
      v15 = 0.93;
      v16 = 1.0;
    }

    else
    {
      v15 = 0.07;
      v16 = 0.0;
    }

    v17 = [MEMORY[0x1E69DC888] colorWithWhite:v16 alpha:v15];

    v18 = [(MPDetailSlider *)self _colorSliceImageWithColor:v17 height:7.0];
    v19 = [(MPDetailSlider *)self _colorSliceImageWithColor:v17 height:7.0];
    [(MPDetailSlider *)self setMinimumTrackImage:v18 forState:0];
    [(MPDetailSlider *)self setMaximumTrackImage:v19 forState:0];
  }

LABEL_21:
}

void __40__MPDetailSlider__setupControlsForStyle__block_invoke(uint64_t a1)
{
  v7 = [MEMORY[0x1E69DCAB8] imageNamed:@"VideoPlayer_Slider_Track" inBundle:*(a1 + 32)];
  v1 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.35];
  v2 = [v7 _flatImageWithColor:v1];
  v3 = _setupControlsForStyle___minTrackImage;
  _setupControlsForStyle___minTrackImage = v2;

  v4 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.05];
  v5 = [v7 _flatImageWithColor:v4];
  v6 = _setupControlsForStyle___maxTrackImage;
  _setupControlsForStyle___maxTrackImage = v5;
}

void __40__MPDetailSlider__setupControlsForStyle__block_invoke_2(uint64_t a1)
{
  v1 = [MEMORY[0x1E69DCAB8] imageNamed:@"VideoPlayer_Slider_Thumb_Small" inBundle:*(a1 + 32)];
  v2 = _setupControlsForStyle___thumbImage;
  _setupControlsForStyle___thumbImage = v1;

  v3 = _setupControlsForStyle___thumbImage;
  v4 = [MEMORY[0x1E69DC888] whiteColor];
  v5 = [v3 _flatImageWithColor:v4];
  v6 = _setupControlsForStyle___thumbImage;
  _setupControlsForStyle___thumbImage = v5;

  v7 = _setupControlsForStyle___thumbImage;
  v8 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.2];
  v9 = [v7 imageWithEtchedBorderOfColor:v8 radius:0.5];
  v10 = _setupControlsForStyle___thumbImage;
  _setupControlsForStyle___thumbImage = v9;

  v14 = objc_alloc_init(MEMORY[0x1E69DB7D8]);
  v11 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.2];
  [v14 setShadowColor:v11];

  [v14 setShadowBlurRadius:2.0];
  [v14 setShadowOffset:{0.0, 2.0}];
  v12 = [_setupControlsForStyle___thumbImage imageWithShadow:v14];
  v13 = _setupControlsForStyle___thumbImage;
  _setupControlsForStyle___thumbImage = v12;
}

void __40__MPDetailSlider__setupControlsForStyle__block_invoke_3(uint64_t a1)
{
  v7 = [MEMORY[0x1E69DCAB8] imageNamed:@"VideoPlayer_Slider_Track" inBundle:*(a1 + 32)];
  v1 = [MEMORY[0x1E69DC888] whiteColor];
  v2 = [v7 _flatImageWithColor:v1];
  v3 = _setupControlsForStyle___minTrackImage_90;
  _setupControlsForStyle___minTrackImage_90 = v2;

  v4 = [MEMORY[0x1E69DC888] blackColor];
  v5 = [v7 _flatImageWithColor:v4];
  v6 = _setupControlsForStyle___maxTrackImage_91;
  _setupControlsForStyle___maxTrackImage_91 = v5;
}

void __40__MPDetailSlider__setupControlsForStyle__block_invoke_4(uint64_t a1)
{
  v1 = [MEMORY[0x1E69DCAB8] imageNamed:@"VideoPlayer_Slider_Thumb" inBundle:*(a1 + 32)];
  v2 = _setupControlsForStyle___thumbImage_93;
  _setupControlsForStyle___thumbImage_93 = v1;

  v3 = _setupControlsForStyle___thumbImage_93;
  v4 = [MEMORY[0x1E69DC888] whiteColor];
  v5 = [v3 _flatImageWithColor:v4];
  v6 = _setupControlsForStyle___thumbImage_93;
  _setupControlsForStyle___thumbImage_93 = v5;

  v7 = _setupControlsForStyle___thumbImage_93;
  v8 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.2];
  v9 = [v7 imageWithEtchedBorderOfColor:v8 radius:0.5];
  v10 = _setupControlsForStyle___thumbImage_93;
  _setupControlsForStyle___thumbImage_93 = v9;

  v14 = objc_alloc_init(MEMORY[0x1E69DB7D8]);
  v11 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.2];
  [v14 setShadowColor:v11];

  [v14 setShadowBlurRadius:2.0];
  [v14 setShadowOffset:{0.0, 2.0}];
  v12 = [_setupControlsForStyle___thumbImage_93 imageWithShadow:v14];
  v13 = _setupControlsForStyle___thumbImage_93;
  _setupControlsForStyle___thumbImage_93 = v12;
}

- (id)_colorSliceImageWithColor:(id)color height:(double)height
{
  colorCopy = color;
  [colorCopy alphaComponent];
  v8 = 1.0 - v7;
  traitCollection = [(MPDetailSlider *)self traitCollection];
  [traitCollection displayScale];
  if (v10 == 0.0)
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v13 = v12;
    v18.width = 1.0;
    v18.height = height;
    UIGraphicsBeginImageContextWithOptions(v18, v8 <= 0.00000011920929, v13);
  }

  else
  {
    v14 = v10;
    v19.width = 1.0;
    v19.height = height;
    UIGraphicsBeginImageContextWithOptions(v19, v8 <= 0.00000011920929, v14);
  }

  [colorCopy setFill];
  v20.origin.x = 0.0;
  v20.origin.y = 0.0;
  v20.size.width = 1.0;
  v20.size.height = height;
  UIRectFillUsingBlendMode(v20, kCGBlendModeCopy);
  v15 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v15;
}

- (id)_modernThumbImageWithColor:(id)color height:(double)height includeShadow:(BOOL)shadow
{
  shadowCopy = shadow;
  colorCopy = color;
  traitCollection = [(MPDetailSlider *)self traitCollection];
  [traitCollection displayScale];
  if (v10 == 0.0)
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v13 = v12;
    v27.width = 6.0;
    v27.height = height + 4.0;
    UIGraphicsBeginImageContextWithOptions(v27, 0, v13);
  }

  else
  {
    v14 = v10;
    v28.width = 6.0;
    v28.height = height + 4.0;
    UIGraphicsBeginImageContextWithOptions(v28, 0, v14);
  }

  if (shadowCopy)
  {
    CurrentContext = UIGraphicsGetCurrentContext();
    v16 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.1];
    cGColor = [v16 CGColor];
    CGContextSetShadowWithColor(CurrentContext, *MEMORY[0x1E695F060], 2.0, cGColor);
  }

  [colorCopy setFill];
  traitCollection2 = [(MPDetailSlider *)self traitCollection];
  [traitCollection2 displayScale];
  v20 = 1.0 / v19;
  if (1.0 / v19 == 0.0)
  {
    mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen2 scale];
    v20 = v22;
  }

  v23 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:2.0 cornerRadius:{2.0, v20 + 1.0, height, 3.0}];
  [v23 fill];

  v24 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v24;
}

- (id)timeLabelTextColorForStyle:(int64_t)style
{
  if ((self->_style - 3) > 1)
  {
    [MEMORY[0x1E69DC888] blackColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] colorWithWhite:style alpha:{1.0, 0.45}];
  }
  v3 = ;

  return v3;
}

- (id)timeLabelFontForStyle:(int64_t)style
{
  v26[1] = *MEMORY[0x1E69E9840];
  style = self->_style;
  if ((style - 1) < 2)
  {
    v6 = MEMORY[0x1E69DB878];
    v7 = 12.0;
    goto LABEL_7;
  }

  if ((style - 3) >= 2)
  {
    if (style != 5)
    {
      v4 = MEMORY[0x1E69DB878];
      v5 = 14.0;
      goto LABEL_9;
    }

    v6 = MEMORY[0x1E69DB878];
    v7 = 10.0;
LABEL_7:
    v8 = [v6 systemFontOfSize:{style, v7}];
    goto LABEL_10;
  }

  v4 = MEMORY[0x1E69DB878];
  v5 = 13.0;
LABEL_9:
  v8 = [v4 boldSystemFontOfSize:{style, v5}];
LABEL_10:
  v9 = v8;
  fontDescriptor = [v8 fontDescriptor];
  v25 = *MEMORY[0x1E69DB8B0];
  v12 = *MEMORY[0x1E69DB900];
  v22[0] = *MEMORY[0x1E69DB908];
  v11 = v22[0];
  v22[1] = v12;
  v23[0] = &unk_1F1509C70;
  v23[1] = &unk_1F1509C88;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v24[0] = v13;
  v20[0] = v11;
  v20[1] = v12;
  v21[0] = &unk_1F1509CA0;
  v21[1] = &unk_1F1509CB8;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v24[1] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  v26[0] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  v17 = [fontDescriptor fontDescriptorByAddingAttributes:v16];

  v18 = [MEMORY[0x1E69DB878] fontWithDescriptor:v17 size:0.0];

  return v18;
}

- (void)setTimeLabelStyle:(int64_t)style
{
  if (self->_timeLabelStyle != style)
  {
    self->_timeLabelStyle = style;
    [(MPDetailSlider *)self _setupControlsForStyle];

    [(MPDetailSlider *)self setNeedsLayout];
  }
}

- (void)setMinTimeLabelWidth:(double)width
{
  if (self->_minTimeLabelWidth != width)
  {
    self->_minTimeLabelWidth = width;
    [(MPDetailSlider *)self _updateTrackInset];

    [(MPDetailSlider *)self setNeedsLayout];
  }
}

- (void)setDuration:(double)duration
{
  if (vabdd_f64(self->_duration, duration) > 2.22044605e-16)
  {
    self->_duration = duration;
    [(MPDetailScrubController *)self->_scrubController setDuration:?];
    currentTime = self->_currentTime;
    if (currentTime >= self->_duration)
    {
      currentTime = self->_duration;
    }

    self->_currentTime = fmax(currentTime, 0.0);
    [(MPDetailSlider *)self frame];
    if (!CGRectIsEmpty(v8))
    {
      [(MPDetailSlider *)self layoutSubviews];
    }

    v5 = self->_currentTime;
    *&v5 = v5;
    [(MPDetailSlider *)self setValue:0 animated:v5];
    [(MPDetailSlider *)self setAvailableDuration:self->_duration];
    v6 = self->_currentTime;

    [(MPDetailSlider *)self _updateTimeDisplayForTime:1 force:v6];
  }
}

- (void)setAvailableDuration:(double)duration
{
  if (self->_duration <= duration)
  {
    duration = self->_duration;
  }

  if (vabdd_f64(duration, self->_availableDuration) > 2.22044605e-16)
  {
    self->_availableDuration = duration;
    [(MPDetailSlider *)self _updateForAvailableDuraton];
  }
}

- (void)setAllowsScrubbing:(BOOL)allowsScrubbing
{
  if (self->_allowsScrubbing != allowsScrubbing)
  {
    self->_allowsScrubbing = allowsScrubbing;
    if (self->_style == 5)
    {
      [(MPDetailSlider *)self _setupControlsForStyle];
      allowsScrubbing = self->_allowsScrubbing;
    }

    v4 = allowsScrubbing;

    [(MPDetailSlider *)self setUserInteractionEnabled:v4];
  }
}

- (NSString)localizedScrubSpeedText
{
  currentScrubSpeed = [(MPDetailScrubController *)self->_scrubController currentScrubSpeed];
  if (currentScrubSpeed > 3)
  {
    v5 = 0;
  }

  else
  {
    v3 = off_1E767FBC0[currentScrubSpeed];
    v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaPlayer"];
    v5 = [v4 localizedStringForKey:v3 value:&stru_1F149ECA8 table:@"MediaPlayer"];
  }

  return v5;
}

- (void)cancelTracking
{
  [(NSTimer *)self->_autoscrubTimer invalidate];
  autoscrubTimer = self->_autoscrubTimer;
  self->_autoscrubTimer = 0;

  self->_autoscrubActive = 0;
  isTracking = self->_isTracking;
  self->_isTracking = 0;
  [(MPDetailSlider *)self _resetScrubInfo];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = WeakRetained;
  if (isTracking)
  {
    v8 = WeakRetained;
    WeakRetained = objc_opt_respondsToSelector();
    v7 = v8;
    if (WeakRetained)
    {
      WeakRetained = [v8 detailSliderTrackingDidCancel:self];
      v7 = v8;
    }
  }

  MEMORY[0x1EEE66BE0](WeakRetained, v6, v7);
}

- (void)cancelTrackingWithEvent:(id)event
{
  [(MPDetailScrubController *)self->_scrubController cancelTrackingWithEvent:event];

  [(MPDetailSlider *)self cancelTracking];
}

- (void)endTrackingWithTouch:(id)touch withEvent:(id)event
{
  autoscrubTimer = self->_autoscrubTimer;
  eventCopy = event;
  touchCopy = touch;
  [(NSTimer *)autoscrubTimer invalidate];
  v9 = self->_autoscrubTimer;
  self->_autoscrubTimer = 0;

  self->_autoscrubActive = 0;
  self->_isTracking = 0;
  [(MPDetailSlider *)self _resetScrubInfo];
  [(MPDetailScrubController *)self->_scrubController endTrackingWithTouch:touchCopy withEvent:eventCopy];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained detailSliderTrackingDidEnd:self];
  }
}

- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event
{
  touchCopy = touch;
  eventCopy = event;
  [touchCopy locationInView:self];
  v9 = v8;
  v11 = v10;
  if ([(MPDetailScrubController *)self->_scrubController detailedScrubbingEnabled]&& [(MPDetailScrubController *)self->_scrubController durationAllowsForDetailedScrubbing])
  {
    window = [(MPDetailSlider *)self window];
    [(MPDetailSlider *)self convertPoint:window toView:v9, v11];
    v14 = v13;
    v16 = v15;
    autoscrubActive = self->_autoscrubActive;
    v18 = [*MEMORY[0x1E69DDA98] statusBarOrientation] - 3;
    if (v18 < 2)
    {
      v14 = v16;
    }

    [window bounds];
    if (v18 > 1)
    {
      Width = CGRectGetWidth(*&v19);
      if (window)
      {
LABEL_7:
        v24 = v14 < 20.0;
        Width = Width + -20.0;
        if (v14 > Width)
        {
          v24 = 1;
        }

        self->_autoscrubActive = v24;
        if (v24)
        {
          thumbImageView = self->_thumbImageView;
          currentThumbImage = [(MPDetailSlider *)self currentThumbImage];
          [(UIImageView *)thumbImageView setImage:currentThumbImage];

          if (!autoscrubActive)
          {
            v27 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
            v28 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];
            [v27 setToValue:v28];

            [v27 setDuration:0.25];
            LODWORD(v29) = 2139095039;
            [v27 setRepeatCount:v29];
            [v27 setAutoreverses:1];
            layer = [(UIImageView *)self->_glowDetailScrubImageView layer];
            [layer addAnimation:v27 forKey:@"pulseAnimation"];
          }

          [(MPDetailSlider *)self value];
          v32 = self->_duration * v31;
          *&v32 = v32;
          [(MPDetailSlider *)self _setValueWhileTracking:v32 duration:0.0];
          if ([(MPDetailSlider *)self isContinuous])
          {
            [(MPDetailSlider *)self sendActionsForControlEvents:4096];
          }

          if (!self->_autoscrubTimer)
          {
            v33 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__autoscrubTick_ selector:0 userInfo:1 repeats:0.1];
            autoscrubTimer = self->_autoscrubTimer;
            self->_autoscrubTimer = v33;
          }

          self->_previousLocationInView.x = v9;
          self->_previousLocationInView.y = v11;

          v35 = 1;
          goto LABEL_25;
        }

        goto LABEL_19;
      }
    }

    else
    {
      Width = CGRectGetHeight(*&v19);
      if (window)
      {
        goto LABEL_7;
      }
    }

    self->_autoscrubActive = 0;
LABEL_19:
    if (self->_autoscrubTimer)
    {
      layer2 = [(UIImageView *)self->_glowDetailScrubImageView layer];
      [layer2 removeAnimationForKey:@"pulseAnimation"];

      [(NSTimer *)self->_autoscrubTimer invalidate];
      v37 = self->_autoscrubTimer;
      self->_autoscrubTimer = 0;
    }
  }

  if ([(MPDetailSlider *)self isContinuous])
  {
    [(MPDetailSlider *)self sendActionsForControlEvents:4096];
  }

  v35 = [(MPDetailScrubController *)self->_scrubController continueTrackingWithTouch:touchCopy withEvent:eventCopy];
LABEL_25:

  return v35;
}

- (void)_autoscrubTick:(id)tick
{
  [(MPDetailSlider *)self maximumValue];
  v5 = v4;
  [(MPDetailSlider *)self minimumValue];
  v7 = (v5 - v6);
  [(MPDetailSlider *)self bounds];
  [(MPDetailSlider *)self trackRectForBounds:?];
  v8 = v7 / CGRectGetWidth(v26);
  [(MPDetailScrubController *)self->_scrubController scaleForVerticalPosition:self->_previousLocationInView.y];
  v10 = v9;
  v11 = v8 * v9;
  window = [(MPDetailSlider *)self window];
  [(MPDetailSlider *)self convertPoint:window toView:self->_previousLocationInView.x, self->_previousLocationInView.y];
  v14 = v13;
  window2 = [(MPDetailSlider *)self window];
  [window2 bounds];
  if (v14 >= CGRectGetMidX(v27))
  {
    v16 = v11;
  }

  else
  {
    v16 = -(v8 * v10);
  }

  v17 = v16;

  self->_canCommit = 1;
  [(MPDetailSlider *)self minimumValue];
  v19 = v18;
  [(MPDetailSlider *)self maximumValue];
  v21 = v20;
  [(MPDetailSlider *)self value];
  v23 = v22 + v17;
  if (v21 < v23)
  {
    v23 = v21;
  }

  if (v19 >= v23)
  {
    v23 = v19;
  }

  v24 = self->_duration * v23;
  *&v24 = v24;
  [(MPDetailSlider *)self setValue:0 animated:v24];
  if ([(MPDetailSlider *)self isContinuous])
  {

    [(MPDetailSlider *)self sendActionsForControlEvents:4096];
  }
}

- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event
{
  scrubController = self->_scrubController;
  touchCopy = touch;
  v8 = [(MPDetailScrubController *)scrubController beginTrackingWithTouch:touchCopy withEvent:event];
  [touchCopy locationInView:self];
  v10 = v9;
  v12 = v11;

  [(MPDetailSlider *)self thumbHitRect];
  v15.x = v10;
  v15.y = v12;
  if (CGRectContainsPoint(v16, v15))
  {
    self->_isTracking = 1;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained detailSliderTrackingDidBegin:self];
    }
  }

  return v8;
}

- (void)detailScrubController:(id)controller didChangeValue:(float)value
{
  [(MPDetailSlider *)self _setValueWhileTracking:controller duration:?];

  [(MPDetailSlider *)self _commitValue];
}

- (void)detailScrubController:(id)controller didChangeScrubSpeed:(int64_t)speed
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained detailSlider:self didChangeScrubSpeed:speed];
  }
}

- (CGRect)thumbHitRect
{
  [(MPDetailSlider *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(MPDetailSlider *)self bounds];
  [(MPDetailSlider *)self trackRectForBounds:?];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [(MPDetailSlider *)self value];
  LODWORD(v24) = v19;
  [(MPDetailSlider *)self thumbRectForBounds:v4 trackRect:v6 value:v8, v10, v12, v14, v16, v18, v24];

  return CGRectInset(*&v20, -19.0, -19.0);
}

- (UIEdgeInsets)_thumbHitEdgeInsets
{
  v2 = -19.0;
  v3 = -19.0;
  v4 = -19.0;
  v5 = -19.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)_setValueWhileTracking:(float)tracking duration:(double)duration
{
  duration = self->_duration;
  if (duration > 0.0)
  {
    v7 = fmax(tracking, 0.0);
    if (duration < v7)
    {
      v7 = self->_duration;
    }

    v8 = v7;
    v9 = v8;
    v10 = v8 / duration;
    [(MPDetailSlider *)self bounds];
    if (vabdd_f64(1.0, v10) < 1.0 / v11)
    {
      v10 = 1.0;
    }

    layer = [(MPDetailSlider *)self layer];
    animationKeys = [layer animationKeys];
    v14 = [animationKeys count];

    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __50__MPDetailSlider__setValueWhileTracking_duration___block_invoke;
    v19 = &unk_1E76811D8;
    if (v14)
    {
      v15 = 196640;
    }

    else
    {
      v15 = 196644;
    }

    v21 = v10;
    selfCopy = self;
    [MEMORY[0x1E69DD250] animateWithDuration:v15 delay:&v16 options:0 animations:duration completion:0.0];
    [(MPDetailSlider *)self _updateForAvailableDuraton:v16];
    [(MPDetailSlider *)self _updateTimeDisplayForTime:v9];
    if (self->_isTracking && self->_canCommit)
    {
      [(MPDetailSlider *)self _commitValue];
    }
  }
}

uint64_t __50__MPDetailSlider__setValueWhileTracking_duration___block_invoke(uint64_t a1, double a2)
{
  LODWORD(a2) = *(a1 + 40);
  v4.receiver = *(a1 + 32);
  v4.super_class = MPDetailSlider;
  objc_msgSendSuper2(&v4, sel_setValue_animated_, 0, a2);
  return [*(a1 + 32) layoutIfNeeded];
}

- (void)setValue:(float)value duration:(double)duration
{
  if (!self->_isTracking)
  {
    [MPDetailSlider _setValueWhileTracking:"_setValueWhileTracking:duration:" duration:?];
  }
}

- (CGRect)thumbRectForBounds:(CGRect)bounds trackRect:(CGRect)rect value:(float)value
{
  v29.receiver = self;
  v29.super_class = MPDetailSlider;
  [(MPDetailSlider *)&v29 thumbRectForBounds:bounds.origin.x trackRect:bounds.origin.y value:bounds.size.width, bounds.size.height, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height, LODWORD(value)];
  if ((self->_style - 3) > 1)
  {
    v15 = 1.0;
    if (value < 0.5)
    {
      v15 = -1.0;
    }

    v30 = CGRectOffset(*&v7, v15, 0.0);
    x = v30.origin.x;
    y = v30.origin.y;
    width = v30.size.width;
    height = v30.size.height;
  }

  else
  {
    v11 = 0.0;
    if (value < 0.5)
    {
      v11 = -1.0;
    }

    CGRectOffset(*&v7, v11, 0.5);
    traitCollection = [(MPDetailSlider *)self traitCollection];
    [traitCollection displayScale];
    v14 = v13;
    if (v13 == 0.0)
    {
      mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
      [mainScreen scale];
    }

    UIRectIntegralWithScale();
    x = v20;
    y = v21;
    width = v22;
    height = v23;
    if (v14 == 0.0)
    {
    }
  }

  v24 = x;
  v25 = y;
  v26 = width;
  v27 = height;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (CGRect)trackRectForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(MPDetailSlider *)self _updateTrackInset];
  v14.receiver = self;
  v14.super_class = MPDetailSlider;
  [(MPDetailSlider *)&v14 trackRectForBounds:x, y, width, height];
  v8 = v15.origin.x;
  v9 = v15.origin.y;
  v10 = v15.size.width;
  v11 = v15.size.height;
  v12 = CGRectGetWidth(v15);
  trackInset = self->_trackInset;
  if (v12 <= trackInset + trackInset)
  {
    return **&MEMORY[0x1E695F058];
  }

  else
  {
    v16.origin.x = v8;
    v16.origin.y = v9;
    v16.size.width = v10;
    v16.size.height = v11;
    return CGRectInset(v16, trackInset, 0.0);
  }
}

- (id)currentThumbImage
{
  if ((self->_style - 1) >= 5)
  {
    if (self->_isTracking && [(MPDetailScrubController *)self->_scrubController detailedScrubbingEnabled]&& [(MPDetailScrubController *)self->_scrubController durationAllowsForDetailedScrubbing])
    {
      glowDetailScrubImageView = self->_glowDetailScrubImageView;
      if (!glowDetailScrubImageView)
      {
        v8 = objc_alloc(MEMORY[0x1E69DCAE0]);
        v9 = MEMORY[0x1E69DCAB8];
        v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v11 = [v9 imageNamed:@"scrubberglow" inBundle:v10];
        v12 = [v8 initWithImage:v11];
        v13 = self->_glowDetailScrubImageView;
        self->_glowDetailScrubImageView = v12;

        v14 = self->_glowDetailScrubImageView;
        [(UIImageView *)v14 bounds];
        [(UIImageView *)self->_thumbImageView bounds];
        UIRectCenteredIntegralRect();
        v18 = CGRectOffset(v17, 0.0, -1.0);
        [(UIImageView *)v14 setFrame:v18.origin.x, v18.origin.y, v18.size.width, v18.size.height];
        glowDetailScrubImageView = self->_glowDetailScrubImageView;
      }

      [(UIImageView *)self->_thumbImageView addSubview:glowDetailScrubImageView];
    }

    else
    {
      v4 = self->_glowDetailScrubImageView;
      if (v4)
      {
        layer = [(UIImageView *)v4 layer];
        [layer removeAllAnimations];

        [(UIImageView *)self->_glowDetailScrubImageView removeFromSuperview];
      }
    }
  }

  v15.receiver = self;
  v15.super_class = MPDetailSlider;
  currentThumbImage = [(MPDetailSlider *)&v15 currentThumbImage];

  return currentThumbImage;
}

- (id)createThumbView
{
  v7.receiver = self;
  v7.super_class = MPDetailSlider;
  createThumbView = [(MPDetailSlider *)&v7 createThumbView];
  thumbImageView = self->_thumbImageView;
  self->_thumbImageView = createThumbView;

  v5 = self->_thumbImageView;

  return v5;
}

- (void)traitCollectionDidChange:(id)change
{
  v9.receiver = self;
  v9.super_class = MPDetailSlider;
  changeCopy = change;
  [(MPDetailSlider *)&v9 traitCollectionDidChange:changeCopy];
  v5 = [(MPDetailSlider *)self traitCollection:v9.receiver];
  userInterfaceStyle = [v5 userInterfaceStyle];
  userInterfaceStyle2 = [changeCopy userInterfaceStyle];

  if (userInterfaceStyle == userInterfaceStyle2)
  {
  }

  else
  {
    style = self->_style;

    if (style == 5)
    {
      [(MPDetailSlider *)self _setupControlsForStyle];
    }
  }
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = MPDetailSlider;
  [(MPDetailSlider *)&v3 tintColorDidChange];
  if (self->_style == 5)
  {
    [(MPDetailSlider *)self _setupControlsForStyle];
  }
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(MPDetailSlider *)self frame];
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  if (!CGRectEqualToRect(v10, v11))
  {
    v9.receiver = self;
    v9.super_class = MPDetailSlider;
    [(MPDetailSlider *)&v9 setFrame:x, y, width, height];
    currentTime = self->_currentTime;
    *&currentTime = currentTime;
    [(MPDetailSlider *)self setValue:currentTime];
  }
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(MPDetailSlider *)self bounds];
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  if (!CGRectEqualToRect(v10, v11))
  {
    v9.receiver = self;
    v9.super_class = MPDetailSlider;
    [(MPDetailSlider *)&v9 setBounds:x, y, width, height];
    currentTime = self->_currentTime;
    *&currentTime = currentTime;
    [(MPDetailSlider *)self setValue:currentTime];
  }
}

- (void)layoutSubviews
{
  [(MPDetailSlider *)self bounds];
  traitCollection = [(MPDetailSlider *)self traitCollection];
  [traitCollection displayScale];
  v5 = v4;

  if (v5 < 0.00000011920929)
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v5 = v7;
  }

  if (self->_timeLabelStyle == 1)
  {
    [(UILabel *)self->_currentTimeLabel removeFromSuperview];
    currentTimeLabel = self->_currentTimeLabel;
    self->_currentTimeLabel = 0;

    [(UILabel *)self->_currentTimeInverseLabel removeFromSuperview];
    currentTimeInverseLabel = self->_currentTimeInverseLabel;
    self->_currentTimeInverseLabel = 0;
  }

  else
  {
    [(MPDetailSlider *)self bounds];
    [(MPDetailSlider *)self trackRectForBounds:?];
    v34 = v11;
    v35 = v10;
    v32 = v13;
    v33 = v12;
    currentTimeInverseLabel = [(MPDetailSlider *)self timeLabelFontForStyle:self->_style];
    v14 = [(MPDetailSlider *)self timeLabelTextColorForStyle:self->_style];
    v15 = self->_currentTimeLabel;
    if (!v15)
    {
      v16 = [objc_alloc(objc_msgSend(objc_opt_class() "labelClass"))];
      v17 = self->_currentTimeLabel;
      self->_currentTimeLabel = v16;

      [(UILabel *)self->_currentTimeLabel setBackgroundColor:0];
      [(UILabel *)self->_currentTimeLabel setFont:currentTimeInverseLabel];
      [(UILabel *)self->_currentTimeLabel setLineBreakMode:2];
      [(UILabel *)self->_currentTimeLabel setOpaque:0];
      v18 = [(MPDetailSlider *)self _stringForCurrentTime:NAN];
      [(UILabel *)self->_currentTimeLabel setText:v18];

      [(UILabel *)self->_currentTimeLabel setTextAlignment:2];
      [(UILabel *)self->_currentTimeLabel setTextColor:v14];
      [(MPDetailSlider *)self addSubview:self->_currentTimeLabel];
      v15 = self->_currentTimeLabel;
    }

    [(UILabel *)v15 sizeToFit];
    [(UILabel *)self->_currentTimeLabel frame];
    UIRectCenteredYInRectScale();
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v37.origin.y = v34;
    v37.origin.x = v35;
    v37.size.height = v32;
    v37.size.width = v33;
    CGRectGetMinX(v37);
    v38.origin.x = v20;
    v38.origin.y = v22;
    v38.size.width = v24;
    v38.size.height = v26;
    CGRectGetWidth(v38);
    UIRectIntegralWithScale();
    [(UILabel *)self->_currentTimeLabel setFrame:*&v5];
    v27 = self->_currentTimeInverseLabel;
    if (!v27)
    {
      v28 = [objc_alloc(objc_msgSend(objc_opt_class() "labelClass"))];
      v29 = self->_currentTimeInverseLabel;
      self->_currentTimeInverseLabel = v28;

      [(UILabel *)self->_currentTimeInverseLabel setBackgroundColor:0];
      [(UILabel *)self->_currentTimeInverseLabel setFont:currentTimeInverseLabel];
      [(UILabel *)self->_currentTimeInverseLabel setLineBreakMode:2];
      [(UILabel *)self->_currentTimeInverseLabel setOpaque:0];
      v30 = [(MPDetailSlider *)self _stringForInverseCurrentTime:NAN];
      [(UILabel *)self->_currentTimeInverseLabel setText:v30];

      [(UILabel *)self->_currentTimeInverseLabel setTextAlignment:0];
      [(UILabel *)self->_currentTimeInverseLabel setTextColor:v14];
      [(MPDetailSlider *)self addSubview:self->_currentTimeInverseLabel];
      v27 = self->_currentTimeInverseLabel;
    }

    [(UILabel *)v27 sizeToFit];
    [(UILabel *)self->_currentTimeInverseLabel frame];
    UIRectCenteredYInRectScale();
    v39.origin.y = v34;
    v39.origin.x = v35;
    v39.size.height = v32;
    v39.size.width = v33;
    CGRectGetMaxX(v39);
    UIRectIntegralWithScale();
    [(UILabel *)self->_currentTimeInverseLabel setFrame:*&v5];
  }

  [(MPDetailSlider *)self _updateTrackInset];
  v36.receiver = self;
  v36.super_class = MPDetailSlider;
  [(MPDetailSlider *)&v36 layoutSubviews];
  if ((self->_style - 3) <= 1)
  {
    _maxTrackView = [(MPDetailSlider *)self _maxTrackView];
    [_maxTrackView _setDrawsAsBackdropOverlayWithBlendMode:2];

    [(UILabel *)self->_currentTimeLabel _setDrawsAsBackdropOverlayWithBlendMode:2];
    [(UILabel *)self->_currentTimeInverseLabel _setDrawsAsBackdropOverlayWithBlendMode:2];
  }
}

- (void)dealloc
{
  [(NSTimer *)self->_autoscrubTimer invalidate];
  v3.receiver = self;
  v3.super_class = MPDetailSlider;
  [(MPDetailSlider *)&v3 dealloc];
}

- (MPDetailSlider)initWithFrame:(CGRect)frame style:(int64_t)style maxTrackWidth:(double)width
{
  if (frame.size.height < 34.0 && style == 3 || frame.size.height == 0.0)
  {
    frame.size.height = 34.0;
  }

  v15.receiver = self;
  v15.super_class = MPDetailSlider;
  v9 = [(MPDetailSlider *)&v15 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v9)
  {
    v10 = [[MPDetailScrubController alloc] initWithScrubbingControl:v9];
    scrubController = v9->_scrubController;
    v9->_scrubController = v10;

    [(MPDetailScrubController *)v9->_scrubController setDelegate:v9];
    [(MPDetailScrubController *)v9->_scrubController setDetailedScrubbingEnabled:1];
    v9->_allowsScrubbing = 1;
    v9->_maxTrackWidth = width;
    v9->_style = style;
    if ((style - 3) >= 2)
    {
      v9->_minTimeLabelWidth = 41.0;
    }

    [(MPDetailSlider *)v9 _setupControlsForStyle];
    [(MPDetailSlider *)v9 setDeliversTouchesForGesturesToSuperview:0];
    [(MPDetailSlider *)v9 setSemanticContentAttribute:1];
    v12 = objc_opt_new();
    formatter = v9->_formatter;
    v9->_formatter = v12;
  }

  return v9;
}

@end