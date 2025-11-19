@interface AVMobileGlassPlaybackControlButton
+ (AVMobileGlassPlaybackControlButton)buttonWithAccessibilityIdentifier:(id)a3 withStyleSheet:(id)a4 withPlaybackControlButtonType:(unint64_t)a5;
- (CGSize)intrinsicContentSize;
- (id)pointerTargetView;
- (uint64_t)_glyphForCurrentSkipInterval;
- (void)_setupMicaPackageIfNeeded;
- (void)_updateColors;
- (void)_updateGlyphSkipInterval;
- (void)_updateImageViewHiddenState;
- (void)_updateMicaPackage;
- (void)_updateTintColor;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setButtonMicaPackage:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setImageName:(id)a3;
- (void)setPlaybackControlButtonIconState:(id)a3;
- (void)setSkipInterval:(id *)a3;
- (void)setStyleSheet:(id)a3;
- (void)tintColorDidChange;
@end

@implementation AVMobileGlassPlaybackControlButton

- (void)setImageName:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = AVMobileGlassPlaybackControlButton;
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
        [(AVMobileGlassPlaybackControlButton *)self _setupMicaPackageIfNeeded];
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
    [(AVMicaPackage *)self->_buttonMicaPackage setHidden:v6];
    [(AVMobileGlassPlaybackControlButton *)self _updateImageViewHiddenState];
  }

  [(AVMobileGlassPlaybackControlButton *)self setNeedsLayout];
}

- (void)_setupMicaPackageIfNeeded
{
  if (a1 && !*(a1 + 1296) && (*(a1 + 1080) & 1) == 0)
  {
    if (*(a1 + 1072))
    {
      v2 = @"IntervalSkipGlyph";
    }

    else
    {
      v2 = @"PlayPauseGlyph";
    }

    v3 = v2;
    *(a1 + 1080) = 1;
    objc_initWeak(&location, a1);
    v4 = [a1 effectiveUserInterfaceLayoutDirection];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __63__AVMobileGlassPlaybackControlButton__setupMicaPackageIfNeeded__block_invoke;
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
    if (*(a1 + 1072) == 2)
    {
      v2 = [a1 imageName];
      if ([v2 isEqualToString:@"forward.end.alt.fill"])
      {
        v3 = 1;
      }

      else
      {
        v3 = *(a1 + 1081);
      }
    }

    else
    {
      v3 = *(a1 + 1081);
    }

    v4 = [a1 imageView];
    [v4 setHidden:v3];
  }
}

void __63__AVMobileGlassPlaybackControlButton__setupMicaPackageIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setButtonMicaPackage:v5];
    v4[1080] = 0;
  }
}

- (void)setEnabled:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = AVMobileGlassPlaybackControlButton;
  [(AVButton *)&v4 setEnabled:a3];
  [(AVMobileChromelessPlaybackControlButton *)self _updateEnabledState];
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = AVMobileGlassPlaybackControlButton;
  [(AVMobileGlassPlaybackControlButton *)&v3 tintColorDidChange];
  [(AVMobileGlassPlaybackControlButton *)self _updateTintColor];
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
      v4 = a1[134];
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

        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ldfill", -[AVMobileGlassPlaybackControlButton _glyphForCurrentSkipInterval](a1)];
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
  time1 = *(a1 + 1312);
  v7 = *(a1 + 1084);
  if (CMTimeCompare(&time1, &v7))
  {
    time1 = *(a1 + 1312);
    v7 = *(a1 + 1108);
    if (CMTimeCompare(&time1, &v7))
    {
      time1 = *(a1 + 1312);
      v7 = *(a1 + 1132);
      if (CMTimeCompare(&time1, &v7))
      {
        time1 = *(a1 + 1312);
        v7 = *(a1 + 1156);
        if (CMTimeCompare(&time1, &v7))
        {
          time1 = *(a1 + 1312);
          v7 = *(a1 + 1180);
          if (CMTimeCompare(&time1, &v7))
          {
            time1 = *(a1 + 1312);
            v7 = *(a1 + 1204);
            if (CMTimeCompare(&time1, &v7))
            {
              time1 = *(a1 + 1312);
              v7 = *(a1 + 1228);
              if (CMTimeCompare(&time1, &v7))
              {
                time1 = *(a1 + 1312);
                v7 = *(a1 + 1252);
                if (CMTimeCompare(&time1, &v7))
                {
                  if (*(a1 + 1072) == 1)
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
  if (self)
  {
    playbackControlButtonType = self->_playbackControlButtonType;
    if (playbackControlButtonType - 1 >= 2)
    {
      if (playbackControlButtonType)
      {
        v5 = *MEMORY[0x1E695F060];
        v6 = *(MEMORY[0x1E695F060] + 8);
      }

      else
      {
        v7 = BYTE4(self->_skipInterval90.epoch);
        v8 = *&self->_fullscreen;
        if (v7 == 1)
        {
          [v8 playbackControlButtonLargeSize];
        }

        else
        {
          [v8 playbackControlButtonLargeInlineSize];
        }
      }
    }

    else
    {
      v3 = BYTE4(self->_skipInterval90.epoch);
      v4 = *&self->_fullscreen;
      if (v3 == 1)
      {
        [v4 playbackControlButtonSmallSize];
      }

      else
      {
        [v4 playbackControlButtonSmallInlineSize];
      }
    }
  }

  else
  {
    v6 = 0.0;
    v5 = 0.0;
  }

  result.height = v6;
  result.width = v5;
  return result;
}

- (void)layoutSubviews
{
  v19.receiver = self;
  v19.super_class = AVMobileGlassPlaybackControlButton;
  [(AVButton *)&v19 layoutSubviews];
  if (self)
  {
    if (self->_playbackControlButtonIconState)
    {
      [(AVMobileGlassPlaybackControlButton *)self _updateMicaPackage];
    }

    v3 = [(AVMobileGlassPlaybackControlButton *)self buttonMicaPackageContainerView];
    v4 = v3;
    if (v3)
    {
      [v3 transform];
    }

    else
    {
      memset(&v20, 0, sizeof(v20));
    }

    IsIdentity = CGAffineTransformIsIdentity(&v20);

    if (IsIdentity)
    {
      [(AVMobileGlassPlaybackControlButton *)self bounds];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v14 = [(AVMobileGlassPlaybackControlButton *)self buttonMicaPackageContainerView];
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
      [(AVMobileGlassPlaybackControlButton *)self bounds];
      UIRectGetCenter();
      [v18 setPosition:?];
    }
  }
}

- (void)_updateMicaPackage
{
  v62 = *MEMORY[0x1E69E9840];
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
    v6 = [*(a1 + 1304) layer];

    v7 = [a1 playbackControlButtonIconState];
    [v2 setState:v7 color:0];

    v8 = [v2 rootLayer];
    LODWORD(v9) = 1.0;
    [v8 setOpacity:v9];

    v10 = _AVLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.m11) = 136315650;
      *(&buf.m11 + 4) = "[AVMobileGlassPlaybackControlButton _updateMicaPackage]";
      WORD2(buf.m12) = 1024;
      *(&buf.m12 + 6) = v3;
      WORD1(buf.m13) = 1024;
      HIDWORD(buf.m13) = [a1 avkit_isBeingScrolled];
      _os_log_impl(&dword_18B49C000, v10, OS_LOG_TYPE_DEFAULT, "%s : prefers images: %d, isBeingScrolled: %d", &buf, 0x18u);
    }

    if ((v3 & (v5 != v6)) != 1)
    {
      [(AVMobileGlassPlaybackControlButton *)a1 _updateImageViewHiddenState];
      v18 = [v2 rootLayer];
      v19 = [v18 superlayer];
      v20 = [*(a1 + 1304) layer];
      v21 = v19 == v20;

      if (!v21)
      {
        v22 = _AVLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf.m11) = 136315138;
          *(&buf.m11 + 4) = "[AVMobileGlassPlaybackControlButton _updateMicaPackage]";
          _os_log_impl(&dword_18B49C000, v22, OS_LOG_TYPE_DEFAULT, "%s : setting up micaPackage layer.", &buf, 0xCu);
        }

        [MEMORY[0x1E6979518] begin];
        [MEMORY[0x1E6979518] setDisableActions:1];
        v23 = [a1 layer];
        [v23 setCompositingFilter:0];

        v24 = [*(a1 + 1304) layer];
        [v24 setCompositingFilter:0];

        v25 = [*(a1 + 1304) layer];
        v26 = [v2 rootLayer];
        [v25 addSublayer:v26];

        v27 = *(a1 + 1072);
        if (v27 == 1)
        {
          v28 = [v2 sublayerWithName:@"flip"];
          memset(&buf, 0, sizeof(buf));
          CATransform3DMakeRotation(&buf, 3.14159265, 0.0, 1.0, 0.0);
          time2 = buf;
          [v28 setTransform:&time2];

          v27 = *(a1 + 1072);
        }

        if ((v27 - 1) <= 1)
        {
          [(AVMobileGlassPlaybackControlButton *)a1 _updateGlyphSkipInterval];
        }

        [(AVMobileGlassPlaybackControlButton *)a1 _updateTintColor];
        [(AVMobileChromelessPlaybackControlButton *)a1 _updateEnabledState];
        [a1 addSubview:*(a1 + 1304)];
        [MEMORY[0x1E6979518] commit];
      }

      v29 = *(a1 + 1280);
      if (*(a1 + 1072))
      {
        [v29 secondaryPlaybackControlsFont];
      }

      else
      {
        [v29 playPauseButtonFont];
      }
      v30 = ;
      [v30 pointSize];
      v32 = v31;
      v33 = *(a1 + 1072);
      if ((v33 - 1) >= 2)
      {
        if (v33)
        {
          v35 = _AVLog();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            v56 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 1072)];
            LODWORD(buf.m11) = 138412290;
            *(&buf.m11 + 4) = v56;
            _os_log_error_impl(&dword_18B49C000, v35, OS_LOG_TYPE_ERROR, "Unhandled state for playbackControlButtonType (%@)", &buf, 0xCu);
          }

          v34 = 1.0;
        }

        else
        {
          v34 = 0.7;
          if (*(a1 + 1276))
          {
            v34 = 1.0;
          }
        }
      }

      else
      {
        v34 = 3.1;
        if (!*(a1 + 1276))
        {
          v34 = 2.5;
        }
      }

      [v2 setTargetSize:{v32 * v34, v32 * v34}];
      [a1 bounds];
      UIRectGetCenter();
      v37 = v36;
      v39 = v38;
      v40 = [v2 rootLayer];
      [v40 position];
      v43 = v39 == v42 && v37 == v41;

      if (!v43)
      {
        [MEMORY[0x1E6979518] begin];
        [MEMORY[0x1E6979518] setDisableActions:1];
        v44 = [v2 rootLayer];
        [a1 bounds];
        UIRectGetCenter();
        [v44 setPosition:?];

        [MEMORY[0x1E6979518] commit];
      }

      goto LABEL_74;
    }

    if (*(a1 + 1082))
    {
LABEL_74:

      return;
    }

    objc_initWeak(&location, a1);
    v11 = MEMORY[0x1E69DCAB8];
    v12 = *(a1 + 1072);
    if (v12 == 2)
    {
      v45 = [a1 imageName];
      v46 = [v45 isEqualToString:@"forward.end.alt.fill"];

      if (v46)
      {
        v17 = @"AVMobileImageNameNoImage";
        v47 = @"AVMobileImageNameNoImage";
LABEL_73:
        v58[0] = MEMORY[0x1E69E9820];
        v58[1] = 3221225472;
        v58[2] = __56__AVMobileGlassPlaybackControlButton__updateMicaPackage__block_invoke;
        v58[3] = &unk_1E7209E30;
        objc_copyWeak(&v59, &location);
        [v11 avkit_imageNamed:v17 completion:v58];

        objc_destroyWeak(&v59);
        objc_destroyWeak(&location);
        goto LABEL_74;
      }
    }

    else if (!v12)
    {
      if (_imageNameForMicaPackageState_onceToken_32414 != -1)
      {
        dispatch_once(&_imageNameForMicaPackageState_onceToken_32414, &__block_literal_global_67_32415);
      }

      v13 = _imageNameForMicaPackageState_imageNamesForStates_32416;
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

      goto LABEL_73;
    }

    v48 = [a1 imageName];
    v49 = [v48 hasPrefix:@"gobackward"];
    v50 = [a1 imageName];
    v51 = [v50 hasPrefix:@"goforward"];

    if (v49 | v51)
    {
      if (*(a1 + 1072) == 2)
      {
        v52 = @"gobackward";
      }

      else
      {
        v52 = @"goforward";
      }

      v53 = v52;
      *&buf.m11 = *(a1 + 1312);
      buf.m13 = *(a1 + 1328);
      *&time2.m11 = *(a1 + 1084);
      time2.m13 = *(a1 + 1100);
      if (CMTimeCompare(&buf, &time2))
      {
        *&buf.m11 = *(a1 + 1312);
        buf.m13 = *(a1 + 1328);
        *&time2.m11 = *(a1 + 1108);
        time2.m13 = *(a1 + 1124);
        if (CMTimeCompare(&buf, &time2))
        {
          *&buf.m11 = *(a1 + 1312);
          buf.m13 = *(a1 + 1328);
          *&time2.m11 = *(a1 + 1132);
          time2.m13 = *(a1 + 1148);
          if (CMTimeCompare(&buf, &time2))
          {
            *&buf.m11 = *(a1 + 1312);
            buf.m13 = *(a1 + 1328);
            *&time2.m11 = *(a1 + 1156);
            time2.m13 = *(a1 + 1172);
            if (CMTimeCompare(&buf, &time2))
            {
              *&buf.m11 = *(a1 + 1312);
              buf.m13 = *(a1 + 1328);
              *&time2.m11 = *(a1 + 1180);
              time2.m13 = *(a1 + 1196);
              if (CMTimeCompare(&buf, &time2))
              {
                *&buf.m11 = *(a1 + 1312);
                buf.m13 = *(a1 + 1328);
                *&time2.m11 = *(a1 + 1204);
                time2.m13 = *(a1 + 1220);
                if (CMTimeCompare(&buf, &time2))
                {
                  *&buf.m11 = *(a1 + 1312);
                  buf.m13 = *(a1 + 1328);
                  *&time2.m11 = *(a1 + 1228);
                  time2.m13 = *(a1 + 1244);
                  if (CMTimeCompare(&buf, &time2))
                  {
                    *&buf.m11 = *(a1 + 1312);
                    buf.m13 = *(a1 + 1328);
                    *&time2.m11 = *(a1 + 1252);
                    time2.m13 = *(a1 + 1268);
                    if (CMTimeCompare(&buf, &time2))
                    {
                      if (*(a1 + 1072) == 2)
                      {
                        v54 = @"minus";
                      }

                      else
                      {
                        v54 = @"plus";
                      }

                      v55 = v54;
                    }

                    else
                    {
                      v55 = @"90";
                    }
                  }

                  else
                  {
                    v55 = @"75";
                  }
                }

                else
                {
                  v55 = @"60";
                }
              }

              else
              {
                v55 = @"45";
              }
            }

            else
            {
              v55 = @"30";
            }
          }

          else
          {
            v55 = @"15";
          }
        }

        else
        {
          v55 = @"10";
        }
      }

      else
      {
        v55 = @"5";
      }

      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v53, v55];
    }

    else
    {
      v17 = [a1 imageName];
    }

    goto LABEL_73;
  }
}

void __56__AVMobileGlassPlaybackControlButton__updateMicaPackage__block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained[1082] = 1;
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    v6 = [v5 micaPackage];
    v7 = [v6 rootLayer];
    [v7 removeFromSuperlayer];

    [v5 avkit_makeSubtreeDisallowGroupBlending];
    v8 = [v5 imageView];
    v9 = [v8 layer];
    [v9 setCompositingFilter:0];

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
    v5[1082] = 0;
    v18 = _AVLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315138;
      v20 = "[AVMobileGlassPlaybackControlButton _updateMicaPackage]_block_invoke";
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
    v11 = [v10 objectAtIndexedSubscript:-[AVMobileGlassPlaybackControlButton _glyphForCurrentSkipInterval](a1)];
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
    v21 = [v20 objectAtIndexedSubscript:-[AVMobileGlassPlaybackControlButton _glyphForCurrentSkipInterval](a1)];
    [v21 setHidden:0];
  }
}

void __67__AVMobileGlassPlaybackControlButton__imageNameForMicaPackageState__block_invoke()
{
  v3[2] = *MEMORY[0x1E69E9840];
  v2[0] = @"play";
  v2[1] = @"pause";
  v3[0] = @"play.fill";
  v3[1] = @"pause.fill";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:2];
  v1 = _imageNameForMicaPackageState_imageNamesForStates_32416;
  _imageNameForMicaPackageState_imageNamesForStates_32416 = v0;
}

- (void)didMoveToWindow
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = AVMobileGlassPlaybackControlButton;
  [(AVGlassBackedButton *)&v7 didMoveToWindow];
  v3 = [(AVMobileGlassPlaybackControlButton *)self window];
  if (v3)
  {
    prefersMicaPackage = self->_prefersMicaPackage;

    if (prefersMicaPackage)
    {
      [(AVMobileGlassPlaybackControlButton *)self _setupMicaPackageIfNeeded];
    }
  }

  v8[0] = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v6 = [(AVMobileGlassPlaybackControlButton *)self registerForTraitChanges:v5 withHandler:&__block_literal_global_32422];

  [(AVMobileGlassPlaybackControlButton *)self _updateColors];
}

- (void)_updateColors
{
  if (a1)
  {
    v2 = [a1 traitCollection];
    v3 = [v2 userInterfaceStyle];

    if (v3 == 2)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    v5 = [MEMORY[0x1E69DC888] avkit_tintColorForControlElementWithUserInterfaceStyle:v3];
    [a1 setBackgroundMaterialStyle:v4];
    [a1 setTintColor:v5];
    [(AVMobileGlassPlaybackControlButton *)a1 _updateMicaPackage];
    [a1 updateBackgroundMaterial];
  }
}

void __53__AVMobileGlassPlaybackControlButton_didMoveToWindow__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    v4 = [a2 traitCollection];
    v5 = [v4 userInterfaceStyle];

    if (v5 != [v6 userInterfaceStyle])
    {
      [(AVMobileGlassPlaybackControlButton *)a2 _updateColors];
    }
  }
}

- (void)setSkipInterval:(id *)a3
{
  p_buttonMicaPackageContainerView = &self->_buttonMicaPackageContainerView;
  time1 = *&self->_buttonMicaPackageContainerView;
  v7 = *a3;
  if (CMTimeCompare(&time1, &v7))
  {
    v6 = *&a3->var0;
    p_buttonMicaPackageContainerView[2] = a3->var3;
    *p_buttonMicaPackageContainerView = v6;
    [(AVMobileGlassPlaybackControlButton *)self _updateGlyphSkipInterval];
    [(AVMobileGlassPlaybackControlButton *)self _updateTintColor];
    [(AVMobileChromelessPlaybackControlButton *)self _updateEnabledState];
    [(AVMobileGlassPlaybackControlButton *)self _updateMicaPackage];
  }
}

- (void)setPlaybackControlButtonIconState:(id)a3
{
  v5 = a3;
  if (([(AVMobileGlassControlsStyleSheet *)self->_styleSheet isEqualToString:?]& 1) == 0)
  {
    objc_storeStrong(&self->_styleSheet, a3);
    [(AVMobileGlassPlaybackControlButton *)self _updateMicaPackage];
  }
}

- (id)pointerTargetView
{
  if (self->_prefersMicaPackage)
  {
    v2 = self->_buttonMicaPackage;
  }

  else
  {
    v2 = [(AVMobileGlassPlaybackControlButton *)self imageView];
  }

  return v2;
}

- (void)setButtonMicaPackage:(id)a3
{
  v5 = a3;
  if (self->_playbackControlButtonIconState != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_playbackControlButtonIconState, a3);
    v5 = v6;
    if (v6)
    {
      [(AVMobileGlassPlaybackControlButton *)self _updateMicaPackage];
      v5 = v6;
    }
  }
}

- (void)setStyleSheet:(id)a3
{
  v5 = a3;
  if (*&self->_fullscreen != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_fullscreen, a3);
    v6 = *&self->_fullscreen;
    if (self->_playbackControlButtonType)
    {
      [v6 secondaryPlaybackControlsFont];
    }

    else
    {
      [v6 playPauseButtonFont];
    }
    v7 = ;
    [(AVButton *)self setInlineFont:v7];
    [(AVMobileGlassPlaybackControlButton *)self setNeedsLayout];

    [(AVMobileGlassPlaybackControlButton *)self setNeedsLayout];
    v5 = v8;
  }
}

+ (AVMobileGlassPlaybackControlButton)buttonWithAccessibilityIdentifier:(id)a3 withStyleSheet:(id)a4 withPlaybackControlButtonType:(unint64_t)a5
{
  v9 = a4;
  v31.receiver = a1;
  v31.super_class = &OBJC_METACLASS___AVMobileGlassPlaybackControlButton;
  v10 = objc_msgSendSuper2(&v31, sel_customHighlightedAnimationButtonWithAccessibilityIdentifier_, a3);
  *(v10 + 1080) = 0;
  objc_storeStrong((v10 + 1280), a4);
  *(v10 + 1072) = a5;
  CMTimeMakeWithSeconds(&v30, 5.0, 600);
  v11 = *&v30.value;
  *(v10 + 1100) = v30.epoch;
  *(v10 + 1084) = v11;
  CMTimeMakeWithSeconds(&v30, 10.0, 600);
  v12 = *&v30.value;
  *(v10 + 1124) = v30.epoch;
  *(v10 + 1108) = v12;
  CMTimeMakeWithSeconds(&v30, 15.0, 600);
  v13 = *&v30.value;
  *(v10 + 1148) = v30.epoch;
  *(v10 + 1132) = v13;
  CMTimeMakeWithSeconds(&v30, 30.0, 600);
  v14 = *&v30.value;
  *(v10 + 1172) = v30.epoch;
  *(v10 + 1156) = v14;
  CMTimeMakeWithSeconds(&v30, 45.0, 600);
  v15 = *&v30.value;
  *(v10 + 1196) = v30.epoch;
  *(v10 + 1180) = v15;
  CMTimeMakeWithSeconds(&v30, 60.0, 600);
  v16 = *&v30.value;
  *(v10 + 1220) = v30.epoch;
  *(v10 + 1204) = v16;
  CMTimeMakeWithSeconds(&v30, 75.0, 600);
  v17 = *&v30.value;
  *(v10 + 1244) = v30.epoch;
  *(v10 + 1228) = v17;
  CMTimeMakeWithSeconds(&v30, 90.0, 600);
  v18 = *&v30.value;
  *(v10 + 1268) = v30.epoch;
  *(v10 + 1252) = v18;
  [v10 setImageName:@"AVMobileImageNameNoImage"];
  v19 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v20 = *(v10 + 1304);
  *(v10 + 1304) = v19;

  [*(v10 + 1304) setUserInteractionEnabled:0];
  v21 = [*(v10 + 1304) layer];
  [v21 setAllowsGroupBlending:1];

  [v10 addSubview:*(v10 + 1304)];
  if (a5)
  {
    v22 = [v9 secondaryPlaybackControlsFont];
    [v10 setInlineFont:v22];

    v23 = +[AVKitGlobalSettings shared];
    *(v10 + 1081) = [v23 animatedSkipButtonsEnabled];
  }

  else
  {
    v24 = [v9 playPauseButtonFont];
    [v10 setInlineFont:v24];

    *(v10 + 1081) = 1;
    [v10 setPlaybackControlButtonIconState:@"pause"];
  }

  v25 = +[AVKitGlobalSettings shared];
  v26 = [v25 prefersTintColorForPlaybackControlsView];

  if ((v26 & 1) == 0)
  {
    v27 = [MEMORY[0x1E69DC888] whiteColor];
    [v10 setTintColor:v27];
  }

  [v10 setAutoresizingMask:0];
  v28 = [v10 imageView];
  [v28 setContentMode:1];

  [v10 setWantsCapsuleShape:1];

  return v10;
}

@end