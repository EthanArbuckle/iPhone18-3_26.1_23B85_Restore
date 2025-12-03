@interface AVMobileChromelessPlaybackControlButton
+ (AVMobileChromelessPlaybackControlButton)buttonWithAccessibilityIdentifier:(id)identifier withStyleSheet:(id)sheet withPlaybackControlButtonType:(unint64_t)type;
- (CGSize)intrinsicContentSize;
- (id)pointerTargetView;
- (uint64_t)_glyphForCurrentSkipInterval;
- (void)_setupMicaPackageIfNeeded;
- (void)_updateEnabledState;
- (void)_updateGlyphSkipInterval;
- (void)_updateImageViewHiddenState;
- (void)_updateMicaPackage;
- (void)_updateTintColor;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setButtonMicaPackage:(id)package;
- (void)setEnabled:(BOOL)enabled;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setImageName:(id)name;
- (void)setPlaybackControlButtonIconState:(id)state;
- (void)setSkipInterval:(id *)interval;
- (void)setStyleSheet:(id)sheet;
- (void)tintColorDidChange;
@end

@implementation AVMobileChromelessPlaybackControlButton

- (void)setImageName:(id)name
{
  nameCopy = name;
  v8.receiver = self;
  v8.super_class = AVMobileChromelessPlaybackControlButton;
  [(AVButton *)&v8 setImageName:nameCopy];
  if (self->_playbackControlButtonType - 1 <= 1)
  {
    v5 = +[AVKitGlobalSettings shared];
    if ([v5 animatedSkipButtonsEnabled])
    {
      if ([nameCopy isEqualToString:@"gobackward.10"])
      {

LABEL_8:
        self->_prefersMicaPackage = 1;
        [(AVMobileChromelessPlaybackControlButton *)self _setupMicaPackageIfNeeded];
        v6 = !self->_prefersMicaPackage;
        goto LABEL_9;
      }

      v7 = [nameCopy isEqualToString:@"goforward.10"];

      if (v7)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }

    self->_prefersMicaPackage = 0;
    v6 = 1;
LABEL_9:
    [(UIView *)self->_buttonMicaPackageContainerView setHidden:v6];
    [(AVMobileChromelessPlaybackControlButton *)self _updateImageViewHiddenState];
  }

  [(AVMobileChromelessPlaybackControlButton *)self setNeedsLayout];
}

- (void)_setupMicaPackageIfNeeded
{
  if (self && !*(self + 1288) && (*(self + 1072) & 1) == 0)
  {
    if (*(self + 1048))
    {
      v2 = @"IntervalSkipGlyph";
    }

    else
    {
      v2 = @"PlayPauseGlyph";
    }

    v3 = v2;
    *(self + 1072) = 1;
    objc_initWeak(&location, self);
    effectiveUserInterfaceLayoutDirection = [self effectiveUserInterfaceLayoutDirection];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __68__AVMobileChromelessPlaybackControlButton__setupMicaPackageIfNeeded__block_invoke;
    v5[3] = &unk_1E7209E08;
    objc_copyWeak(&v6, &location);
    [AVMicaPackage asynchronouslyPrepareMicaPackageWithName:v3 layoutDirection:effectiveUserInterfaceLayoutDirection completion:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

- (void)_updateImageViewHiddenState
{
  if (self)
  {
    if (*(self + 1048) == 2)
    {
      imageName = [self imageName];
      if ([imageName isEqualToString:@"forward.end.alt.fill"])
      {
        v3 = 1;
      }

      else
      {
        v3 = *(self + 1073);
      }
    }

    else
    {
      v3 = *(self + 1073);
    }

    imageView = [self imageView];
    [imageView setHidden:v3];
  }
}

void __68__AVMobileChromelessPlaybackControlButton__setupMicaPackageIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setButtonMicaPackage:v5];
    v4[1072] = 0;
  }
}

- (void)setEnabled:(BOOL)enabled
{
  v4.receiver = self;
  v4.super_class = AVMobileChromelessPlaybackControlButton;
  [(AVButton *)&v4 setEnabled:enabled];
  [(AVMobileChromelessPlaybackControlButton *)self _updateEnabledState];
}

- (void)_updateEnabledState
{
  if (self)
  {
    isEnabled = [self isEnabled];
    buttonMicaPackage = [self buttonMicaPackage];
    v3 = [buttonMicaPackage sublayerWithName:@"origin"];
    v8 = 0.0;
    tintColor = [self tintColor];
    [tintColor getWhite:0 alpha:&v8];

    v5 = 0.5;
    if (isEnabled)
    {
      v5 = 1.0;
    }

    v6 = v5 * v8;
    *&v6 = v5 * v8;
    [v3 setOpacity:v6];
  }
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = AVMobileChromelessPlaybackControlButton;
  [(AVMobileChromelessPlaybackControlButton *)&v3 tintColorDidChange];
  [(AVMobileChromelessPlaybackControlButton *)self _updateTintColor];
  [(AVMobileChromelessPlaybackControlButton *)self _updateEnabledState];
}

- (void)_updateTintColor
{
  if (self)
  {
    v2 = +[AVKitGlobalSettings shared];
    prefersTintColorForPlaybackControlsView = [v2 prefersTintColorForPlaybackControlsView];

    if (prefersTintColorForPlaybackControlsView)
    {
      v4 = self[131];
      if ((v4 - 1) >= 2)
      {
        if (v4)
        {
          return;
        }

        tintColor = [self tintColor];
        CopyWithAlpha = CGColorCreateCopyWithAlpha([tintColor CGColor], 1.0);

        buttonMicaPackage = [self buttonMicaPackage];
        v7 = [buttonMicaPackage sublayerWithName:@"path-play-tint-shape"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v7 setFillColor:CopyWithAlpha];
        }

        v8 = [buttonMicaPackage sublayerWithName:@"path-pause-tint-shape"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v8 setFillColor:CopyWithAlpha];
        }
      }

      else
      {
        tintColor2 = [self tintColor];
        v6 = CGColorCreateCopyWithAlpha([tintColor2 CGColor], 1.0);

        buttonMicaPackage = [self buttonMicaPackage];
        v7 = [buttonMicaPackage sublayerWithName:@"trianglefill"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v7 setFillColor:v6];
        }

        v8 = [buttonMicaPackage sublayerWithName:@"ringstroke"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v8 setStrokeColor:v6];
        }

        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%dfill", -[AVMobileChromelessPlaybackControlButton _glyphForCurrentSkipInterval](self)];
        v10 = [buttonMicaPackage sublayerWithName:v9];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v10 setFillColor:v6];
        }
      }
    }
  }
}

- (uint64_t)_glyphForCurrentSkipInterval
{
  time1 = *(self + 1304);
  v7 = *(self + 1076);
  if (CMTimeCompare(&time1, &v7))
  {
    time1 = *(self + 1304);
    v7 = *(self + 1100);
    if (CMTimeCompare(&time1, &v7))
    {
      time1 = *(self + 1304);
      v7 = *(self + 1124);
      if (CMTimeCompare(&time1, &v7))
      {
        time1 = *(self + 1304);
        v7 = *(self + 1148);
        if (CMTimeCompare(&time1, &v7))
        {
          time1 = *(self + 1304);
          v7 = *(self + 1172);
          if (CMTimeCompare(&time1, &v7))
          {
            time1 = *(self + 1304);
            v7 = *(self + 1196);
            if (CMTimeCompare(&time1, &v7))
            {
              time1 = *(self + 1304);
              v7 = *(self + 1220);
              if (CMTimeCompare(&time1, &v7))
              {
                time1 = *(self + 1304);
                v7 = *(self + 1244);
                if (CMTimeCompare(&time1, &v7))
                {
                  if (*(self + 1048) == 1)
                  {
                    return 24;
                  }

                  else
                  {
                    return 25;
                  }
                }

                v3 = 7;
              }

              else
              {
                v3 = 6;
              }
            }

            else
            {
              v3 = 5;
            }
          }

          else
          {
            v3 = 4;
          }
        }

        else
        {
          v3 = 3;
        }
      }

      else
      {
        v3 = 2;
      }
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  numberingSystem = [currentLocale numberingSystem];

  if ([numberingSystem isEqualToString:@"arab"])
  {
    v2 = v3 | 8;
  }

  else if ([numberingSystem isEqualToString:@"deva"])
  {
    v2 = v3 | 0x10;
  }

  else
  {
    v2 = v3;
  }

  return v2;
}

- (CGSize)intrinsicContentSize
{
  v2 = 46.0;
  v3 = 46.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)layoutSubviews
{
  v26.receiver = self;
  v26.super_class = AVMobileChromelessPlaybackControlButton;
  [(AVButton *)&v26 layoutSubviews];
  if (self)
  {
    if (self->_buttonMicaPackage)
    {
      [(AVMobileChromelessPlaybackControlButton *)self _updateMicaPackage];
    }

    buttonMicaPackageContainerView = [(AVMobileChromelessPlaybackControlButton *)self buttonMicaPackageContainerView];
    v4 = buttonMicaPackageContainerView;
    if (buttonMicaPackageContainerView)
    {
      [buttonMicaPackageContainerView transform];
    }

    else
    {
      memset(&v27, 0, sizeof(v27));
    }

    IsIdentity = CGAffineTransformIsIdentity(&v27);

    if (IsIdentity)
    {
      [(AVMobileChromelessPlaybackControlButton *)self bounds];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;
      buttonMicaPackageContainerView2 = [(AVMobileChromelessPlaybackControlButton *)self buttonMicaPackageContainerView];
      [buttonMicaPackageContainerView2 setFrame:{v7, v9, v11, v13}];

      [MEMORY[0x1E6979518] begin];
      [MEMORY[0x1E6979518] setDisableActions:1];
      micaPackage = [(AVButton *)self micaPackage];
      rootLayer = [micaPackage rootLayer];
      UIRectGetCenter();
      [rootLayer setPosition:?];

      [MEMORY[0x1E6979518] commit];
    }

    else
    {
      micaPackage2 = [(AVButton *)self micaPackage];
      rootLayer2 = [micaPackage2 rootLayer];
      [(AVMobileChromelessPlaybackControlButton *)self bounds];
      UIRectGetCenter();
      [rootLayer2 setPosition:?];
    }
  }

  [(AVMobileChromelessPlaybackControlButton *)self bounds];
  x = v28.origin.x;
  y = v28.origin.y;
  width = v28.size.width;
  height = v28.size.height;
  highlightView = self->_highlightView;
  MidX = CGRectGetMidX(v28);
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  [(UIView *)highlightView setCenter:MidX, CGRectGetMidY(v29)];
  layer = [(UIView *)self->_highlightView layer];
  [layer setCornerRadius:height * 0.5];
}

- (void)_updateMicaPackage
{
  v59 = *MEMORY[0x1E69E9840];
  if (self)
  {
    buttonMicaPackage = [self buttonMicaPackage];
    if (buttonMicaPackage)
    {
      avkit_isBeingScrolled = [self avkit_isBeingScrolled];
    }

    else
    {
      avkit_isBeingScrolled = 0;
    }

    rootLayer = [buttonMicaPackage rootLayer];
    superlayer = [rootLayer superlayer];
    layer = [*(self + 1296) layer];

    playbackControlButtonIconState = [self playbackControlButtonIconState];
    [buttonMicaPackage setState:playbackControlButtonIconState color:0];

    rootLayer2 = [buttonMicaPackage rootLayer];
    LODWORD(v9) = 1.0;
    [rootLayer2 setOpacity:v9];

    v10 = _AVLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.m11) = 136315650;
      *(&buf.m11 + 4) = "[AVMobileChromelessPlaybackControlButton _updateMicaPackage]";
      WORD2(buf.m12) = 1024;
      *(&buf.m12 + 6) = avkit_isBeingScrolled;
      WORD1(buf.m13) = 1024;
      HIDWORD(buf.m13) = [self avkit_isBeingScrolled];
      _os_log_impl(&dword_18B49C000, v10, OS_LOG_TYPE_DEFAULT, "%s : prefers images: %d, isBeingScrolled: %d", &buf, 0x18u);
    }

    if ((avkit_isBeingScrolled & (superlayer != layer)) != 1)
    {
      [(AVMobileChromelessPlaybackControlButton *)self _updateImageViewHiddenState];
      rootLayer3 = [buttonMicaPackage rootLayer];
      superlayer2 = [rootLayer3 superlayer];
      layer2 = [*(self + 1296) layer];
      v21 = superlayer2 == layer2;

      if (!v21)
      {
        v22 = _AVLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf.m11) = 136315138;
          *(&buf.m11 + 4) = "[AVMobileChromelessPlaybackControlButton _updateMicaPackage]";
          _os_log_impl(&dword_18B49C000, v22, OS_LOG_TYPE_DEFAULT, "%s : setting up micaPackage layer.", &buf, 0xCu);
        }

        [MEMORY[0x1E6979518] begin];
        [MEMORY[0x1E6979518] setDisableActions:1];
        layer3 = [self layer];
        [layer3 setCompositingFilter:0];

        layer4 = [*(self + 1296) layer];
        [layer4 setCompositingFilter:0];

        layer5 = [*(self + 1296) layer];
        rootLayer4 = [buttonMicaPackage rootLayer];
        [layer5 addSublayer:rootLayer4];

        v27 = *(self + 1048);
        if (v27 == 1)
        {
          v28 = [buttonMicaPackage sublayerWithName:@"flip"];
          memset(&buf, 0, sizeof(buf));
          CATransform3DMakeRotation(&buf, 3.14159265, 0.0, 1.0, 0.0);
          time2 = buf;
          [v28 setTransform:&time2];

          v27 = *(self + 1048);
        }

        if ((v27 - 1) <= 1)
        {
          [(AVMobileChromelessPlaybackControlButton *)self _updateGlyphSkipInterval];
        }

        [(AVMobileChromelessPlaybackControlButton *)self _updateTintColor];
        [(AVMobileChromelessPlaybackControlButton *)self _updateEnabledState];
        [self addSubview:*(self + 1296)];
        [MEMORY[0x1E6979518] commit];
      }

      v29 = *(self + 1048);
      if (v29)
      {
        v30 = 3.1;
      }

      else
      {
        v30 = 1.0;
      }

      v31 = *(self + 1272);
      if (v29)
      {
        [v31 secondaryPlaybackControlsFont];
      }

      else
      {
        [v31 playPauseButtonFont];
      }
      v32 = ;
      [v32 pointSize];
      [buttonMicaPackage setTargetSize:{v30 * v33, v30 * v33}];
      [self bounds];
      UIRectGetCenter();
      v35 = v34;
      v37 = v36;
      rootLayer5 = [buttonMicaPackage rootLayer];
      [rootLayer5 position];
      v41 = v37 == v40 && v35 == v39;

      if (!v41)
      {
        [MEMORY[0x1E6979518] begin];
        [MEMORY[0x1E6979518] setDisableActions:1];
        rootLayer6 = [buttonMicaPackage rootLayer];
        [self bounds];
        UIRectGetCenter();
        [rootLayer6 setPosition:?];

        [MEMORY[0x1E6979518] commit];
      }

      goto LABEL_66;
    }

    if (*(self + 1074))
    {
LABEL_66:

      return;
    }

    objc_initWeak(&location, self);
    v11 = MEMORY[0x1E69DCAB8];
    v12 = *(self + 1048);
    if (v12 == 2)
    {
      imageName = [self imageName];
      v44 = [imageName isEqualToString:@"forward.end.alt.fill"];

      if (v44)
      {
        imageName4 = @"AVMobileImageNameNoImage";
        v45 = @"AVMobileImageNameNoImage";
LABEL_65:
        v55[0] = MEMORY[0x1E69E9820];
        v55[1] = 3221225472;
        v55[2] = __61__AVMobileChromelessPlaybackControlButton__updateMicaPackage__block_invoke;
        v55[3] = &unk_1E7209E30;
        objc_copyWeak(&v56, &location);
        [v11 avkit_imageNamed:imageName4 completion:v55];

        objc_destroyWeak(&v56);
        objc_destroyWeak(&location);
        goto LABEL_66;
      }
    }

    else if (!v12)
    {
      if (_imageNameForMicaPackageState_onceToken_14374 != -1)
      {
        dispatch_once(&_imageNameForMicaPackageState_onceToken_14374, &__block_literal_global_14375);
      }

      v13 = _imageNameForMicaPackageState_imageNamesForStates_14376;
      playbackControlButtonIconState2 = [self playbackControlButtonIconState];
      v15 = playbackControlButtonIconState2;
      if (playbackControlButtonIconState2)
      {
        v16 = playbackControlButtonIconState2;
      }

      else
      {
        v16 = @"pause";
      }

      imageName4 = [v13 objectForKeyedSubscript:v16];

      goto LABEL_65;
    }

    imageName2 = [self imageName];
    v47 = [imageName2 hasPrefix:@"gobackward"];
    imageName3 = [self imageName];
    v49 = [imageName3 hasPrefix:@"goforward"];

    if (v47 | v49)
    {
      if (*(self + 1048) == 2)
      {
        v50 = @"gobackward";
      }

      else
      {
        v50 = @"goforward";
      }

      v51 = v50;
      *&buf.m11 = *(self + 1304);
      buf.m13 = *(self + 1320);
      *&time2.m11 = *(self + 1076);
      time2.m13 = *(self + 1092);
      if (CMTimeCompare(&buf, &time2))
      {
        *&buf.m11 = *(self + 1304);
        buf.m13 = *(self + 1320);
        *&time2.m11 = *(self + 1100);
        time2.m13 = *(self + 1116);
        if (CMTimeCompare(&buf, &time2))
        {
          *&buf.m11 = *(self + 1304);
          buf.m13 = *(self + 1320);
          *&time2.m11 = *(self + 1124);
          time2.m13 = *(self + 1140);
          if (CMTimeCompare(&buf, &time2))
          {
            *&buf.m11 = *(self + 1304);
            buf.m13 = *(self + 1320);
            *&time2.m11 = *(self + 1148);
            time2.m13 = *(self + 1164);
            if (CMTimeCompare(&buf, &time2))
            {
              *&buf.m11 = *(self + 1304);
              buf.m13 = *(self + 1320);
              *&time2.m11 = *(self + 1172);
              time2.m13 = *(self + 1188);
              if (CMTimeCompare(&buf, &time2))
              {
                *&buf.m11 = *(self + 1304);
                buf.m13 = *(self + 1320);
                *&time2.m11 = *(self + 1196);
                time2.m13 = *(self + 1212);
                if (CMTimeCompare(&buf, &time2))
                {
                  *&buf.m11 = *(self + 1304);
                  buf.m13 = *(self + 1320);
                  *&time2.m11 = *(self + 1220);
                  time2.m13 = *(self + 1236);
                  if (CMTimeCompare(&buf, &time2))
                  {
                    *&buf.m11 = *(self + 1304);
                    buf.m13 = *(self + 1320);
                    *&time2.m11 = *(self + 1244);
                    time2.m13 = *(self + 1260);
                    if (CMTimeCompare(&buf, &time2))
                    {
                      if (*(self + 1048) == 2)
                      {
                        v52 = @"minus";
                      }

                      else
                      {
                        v52 = @"plus";
                      }

                      v53 = v52;
                    }

                    else
                    {
                      v53 = @"90";
                    }
                  }

                  else
                  {
                    v53 = @"75";
                  }
                }

                else
                {
                  v53 = @"60";
                }
              }

              else
              {
                v53 = @"45";
              }
            }

            else
            {
              v53 = @"30";
            }
          }

          else
          {
            v53 = @"15";
          }
        }

        else
        {
          v53 = @"10";
        }
      }

      else
      {
        v53 = @"5";
      }

      imageName4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v51, v53];
    }

    else
    {
      imageName4 = [self imageName];
    }

    goto LABEL_65;
  }
}

void __61__AVMobileChromelessPlaybackControlButton__updateMicaPackage__block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained[1074] = 1;
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    v6 = [v5 micaPackage];
    v7 = [v6 rootLayer];
    [v7 removeFromSuperlayer];

    [v5 avkit_makeSubtreeDisallowGroupBlending];
    v8 = [v5 imageView];
    v9 = [v8 layer];
    [v9 setCompositingFilter:*MEMORY[0x1E6979CF8]];

    v10 = [v5 imageView];
    v11 = [v5 tintColor];
    [v10 setTintColor:v11];

    v12 = [v5 imageView];
    [v12 setImage:v3];

    v13 = [v5 imageView];
    v14 = objc_loadWeakRetained((a1 + 32));
    [v14 bounds];
    [v13 setFrame:?];

    v15 = [v5 imageView];
    [v15 setContentMode:4];

    v16 = objc_loadWeakRetained((a1 + 32));
    v17 = [v16 imageView];
    [v5 addSubview:v17];

    [MEMORY[0x1E6979518] commit];
    v5[1074] = 0;
    v18 = _AVLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315138;
      v20 = "[AVMobileChromelessPlaybackControlButton _updateMicaPackage]_block_invoke";
      _os_log_impl(&dword_18B49C000, v18, OS_LOG_TYPE_DEFAULT, "%s : ImageView setup; micaPackage rootLayer removed from superlayer.", &v19, 0xCu);
    }
  }
}

- (void)_updateGlyphSkipInterval
{
  if (self)
  {
    buttonMicaPackage = [self buttonMicaPackage];
    v2 = [buttonMicaPackage sublayerWithName:@"glyphs"];
    sublayers = [v2 sublayers];
    v4 = [sublayers count];

    if (v4)
    {
      v5 = 0;
      do
      {
        sublayers2 = [v2 sublayers];
        v7 = [sublayers2 objectAtIndexedSubscript:v5];
        [v7 setHidden:1];

        ++v5;
        sublayers3 = [v2 sublayers];
        v9 = [sublayers3 count];
      }

      while (v9 > v5);
    }

    sublayers4 = [v2 sublayers];
    v11 = [sublayers4 objectAtIndexedSubscript:-[AVMobileChromelessPlaybackControlButton _glyphForCurrentSkipInterval](self)];
    [v11 setHidden:0];

    v12 = [buttonMicaPackage sublayerWithName:@"glyphs-mask"];
    sublayers5 = [v12 sublayers];
    v14 = [sublayers5 count];

    if (v14)
    {
      v15 = 0;
      do
      {
        sublayers6 = [v12 sublayers];
        v17 = [sublayers6 objectAtIndexedSubscript:v15];
        [v17 setHidden:1];

        ++v15;
        sublayers7 = [v12 sublayers];
        v19 = [sublayers7 count];
      }

      while (v19 > v15);
    }

    sublayers8 = [v12 sublayers];
    v21 = [sublayers8 objectAtIndexedSubscript:-[AVMobileChromelessPlaybackControlButton _glyphForCurrentSkipInterval](self)];
    [v21 setHidden:0];
  }
}

void __72__AVMobileChromelessPlaybackControlButton__imageNameForMicaPackageState__block_invoke()
{
  v3[2] = *MEMORY[0x1E69E9840];
  v2[0] = @"play";
  v2[1] = @"pause";
  v3[0] = @"play.fill";
  v3[1] = @"pause.fill";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:2];
  v1 = _imageNameForMicaPackageState_imageNamesForStates_14376;
  _imageNameForMicaPackageState_imageNamesForStates_14376 = v0;
}

- (void)didMoveToWindow
{
  v5.receiver = self;
  v5.super_class = AVMobileChromelessPlaybackControlButton;
  [(AVMobileChromelessPlaybackControlButton *)&v5 didMoveToWindow];
  window = [(AVMobileChromelessPlaybackControlButton *)self window];
  if (window)
  {
    prefersMicaPackage = self->_prefersMicaPackage;

    if (prefersMicaPackage)
    {
      [(AVMobileChromelessPlaybackControlButton *)self _setupMicaPackageIfNeeded];
    }
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v19.receiver = self;
  v19.super_class = AVMobileChromelessPlaybackControlButton;
  if ([(AVMobileChromelessPlaybackControlButton *)&v19 isHighlighted]!= highlighted)
  {
    v18.receiver = self;
    v18.super_class = AVMobileChromelessPlaybackControlButton;
    [(AVButton *)&v18 setHighlighted:highlightedCopy];
    if ([(UIViewPropertyAnimator *)self->_highlightAnimator isRunning]&& [(UIViewPropertyAnimator *)self->_highlightAnimator isInterruptible])
    {
      [(UIViewPropertyAnimator *)self->_highlightAnimator stopAnimation:1];
      [(UIViewPropertyAnimator *)self->_highlightAnimator finishAnimationAtPosition:2];
      highlightAnimator = self->_highlightAnimator;
      self->_highlightAnimator = 0;
    }

    [(UIViewPropertyAnimator *)self->_highlightAnimator fractionComplete];
    v7 = v6;
    objc_initWeak(&location, self);
    if (highlightedCopy)
    {
      v8 = objc_alloc(MEMORY[0x1E69DD278]);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __58__AVMobileChromelessPlaybackControlButton_setHighlighted___block_invoke;
      v15[3] = &unk_1E7209EA8;
      v9 = &v16;
      objc_copyWeak(&v16, &location);
      v10 = [v8 initWithDuration:2 curve:v15 animations:(1.0 - v7) * 0.2];
      v11 = self->_highlightAnimator;
      self->_highlightAnimator = v10;

      [(UIViewPropertyAnimator *)self->_highlightAnimator setInterruptible:0];
    }

    else
    {
      v12 = self->_highlightAnimator;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __58__AVMobileChromelessPlaybackControlButton_setHighlighted___block_invoke_2;
      v13[3] = &unk_1E7209EA8;
      v9 = &v14;
      objc_copyWeak(&v14, &location);
      [(UIViewPropertyAnimator *)v12 addAnimations:v13 delayFactor:0.5];
    }

    objc_destroyWeak(v9);
    [(UIViewPropertyAnimator *)self->_highlightAnimator startAnimation];
    objc_destroyWeak(&location);
  }
}

void __58__AVMobileChromelessPlaybackControlButton_setHighlighted___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    memset(&v11, 0, sizeof(v11));
    CGAffineTransformMakeScale(&v11, 1.2, 1.2);
    if (*(WeakRetained + 1073))
    {
      memset(&v10, 0, sizeof(v10));
      v2 = *(MEMORY[0x1E695EFD0] + 16);
      *&v9.a = *MEMORY[0x1E695EFD0];
      *&v9.c = v2;
      *&v9.tx = *(MEMORY[0x1E695EFD0] + 32);
      CGAffineTransformScale(&v10, &v9, 0.8, 0.8);
      v3 = *(WeakRetained + 162);
      v9 = v10;
      [v3 setTransform:&v9];
    }

    else
    {
      memset(&v10, 0, sizeof(v10));
      CGAffineTransformMakeScale(&v10, 0.8, 0.8);
      v4 = [WeakRetained imageView];
      [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

      v5 = [WeakRetained imageView];
      v9 = v10;
      [v5 setTransform:&v9];
    }

    v6 = [WeakRetained isHovered];
    v7 = 0.2;
    if (v6)
    {
      v7 = 0.0;
    }

    [*(WeakRetained + 132) setAlpha:v7];
    v8 = *(WeakRetained + 132);
    v10 = v11;
    [v8 setTransform:&v10];
  }
}

void __58__AVMobileChromelessPlaybackControlButton_setHighlighted___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    memset(&v9, 0, sizeof(v9));
    CGAffineTransformMakeScale(&v9, 1.4, 1.4);
    if (*(WeakRetained + 1073))
    {
      v2 = *(WeakRetained + 162);
      v3 = *(MEMORY[0x1E695EFD0] + 16);
      *&v8.a = *MEMORY[0x1E695EFD0];
      *&v8.c = v3;
      *&v8.tx = *(MEMORY[0x1E695EFD0] + 32);
      [v2 setTransform:&v8];
    }

    else
    {
      v4 = [WeakRetained imageView];
      [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

      v5 = [WeakRetained imageView];
      v6 = *(MEMORY[0x1E695EFD0] + 16);
      *&v8.a = *MEMORY[0x1E695EFD0];
      *&v8.c = v6;
      *&v8.tx = *(MEMORY[0x1E695EFD0] + 32);
      [v5 setTransform:&v8];
    }

    [*(WeakRetained + 132) setAlpha:0.0];
    v7 = *(WeakRetained + 132);
    v8 = v9;
    [v7 setTransform:&v8];
  }
}

- (void)setSkipInterval:(id *)interval
{
  p_skipInterval = &self->_skipInterval;
  time1 = self->_skipInterval;
  v7 = *interval;
  if (CMTimeCompare(&time1, &v7))
  {
    v6 = *&interval->var0;
    p_skipInterval->epoch = interval->var3;
    *&p_skipInterval->value = v6;
    [(AVMobileChromelessPlaybackControlButton *)self _updateGlyphSkipInterval];
    [(AVMobileChromelessPlaybackControlButton *)self _updateTintColor];
    [(AVMobileChromelessPlaybackControlButton *)self _updateEnabledState];
    [(AVMobileChromelessPlaybackControlButton *)self _updateMicaPackage];
  }
}

- (void)setPlaybackControlButtonIconState:(id)state
{
  stateCopy = state;
  if (![(NSString *)self->_playbackControlButtonIconState isEqualToString:?])
  {
    objc_storeStrong(&self->_playbackControlButtonIconState, state);
    [(AVMobileChromelessPlaybackControlButton *)self _updateMicaPackage];
  }
}

- (id)pointerTargetView
{
  if (self->_prefersMicaPackage)
  {
    imageView = self->_buttonMicaPackageContainerView;
  }

  else
  {
    imageView = [(AVMobileChromelessPlaybackControlButton *)self imageView];
  }

  return imageView;
}

- (void)setButtonMicaPackage:(id)package
{
  packageCopy = package;
  if (self->_buttonMicaPackage != packageCopy)
  {
    v6 = packageCopy;
    objc_storeStrong(&self->_buttonMicaPackage, package);
    packageCopy = v6;
    if (v6)
    {
      [(AVMobileChromelessPlaybackControlButton *)self _updateMicaPackage];
      packageCopy = v6;
    }
  }
}

- (void)setStyleSheet:(id)sheet
{
  sheetCopy = sheet;
  if (self->_styleSheet != sheetCopy)
  {
    v8 = sheetCopy;
    objc_storeStrong(&self->_styleSheet, sheet);
    styleSheet = self->_styleSheet;
    if (self->_playbackControlButtonType)
    {
      [(AVMobileControlsStyleFontsSheet *)styleSheet secondaryPlaybackControlsFont];
    }

    else
    {
      [(AVMobileControlsStyleFontsSheet *)styleSheet playPauseButtonFont];
    }
    v7 = ;
    [(AVButton *)self setInlineFont:v7];
    [(AVMobileChromelessPlaybackControlButton *)self setNeedsLayout];

    [(AVMobileChromelessPlaybackControlButton *)self setNeedsLayout];
    sheetCopy = v8;
  }
}

+ (AVMobileChromelessPlaybackControlButton)buttonWithAccessibilityIdentifier:(id)identifier withStyleSheet:(id)sheet withPlaybackControlButtonType:(unint64_t)type
{
  sheetCopy = sheet;
  v38.receiver = self;
  v38.super_class = &OBJC_METACLASS___AVMobileChromelessPlaybackControlButton;
  v10 = objc_msgSendSuper2(&v38, sel_customHighlightedAnimationButtonWithAccessibilityIdentifier_, identifier);
  *(v10 + 1072) = 0;
  objc_storeStrong((v10 + 1272), sheet);
  *(v10 + 1048) = type;
  CMTimeMakeWithSeconds(&v37, 5.0, 600);
  v11 = *&v37.a;
  *(v10 + 1092) = v37.c;
  *(v10 + 1076) = v11;
  CMTimeMakeWithSeconds(&v37, 10.0, 600);
  v12 = *&v37.a;
  *(v10 + 1116) = v37.c;
  *(v10 + 1100) = v12;
  CMTimeMakeWithSeconds(&v37, 15.0, 600);
  v13 = *&v37.a;
  *(v10 + 1140) = v37.c;
  *(v10 + 1124) = v13;
  CMTimeMakeWithSeconds(&v37, 30.0, 600);
  v14 = *&v37.a;
  *(v10 + 1164) = v37.c;
  *(v10 + 1148) = v14;
  CMTimeMakeWithSeconds(&v37, 45.0, 600);
  v15 = *&v37.a;
  *(v10 + 1188) = v37.c;
  *(v10 + 1172) = v15;
  CMTimeMakeWithSeconds(&v37, 60.0, 600);
  v16 = *&v37.a;
  *(v10 + 1212) = v37.c;
  *(v10 + 1196) = v16;
  CMTimeMakeWithSeconds(&v37, 75.0, 600);
  v17 = *&v37.a;
  *(v10 + 1236) = v37.c;
  *(v10 + 1220) = v17;
  CMTimeMakeWithSeconds(&v37, 90.0, 600);
  v18 = *&v37.a;
  *(v10 + 1260) = v37.c;
  *(v10 + 1244) = v18;
  [v10 setImageName:@"AVMobileImageNameNoImage"];
  v19 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v20 = *(v10 + 1296);
  *(v10 + 1296) = v19;

  [*(v10 + 1296) setUserInteractionEnabled:0];
  layer = [*(v10 + 1296) layer];
  [layer setAllowsGroupBlending:1];

  [v10 addSubview:*(v10 + 1296)];
  if (type)
  {
    secondaryPlaybackControlsFont = [sheetCopy secondaryPlaybackControlsFont];
    [v10 setInlineFont:secondaryPlaybackControlsFont];

    v23 = +[AVKitGlobalSettings shared];
    *(v10 + 1073) = [v23 animatedSkipButtonsEnabled];
  }

  else
  {
    playPauseButtonFont = [sheetCopy playPauseButtonFont];
    [v10 setInlineFont:playPauseButtonFont];

    *(v10 + 1073) = 1;
    [v10 setPlaybackControlButtonIconState:@"pause"];
  }

  v25 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v26 = *(v10 + 1056);
  *(v10 + 1056) = v25;

  [*(v10 + 1056) setUserInteractionEnabled:0];
  v27 = *(v10 + 1056);
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [v27 setBackgroundColor:whiteColor];

  [*(v10 + 1056) setAlpha:0.0];
  [*(v10 + 1056) setFrame:{0.0, 0.0, 46.0, 46.0}];
  layer2 = [*(v10 + 1056) layer];
  [*(v10 + 1056) frame];
  [layer2 setCornerRadius:v30 * 0.5];

  v31 = +[AVKitGlobalSettings shared];
  LOBYTE(whiteColor) = [v31 prefersTintColorForPlaybackControlsView];

  if ((whiteColor & 1) == 0)
  {
    whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
    [v10 setTintColor:whiteColor2];
  }

  [v10 setAutoresizingMask:0];
  imageView = [v10 imageView];
  [imageView setContentMode:1];

  memset(&v37, 0, sizeof(v37));
  CGAffineTransformMakeScale(&v37, 1.4, 1.4);
  v34 = *(v10 + 1056);
  v36 = v37;
  [v34 setTransform:&v36];
  [v10 insertSubview:*(v10 + 1056) atIndex:0];

  return v10;
}

@end