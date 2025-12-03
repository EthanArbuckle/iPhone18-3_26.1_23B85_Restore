@interface PHCarPlayInCallButtonsView
- (PHCarPlayInCallButtonsView)initWithFrame:(CGRect)frame;
- (float)distributedFractionForUndistributedFraction:(float)fraction;
- (id)buttonForButtonType:(int)type createIfNecessary:(BOOL)necessary createWithHorizontalPositionFraction:(float)fraction;
- (id)existingButtonsNotInArray:(id)array;
- (id)keyForButtonType:(int)type;
- (id)preferredFocusEnvironments;
- (int64_t)numberOfControls;
- (void)applyHorizontalPositioningConstraintWithFraction:(float)fraction forButton:(id)button;
- (void)applyHorizontalPositioningConstraintWithFraction:(float)fraction forDividerView:(id)view;
- (void)buttonWasTapped:(id)tapped;
- (void)dealloc;
- (void)removeButtons:(id)buttons;
- (void)setButtonsMode:(int)mode animated:(BOOL)animated;
- (void)setMuted:(BOOL)muted;
- (void)updateButtonsForCallModelState;
@end

@implementation PHCarPlayInCallButtonsView

- (void)updateButtonsForCallModelState
{
  v12 = [(PHCarPlayInCallButtonsView *)self buttonForButtonType:3 createIfNecessary:0 createWithHorizontalPositionFraction:0.0];
  if (v12)
  {
    delegate = [(PHCarPlayInCallButtonsView *)self delegate];
    [v12 setEnabled:{objc_msgSend(delegate, "isAddCallAllowed")}];
  }

  v4 = [(PHCarPlayInCallButtonsView *)self buttonForButtonType:5 createIfNecessary:0 createWithHorizontalPositionFraction:0.0];
  if (v4)
  {
    delegate2 = [(PHCarPlayInCallButtonsView *)self delegate];
    [v4 setEnabled:{objc_msgSend(delegate2, "isMergeCallsAllowed")}];
  }

  v6 = [(PHCarPlayInCallButtonsView *)self buttonForButtonType:6 createIfNecessary:0 createWithHorizontalPositionFraction:0.0];
  if (v6)
  {
    delegate3 = [(PHCarPlayInCallButtonsView *)self delegate];
    [v6 setEnabled:{objc_msgSend(delegate3, "isSwapCallsAllowed")}];
  }

  v8 = [(PHCarPlayInCallButtonsView *)self buttonForButtonType:2 createIfNecessary:0 createWithHorizontalPositionFraction:0.0];
  if (v8)
  {
    delegate4 = [(PHCarPlayInCallButtonsView *)self delegate];
    [v8 setEnabled:{objc_msgSend(delegate4, "isKeypadEnabled")}];
  }

  v10 = [(PHCarPlayInCallButtonsView *)self buttonForButtonType:18 createIfNecessary:0 createWithHorizontalPositionFraction:0.0];
  if (v10)
  {
    delegate5 = [(PHCarPlayInCallButtonsView *)self delegate];
    [v10 setToggledOn:{objc_msgSend(delegate5, "isHoldEnabled")}];
  }
}

- (id)preferredFocusEnvironments
{
  buttonsMode = self->_buttonsMode;
  if (buttonsMode == 5)
  {
LABEL_4:
    buttonsArray = [(PHCarPlayInCallButtonsView *)self buttonsArray];
    lastObject = [buttonsArray objectAtIndex:0];
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

  buttonsArray = [(PHCarPlayInCallButtonsView *)self buttonsArray];
  lastObject = [buttonsArray lastObject];
LABEL_6:
  v5 = lastObject;

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

- (PHCarPlayInCallButtonsView)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = PHCarPlayInCallButtonsView;
  v3 = [(PHCarPlayInCallButtonsView *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  buttonsArray = [(PHCarPlayInCallButtonsView *)self buttonsArray];
  v3 = [buttonsArray count];

  return v3;
}

- (void)setMuted:(BOOL)muted
{
  mutedCopy = muted;
  v4 = [(PHCarPlayInCallButtonsView *)self buttonForButtonType:1 createIfNecessary:0 createWithHorizontalPositionFraction:0.0];
  [v4 setToggledOn:mutedCopy];
}

- (void)setButtonsMode:(int)mode animated:(BOOL)animated
{
  v6 = sub_100004F84();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    modeCopy = mode;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "buttonsMode: %d", buf, 8u);
  }

  LODWORD(v7) = 1066779279;
  [(PHCarPlayInCallButtonsView *)self setButtonDistributionScalingFactor:v7];
  v8 = 0;
  if (mode > 3)
  {
    if (mode > 5)
    {
      if (mode == 6)
      {
        v8 = &off_10036AEB0;
        goto LABEL_28;
      }

      if (mode != 7)
      {
        goto LABEL_28;
      }

      delegate = [(PHCarPlayInCallButtonsView *)self delegate];
      isKeypadAllowed = [delegate isKeypadAllowed];

      v11 = &off_10036AF10;
      v12 = &off_10036AEF8;
      goto LABEL_25;
    }

    if (mode == 4)
    {
      v8 = &off_10036AE68;
      goto LABEL_28;
    }

    v13 = +[TUCallCenter sharedInstance];
    isHoldAndAnswerAllowed = [v13 isHoldAndAnswerAllowed];

    if (!isHoldAndAnswerAllowed)
    {
      delegate2 = [(PHCarPlayInCallButtonsView *)self delegate];
      isKeypadAllowed = [delegate2 canSendMessage];

      v11 = &off_10036AEE0;
      v12 = &off_10036AEC8;
LABEL_25:
      if (isKeypadAllowed)
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
        delegate3 = [(PHCarPlayInCallButtonsView *)self delegate];
        if ([delegate3 isSendToVoicemailAllowed])
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

  if (mode <= 1)
  {
    if (mode)
    {
      if (mode != 1)
      {
        goto LABEL_28;
      }

      delegate4 = [(PHCarPlayInCallButtonsView *)self delegate];
      isKeypadAllowed = [delegate4 isKeypadAllowed];

      v11 = &off_10036AE38;
      v12 = &off_10036AE20;
    }

    else
    {
      delegate5 = [(PHCarPlayInCallButtonsView *)self delegate];
      isKeypadAllowed = [delegate5 isKeypadAllowed];

      v11 = &off_10036AE08;
      v12 = &off_10036ADF0;
    }

    goto LABEL_25;
  }

  if (mode == 2)
  {
    v8 = &off_10036AE50;
  }

  else
  {
    delegate6 = [(PHCarPlayInCallButtonsView *)self delegate];
    canSendMessage = [delegate6 canSendMessage];

    if (canSendMessage)
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
  selfCopy = self;
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
  modeCopy2 = mode;
  selfCopy2 = self;
  v52 = v36;
  v53 = v37;
  v40 = v37;
  v41 = v36;
  v42 = objc_retainBlock(&v47);
  [UIView animateWithDuration:v39 animations:v42 completion:0.349999994, v47, v48, v49, v50, selfCopy2];
  [(PHCarPlayInCallButtonsView *)self updateButtonsForCallModelState];
  self->_buttonsMode = mode;
}

- (void)removeButtons:(id)buttons
{
  buttonsCopy = buttons;
  buttonsDictionary = [(PHCarPlayInCallButtonsView *)self buttonsDictionary];
  keyEnumerator = [buttonsDictionary keyEnumerator];

  v6 = +[NSMutableArray array];
  nextObject = [keyEnumerator nextObject];
  if (nextObject)
  {
    v8 = nextObject;
    do
    {
      buttonsDictionary2 = [(PHCarPlayInCallButtonsView *)self buttonsDictionary];
      v10 = [buttonsDictionary2 objectForKey:v8];

      if ([buttonsCopy containsObject:v10])
      {
        [v10 removeFromSuperview];
        [v6 addObject:v8];
      }

      nextObject2 = [keyEnumerator nextObject];

      v8 = nextObject2;
    }

    while (nextObject2);
  }

  buttonsDictionary3 = [(PHCarPlayInCallButtonsView *)self buttonsDictionary];
  [buttonsDictionary3 removeObjectsForKeys:v6];
}

- (void)applyHorizontalPositioningConstraintWithFraction:(float)fraction forButton:(id)button
{
  buttonCopy = button;
  horizontalPositioningConstraint = [buttonCopy horizontalPositioningConstraint];

  if (horizontalPositioningConstraint)
  {
    horizontalPositioningConstraint2 = [buttonCopy horizontalPositioningConstraint];
    [(PHCarPlayInCallButtonsView *)self removeConstraint:horizontalPositioningConstraint2];
  }

  *&v7 = fraction;
  [(PHCarPlayInCallButtonsView *)self distributedFractionForUndistributedFraction:v7];
  v10 = [NSLayoutConstraint constraintWithItem:buttonCopy attribute:9 relatedBy:0 toItem:self attribute:2 multiplier:v9 constant:0.0];
  [(PHCarPlayInCallButtonsView *)self addConstraint:v10];
  [buttonCopy setHorizontalPositioningConstraint:v10];
}

- (void)applyHorizontalPositioningConstraintWithFraction:(float)fraction forDividerView:(id)view
{
  viewCopy = view;
  horizontalPositioningConstraint = [viewCopy horizontalPositioningConstraint];

  if (horizontalPositioningConstraint)
  {
    horizontalPositioningConstraint2 = [viewCopy horizontalPositioningConstraint];
    [(PHCarPlayInCallButtonsView *)self removeConstraint:horizontalPositioningConstraint2];
  }

  *&v7 = fraction;
  [(PHCarPlayInCallButtonsView *)self distributedFractionForUndistributedFraction:v7];
  v10 = [NSLayoutConstraint constraintWithItem:viewCopy attribute:9 relatedBy:0 toItem:self attribute:2 multiplier:v9 constant:0.0];
  [(PHCarPlayInCallButtonsView *)self addConstraint:v10];
  [viewCopy setHorizontalPositioningConstraint:v10];
}

- (float)distributedFractionForUndistributedFraction:(float)fraction
{
  v3 = fraction + -0.5;
  [(PHCarPlayInCallButtonsView *)self buttonDistributionScalingFactor];
  return (v3 * v4) + 0.5;
}

- (id)buttonForButtonType:(int)type createIfNecessary:(BOOL)necessary createWithHorizontalPositionFraction:(float)fraction
{
  necessaryCopy = necessary;
  v7 = *&type;
  delegate = [(PHCarPlayInCallButtonsView *)self delegate];
  currentCallState = [delegate currentCallState];

  v11 = [(PHCarPlayInCallButtonsView *)self keyForButtonType:v7];
  v12 = [NSString stringWithFormat:@"%@%ld", v11, currentCallState];

  buttonsDictionary = [(PHCarPlayInCallButtonsView *)self buttonsDictionary];
  v14 = [buttonsDictionary objectForKeyedSubscript:v12];

  if (v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = !necessaryCopy;
  }

  if (!v15)
  {
    v16 = [PHCarPlayInCallButton alloc];
    delegate2 = [(PHCarPlayInCallButtonsView *)self delegate];
    v14 = -[PHCarPlayInCallButton initForButtonType:callState:](v16, "initForButtonType:callState:", v7, [delegate2 currentCallState]);

    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v14 addTarget:self action:"buttonWasTapped:" forControlEvents:64];
    v18 = [(PHCarPlayInCallButtonsView *)self keyForButtonType:v7];
    v19 = [NSString stringWithFormat:@"%@", v18];
    [v14 setAccessibilityIdentifier:v19];

    [(PHCarPlayInCallButtonsView *)self addSubview:v14];
    LODWORD(v20) = 1148846080;
    v21 = [NSLayoutConstraint constraintWithItem:v14 attribute:12 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:58.0 priority:v20];
    [(PHCarPlayInCallButtonsView *)self addConstraint:v21];
    *&v22 = fraction;
    [(PHCarPlayInCallButtonsView *)self applyHorizontalPositioningConstraintWithFraction:v14 forButton:v22];
    [v14 setAlpha:0.0];
    buttonsDictionary2 = [(PHCarPlayInCallButtonsView *)self buttonsDictionary];
    [buttonsDictionary2 setObject:v14 forKeyedSubscript:v12];

    if (v7 == 1)
    {
      delegate3 = [(PHCarPlayInCallButtonsView *)self delegate];
      -[PHCarPlayInCallButtonsView setMuted:](self, "setMuted:", [delegate3 isMuted]);
    }
  }

  return v14;
}

- (id)existingButtonsNotInArray:(id)array
{
  arrayCopy = array;
  buttonsDictionary = [(PHCarPlayInCallButtonsView *)self buttonsDictionary];
  allValues = [buttonsDictionary allValues];
  v7 = [allValues mutableCopy];

  [v7 removeObjectsInArray:arrayCopy];

  return v7;
}

- (id)keyForButtonType:(int)type
{
  if (type > 0x13)
  {
    return 0;
  }

  else
  {
    return off_100359800[type];
  }
}

- (void)buttonWasTapped:(id)tapped
{
  tappedCopy = tapped;
  delegate = [(PHCarPlayInCallButtonsView *)self delegate];
  [delegate inCallButtonWasTapped:tappedCopy];
}

@end