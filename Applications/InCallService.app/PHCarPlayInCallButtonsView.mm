@interface PHCarPlayInCallButtonsView
- (PHCarPlayInCallButtonsView)initWithFrame:(CGRect)a3;
- (float)distributedFractionForUndistributedFraction:(float)a3;
- (id)buttonForButtonType:(int)a3 createIfNecessary:(BOOL)a4 createWithHorizontalPositionFraction:(float)a5;
- (id)existingButtonsNotInArray:(id)a3;
- (id)keyForButtonType:(int)a3;
- (id)preferredFocusEnvironments;
- (int64_t)numberOfControls;
- (void)applyHorizontalPositioningConstraintWithFraction:(float)a3 forButton:(id)a4;
- (void)applyHorizontalPositioningConstraintWithFraction:(float)a3 forDividerView:(id)a4;
- (void)buttonWasTapped:(id)a3;
- (void)dealloc;
- (void)removeButtons:(id)a3;
- (void)setButtonsMode:(int)a3 animated:(BOOL)a4;
- (void)setMuted:(BOOL)a3;
- (void)updateButtonsForCallModelState;
@end

@implementation PHCarPlayInCallButtonsView

- (void)updateButtonsForCallModelState
{
  v12 = [(PHCarPlayInCallButtonsView *)self buttonForButtonType:3 createIfNecessary:0 createWithHorizontalPositionFraction:0.0];
  if (v12)
  {
    v3 = [(PHCarPlayInCallButtonsView *)self delegate];
    [v12 setEnabled:{objc_msgSend(v3, "isAddCallAllowed")}];
  }

  v4 = [(PHCarPlayInCallButtonsView *)self buttonForButtonType:5 createIfNecessary:0 createWithHorizontalPositionFraction:0.0];
  if (v4)
  {
    v5 = [(PHCarPlayInCallButtonsView *)self delegate];
    [v4 setEnabled:{objc_msgSend(v5, "isMergeCallsAllowed")}];
  }

  v6 = [(PHCarPlayInCallButtonsView *)self buttonForButtonType:6 createIfNecessary:0 createWithHorizontalPositionFraction:0.0];
  if (v6)
  {
    v7 = [(PHCarPlayInCallButtonsView *)self delegate];
    [v6 setEnabled:{objc_msgSend(v7, "isSwapCallsAllowed")}];
  }

  v8 = [(PHCarPlayInCallButtonsView *)self buttonForButtonType:2 createIfNecessary:0 createWithHorizontalPositionFraction:0.0];
  if (v8)
  {
    v9 = [(PHCarPlayInCallButtonsView *)self delegate];
    [v8 setEnabled:{objc_msgSend(v9, "isKeypadEnabled")}];
  }

  v10 = [(PHCarPlayInCallButtonsView *)self buttonForButtonType:18 createIfNecessary:0 createWithHorizontalPositionFraction:0.0];
  if (v10)
  {
    v11 = [(PHCarPlayInCallButtonsView *)self delegate];
    [v10 setToggledOn:{objc_msgSend(v11, "isHoldEnabled")}];
  }
}

- (id)preferredFocusEnvironments
{
  buttonsMode = self->_buttonsMode;
  if (buttonsMode == 5)
  {
LABEL_4:
    v3 = [(PHCarPlayInCallButtonsView *)self buttonsArray];
    v4 = [v3 objectAtIndex:0];
    goto LABEL_6;
  }

  if (buttonsMode != 3)
  {
    if (buttonsMode)
    {
      goto LABEL_8;
    }

    goto LABEL_4;
  }

  v3 = [(PHCarPlayInCallButtonsView *)self buttonsArray];
  v4 = [v3 lastObject];
LABEL_6:
  v5 = v4;

  if (v5)
  {
    v8 = v5;
    v6 = [NSArray arrayWithObjects:&v8 count:1];

    goto LABEL_9;
  }

LABEL_8:
  v6 = &__NSArray0__struct;
LABEL_9:

  return v6;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  [NSObject cancelPreviousPerformRequestsWithTarget:self];
  self->_delegate = 0;
  v4.receiver = self;
  v4.super_class = PHCarPlayInCallButtonsView;
  [(PHCarPlayInCallButtonsView *)&v4 dealloc];
}

- (PHCarPlayInCallButtonsView)initWithFrame:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = PHCarPlayInCallButtonsView;
  v3 = [(PHCarPlayInCallButtonsView *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = v3;
  if (v3)
  {
    LODWORD(v4) = 1066779279;
    [(PHCarPlayInCallButtonsView *)v3 setButtonDistributionScalingFactor:v4];
    v6 = +[NSMutableDictionary dictionary];
    [(PHCarPlayInCallButtonsView *)v5 setButtonsDictionary:v6];

    v7 = +[NSMutableArray array];
    [(PHCarPlayInCallButtonsView *)v5 setButtonDividerViews:v7];

    if (_os_feature_enabled_impl())
    {
      +[UIColor clearColor];
    }

    else
    {
      +[UIColor tableBackgroundColor];
    }
    v8 = ;
    [(PHCarPlayInCallButtonsView *)v5 setBackgroundColor:v8];

    [(PHCarPlayInCallButtonsView *)v5 setOpaque:0];
    v5->_buttonsMode = -1;
    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v5 selector:"callModelChangedNotification:" name:TUCallModelChangedNotification object:0];

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:v5 selector:"phoneCallStatusChangedNotification:" name:TUCallCenterCallStatusChangedNotification object:0];
  }

  return v5;
}

- (int64_t)numberOfControls
{
  v2 = [(PHCarPlayInCallButtonsView *)self buttonsArray];
  v3 = [v2 count];

  return v3;
}

- (void)setMuted:(BOOL)a3
{
  v3 = a3;
  v4 = [(PHCarPlayInCallButtonsView *)self buttonForButtonType:1 createIfNecessary:0 createWithHorizontalPositionFraction:0.0];
  [v4 setToggledOn:v3];
}

- (void)setButtonsMode:(int)a3 animated:(BOOL)a4
{
  v6 = sub_100004F84();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v71 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "buttonsMode: %d", buf, 8u);
  }

  LODWORD(v7) = 1066779279;
  [(PHCarPlayInCallButtonsView *)self setButtonDistributionScalingFactor:v7];
  v8 = 0;
  if (a3 > 3)
  {
    if (a3 > 5)
    {
      if (a3 == 6)
      {
        v8 = &off_10036AEB0;
        goto LABEL_28;
      }

      if (a3 != 7)
      {
        goto LABEL_28;
      }

      v25 = [(PHCarPlayInCallButtonsView *)self delegate];
      v10 = [v25 isKeypadAllowed];

      v11 = &off_10036AF10;
      v12 = &off_10036AEF8;
      goto LABEL_25;
    }

    if (a3 == 4)
    {
      v8 = &off_10036AE68;
      goto LABEL_28;
    }

    v13 = +[TUCallCenter sharedInstance];
    v14 = [v13 isHoldAndAnswerAllowed];

    if (!v14)
    {
      v27 = [(PHCarPlayInCallButtonsView *)self delegate];
      v10 = [v27 canSendMessage];

      v11 = &off_10036AEE0;
      v12 = &off_10036AEC8;
LABEL_25:
      if (v10)
      {
        v8 = v12;
      }

      else
      {
        v8 = v11;
      }

      goto LABEL_28;
    }

    v15 = +[TUCallCenter sharedInstance];
    v16 = [v15 callWithStatus:2];
    if (v16)
    {
      v17 = v16;
      v18 = +[TUCallCenter sharedInstance];
      v19 = [v18 callWithStatus:1];

      if (v19)
      {
        v69 = &off_10036A4A8;
        v20 = &off_10036A4C0;
        v21 = &v69;
LABEL_41:
        v43 = [(PHCarPlayInCallButtonsView *)self delegate];
        if ([v43 isSendToVoicemailAllowed])
        {
          v44 = 17;
        }

        else
        {
          v44 = 14;
        }

        v45 = [NSNumber numberWithInt:v44];
        v21[1] = v45;
        v21[2] = v20;
        v8 = [NSArray arrayWithObjects:v21 count:3];

        LODWORD(v46) = 1.25;
        [(PHCarPlayInCallButtonsView *)self setButtonDistributionScalingFactor:v46];
        goto LABEL_28;
      }
    }

    else
    {
    }

    v68 = &off_10036A4A8;
    v20 = &off_10036A4D8;
    v21 = &v68;
    goto LABEL_41;
  }

  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_28;
      }

      v9 = [(PHCarPlayInCallButtonsView *)self delegate];
      v10 = [v9 isKeypadAllowed];

      v11 = &off_10036AE38;
      v12 = &off_10036AE20;
    }

    else
    {
      v26 = [(PHCarPlayInCallButtonsView *)self delegate];
      v10 = [v26 isKeypadAllowed];

      v11 = &off_10036AE08;
      v12 = &off_10036ADF0;
    }

    goto LABEL_25;
  }

  if (a3 == 2)
  {
    v8 = &off_10036AE50;
  }

  else
  {
    v22 = [(PHCarPlayInCallButtonsView *)self delegate];
    v23 = [v22 canSendMessage];

    if (v23)
    {
      LODWORD(v24) = 1.25;
      [(PHCarPlayInCallButtonsView *)self setButtonDistributionScalingFactor:v24];
      v8 = &off_10036AE80;
    }

    else
    {
      v8 = &off_10036AE98;
    }
  }

LABEL_28:
  v28 = +[NSMutableArray array];
  v64[0] = _NSConcreteStackBlock;
  v64[1] = 3221225472;
  v64[2] = sub_100103850;
  v64[3] = &unk_1003597B8;
  v64[4] = self;
  v66 = (1.0 / ([v8 count] + 1.0));
  v29 = v28;
  v65 = v29;
  [v8 enumerateObjectsUsingBlock:v64];
  [(PHCarPlayInCallButtonsView *)self setNeedsLayout];
  [(PHCarPlayInCallButtonsView *)self layoutIfNeeded];
  [(PHCarPlayInCallButtonsView *)self setButtonsArray:v29];
  v30 = +[NSMutableArray array];
  v31 = [(PHCarPlayInCallButtonsView *)self existingButtonsNotInArray:v29];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v32 = [v31 countByEnumeratingWithState:&v60 objects:v67 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v61;
    do
    {
      for (i = 0; i != v33; i = i + 1)
      {
        if (*v61 != v34)
        {
          objc_enumerationMutation(v31);
        }

        if ([*(*(&v60 + 1) + 8 * i) isSelected])
        {
          [(PHCarPlayInCallButtonsView *)self setNeedsFocusUpdate];
        }
      }

      v33 = [v31 countByEnumeratingWithState:&v60 objects:v67 count:16];
    }

    while (v33);
  }

  v55[0] = _NSConcreteStackBlock;
  v55[1] = 3221225472;
  v55[2] = sub_1001038DC;
  v55[3] = &unk_1003572C8;
  v56 = v29;
  v57 = self;
  v36 = v31;
  v58 = v36;
  v37 = v30;
  v59 = v37;
  v38 = v29;
  v39 = objc_retainBlock(v55);
  v47 = _NSConcreteStackBlock;
  v48 = 3221225472;
  v49 = sub_100103BFC;
  v50 = &unk_1003597E0;
  v54 = a3;
  v51 = self;
  v52 = v36;
  v53 = v37;
  v40 = v37;
  v41 = v36;
  v42 = objc_retainBlock(&v47);
  [UIView animateWithDuration:v39 animations:v42 completion:0.349999994, v47, v48, v49, v50, v51];
  [(PHCarPlayInCallButtonsView *)self updateButtonsForCallModelState];
  self->_buttonsMode = a3;
}

- (void)removeButtons:(id)a3
{
  v13 = a3;
  v4 = [(PHCarPlayInCallButtonsView *)self buttonsDictionary];
  v5 = [v4 keyEnumerator];

  v6 = +[NSMutableArray array];
  v7 = [v5 nextObject];
  if (v7)
  {
    v8 = v7;
    do
    {
      v9 = [(PHCarPlayInCallButtonsView *)self buttonsDictionary];
      v10 = [v9 objectForKey:v8];

      if ([v13 containsObject:v10])
      {
        [v10 removeFromSuperview];
        [v6 addObject:v8];
      }

      v11 = [v5 nextObject];

      v8 = v11;
    }

    while (v11);
  }

  v12 = [(PHCarPlayInCallButtonsView *)self buttonsDictionary];
  [v12 removeObjectsForKeys:v6];
}

- (void)applyHorizontalPositioningConstraintWithFraction:(float)a3 forButton:(id)a4
{
  v11 = a4;
  v6 = [v11 horizontalPositioningConstraint];

  if (v6)
  {
    v8 = [v11 horizontalPositioningConstraint];
    [(PHCarPlayInCallButtonsView *)self removeConstraint:v8];
  }

  *&v7 = a3;
  [(PHCarPlayInCallButtonsView *)self distributedFractionForUndistributedFraction:v7];
  v10 = [NSLayoutConstraint constraintWithItem:v11 attribute:9 relatedBy:0 toItem:self attribute:2 multiplier:v9 constant:0.0];
  [(PHCarPlayInCallButtonsView *)self addConstraint:v10];
  [v11 setHorizontalPositioningConstraint:v10];
}

- (void)applyHorizontalPositioningConstraintWithFraction:(float)a3 forDividerView:(id)a4
{
  v11 = a4;
  v6 = [v11 horizontalPositioningConstraint];

  if (v6)
  {
    v8 = [v11 horizontalPositioningConstraint];
    [(PHCarPlayInCallButtonsView *)self removeConstraint:v8];
  }

  *&v7 = a3;
  [(PHCarPlayInCallButtonsView *)self distributedFractionForUndistributedFraction:v7];
  v10 = [NSLayoutConstraint constraintWithItem:v11 attribute:9 relatedBy:0 toItem:self attribute:2 multiplier:v9 constant:0.0];
  [(PHCarPlayInCallButtonsView *)self addConstraint:v10];
  [v11 setHorizontalPositioningConstraint:v10];
}

- (float)distributedFractionForUndistributedFraction:(float)a3
{
  v3 = a3 + -0.5;
  [(PHCarPlayInCallButtonsView *)self buttonDistributionScalingFactor];
  return (v3 * v4) + 0.5;
}

- (id)buttonForButtonType:(int)a3 createIfNecessary:(BOOL)a4 createWithHorizontalPositionFraction:(float)a5
{
  v6 = a4;
  v7 = *&a3;
  v9 = [(PHCarPlayInCallButtonsView *)self delegate];
  v10 = [v9 currentCallState];

  v11 = [(PHCarPlayInCallButtonsView *)self keyForButtonType:v7];
  v12 = [NSString stringWithFormat:@"%@%ld", v11, v10];

  v13 = [(PHCarPlayInCallButtonsView *)self buttonsDictionary];
  v14 = [v13 objectForKeyedSubscript:v12];

  if (v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = !v6;
  }

  if (!v15)
  {
    v16 = [PHCarPlayInCallButton alloc];
    v17 = [(PHCarPlayInCallButtonsView *)self delegate];
    v14 = -[PHCarPlayInCallButton initForButtonType:callState:](v16, "initForButtonType:callState:", v7, [v17 currentCallState]);

    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v14 addTarget:self action:"buttonWasTapped:" forControlEvents:64];
    v18 = [(PHCarPlayInCallButtonsView *)self keyForButtonType:v7];
    v19 = [NSString stringWithFormat:@"%@", v18];
    [v14 setAccessibilityIdentifier:v19];

    [(PHCarPlayInCallButtonsView *)self addSubview:v14];
    LODWORD(v20) = 1148846080;
    v21 = [NSLayoutConstraint constraintWithItem:v14 attribute:12 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:58.0 priority:v20];
    [(PHCarPlayInCallButtonsView *)self addConstraint:v21];
    *&v22 = a5;
    [(PHCarPlayInCallButtonsView *)self applyHorizontalPositioningConstraintWithFraction:v14 forButton:v22];
    [v14 setAlpha:0.0];
    v23 = [(PHCarPlayInCallButtonsView *)self buttonsDictionary];
    [v23 setObject:v14 forKeyedSubscript:v12];

    if (v7 == 1)
    {
      v24 = [(PHCarPlayInCallButtonsView *)self delegate];
      -[PHCarPlayInCallButtonsView setMuted:](self, "setMuted:", [v24 isMuted]);
    }
  }

  return v14;
}

- (id)existingButtonsNotInArray:(id)a3
{
  v4 = a3;
  v5 = [(PHCarPlayInCallButtonsView *)self buttonsDictionary];
  v6 = [v5 allValues];
  v7 = [v6 mutableCopy];

  [v7 removeObjectsInArray:v4];

  return v7;
}

- (id)keyForButtonType:(int)a3
{
  if (a3 > 0x13)
  {
    return 0;
  }

  else
  {
    return off_100359800[a3];
  }
}

- (void)buttonWasTapped:(id)a3
{
  v4 = a3;
  v5 = [(PHCarPlayInCallButtonsView *)self delegate];
  [v5 inCallButtonWasTapped:v4];
}

@end