@interface UnityPoster
- (BOOL)wantsLowBrightness:(id)brightness;
- (CGRect)_timeLayoutRect;
- (id)_alternateGreenColor;
- (id)_alternateRedColor;
- (id)_alternateYellowColor;
- (id)_greenColor;
- (id)_redColor;
- (id)_yellowColor;
- (id)currentLowerQuiltViewForLookIdentifier:(id)identifier;
- (id)currentUpperQuiltViewForLookIdentifier:(id)identifier;
- (id)initialLookIdentifierForEditor:(id)editor;
- (id)interpolatedColorForIdentifier:(id)identifier progress:(double)progress;
- (id)looksForEditor:(id)editor;
- (int64_t)deviceOrientationFromEnvironment:(id)environment;
- (void)_setupConfigurationWithBounds:(CGRect)bounds upperQuiltView:(id)view lowerQuiltView:(id)quiltView;
- (void)_setupLowerQuiltViewsIfNecessaryInParentView:(id)view lookIdentifier:(id)identifier;
- (void)_setupQuiltViewIfNecessaryInParentView:(id)view lookIdentifier:(id)identifier;
- (void)_setupUpperQuiltViewsIfNecessaryInParentView:(id)view lookIdentifier:(id)identifier;
- (void)_setupViewsInBackgroundView:(id)view foregroundView:(id)foregroundView lookIdentifier:(id)identifier;
- (void)_updateColorsForIdentifier:(id)identifier upperQuiltView:(id)view lowerQuiltView:(id)quiltView progress:(double)progress;
- (void)cleanupQuiltViews;
- (void)editor:(id)editor didFinishTransitionToLook:(id)look;
- (void)editor:(id)editor didInitializeWithEnvironment:(id)environment;
- (void)editor:(id)editor didTransitionToLook:(id)look progress:(double)progress;
- (void)editor:(id)editor didUpdateEnvironment:(id)environment withTransition:(id)transition;
- (void)editor:(id)editor finalizeWithCompletion:(id)completion;
- (void)editor:(id)editor populateViews:(id)views forLook:(id)look;
- (void)editorDidInvalidate:(id)invalidate;
- (void)regenerateConfiguration;
- (void)renderer:(id)renderer didInitializeWithEnvironment:(id)environment;
- (void)renderer:(id)renderer didUpdateEnvironment:(id)environment withTransition:(id)transition;
- (void)rendererDidInvalidate:(id)invalidate;
- (void)setupFullscreenConstraintsForView:(id)view container:(id)container;
- (void)updateConfiguration:(id)configuration completion:(id)completion;
- (void)updateCurrentLowerQuiltView:(id)view lookIdentifier:(id)identifier;
- (void)updateCurrentQuiltView:(id)view forLookIdentifier:(id)identifier;
- (void)updateCurrentQuiltViewsForLookIdentifier:(id)identifier interfaceOrientation:(int64_t)orientation unlockProgress:(double)progress;
- (void)updateCurrentUpperQuiltView:(id)view lookIdentifier:(id)identifier;
- (void)updateDescriptors:(id)descriptors completion:(id)completion;
@end

@implementation UnityPoster

- (void)setupFullscreenConstraintsForView:(id)view container:(id)container
{
  containerCopy = container;
  viewCopy = view;
  [viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  leadingAnchor = [containerCopy leadingAnchor];
  leadingAnchor2 = [viewCopy leadingAnchor];
  v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v20[0] = v17;
  trailingAnchor = [containerCopy trailingAnchor];
  trailingAnchor2 = [viewCopy trailingAnchor];
  v9 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v20[1] = v9;
  topAnchor = [containerCopy topAnchor];
  topAnchor2 = [viewCopy topAnchor];
  v12 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v20[2] = v12;
  bottomAnchor = [containerCopy bottomAnchor];

  bottomAnchor2 = [viewCopy bottomAnchor];

  v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
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

- (id)interpolatedColorForIdentifier:(id)identifier progress:(double)progress
{
  identifierCopy = identifier;
  v7 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
  *&v8 = progress;
  [v7 _solveForInput:v8];
  v10 = v9;
  if ([identifierCopy isEqualToString:@"4color"])
  {
    _yellowColor2 = +[UIColor blackColor];
    _yellowColor = [(UnityPoster *)self _yellowColor];
LABEL_5:
    v13 = _yellowColor;
    goto LABEL_7;
  }

  if ([identifierCopy isEqualToString:@"3color"])
  {
    _yellowColor2 = [(UnityPoster *)self _yellowColor];
    _yellowColor = +[UIColor blackColor];
    goto LABEL_5;
  }

  v13 = 0;
  _yellowColor2 = 0;
LABEL_7:
  v22 = 0.0;
  v23 = 0.0;
  v20 = 0;
  v21 = 0.0;
  [_yellowColor2 getRed:&v23 green:&v22 blue:&v21 alpha:&v20];
  v18 = 0.0;
  v19 = 0.0;
  v16 = 0;
  v17 = 0.0;
  [v13 getRed:&v19 green:&v18 blue:&v17 alpha:&v16];
  v14 = [UIColor colorWithRed:(1.0 - v10) * v23 + v10 * v19 green:(1.0 - v10) * v22 + v10 * v18 blue:(1.0 - v10) * v21 + v10 * v17 alpha:1.0];

  return v14;
}

- (void)_updateColorsForIdentifier:(id)identifier upperQuiltView:(id)view lowerQuiltView:(id)quiltView progress:(double)progress
{
  identifierCopy = identifier;
  viewCopy = view;
  unityOptions = self->_unityOptions;
  quiltViewCopy = quiltView;
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
  [viewCopy setTopQuiltColor:v14];
  [viewCopy setBottomLeftQuiltColor:0];
  [viewCopy setBottomRightQuiltColor:v14];
  if (fabs(progress) <= 0.000001)
  {
    if ([identifierCopy isEqualToString:@"4color"])
    {
      [viewCopy setIntersectionPieceColor:v15];
      goto LABEL_16;
    }

    v16 = +[UIColor blackColor];
  }

  else
  {
    v16 = [(UnityPoster *)self interpolatedColorForIdentifier:identifierCopy progress:progress];
  }

  v17 = v16;
  [viewCopy setIntersectionPieceColor:v16];

LABEL_16:
  [quiltViewCopy setTopQuiltColor:0];
  [quiltViewCopy setBottomLeftQuiltColor:v13];
  [quiltViewCopy setIntersectionPieceColor:0];
  [quiltViewCopy setBottomRightQuiltColor:0];
}

- (void)_setupQuiltViewIfNecessaryInParentView:(id)view lookIdentifier:(id)identifier
{
  viewCopy = view;
  identifierCopy = identifier;
  if (!self->_quiltViews)
  {
    v7 = +[NSMutableDictionary dictionary];
    quiltViews = self->_quiltViews;
    self->_quiltViews = v7;
  }

  if (identifierCopy)
  {
    v9 = [(NSMutableDictionary *)self->_quiltViews objectForKey:identifierCopy];
    if (v9)
    {
LABEL_5:

      goto LABEL_7;
    }

    if (!self->_sharedQuiltView)
    {
      v10 = [UPQuiltViewPad alloc];
      [viewCopy bounds];
      v9 = [v10 initWithFrame:identifierCopy identifier:?];
      [(UnityPoster *)self _timeLayoutRect];
      [v9 setTimeRect:?];
      [CSProminentLayoutController frameForElements:16 variant:1];
      [v9 setLandscapeWidgetRect:?];
      [v9 updateQuiltsWithIdentifier:identifierCopy deviceInterfaceOrientation:self->_currentDeviceInterfaceOrientation unlockProgress:0.0];
      [viewCopy addSubview:v9];
      [(UnityPoster *)self setupFullscreenConstraintsForView:v9 container:viewCopy];
      [(UnityPoster *)self updateCurrentQuiltView:v9 forLookIdentifier:identifierCopy];
      goto LABEL_5;
    }
  }

LABEL_7:
}

- (void)_setupUpperQuiltViewsIfNecessaryInParentView:(id)view lookIdentifier:(id)identifier
{
  viewCopy = view;
  identifierCopy = identifier;
  if (!self->_upperQuiltViews)
  {
    v7 = +[NSMutableDictionary dictionary];
    upperQuiltViews = self->_upperQuiltViews;
    self->_upperQuiltViews = v7;
  }

  if (identifierCopy)
  {
    v9 = [(NSMutableDictionary *)self->_upperQuiltViews objectForKey:identifierCopy];
    if (v9)
    {
      goto LABEL_5;
    }

    if (!self->_sharedUpperQuiltView)
    {
      v9 = [(UnityPoster *)self currentUpperQuiltViewForLookIdentifier:identifierCopy];
      if (!v9)
      {
        v11 = [UPQuiltViewPhone alloc];
        [viewCopy bounds];
        v10 = [v11 initWithFrame:?];
        [(UnityPoster *)self _timeLayoutRect];
        [v10 setTimeRect:?];
        [CSProminentLayoutController frameForElements:16 variant:1];
        [v10 setLandscapeWidgetRect:?];
        [viewCopy addSubview:v10];
        [(UnityPoster *)self updateCurrentUpperQuiltView:v10 lookIdentifier:identifierCopy];
        [(UnityPoster *)self setupFullscreenConstraintsForView:v10 container:viewCopy];
        goto LABEL_6;
      }

LABEL_5:
      v10 = v9;
LABEL_6:
    }
  }
}

- (void)_setupLowerQuiltViewsIfNecessaryInParentView:(id)view lookIdentifier:(id)identifier
{
  viewCopy = view;
  identifierCopy = identifier;
  if (!self->_lowerQuiltViews)
  {
    v7 = +[NSMutableDictionary dictionary];
    lowerQuiltViews = self->_lowerQuiltViews;
    self->_lowerQuiltViews = v7;
  }

  if (identifierCopy)
  {
    v9 = [(NSMutableDictionary *)self->_lowerQuiltViews objectForKey:identifierCopy];
    if (v9)
    {
      goto LABEL_5;
    }

    if (!self->_sharedLowerQuiltView)
    {
      v9 = [(UnityPoster *)self currentLowerQuiltViewForLookIdentifier:identifierCopy];
      if (!v9)
      {
        v11 = [UPQuiltViewPhone alloc];
        [viewCopy bounds];
        v10 = [v11 initWithFrame:?];
        [(UnityPoster *)self _timeLayoutRect];
        [v10 setTimeRect:?];
        [v10 setQuiltViewDelegate:self];
        [viewCopy addSubview:v10];
        [(UnityPoster *)self updateCurrentLowerQuiltView:v10 lookIdentifier:identifierCopy];
        [(UnityPoster *)self setupFullscreenConstraintsForView:v10 container:viewCopy];
        goto LABEL_6;
      }

LABEL_5:
      v10 = v9;
LABEL_6:
    }
  }
}

- (void)_setupViewsInBackgroundView:(id)view foregroundView:(id)foregroundView lookIdentifier:(id)identifier
{
  viewCopy = view;
  foregroundViewCopy = foregroundView;
  identifierCopy = identifier;
  [viewCopy bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v18 userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    [(UnityPoster *)self _setupQuiltViewIfNecessaryInParentView:foregroundViewCopy lookIdentifier:self->_currentLookIdentifier];
  }

  else
  {
    v20 = +[UIDevice currentDevice];
    userInterfaceIdiom2 = [v20 userInterfaceIdiom];

    if (!userInterfaceIdiom2)
    {
      [(UnityPoster *)self _setupUpperQuiltViewsIfNecessaryInParentView:foregroundViewCopy lookIdentifier:identifierCopy];
      [(UnityPoster *)self _setupLowerQuiltViewsIfNecessaryInParentView:viewCopy lookIdentifier:identifierCopy];
      v22 = +[UIColor blackColor];
      [viewCopy setBackgroundColor:v22];

      v23 = [(UnityPoster *)self currentUpperQuiltViewForLookIdentifier:identifierCopy];
      v24 = [(UnityPoster *)self currentLowerQuiltViewForLookIdentifier:identifierCopy];
      [(UnityPoster *)self _setupConfigurationWithBounds:v23 upperQuiltView:v24 lowerQuiltView:v11, v13, v15, v17];
      [(UnityPoster *)self _updateColorsForIdentifier:identifierCopy upperQuiltView:v23 lowerQuiltView:v24 progress:0.0];
      [(UnityPoster *)self updateCurrentUpperQuiltView:v23 lookIdentifier:identifierCopy];
      [(UnityPoster *)self updateCurrentLowerQuiltView:v24 lookIdentifier:identifierCopy];
    }
  }
}

- (void)_setupConfigurationWithBounds:(CGRect)bounds upperQuiltView:(id)view lowerQuiltView:(id)quiltView
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  quiltViewCopy = quiltView;
  viewCopy = view;
  [CSProminentLayoutController frameForElements:1 variant:1];
  v13 = [UPQuiltConfigurationPhone alloc];
  [(UnityPoster *)self _timeLayoutRect];
  v18 = [v13 initWithRandomizationSeedValue:0 viewport:x timeBounds:y lineVariance:{width, height, v14, v15, v16, v17, 0x3FC999999999999ALL}];
  [viewCopy setConfiguration:v18];

  [quiltViewCopy setConfiguration:v18];
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
  userInterfaceIdiom = [v3 userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    p_quiltViews = &self->_quiltViews;
    allValues = [(NSMutableDictionary *)self->_quiltViews allValues];
    v7 = [allValues countByEnumeratingWithState:&v33 objects:v39 count:16];
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
            objc_enumerationMutation(allValues);
          }

          [*(*(&v33 + 1) + 8 * i) removeFromSuperview];
        }

        v8 = [allValues countByEnumeratingWithState:&v33 objects:v39 count:16];
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
    userInterfaceIdiom2 = [v12 userInterfaceIdiom];

    if (userInterfaceIdiom2)
    {
      return;
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    allValues2 = [(NSMutableDictionary *)self->_lowerQuiltViews allValues];
    v15 = [allValues2 countByEnumeratingWithState:&v29 objects:v38 count:16];
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
            objc_enumerationMutation(allValues2);
          }

          [*(*(&v29 + 1) + 8 * j) removeFromSuperview];
        }

        v16 = [allValues2 countByEnumeratingWithState:&v29 objects:v38 count:16];
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
    allValues = [(NSMutableDictionary *)self->_upperQuiltViews allValues];
    v20 = [allValues countByEnumeratingWithState:&v25 objects:v37 count:16];
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
            objc_enumerationMutation(allValues);
          }

          [*(*(&v25 + 1) + 8 * k) removeFromSuperview];
        }

        v21 = [allValues countByEnumeratingWithState:&v25 objects:v37 count:16];
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

- (BOOL)wantsLowBrightness:(id)brightness
{
  brightnessCopy = brightness;
  if ([brightnessCopy isLowLuminance])
  {
    v4 = 1;
  }

  else
  {
    traitCollection = [brightnessCopy traitCollection];
    if ([traitCollection _backlightLuminance] == 1)
    {
      v4 = 1;
    }

    else
    {
      traitCollection2 = [brightnessCopy traitCollection];
      v4 = [traitCollection2 _backlightLuminance] == 0;
    }
  }

  return v4;
}

- (int64_t)deviceOrientationFromEnvironment:(id)environment
{
  result = [environment deviceOrientation];
  if (result <= 1)
  {
    return 1;
  }

  return result;
}

- (void)updateCurrentQuiltViewsForLookIdentifier:(id)identifier interfaceOrientation:(int64_t)orientation unlockProgress:(double)progress
{
  sharedQuiltView = self->_sharedQuiltView;
  if (sharedQuiltView)
  {

    [(UPQuiltViewPad *)sharedQuiltView updateQuiltsWithIdentifier:identifier deviceInterfaceOrientation:orientation unlockProgress:progress];
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
    v10[4] = orientation;
    *&v10[5] = progress;
    [(NSMutableDictionary *)quiltViews enumerateKeysAndObjectsUsingBlock:v10];
  }
}

- (void)updateCurrentQuiltView:(id)view forLookIdentifier:(id)identifier
{
  viewCopy = view;
  v8 = viewCopy;
  if (self->_renderer)
  {
    objc_storeStrong(&self->_sharedQuiltView, view);
  }

  else
  {
    [(NSMutableDictionary *)self->_quiltViews setObject:viewCopy forKey:identifier];
  }
}

- (void)updateCurrentUpperQuiltView:(id)view lookIdentifier:(id)identifier
{
  viewCopy = view;
  v8 = viewCopy;
  if (self->_renderer)
  {
    objc_storeStrong(&self->_sharedUpperQuiltView, view);
  }

  else
  {
    [(NSMutableDictionary *)self->_upperQuiltViews setObject:viewCopy forKey:identifier];
  }
}

- (void)updateCurrentLowerQuiltView:(id)view lookIdentifier:(id)identifier
{
  viewCopy = view;
  v8 = viewCopy;
  if (self->_renderer)
  {
    objc_storeStrong(&self->_sharedLowerQuiltView, view);
  }

  else
  {
    [(NSMutableDictionary *)self->_lowerQuiltViews setObject:viewCopy forKey:identifier];
  }
}

- (id)currentUpperQuiltViewForLookIdentifier:(id)identifier
{
  if (self->_renderer)
  {
    v3 = self->_sharedUpperQuiltView;
  }

  else
  {
    v3 = [(NSMutableDictionary *)self->_upperQuiltViews objectForKey:identifier];
  }

  return v3;
}

- (id)currentLowerQuiltViewForLookIdentifier:(id)identifier
{
  if (self->_renderer)
  {
    v3 = self->_sharedLowerQuiltView;
  }

  else
  {
    v3 = [(NSMutableDictionary *)self->_lowerQuiltViews objectForKey:identifier];
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

- (void)renderer:(id)renderer didInitializeWithEnvironment:(id)environment
{
  rendererCopy = renderer;
  environmentCopy = environment;
  objc_storeStrong(&self->_renderer, renderer);
  if (!self->_unityOptions)
  {
    v9 = objc_alloc_init(UnityOptions);
    unityOptions = self->_unityOptions;
    self->_unityOptions = v9;
  }

  [(UnityOptions *)self->_unityOptions setLowBrightness:[(UnityPoster *)self wantsLowBrightness:environmentCopy]];
  self->_isPreview = [environmentCopy isPreview];
  *&self->_unlockProgress = xmmword_100005E10;
  contents = [environmentCopy contents];
  v12 = [contents loadUserInfoWithError:0];

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
  backgroundView = [rendererCopy backgroundView];
  foregroundView = [rendererCopy foregroundView];
  [(UnityPoster *)self _setupViewsInBackgroundView:backgroundView foregroundView:foregroundView lookIdentifier:self->_currentLookIdentifier];

  [(UnityPoster *)self _greenColor];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100002FE0;
  v17 = v29[3] = &unk_10000C430;
  v30 = v17;
  [rendererCopy updatePreferences:v29];
  wakeProgress = self->_wakeProgress;
  [environmentCopy backlightProgress];
  if (wakeProgress != v19)
  {
    [environmentCopy backlightProgress];
    self->_wakeProgress = v20;
  }

  v21 = 0.0;
  if (!UIAccessibilityIsReduceMotionEnabled())
  {
    unlockProgress = self->_unlockProgress;
    [environmentCopy unlockProgress];
    if (unlockProgress == v23)
    {
      goto LABEL_15;
    }

    [environmentCopy unlockProgress];
    v21 = v24;
  }

  self->_unlockProgress = v21;
LABEL_15:
  self->_currentDeviceInterfaceOrientation = [(UnityPoster *)self deviceOrientationFromEnvironment:environmentCopy];
  v25 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v25 userInterfaceIdiom];

  if (!userInterfaceIdiom)
  {
    v27 = [(UnityPoster *)self currentUpperQuiltViewForLookIdentifier:self->_currentLookIdentifier];
    v28 = [(UnityPoster *)self currentLowerQuiltViewForLookIdentifier:self->_currentLookIdentifier];
    [v27 updateQuiltsWithUnlockProgress:self->_unlockProgress wakeProgress:self->_wakeProgress];
    [v28 updateQuiltsWithUnlockProgress:self->_unlockProgress wakeProgress:self->_wakeProgress];
  }
}

- (void)renderer:(id)renderer didUpdateEnvironment:(id)environment withTransition:(id)transition
{
  environmentCopy = environment;
  self->_isPreview = [environmentCopy isPreview];
  wakeProgress = self->_wakeProgress;
  [environmentCopy backlightProgress];
  if (wakeProgress != v7)
  {
    [environmentCopy backlightProgress];
    self->_wakeProgress = v8;
  }

  v9 = [(UnityPoster *)self wantsLowBrightness:environmentCopy];
  if (v9 != [(UnityOptions *)self->_unityOptions lowBrightness])
  {
    [(UnityOptions *)self->_unityOptions setLowBrightness:v9];
  }

  contents = [environmentCopy contents];
  v11 = [contents loadUserInfoWithError:0];

  v12 = [v11 objectForKey:@"lookIdentifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v13 userInterfaceIdiom];

    if (!userInterfaceIdiom)
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
    [environmentCopy unlockProgress];
    if (unlockProgress == v19)
    {
      goto LABEL_12;
    }

    [environmentCopy unlockProgress];
    v17 = v20;
  }

  self->_unlockProgress = v17;
LABEL_12:
  v21 = +[UIDevice currentDevice];
  userInterfaceIdiom2 = [v21 userInterfaceIdiom];

  if (userInterfaceIdiom2 == 1)
  {
    v23 = [(UnityPoster *)self deviceOrientationFromEnvironment:environmentCopy];
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
  userInterfaceIdiom3 = [v25 userInterfaceIdiom];

  if (!userInterfaceIdiom3)
  {
    v27 = [(UnityPoster *)self currentUpperQuiltViewForLookIdentifier:self->_currentLookIdentifier];
    v28 = [(UnityPoster *)self currentLowerQuiltViewForLookIdentifier:self->_currentLookIdentifier];
    [v27 updateQuiltsWithUnlockProgress:self->_unlockProgress wakeProgress:self->_wakeProgress];
    [v28 updateQuiltsWithUnlockProgress:self->_unlockProgress wakeProgress:self->_wakeProgress];
  }
}

- (void)rendererDidInvalidate:(id)invalidate
{
  [(UnityPoster *)self cleanupQuiltViews];
  renderer = self->_renderer;
  self->_renderer = 0;
}

- (void)editor:(id)editor didInitializeWithEnvironment:(id)environment
{
  editorCopy = editor;
  objc_storeStrong(&self->_editor, editor);
  environmentCopy = environment;
  v8 = [(UnityPoster *)self deviceOrientationFromEnvironment:environmentCopy];

  currentDeviceInterfaceOrientation = self->_currentDeviceInterfaceOrientation;
  if (!currentDeviceInterfaceOrientation || v8 != currentDeviceInterfaceOrientation)
  {
    self->_currentDeviceInterfaceOrientation = v8;
    [(UnityPoster *)self updateCurrentQuiltViewsForLookIdentifier:self->_currentLookIdentifier interfaceOrientation:v8 unlockProgress:0.0];
  }
}

- (void)editor:(id)editor didUpdateEnvironment:(id)environment withTransition:(id)transition
{
  v6 = [(UnityPoster *)self deviceOrientationFromEnvironment:environment];
  if (v6 != self->_currentDeviceInterfaceOrientation)
  {
    self->_currentDeviceInterfaceOrientation = v6;
    currentLookIdentifier = self->_currentLookIdentifier;

    [(UnityPoster *)self updateCurrentQuiltViewsForLookIdentifier:currentLookIdentifier interfaceOrientation:v6 unlockProgress:0.0];
  }
}

- (id)looksForEditor:(id)editor
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

- (id)initialLookIdentifierForEditor:(id)editor
{
  environment = [editor environment];
  sourceContents = [environment sourceContents];
  v5 = [sourceContents loadUserInfoWithError:0];

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

- (void)editor:(id)editor populateViews:(id)views forLook:(id)look
{
  viewsCopy = views;
  lookCopy = look;
  v8 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v8 userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    identifier = [lookCopy identifier];

    if (identifier)
    {
      identifier2 = [lookCopy identifier];
      currentLookIdentifier = self->_currentLookIdentifier;
      self->_currentLookIdentifier = identifier2;
    }

    foregroundView = [viewsCopy foregroundView];
    [(UnityPoster *)self _setupQuiltViewIfNecessaryInParentView:foregroundView lookIdentifier:self->_currentLookIdentifier];

    backgroundView = [(NSMutableDictionary *)self->_quiltViews objectForKey:self->_currentLookIdentifier];
    [backgroundView updateQuiltsWithIdentifier:self->_currentLookIdentifier deviceInterfaceOrientation:self->_currentDeviceInterfaceOrientation unlockProgress:0.0];
  }

  else
  {
    v15 = +[UIDevice currentDevice];
    userInterfaceIdiom2 = [v15 userInterfaceIdiom];

    if (userInterfaceIdiom2)
    {
      goto LABEL_10;
    }

    identifier3 = [lookCopy identifier];

    if (identifier3)
    {
      identifier4 = [lookCopy identifier];
      v19 = self->_currentLookIdentifier;
      self->_currentLookIdentifier = identifier4;
    }

    backgroundView = [viewsCopy backgroundView];
    foregroundView2 = [viewsCopy foregroundView];
    identifier5 = [lookCopy identifier];
    [(UnityPoster *)self _setupViewsInBackgroundView:backgroundView foregroundView:foregroundView2 lookIdentifier:identifier5];
  }

LABEL_10:
}

- (void)editor:(id)editor didTransitionToLook:(id)look progress:(double)progress
{
  lookCopy = look;
  currentLook = [editor currentLook];
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
  userInterfaceIdiom = [v12 userInterfaceIdiom];

  if (!userInterfaceIdiom)
  {
    v14 = [(UnityPoster *)self currentUpperQuiltViewForLookIdentifier:self->_currentLookIdentifier];
    v15 = [(UnityPoster *)self currentLowerQuiltViewForLookIdentifier:self->_currentLookIdentifier];
    identifier = [lookCopy identifier];
    [(UnityPoster *)self _updateColorsForIdentifier:identifier upperQuiltView:v14 lowerQuiltView:v15 progress:progress];
  }
}

- (void)editor:(id)editor didFinishTransitionToLook:(id)look
{
  lookCopy = look;
  v5 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v5 userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    identifier = [lookCopy identifier];

    if (identifier)
    {
      identifier2 = [lookCopy identifier];
      currentLookIdentifier = self->_currentLookIdentifier;
      self->_currentLookIdentifier = identifier2;
    }

    [(UnityPoster *)self updateCurrentQuiltViewsForLookIdentifier:self->_currentLookIdentifier interfaceOrientation:self->_currentDeviceInterfaceOrientation unlockProgress:self->_unlockProgress];
  }
}

- (void)editor:(id)editor finalizeWithCompletion:(id)completion
{
  editorCopy = editor;
  completionCopy = completion;
  environment = [editorCopy environment];
  sourceContents = [environment sourceContents];
  descriptorIdentifier = [sourceContents descriptorIdentifier];

  environment2 = [editorCopy environment];
  sourceContents2 = [environment2 sourceContents];
  v11 = [sourceContents2 loadUserInfoWithError:0];

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

  if (descriptorIdentifier)
  {
    v16 = descriptorIdentifier;
  }

  else
  {
    v16 = @"<unknown>";
  }

  [v15 setObject:v16 forKey:@"descriptor"];
  currentLook = [editorCopy currentLook];
  identifier = [currentLook identifier];
  [v15 setObject:identifier forKey:@"lookIdentifier"];

  environment3 = [editorCopy environment];
  targetConfiguration = [environment3 targetConfiguration];
  [targetConfiguration storeUserInfo:v15 error:0];

  completionCopy[2](completionCopy);
}

- (void)editorDidInvalidate:(id)invalidate
{
  editor = self->_editor;
  self->_editor = 0;

  [(UnityPoster *)self cleanupQuiltViews];
}

- (void)updateDescriptors:(id)descriptors completion:(id)completion
{
  descriptorsCopy = descriptors;
  completionCopy = completion;
  v6 = completionCopy;
  if (completionCopy)
  {
    v26 = completionCopy;
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
          v12 = [descriptorsCopy objectForKeyedSubscript:v11];
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

- (void)updateConfiguration:(id)configuration completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, configuration, 0);
  }
}

@end