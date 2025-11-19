@interface AVMobileChromelessPlaybackControlButton
+ (AVMobileChromelessPlaybackControlButton)buttonWithAccessibilityIdentifier:(id)a3 withStyleSheet:(id)a4 withPlaybackControlButtonType:(unint64_t)a5;
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
- (void)setButtonMicaPackage:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setImageName:(id)a3;
- (void)setPlaybackControlButtonIconState:(id)a3;
- (void)setSkipInterval:(id *)a3;
- (void)setStyleSheet:(id)a3;
- (void)tintColorDidChange;
@end

@implementation AVMobileChromelessPlaybackControlButton

- (void)setImageName:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = AVMobileChromelessPlaybackControlButton;
  [(AVButton *)&v8 setImageName:v4];
  if (self->_playbackControlButtonType - 1 <= 1)
  {
    v5 = +[AVKitGlobalSettings shared];
    if ([v5 animatedSkipButtonsEnabled])
    {
      if ([v4 isEqualToString:@"gobackward.10"])
      {

LABEL_8:
        self->_prefersMicaPackage = 1;
        [(AVMobileChromelessPlaybackControlButton *)self _setupMicaPackageIfNeeded];
        v6 = !self->_prefersMicaPackage;
        goto LABEL_9;
      }

      v7 = [v4 isEqualToString:@"goforward.10"];

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
  if (a1 && !*(a1 + 1288) && (*(a1 + 1072) & 1) == 0)
  {
    if (*(a1 + 1048))
    {
      v2 = @"IntervalSkipGlyph";
    }

    else
    {
      v2 = @"PlayPauseGlyph";
    }

    v3 = v2;
    *(a1 + 1072) = 1;
    objc_initWeak(&location, a1);
    v4 = [a1 effectiveUserInterfaceLayoutDirection];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __68__AVMobileChromelessPlaybackControlButton__setupMicaPackageIfNeeded__block_invoke;
    v5[3] = &unk_1E7209E08;
    objc_copyWeak(&v6, &location);
    [AVMicaPackage asynchronouslyPrepareMicaPackageWithName:v3 layoutDirection:v4 completion:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

- (void)_updateImageViewHiddenState
{
  if (a1)
  {
    if (*(a1 + 1048) == 2)
    {
      v2 = [a1 imageName];
      if ([v2 isEqualToString:@"forward.end.alt.fill"])
      {
        v3 = 1;
      }

      else
      {
        v3 = *(a1 + 1073);
      }
    }

    else
    {
      v3 = *(a1 + 1073);
    }

    v4 = [a1 imageView];
    [v4 setHidden:v3];
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

- (void)setEnabled:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = AVMobileChromelessPlaybackControlButton;
  [(AVButton *)&v4 setEnabled:a3];
  [(AVMobileChromelessPlaybackControlButton *)self _updateEnabledState];
}

- (void)_updateEnabledState
{
  if (a1)
  {
    v2 = [a1 isEnabled];
    v7 = [a1 buttonMicaPackage];
    v3 = [v7 sublayerWithName:@"origin"];
    v8 = 0.0;
    v4 = [a1 tintColor];
    [v4 getWhite:0 alpha:&v8];

    v5 = 0.5;
    if (v2)
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
  if (a1)
  {
    v2 = +[AVKitGlobalSettings shared];
    v3 = [v2 prefersTintColorForPlaybackControlsView];

    if (v3)
    {
      v4 = a1[131];
      if ((v4 - 1) >= 2)
      {
        if (v4)
        {
          return;
        }

        v11 = [a1 tintColor];
        CopyWithAlpha = CGColorCreateCopyWithAlpha([v11 CGColor], 1.0);

        v13 = [a1 buttonMicaPackage];
        v7 = [v13 sublayerWithName:@"path-play-tint-shape"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v7 setFillColor:CopyWithAlpha];
        }

        v8 = [v13 sublayerWithName:@"path-pause-tint-shape"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v8 setFillColor:CopyWithAlpha];
        }
      }

      else
      {
        v5 = [a1 tintColor];
        v6 = CGColorCreateCopyWithAlpha([v5 CGColor], 1.0);

        v13 = [a1 buttonMicaPackage];
        v7 = [v13 sublayerWithName:@"trianglefill"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v7 setFillColor:v6];
        }

        v8 = [v13 sublayerWithName:@"ringstroke"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v8 setStrokeColor:v6];
        }

        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%dfill", -[AVMobileChromelessPlaybackControlButton _glyphForCurrentSkipInterval](a1)];
        v10 = [v13 sublayerWithName:v9];
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
  time1 = *(a1 + 1304);
  v7 = *(a1 + 1076);
  if (CMTimeCompare(&time1, &v7))
  {
    time1 = *(a1 + 1304);
    v7 = *(a1 + 1100);
    if (CMTimeCompare(&time1, &v7))
    {
      time1 = *(a1 + 1304);
      v7 = *(a1 + 1124);
      if (CMTimeCompare(&time1, &v7))
      {
        time1 = *(a1 + 1304);
        v7 = *(a1 + 1148);
        if (CMTimeCompare(&time1, &v7))
        {
          time1 = *(a1 + 1304);
          v7 = *(a1 + 1172);
          if (CMTimeCompare(&time1, &v7))
          {
            time1 = *(a1 + 1304);
            v7 = *(a1 + 1196);
            if (CMTimeCompare(&time1, &v7))
            {
              time1 = *(a1 + 1304);
              v7 = *(a1 + 1220);
              if (CMTimeCompare(&time1, &v7))
              {
                time1 = *(a1 + 1304);
                v7 = *(a1 + 1244);
                if (CMTimeCompare(&time1, &v7))
                {
                  if (*(a1 + 1048) == 1)
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

  v4 = [MEMORY[0x1E695DF58] currentLocale];
  v5 = [v4 numberingSystem];

  if ([v5 isEqualToString:@"arab"])
  {
    v2 = v3 | 8;
  }

  else if ([v5 isEqualToString:@"deva"])
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

    v3 = [(AVMobileChromelessPlaybackControlButton *)self buttonMicaPackageContainerView];
    v4 = v3;
    if (v3)
    {
      [v3 transform];
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
      v14 = [(AVMobileChromelessPlaybackControlButton *)self buttonMicaPackageContainerView];
      [v14 setFrame:{v7, v9, v11, v13}];

      [MEMORY[0x1E6979518] begin];
      [MEMORY[0x1E6979518] setDisableActions:1];
      v15 = [(AVButton *)self micaPackage];
      v16 = [v15 rootLayer];
      UIRectGetCenter();
      [v16 setPosition:?];

      [MEMORY[0x1E6979518] commit];
    }

    else
    {
      v17 = [(AVButton *)self micaPackage];
      v18 = [v17 rootLayer];
      [(AVMobileChromelessPlaybackControlButton *)self bounds];
      UIRectGetCenter();
      [v18 setPosition:?];
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
  v25 = [(UIView *)self->_highlightView layer];
  [v25 setCornerRadius:height * 0.5];
}

- (void)_updateMicaPackage
{
  v59 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = [a1 buttonMicaPackage];
    if (v2)
    {
      v3 = [a1 avkit_isBeingScrolled];
    }

    else
    {
      v3 = 0;
    }

    v4 = [v2 rootLayer];
    v5 = [v4 superlayer];
    v6 = [*(a1 + 1296) layer];

    v7 = [a1 playbackControlButtonIconState];
    [v2 setState:v7 color:0];

    v8 = [v2 rootLayer];
    LODWORD(v9) = 1.0;
    [v8 setOpacity:v9];

    v10 = _AVLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.m11) = 136315650;
      *(&buf.m11 + 4) = "[AVMobileChromelessPlaybackControlButton _updateMicaPackage]";
      WORD2(buf.m12) = 1024;
      *(&buf.m12 + 6) = v3;
      WORD1(buf.m13) = 1024;
      HIDWORD(buf.m13) = [a1 avkit_isBeingScrolled];
      _os_log_impl(&dword_18B49C000, v10, OS_LOG_TYPE_DEFAULT, "%s : prefers images: %d, isBeingScrolled: %d", &buf, 0x18u);
    }

    if ((v3 & (v5 != v6)) != 1)
    {
      [(AVMobileChromelessPlaybackControlButton *)a1 _updateImageViewHiddenState];
      v18 = [v2 rootLayer];
      v19 = [v18 superlayer];
      v20 = [*(a1 + 1296) layer];
      v21 = v19 == v20;

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
        v23 = [a1 layer];
        [v23 setCompositingFilter:0];

        v24 = [*(a1 + 1296) layer];
        [v24 setCompositingFilter:0];

        v25 = [*(a1 + 1296) layer];
        v26 = [v2 rootLayer];
        [v25 addSublayer:v26];

        v27 = *(a1 + 1048);
        if (v27 == 1)
        {
          v28 = [v2 sublayerWithName:@"flip"];
          memset(&buf, 0, sizeof(buf));
          CATransform3DMakeRotation(&buf, 3.14159265, 0.0, 1.0, 0.0);
          time2 = buf;
          [v28 setTransform:&time2];

          v27 = *(a1 + 1048);
        }

        if ((v27 - 1) <= 1)
        {
          [(AVMobileChromelessPlaybackControlButton *)a1 _updateGlyphSkipInterval];
        }

        [(AVMobileChromelessPlaybackControlButton *)a1 _updateTintColor];
        [(AVMobileChromelessPlaybackControlButton *)a1 _updateEnabledState];
        [a1 addSubview:*(a1 + 1296)];
        [MEMORY[0x1E6979518] commit];
      }

      v29 = *(a1 + 1048);
      if (v29)
      {
        v30 = 3.1;
      }

      else
      {
        v30 = 1.0;
      }

      v31 = *(a1 + 1272);
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
      [v2 setTargetSize:{v30 * v33, v30 * v33}];
      [a1 bounds];
      UIRectGetCenter();
      v35 = v34;
      v37 = v36;
      v38 = [v2 rootLayer];
      [v38 position];
      v41 = v37 == v40 && v35 == v39;

      if (!v41)
      {
        [MEMORY[0x1E6979518] begin];
        [MEMORY[0x1E6979518] setDisableActions:1];
        v42 = [v2 rootLayer];
        [a1 bounds];
        UIRectGetCenter();
        [v42 setPosition:?];

        [MEMORY[0x1E6979518] commit];
      }

      goto LABEL_66;
    }

    if (*(a1 + 1074))
    {
LABEL_66:

      return;
    }

    objc_initWeak(&location, a1);
    v11 = MEMORY[0x1E69DCAB8];
    v12 = *(a1 + 1048);
    if (v12 == 2)
    {
      v43 = [a1 imageName];
      v44 = [v43 isEqualToString:@"forward.end.alt.fill"];

      if (v44)
      {
        v17 = @"AVMobileImageNameNoImage";
        v45 = @"AVMobileImageNameNoImage";
LABEL_65:
        v55[0] = MEMORY[0x1E69E9820];
        v55[1] = 3221225472;
        v55[2] = __61__AVMobileChromelessPlaybackControlButton__updateMicaPackage__block_invoke;
        v55[3] = &unk_1E7209E30;
        objc_copyWeak(&v56, &location);
        [v11 avkit_imageNamed:v17 completion:v55];

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
      v14 = [a1 playbackControlButtonIconState];
      v15 = v14;
      if (v14)
      {
        v16 = v14;
      }

      else
      {
        v16 = @"pause";
      }

      v17 = [v13 objectForKeyedSubscript:v16];

      goto LABEL_65;
    }

    v46 = [a1 imageName];
    v47 = [v46 hasPrefix:@"gobackward"];
    v48 = [a1 imageName];
    v49 = [v48 hasPrefix:@"goforward"];

    if (v47 | v49)
    {
      if (*(a1 + 1048) == 2)
      {
        v50 = @"gobackward";
      }

      else
      {
        v50 = @"goforward";
      }

      v51 = v50;
      *&buf.m11 = *(a1 + 1304);
      buf.m13 = *(a1 + 1320);
      *&time2.m11 = *(a1 + 1076);
      time2.m13 = *(a1 + 1092);
      if (CMTimeCompare(&buf, &time2))
      {
        *&buf.m11 = *(a1 + 1304);
        buf.m13 = *(a1 + 1320);
        *&time2.m11 = *(a1 + 1100);
        time2.m13 = *(a1 + 1116);
        if (CMTimeCompare(&buf, &time2))
        {
          *&buf.m11 = *(a1 + 1304);
          buf.m13 = *(a1 + 1320);
          *&time2.m11 = *(a1 + 1124);
          time2.m13 = *(a1 + 1140);
          if (CMTimeCompare(&buf, &time2))
          {
            *&buf.m11 = *(a1 + 1304);
            buf.m13 = *(a1 + 1320);
            *&time2.m11 = *(a1 + 1148);
            time2.m13 = *(a1 + 1164);
            if (CMTimeCompare(&buf, &time2))
            {
              *&buf.m11 = *(a1 + 1304);
              buf.m13 = *(a1 + 1320);
              *&time2.m11 = *(a1 + 1172);
              time2.m13 = *(a1 + 1188);
              if (CMTimeCompare(&buf, &time2))
              {
                *&buf.m11 = *(a1 + 1304);
                buf.m13 = *(a1 + 1320);
                *&time2.m11 = *(a1 + 1196);
                time2.m13 = *(a1 + 1212);
                if (CMTimeCompare(&buf, &time2))
                {
                  *&buf.m11 = *(a1 + 1304);
                  buf.m13 = *(a1 + 1320);
                  *&time2.m11 = *(a1 + 1220);
                  time2.m13 = *(a1 + 1236);
                  if (CMTimeCompare(&buf, &time2))
                  {
                    *&buf.m11 = *(a1 + 1304);
                    buf.m13 = *(a1 + 1320);
                    *&time2.m11 = *(a1 + 1244);
                    time2.m13 = *(a1 + 1260);
                    if (CMTimeCompare(&buf, &time2))
                    {
                      if (*(a1 + 1048) == 2)
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

      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v51, v53];
    }

    else
    {
      v17 = [a1 imageName];
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
  if (a1)
  {
    v22 = [a1 buttonMicaPackage];
    v2 = [v22 sublayerWithName:@"glyphs"];
    v3 = [v2 sublayers];
    v4 = [v3 count];

    if (v4)
    {
      v5 = 0;
      do
      {
        v6 = [v2 sublayers];
        v7 = [v6 objectAtIndexedSubscript:v5];
        [v7 setHidden:1];

        ++v5;
        v8 = [v2 sublayers];
        v9 = [v8 count];
      }

      while (v9 > v5);
    }

    v10 = [v2 sublayers];
    v11 = [v10 objectAtIndexedSubscript:-[AVMobileChromelessPlaybackControlButton _glyphForCurrentSkipInterval](a1)];
    [v11 setHidden:0];

    v12 = [v22 sublayerWithName:@"glyphs-mask"];
    v13 = [v12 sublayers];
    v14 = [v13 count];

    if (v14)
    {
      v15 = 0;
      do
      {
        v16 = [v12 sublayers];
        v17 = [v16 objectAtIndexedSubscript:v15];
        [v17 setHidden:1];

        ++v15;
        v18 = [v12 sublayers];
        v19 = [v18 count];
      }

      while (v19 > v15);
    }

    v20 = [v12 sublayers];
    v21 = [v20 objectAtIndexedSubscript:-[AVMobileChromelessPlaybackControlButton _glyphForCurrentSkipInterval](a1)];
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
  v3 = [(AVMobileChromelessPlaybackControlButton *)self window];
  if (v3)
  {
    prefersMicaPackage = self->_prefersMicaPackage;

    if (prefersMicaPackage)
    {
      [(AVMobileChromelessPlaybackControlButton *)self _setupMicaPackageIfNeeded];
    }
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v19.receiver = self;
  v19.super_class = AVMobileChromelessPlaybackControlButton;
  if ([(AVMobileChromelessPlaybackControlButton *)&v19 isHighlighted]!= a3)
  {
    v18.receiver = self;
    v18.super_class = AVMobileChromelessPlaybackControlButton;
    [(AVButton *)&v18 setHighlighted:v3];
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
    if (v3)
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

- (void)setSkipInterval:(id *)a3
{
  p_skipInterval = &self->_skipInterval;
  time1 = self->_skipInterval;
  v7 = *a3;
  if (CMTimeCompare(&time1, &v7))
  {
    v6 = *&a3->var0;
    p_skipInterval->epoch = a3->var3;
    *&p_skipInterval->value = v6;
    [(AVMobileChromelessPlaybackControlButton *)self _updateGlyphSkipInterval];
    [(AVMobileChromelessPlaybackControlButton *)self _updateTintColor];
    [(AVMobileChromelessPlaybackControlButton *)self _updateEnabledState];
    [(AVMobileChromelessPlaybackControlButton *)self _updateMicaPackage];
  }
}

- (void)setPlaybackControlButtonIconState:(id)a3
{
  v5 = a3;
  if (![(NSString *)self->_playbackControlButtonIconState isEqualToString:?])
  {
    objc_storeStrong(&self->_playbackControlButtonIconState, a3);
    [(AVMobileChromelessPlaybackControlButton *)self _updateMicaPackage];
  }
}

- (id)pointerTargetView
{
  if (self->_prefersMicaPackage)
  {
    v2 = self->_buttonMicaPackageContainerView;
  }

  else
  {
    v2 = [(AVMobileChromelessPlaybackControlButton *)self imageView];
  }

  return v2;
}

- (void)setButtonMicaPackage:(id)a3
{
  v5 = a3;
  if (self->_buttonMicaPackage != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_buttonMicaPackage, a3);
    v5 = v6;
    if (v6)
    {
      [(AVMobileChromelessPlaybackControlButton *)self _updateMicaPackage];
      v5 = v6;
    }
  }
}

- (void)setStyleSheet:(id)a3
{
  v5 = a3;
  if (self->_styleSheet != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_styleSheet, a3);
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
    v5 = v8;
  }
}

+ (AVMobileChromelessPlaybackControlButton)buttonWithAccessibilityIdentifier:(id)a3 withStyleSheet:(id)a4 withPlaybackControlButtonType:(unint64_t)a5
{
  v9 = a4;
  v38.receiver = a1;
  v38.super_class = &OBJC_METACLASS___AVMobileChromelessPlaybackControlButton;
  v10 = objc_msgSendSuper2(&v38, sel_customHighlightedAnimationButtonWithAccessibilityIdentifier_, a3);
  *(v10 + 1072) = 0;
  objc_storeStrong((v10 + 1272), a4);
  *(v10 + 1048) = a5;
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
  v21 = [*(v10 + 1296) layer];
  [v21 setAllowsGroupBlending:1];

  [v10 addSubview:*(v10 + 1296)];
  if (a5)
  {
    v22 = [v9 secondaryPlaybackControlsFont];
    [v10 setInlineFont:v22];

    v23 = +[AVKitGlobalSettings shared];
    *(v10 + 1073) = [v23 animatedSkipButtonsEnabled];
  }

  else
  {
    v24 = [v9 playPauseButtonFont];
    [v10 setInlineFont:v24];

    *(v10 + 1073) = 1;
    [v10 setPlaybackControlButtonIconState:@"pause"];
  }

  v25 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v26 = *(v10 + 1056);
  *(v10 + 1056) = v25;

  [*(v10 + 1056) setUserInteractionEnabled:0];
  v27 = *(v10 + 1056);
  v28 = [MEMORY[0x1E69DC888] whiteColor];
  [v27 setBackgroundColor:v28];

  [*(v10 + 1056) setAlpha:0.0];
  [*(v10 + 1056) setFrame:{0.0, 0.0, 46.0, 46.0}];
  v29 = [*(v10 + 1056) layer];
  [*(v10 + 1056) frame];
  [v29 setCornerRadius:v30 * 0.5];

  v31 = +[AVKitGlobalSettings shared];
  LOBYTE(v28) = [v31 prefersTintColorForPlaybackControlsView];

  if ((v28 & 1) == 0)
  {
    v32 = [MEMORY[0x1E69DC888] whiteColor];
    [v10 setTintColor:v32];
  }

  [v10 setAutoresizingMask:0];
  v33 = [v10 imageView];
  [v33 setContentMode:1];

  memset(&v37, 0, sizeof(v37));
  CGAffineTransformMakeScale(&v37, 1.4, 1.4);
  v34 = *(v10 + 1056);
  v36 = v37;
  [v34 setTransform:&v36];
  [v10 insertSubview:*(v10 + 1056) atIndex:0];

  return v10;
}

@end