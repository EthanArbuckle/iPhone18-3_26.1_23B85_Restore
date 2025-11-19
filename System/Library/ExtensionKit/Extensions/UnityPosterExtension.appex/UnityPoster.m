@interface UnityPoster
- (BOOL)wantsLowBrightness:(id)a3;
- (CGRect)_timeLayoutRect;
- (id)_alternateGreenColor;
- (id)_alternateRedColor;
- (id)_alternateYellowColor;
- (id)_greenColor;
- (id)_redColor;
- (id)_yellowColor;
- (id)currentLowerQuiltViewForLookIdentifier:(id)a3;
- (id)currentUpperQuiltViewForLookIdentifier:(id)a3;
- (id)initialLookIdentifierForEditor:(id)a3;
- (id)interpolatedColorForIdentifier:(id)a3 progress:(double)a4;
- (id)looksForEditor:(id)a3;
- (int64_t)deviceOrientationFromEnvironment:(id)a3;
- (void)_setupConfigurationWithBounds:(CGRect)a3 upperQuiltView:(id)a4 lowerQuiltView:(id)a5;
- (void)_setupLowerQuiltViewsIfNecessaryInParentView:(id)a3 lookIdentifier:(id)a4;
- (void)_setupQuiltViewIfNecessaryInParentView:(id)a3 lookIdentifier:(id)a4;
- (void)_setupUpperQuiltViewsIfNecessaryInParentView:(id)a3 lookIdentifier:(id)a4;
- (void)_setupViewsInBackgroundView:(id)a3 foregroundView:(id)a4 lookIdentifier:(id)a5;
- (void)_updateColorsForIdentifier:(id)a3 upperQuiltView:(id)a4 lowerQuiltView:(id)a5 progress:(double)a6;
- (void)cleanupQuiltViews;
- (void)editor:(id)a3 didFinishTransitionToLook:(id)a4;
- (void)editor:(id)a3 didInitializeWithEnvironment:(id)a4;
- (void)editor:(id)a3 didTransitionToLook:(id)a4 progress:(double)a5;
- (void)editor:(id)a3 didUpdateEnvironment:(id)a4 withTransition:(id)a5;
- (void)editor:(id)a3 finalizeWithCompletion:(id)a4;
- (void)editor:(id)a3 populateViews:(id)a4 forLook:(id)a5;
- (void)editorDidInvalidate:(id)a3;
- (void)regenerateConfiguration;
- (void)renderer:(id)a3 didInitializeWithEnvironment:(id)a4;
- (void)renderer:(id)a3 didUpdateEnvironment:(id)a4 withTransition:(id)a5;
- (void)rendererDidInvalidate:(id)a3;
- (void)setupFullscreenConstraintsForView:(id)a3 container:(id)a4;
- (void)updateConfiguration:(id)a3 completion:(id)a4;
- (void)updateCurrentLowerQuiltView:(id)a3 lookIdentifier:(id)a4;
- (void)updateCurrentQuiltView:(id)a3 forLookIdentifier:(id)a4;
- (void)updateCurrentQuiltViewsForLookIdentifier:(id)a3 interfaceOrientation:(int64_t)a4 unlockProgress:(double)a5;
- (void)updateCurrentUpperQuiltView:(id)a3 lookIdentifier:(id)a4;
- (void)updateDescriptors:(id)a3 completion:(id)a4;
@end

@implementation UnityPoster

- (void)setupFullscreenConstraintsForView:(id)a3 container:(id)a4
{
  v5 = a4;
  v6 = a3;
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v19 = [v5 leadingAnchor];
  v18 = [v6 leadingAnchor];
  v17 = [v19 constraintEqualToAnchor:v18];
  v20[0] = v17;
  v7 = [v5 trailingAnchor];
  v8 = [v6 trailingAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];
  v20[1] = v9;
  v10 = [v5 topAnchor];
  v11 = [v6 topAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v20[2] = v12;
  v13 = [v5 bottomAnchor];

  v14 = [v6 bottomAnchor];

  v15 = [v13 constraintEqualToAnchor:v14];
  v20[3] = v15;
  v16 = [NSArray arrayWithObjects:v20 count:4];
  [NSLayoutConstraint activateConstraints:v16];
}

- (id)_redColor
{
  if (qword_100010F38 != -1)
  {
    sub_10000461C();
  }

  v3 = qword_100010F30;

  return v3;
}

- (id)_greenColor
{
  if (qword_100010F48 != -1)
  {
    sub_100004630();
  }

  v3 = qword_100010F40;

  return v3;
}

- (id)_yellowColor
{
  if (qword_100010F58 != -1)
  {
    sub_100004644();
  }

  v3 = qword_100010F50;

  return v3;
}

- (id)_alternateRedColor
{
  if (qword_100010F68 != -1)
  {
    sub_100004658();
  }

  v3 = qword_100010F60;

  return v3;
}

- (id)_alternateGreenColor
{
  if (qword_100010F78 != -1)
  {
    sub_10000466C();
  }

  v3 = qword_100010F70;

  return v3;
}

- (id)_alternateYellowColor
{
  if (qword_100010F88[0] != -1)
  {
    sub_100004680();
  }

  v3 = qword_100010F80;

  return v3;
}

- (id)interpolatedColorForIdentifier:(id)a3 progress:(double)a4
{
  v6 = a3;
  v7 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
  *&v8 = a4;
  [v7 _solveForInput:v8];
  v10 = v9;
  if ([v6 isEqualToString:@"4color"])
  {
    v11 = +[UIColor blackColor];
    v12 = [(UnityPoster *)self _yellowColor];
LABEL_5:
    v13 = v12;
    goto LABEL_7;
  }

  if ([v6 isEqualToString:@"3color"])
  {
    v11 = [(UnityPoster *)self _yellowColor];
    v12 = +[UIColor blackColor];
    goto LABEL_5;
  }

  v13 = 0;
  v11 = 0;
LABEL_7:
  v22 = 0.0;
  v23 = 0.0;
  v20 = 0;
  v21 = 0.0;
  [v11 getRed:&v23 green:&v22 blue:&v21 alpha:&v20];
  v18 = 0.0;
  v19 = 0.0;
  v16 = 0;
  v17 = 0.0;
  [v13 getRed:&v19 green:&v18 blue:&v17 alpha:&v16];
  v14 = [UIColor colorWithRed:(1.0 - v10) * v23 + v10 * v19 green:(1.0 - v10) * v22 + v10 * v18 blue:(1.0 - v10) * v21 + v10 * v17 alpha:1.0];

  return v14;
}

- (void)_updateColorsForIdentifier:(id)a3 upperQuiltView:(id)a4 lowerQuiltView:(id)a5 progress:(double)a6
{
  v18 = a3;
  v10 = a4;
  unityOptions = self->_unityOptions;
  v12 = a5;
  if (([(UnityOptions *)unityOptions lowBrightness]& 1) != 0)
  {
    [(UnityPoster *)self _alternateRedColor];
  }

  else
  {
    [(UnityPoster *)self _redColor];
  }
  v13 = ;
  if (([(UnityOptions *)self->_unityOptions lowBrightness]& 1) != 0)
  {
    [(UnityPoster *)self _alternateGreenColor];
  }

  else
  {
    [(UnityPoster *)self _greenColor];
  }
  v14 = ;
  if (([(UnityOptions *)self->_unityOptions lowBrightness]& 1) != 0)
  {
    [(UnityPoster *)self _alternateYellowColor];
  }

  else
  {
    [(UnityPoster *)self _yellowColor];
  }
  v15 = ;
  [v10 setTopQuiltColor:v14];
  [v10 setBottomLeftQuiltColor:0];
  [v10 setBottomRightQuiltColor:v14];
  if (fabs(a6) <= 0.000001)
  {
    if ([v18 isEqualToString:@"4color"])
    {
      [v10 setIntersectionPieceColor:v15];
      goto LABEL_16;
    }

    v16 = +[UIColor blackColor];
  }

  else
  {
    v16 = [(UnityPoster *)self interpolatedColorForIdentifier:v18 progress:a6];
  }

  v17 = v16;
  [v10 setIntersectionPieceColor:v16];

LABEL_16:
  [v12 setTopQuiltColor:0];
  [v12 setBottomLeftQuiltColor:v13];
  [v12 setIntersectionPieceColor:0];
  [v12 setBottomRightQuiltColor:0];
}

- (void)_setupQuiltViewIfNecessaryInParentView:(id)a3 lookIdentifier:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (!self->_quiltViews)
  {
    v7 = +[NSMutableDictionary dictionary];
    quiltViews = self->_quiltViews;
    self->_quiltViews = v7;
  }

  if (v6)
  {
    v9 = [(NSMutableDictionary *)self->_quiltViews objectForKey:v6];
    if (v9)
    {
LABEL_5:

      goto LABEL_7;
    }

    if (!self->_sharedQuiltView)
    {
      v10 = [UPQuiltViewPad alloc];
      [v11 bounds];
      v9 = [v10 initWithFrame:v6 identifier:?];
      [(UnityPoster *)self _timeLayoutRect];
      [v9 setTimeRect:?];
      [CSProminentLayoutController frameForElements:16 variant:1];
      [v9 setLandscapeWidgetRect:?];
      [v9 updateQuiltsWithIdentifier:v6 deviceInterfaceOrientation:self->_currentDeviceInterfaceOrientation unlockProgress:0.0];
      [v11 addSubview:v9];
      [(UnityPoster *)self setupFullscreenConstraintsForView:v9 container:v11];
      [(UnityPoster *)self updateCurrentQuiltView:v9 forLookIdentifier:v6];
      goto LABEL_5;
    }
  }

LABEL_7:
}

- (void)_setupUpperQuiltViewsIfNecessaryInParentView:(id)a3 lookIdentifier:(id)a4
{
  v12 = a3;
  v6 = a4;
  if (!self->_upperQuiltViews)
  {
    v7 = +[NSMutableDictionary dictionary];
    upperQuiltViews = self->_upperQuiltViews;
    self->_upperQuiltViews = v7;
  }

  if (v6)
  {
    v9 = [(NSMutableDictionary *)self->_upperQuiltViews objectForKey:v6];
    if (v9)
    {
      goto LABEL_5;
    }

    if (!self->_sharedUpperQuiltView)
    {
      v9 = [(UnityPoster *)self currentUpperQuiltViewForLookIdentifier:v6];
      if (!v9)
      {
        v11 = [UPQuiltViewPhone alloc];
        [v12 bounds];
        v10 = [v11 initWithFrame:?];
        [(UnityPoster *)self _timeLayoutRect];
        [v10 setTimeRect:?];
        [CSProminentLayoutController frameForElements:16 variant:1];
        [v10 setLandscapeWidgetRect:?];
        [v12 addSubview:v10];
        [(UnityPoster *)self updateCurrentUpperQuiltView:v10 lookIdentifier:v6];
        [(UnityPoster *)self setupFullscreenConstraintsForView:v10 container:v12];
        goto LABEL_6;
      }

LABEL_5:
      v10 = v9;
LABEL_6:
    }
  }
}

- (void)_setupLowerQuiltViewsIfNecessaryInParentView:(id)a3 lookIdentifier:(id)a4
{
  v12 = a3;
  v6 = a4;
  if (!self->_lowerQuiltViews)
  {
    v7 = +[NSMutableDictionary dictionary];
    lowerQuiltViews = self->_lowerQuiltViews;
    self->_lowerQuiltViews = v7;
  }

  if (v6)
  {
    v9 = [(NSMutableDictionary *)self->_lowerQuiltViews objectForKey:v6];
    if (v9)
    {
      goto LABEL_5;
    }

    if (!self->_sharedLowerQuiltView)
    {
      v9 = [(UnityPoster *)self currentLowerQuiltViewForLookIdentifier:v6];
      if (!v9)
      {
        v11 = [UPQuiltViewPhone alloc];
        [v12 bounds];
        v10 = [v11 initWithFrame:?];
        [(UnityPoster *)self _timeLayoutRect];
        [v10 setTimeRect:?];
        [v10 setQuiltViewDelegate:self];
        [v12 addSubview:v10];
        [(UnityPoster *)self updateCurrentLowerQuiltView:v10 lookIdentifier:v6];
        [(UnityPoster *)self setupFullscreenConstraintsForView:v10 container:v12];
        goto LABEL_6;
      }

LABEL_5:
      v10 = v9;
LABEL_6:
    }
  }
}

- (void)_setupViewsInBackgroundView:(id)a3 foregroundView:(id)a4 lookIdentifier:(id)a5
{
  v25 = a3;
  v8 = a4;
  v9 = a5;
  [v25 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = +[UIDevice currentDevice];
  v19 = [v18 userInterfaceIdiom];

  if (v19 == 1)
  {
    [(UnityPoster *)self _setupQuiltViewIfNecessaryInParentView:v8 lookIdentifier:self->_currentLookIdentifier];
  }

  else
  {
    v20 = +[UIDevice currentDevice];
    v21 = [v20 userInterfaceIdiom];

    if (!v21)
    {
      [(UnityPoster *)self _setupUpperQuiltViewsIfNecessaryInParentView:v8 lookIdentifier:v9];
      [(UnityPoster *)self _setupLowerQuiltViewsIfNecessaryInParentView:v25 lookIdentifier:v9];
      v22 = +[UIColor blackColor];
      [v25 setBackgroundColor:v22];

      v23 = [(UnityPoster *)self currentUpperQuiltViewForLookIdentifier:v9];
      v24 = [(UnityPoster *)self currentLowerQuiltViewForLookIdentifier:v9];
      [(UnityPoster *)self _setupConfigurationWithBounds:v23 upperQuiltView:v24 lowerQuiltView:v11, v13, v15, v17];
      [(UnityPoster *)self _updateColorsForIdentifier:v9 upperQuiltView:v23 lowerQuiltView:v24 progress:0.0];
      [(UnityPoster *)self updateCurrentUpperQuiltView:v23 lookIdentifier:v9];
      [(UnityPoster *)self updateCurrentLowerQuiltView:v24 lookIdentifier:v9];
    }
  }
}

- (void)_setupConfigurationWithBounds:(CGRect)a3 upperQuiltView:(id)a4 lowerQuiltView:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a5;
  v12 = a4;
  [CSProminentLayoutController frameForElements:1 variant:1];
  v13 = [UPQuiltConfigurationPhone alloc];
  [(UnityPoster *)self _timeLayoutRect];
  v18 = [v13 initWithRandomizationSeedValue:0 viewport:x timeBounds:y lineVariance:{width, height, v14, v15, v16, v17, 0x3FC999999999999ALL}];
  [v12 setConfiguration:v18];

  [v11 setConfiguration:v18];
}

- (CGRect)_timeLayoutRect
{
  [CSProminentLayoutController frameForElements:1 variant:1 forcePortraitBounds:1];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)cleanupQuiltViews
{
  v3 = +[UIDevice currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 1)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    p_quiltViews = &self->_quiltViews;
    v6 = [(NSMutableDictionary *)self->_quiltViews allValues];
    v7 = [v6 countByEnumeratingWithState:&v33 objects:v39 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v34;
      v10 = 96;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v34 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v33 + 1) + 8 * i) removeFromSuperview];
        }

        v8 = [v6 countByEnumeratingWithState:&v33 objects:v39 count:16];
      }

      while (v8);
    }

    else
    {
      v10 = 96;
    }
  }

  else
  {
    v12 = +[UIDevice currentDevice];
    v13 = [v12 userInterfaceIdiom];

    if (v13)
    {
      return;
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v14 = [(NSMutableDictionary *)self->_lowerQuiltViews allValues];
    v15 = [v14 countByEnumeratingWithState:&v29 objects:v38 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v30;
      do
      {
        for (j = 0; j != v16; j = j + 1)
        {
          if (*v30 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [*(*(&v29 + 1) + 8 * j) removeFromSuperview];
        }

        v16 = [v14 countByEnumeratingWithState:&v29 objects:v38 count:16];
      }

      while (v16);
    }

    [(NSMutableDictionary *)self->_lowerQuiltViews removeAllObjects];
    [(UPQuiltViewPhone *)self->_sharedLowerQuiltView removeFromSuperview];
    sharedLowerQuiltView = self->_sharedLowerQuiltView;
    self->_sharedLowerQuiltView = 0;

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    p_quiltViews = &self->_upperQuiltViews;
    v6 = [(NSMutableDictionary *)self->_upperQuiltViews allValues];
    v20 = [v6 countByEnumeratingWithState:&v25 objects:v37 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v26;
      v10 = 64;
      do
      {
        for (k = 0; k != v21; k = k + 1)
        {
          if (*v26 != v22)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v25 + 1) + 8 * k) removeFromSuperview];
        }

        v21 = [v6 countByEnumeratingWithState:&v25 objects:v37 count:16];
      }

      while (v21);
    }

    else
    {
      v10 = 64;
    }
  }

  [(NSMutableDictionary *)*p_quiltViews removeAllObjects];
  [*(&self->super.isa + v10) removeFromSuperview];
  v24 = *(&self->super.isa + v10);
  *(&self->super.isa + v10) = 0;
}

- (BOOL)wantsLowBrightness:(id)a3
{
  v3 = a3;
  if ([v3 isLowLuminance])
  {
    v4 = 1;
  }

  else
  {
    v5 = [v3 traitCollection];
    if ([v5 _backlightLuminance] == 1)
    {
      v4 = 1;
    }

    else
    {
      v6 = [v3 traitCollection];
      v4 = [v6 _backlightLuminance] == 0;
    }
  }

  return v4;
}

- (int64_t)deviceOrientationFromEnvironment:(id)a3
{
  result = [a3 deviceOrientation];
  if (result <= 1)
  {
    return 1;
  }

  return result;
}

- (void)updateCurrentQuiltViewsForLookIdentifier:(id)a3 interfaceOrientation:(int64_t)a4 unlockProgress:(double)a5
{
  sharedQuiltView = self->_sharedQuiltView;
  if (sharedQuiltView)
  {

    [(UPQuiltViewPad *)sharedQuiltView updateQuiltsWithIdentifier:a3 deviceInterfaceOrientation:a4 unlockProgress:a5];
  }

  else
  {
    v10[6] = v5;
    v10[7] = v6;
    quiltViews = self->_quiltViews;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100002A84;
    v10[3] = &unk_10000C408;
    v10[4] = a4;
    *&v10[5] = a5;
    [(NSMutableDictionary *)quiltViews enumerateKeysAndObjectsUsingBlock:v10];
  }
}

- (void)updateCurrentQuiltView:(id)a3 forLookIdentifier:(id)a4
{
  v7 = a3;
  v8 = v7;
  if (self->_renderer)
  {
    objc_storeStrong(&self->_sharedQuiltView, a3);
  }

  else
  {
    [(NSMutableDictionary *)self->_quiltViews setObject:v7 forKey:a4];
  }
}

- (void)updateCurrentUpperQuiltView:(id)a3 lookIdentifier:(id)a4
{
  v7 = a3;
  v8 = v7;
  if (self->_renderer)
  {
    objc_storeStrong(&self->_sharedUpperQuiltView, a3);
  }

  else
  {
    [(NSMutableDictionary *)self->_upperQuiltViews setObject:v7 forKey:a4];
  }
}

- (void)updateCurrentLowerQuiltView:(id)a3 lookIdentifier:(id)a4
{
  v7 = a3;
  v8 = v7;
  if (self->_renderer)
  {
    objc_storeStrong(&self->_sharedLowerQuiltView, a3);
  }

  else
  {
    [(NSMutableDictionary *)self->_lowerQuiltViews setObject:v7 forKey:a4];
  }
}

- (id)currentUpperQuiltViewForLookIdentifier:(id)a3
{
  if (self->_renderer)
  {
    v3 = self->_sharedUpperQuiltView;
  }

  else
  {
    v3 = [(NSMutableDictionary *)self->_upperQuiltViews objectForKey:a3];
  }

  return v3;
}

- (id)currentLowerQuiltViewForLookIdentifier:(id)a3
{
  if (self->_renderer)
  {
    v3 = self->_sharedLowerQuiltView;
  }

  else
  {
    v3 = [(NSMutableDictionary *)self->_lowerQuiltViews objectForKey:a3];
  }

  return v3;
}

- (void)regenerateConfiguration
{
  v4 = [(UnityPoster *)self currentUpperQuiltViewForLookIdentifier:self->_currentLookIdentifier];
  v3 = [(UnityPoster *)self currentLowerQuiltViewForLookIdentifier:self->_currentLookIdentifier];
  [v3 bounds];
  [(UnityPoster *)self _setupConfigurationWithBounds:v4 upperQuiltView:v3 lowerQuiltView:?];
}

- (void)renderer:(id)a3 didInitializeWithEnvironment:(id)a4
{
  v7 = a3;
  v8 = a4;
  objc_storeStrong(&self->_renderer, a3);
  if (!self->_unityOptions)
  {
    v9 = objc_alloc_init(UnityOptions);
    unityOptions = self->_unityOptions;
    self->_unityOptions = v9;
  }

  [(UnityOptions *)self->_unityOptions setLowBrightness:[(UnityPoster *)self wantsLowBrightness:v8]];
  self->_isPreview = [v8 isPreview];
  *&self->_unlockProgress = xmmword_100005E10;
  v11 = [v8 contents];
  v12 = [v11 loadUserInfoWithError:0];

  currentLookIdentifier = [v12 objectForKey:@"lookIdentifier"];
  if (currentLookIdentifier && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if (currentLookIdentifier == self->_currentLookIdentifier)
    {
      goto LABEL_9;
    }

    v14 = currentLookIdentifier;
    currentLookIdentifier = self->_currentLookIdentifier;
    self->_currentLookIdentifier = &v14->isa;
  }

  else
  {
    v14 = @"3color";
  }

  currentLookIdentifier = &v14->isa;
LABEL_9:
  v15 = [v7 backgroundView];
  v16 = [v7 foregroundView];
  [(UnityPoster *)self _setupViewsInBackgroundView:v15 foregroundView:v16 lookIdentifier:self->_currentLookIdentifier];

  [(UnityPoster *)self _greenColor];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100002FE0;
  v17 = v29[3] = &unk_10000C430;
  v30 = v17;
  [v7 updatePreferences:v29];
  wakeProgress = self->_wakeProgress;
  [v8 backlightProgress];
  if (wakeProgress != v19)
  {
    [v8 backlightProgress];
    self->_wakeProgress = v20;
  }

  v21 = 0.0;
  if (!UIAccessibilityIsReduceMotionEnabled())
  {
    unlockProgress = self->_unlockProgress;
    [v8 unlockProgress];
    if (unlockProgress == v23)
    {
      goto LABEL_15;
    }

    [v8 unlockProgress];
    v21 = v24;
  }

  self->_unlockProgress = v21;
LABEL_15:
  self->_currentDeviceInterfaceOrientation = [(UnityPoster *)self deviceOrientationFromEnvironment:v8];
  v25 = +[UIDevice currentDevice];
  v26 = [v25 userInterfaceIdiom];

  if (!v26)
  {
    v27 = [(UnityPoster *)self currentUpperQuiltViewForLookIdentifier:self->_currentLookIdentifier];
    v28 = [(UnityPoster *)self currentLowerQuiltViewForLookIdentifier:self->_currentLookIdentifier];
    [v27 updateQuiltsWithUnlockProgress:self->_unlockProgress wakeProgress:self->_wakeProgress];
    [v28 updateQuiltsWithUnlockProgress:self->_unlockProgress wakeProgress:self->_wakeProgress];
  }
}

- (void)renderer:(id)a3 didUpdateEnvironment:(id)a4 withTransition:(id)a5
{
  v29 = a4;
  self->_isPreview = [v29 isPreview];
  wakeProgress = self->_wakeProgress;
  [v29 backlightProgress];
  if (wakeProgress != v7)
  {
    [v29 backlightProgress];
    self->_wakeProgress = v8;
  }

  v9 = [(UnityPoster *)self wantsLowBrightness:v29];
  if (v9 != [(UnityOptions *)self->_unityOptions lowBrightness])
  {
    [(UnityOptions *)self->_unityOptions setLowBrightness:v9];
  }

  v10 = [v29 contents];
  v11 = [v10 loadUserInfoWithError:0];

  v12 = [v11 objectForKey:@"lookIdentifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = +[UIDevice currentDevice];
    v14 = [v13 userInterfaceIdiom];

    if (!v14)
    {
      v15 = [(UnityPoster *)self currentUpperQuiltViewForLookIdentifier:self->_currentLookIdentifier];
      v16 = [(UnityPoster *)self currentLowerQuiltViewForLookIdentifier:self->_currentLookIdentifier];
      [(UnityPoster *)self _updateColorsForIdentifier:v12 upperQuiltView:v15 lowerQuiltView:v16 progress:0.0];
    }
  }

  v17 = 0.0;
  if (!UIAccessibilityIsReduceMotionEnabled())
  {
    unlockProgress = self->_unlockProgress;
    [v29 unlockProgress];
    if (unlockProgress == v19)
    {
      goto LABEL_12;
    }

    [v29 unlockProgress];
    v17 = v20;
  }

  self->_unlockProgress = v17;
LABEL_12:
  v21 = +[UIDevice currentDevice];
  v22 = [v21 userInterfaceIdiom];

  if (v22 == 1)
  {
    v23 = [(UnityPoster *)self deviceOrientationFromEnvironment:v29];
    currentDeviceInterfaceOrientation = v23;
    if (v23 != self->_currentDeviceInterfaceOrientation)
    {
      self->_currentDeviceInterfaceOrientation = v23;
      [(UnityPoster *)self updateCurrentQuiltViewsForLookIdentifier:v12 interfaceOrientation:0.0 unlockProgress:?];
      currentDeviceInterfaceOrientation = self->_currentDeviceInterfaceOrientation;
    }

    [(UnityPoster *)self updateCurrentQuiltViewsForLookIdentifier:v12 interfaceOrientation:currentDeviceInterfaceOrientation unlockProgress:self->_unlockProgress];
  }

  v25 = +[UIDevice currentDevice];
  v26 = [v25 userInterfaceIdiom];

  if (!v26)
  {
    v27 = [(UnityPoster *)self currentUpperQuiltViewForLookIdentifier:self->_currentLookIdentifier];
    v28 = [(UnityPoster *)self currentLowerQuiltViewForLookIdentifier:self->_currentLookIdentifier];
    [v27 updateQuiltsWithUnlockProgress:self->_unlockProgress wakeProgress:self->_wakeProgress];
    [v28 updateQuiltsWithUnlockProgress:self->_unlockProgress wakeProgress:self->_wakeProgress];
  }
}

- (void)rendererDidInvalidate:(id)a3
{
  [(UnityPoster *)self cleanupQuiltViews];
  renderer = self->_renderer;
  self->_renderer = 0;
}

- (void)editor:(id)a3 didInitializeWithEnvironment:(id)a4
{
  v10 = a3;
  objc_storeStrong(&self->_editor, a3);
  v7 = a4;
  v8 = [(UnityPoster *)self deviceOrientationFromEnvironment:v7];

  currentDeviceInterfaceOrientation = self->_currentDeviceInterfaceOrientation;
  if (!currentDeviceInterfaceOrientation || v8 != currentDeviceInterfaceOrientation)
  {
    self->_currentDeviceInterfaceOrientation = v8;
    [(UnityPoster *)self updateCurrentQuiltViewsForLookIdentifier:self->_currentLookIdentifier interfaceOrientation:v8 unlockProgress:0.0];
  }
}

- (void)editor:(id)a3 didUpdateEnvironment:(id)a4 withTransition:(id)a5
{
  v6 = [(UnityPoster *)self deviceOrientationFromEnvironment:a4];
  if (v6 != self->_currentDeviceInterfaceOrientation)
  {
    self->_currentDeviceInterfaceOrientation = v6;
    currentLookIdentifier = self->_currentLookIdentifier;

    [(UnityPoster *)self updateCurrentQuiltViewsForLookIdentifier:currentLookIdentifier interfaceOrientation:v6 unlockProgress:0.0];
  }
}

- (id)looksForEditor:(id)a3
{
  v3 = [PRTimeFontConfiguration alloc];
  v4 = [v3 initWithTimeFontIdentifier:PRTimeFontIdentifierPrivateSystemSoftHeavy];
  v5 = [PRMutableEditingLook alloc];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"THREE_COLOR_LABEL" value:&stru_10000C598 table:@"Localizable"];
  v8 = [[PRPosterColor alloc] initWithLUTIdentifier:@"green_lut3"];
  v9 = [v5 initWithIdentifier:@"3color" displayName:v7 initialTimeFontConfiguration:v4 initialTitleColor:v8];

  v10 = [PRMutableEditingLook alloc];
  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"FOUR_COLOR_LABEL" value:&stru_10000C598 table:@"Localizable"];
  v13 = [[PRPosterColor alloc] initWithLUTIdentifier:@"green_lut4"];
  v14 = [v10 initWithIdentifier:@"4color" displayName:v12 initialTimeFontConfiguration:v4 initialTitleColor:v13];

  v17[0] = v9;
  v17[1] = v14;
  v15 = [NSArray arrayWithObjects:v17 count:2];

  return v15;
}

- (id)initialLookIdentifierForEditor:(id)a3
{
  v3 = [a3 environment];
  v4 = [v3 sourceContents];
  v5 = [v4 loadUserInfoWithError:0];

  v6 = [v5 objectForKey:@"lookIdentifier"];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = @"3color";
  }

  v9 = v8;

  return v8;
}

- (void)editor:(id)a3 populateViews:(id)a4 forLook:(id)a5
{
  v22 = a4;
  v7 = a5;
  v8 = +[UIDevice currentDevice];
  v9 = [v8 userInterfaceIdiom];

  if (v9 == 1)
  {
    v10 = [v7 identifier];

    if (v10)
    {
      v11 = [v7 identifier];
      currentLookIdentifier = self->_currentLookIdentifier;
      self->_currentLookIdentifier = v11;
    }

    v13 = [v22 foregroundView];
    [(UnityPoster *)self _setupQuiltViewIfNecessaryInParentView:v13 lookIdentifier:self->_currentLookIdentifier];

    v14 = [(NSMutableDictionary *)self->_quiltViews objectForKey:self->_currentLookIdentifier];
    [v14 updateQuiltsWithIdentifier:self->_currentLookIdentifier deviceInterfaceOrientation:self->_currentDeviceInterfaceOrientation unlockProgress:0.0];
  }

  else
  {
    v15 = +[UIDevice currentDevice];
    v16 = [v15 userInterfaceIdiom];

    if (v16)
    {
      goto LABEL_10;
    }

    v17 = [v7 identifier];

    if (v17)
    {
      v18 = [v7 identifier];
      v19 = self->_currentLookIdentifier;
      self->_currentLookIdentifier = v18;
    }

    v14 = [v22 backgroundView];
    v20 = [v22 foregroundView];
    v21 = [v7 identifier];
    [(UnityPoster *)self _setupViewsInBackgroundView:v14 foregroundView:v20 lookIdentifier:v21];
  }

LABEL_10:
}

- (void)editor:(id)a3 didTransitionToLook:(id)a4 progress:(double)a5
{
  v17 = a4;
  v8 = [a3 currentLook];
  unityOptions = self->_unityOptions;
  if (!unityOptions)
  {
    v10 = objc_alloc_init(UnityOptions);
    v11 = self->_unityOptions;
    self->_unityOptions = v10;

    unityOptions = self->_unityOptions;
  }

  [(UnityOptions *)unityOptions setLowBrightness:0];
  v12 = +[UIDevice currentDevice];
  v13 = [v12 userInterfaceIdiom];

  if (!v13)
  {
    v14 = [(UnityPoster *)self currentUpperQuiltViewForLookIdentifier:self->_currentLookIdentifier];
    v15 = [(UnityPoster *)self currentLowerQuiltViewForLookIdentifier:self->_currentLookIdentifier];
    v16 = [v17 identifier];
    [(UnityPoster *)self _updateColorsForIdentifier:v16 upperQuiltView:v14 lowerQuiltView:v15 progress:a5];
  }
}

- (void)editor:(id)a3 didFinishTransitionToLook:(id)a4
{
  v10 = a4;
  v5 = +[UIDevice currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (v6 == 1)
  {
    v7 = [v10 identifier];

    if (v7)
    {
      v8 = [v10 identifier];
      currentLookIdentifier = self->_currentLookIdentifier;
      self->_currentLookIdentifier = v8;
    }

    [(UnityPoster *)self updateCurrentQuiltViewsForLookIdentifier:self->_currentLookIdentifier interfaceOrientation:self->_currentDeviceInterfaceOrientation unlockProgress:self->_unlockProgress];
  }
}

- (void)editor:(id)a3 finalizeWithCompletion:(id)a4
{
  v21 = a3;
  v5 = a4;
  v6 = [v21 environment];
  v7 = [v6 sourceContents];
  v8 = [v7 descriptorIdentifier];

  v9 = [v21 environment];
  v10 = [v9 sourceContents];
  v11 = [v10 loadUserInfoWithError:0];

  v12 = [v11 mutableCopy];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = +[NSMutableDictionary dictionary];
  }

  v15 = v14;

  if (v8)
  {
    v16 = v8;
  }

  else
  {
    v16 = @"<unknown>";
  }

  [v15 setObject:v16 forKey:@"descriptor"];
  v17 = [v21 currentLook];
  v18 = [v17 identifier];
  [v15 setObject:v18 forKey:@"lookIdentifier"];

  v19 = [v21 environment];
  v20 = [v19 targetConfiguration];
  [v20 storeUserInfo:v15 error:0];

  v5[2](v5);
}

- (void)editorDidInvalidate:(id)a3
{
  editor = self->_editor;
  self->_editor = 0;

  [(UnityPoster *)self cleanupQuiltViews];
}

- (void)updateDescriptors:(id)a3 completion:(id)a4
{
  v30 = a3;
  v5 = a4;
  v6 = v5;
  if (v5)
  {
    v26 = v5;
    v29 = [NSMutableArray arrayWithCapacity:3];
    v38[0] = @"3color";
    v38[1] = @"4color";
    v39[0] = @"green_lut3";
    v39[1] = @"green_lut4";
    [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:2];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v7 = v34 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v31 objects:v37 count:16];
    if (v8)
    {
      v9 = v8;
      v28 = *v32;
      v27 = PRTimeFontIdentifierPrivateSystemSoftHeavy;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v32 != v28)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v31 + 1) + 8 * i);
          v12 = [v30 objectForKeyedSubscript:v11];
          v13 = v12;
          if (!v12 || ([v12 preferredTitleColors], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "firstObject"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isLUTBackedColor"), v15, v14, (v16 & 1) == 0))
          {
            v17 = [PRMutablePosterDescriptor mutableDescriptorWithIdentifier:v11];
            v18 = [PRPosterColor alloc];
            v19 = [v7 objectForKey:v11];
            v20 = [v18 initWithLUTIdentifier:v19];
            v36 = v20;
            v21 = [NSArray arrayWithObjects:&v36 count:1];
            [v17 setPreferredTitleColors:v21];

            v22 = [[PRTimeFontConfiguration alloc] initWithTimeFontIdentifier:v27];
            v35 = v22;
            v23 = [NSArray arrayWithObjects:&v35 count:1];
            [v17 setPreferredTimeFontConfigurations:v23];

            v24 = +[NSMutableDictionary dictionary];
            [v24 setObject:v11 forKey:@"lookIdentifier"];
            [v17 storeUserInfo:v24 error:0];
            v25 = objc_alloc_init(ATXPosterDescriptorGalleryOptions);
            [v25 setAllowsSystemSuggestedComplications:0];
            [v17 storeGalleryOptions:v25 error:0];

            v13 = v17;
          }

          [v29 addObject:v13];
        }

        v9 = [v7 countByEnumeratingWithState:&v31 objects:v37 count:16];
      }

      while (v9);
    }

    v6 = v26;
    (*(v26 + 2))(v26, v29, 0);
  }
}

- (void)updateConfiguration:(id)a3 completion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4, a3, 0);
  }
}

@end