@interface AlertDeliveryTypeCell
+ (double)preferredHeightInWidth:(double)width;
- (AlertDeliveryTypeCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (id)_currentDescriptor;
- (void)_handleLocationViewPress:(id)press;
- (void)layoutSubviews;
- (void)reloadWithSpecifier:(id)specifier animated:(BOOL)animated;
@end

@implementation AlertDeliveryTypeCell

- (AlertDeliveryTypeCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v28.receiver = self;
  v28.super_class = AlertDeliveryTypeCell;
  v4 = [(AlertDeliveryTypeCell *)&v28 initWithStyle:style reuseIdentifier:identifier];
  [(AlertDeliveryTypeCell *)v4 setClipsToBounds:1];
  v5 = +[NSMutableArray array];
  deliveryTypeCellGestures = v4->_deliveryTypeCellGestures;
  v4->_deliveryTypeCellGestures = v5;

  v7 = [[UIImpactFeedbackGenerator alloc] initWithStyle:0];
  feedbackGenerator = v4->_feedbackGenerator;
  v4->_feedbackGenerator = v7;

  v9 = objc_alloc_init(AlertDeliveryLocationView);
  lockscreenLocationView = v4->_lockscreenLocationView;
  v4->_lockscreenLocationView = v9;

  [(AlertDeliveryLocationView *)v4->_lockscreenLocationView setType:0];
  v11 = objc_alloc_init(AlertDeliveryLocationView);
  historyLocationView = v4->_historyLocationView;
  v4->_historyLocationView = v11;

  [(AlertDeliveryLocationView *)v4->_historyLocationView setType:1];
  v13 = objc_alloc_init(AlertDeliveryLocationView);
  bannersLocationView = v4->_bannersLocationView;
  v4->_bannersLocationView = v13;

  [(AlertDeliveryLocationView *)v4->_bannersLocationView setType:2];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v29[0] = v4->_lockscreenLocationView;
  v29[1] = v4->_historyLocationView;
  v29[2] = v4->_bannersLocationView;
  v15 = [NSArray arrayWithObjects:v29 count:3, 0];
  v16 = [v15 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v25;
    do
    {
      v19 = 0;
      do
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v24 + 1) + 8 * v19);
        contentView = [(AlertDeliveryTypeCell *)v4 contentView];
        [contentView addSubview:v20];

        v22 = [[UILongPressGestureRecognizer alloc] initWithTarget:v4 action:"_handleLocationViewPress:"];
        [v22 setMinimumPressDuration:0.0];
        [v22 setCancelPastAllowableMovement:1];
        [v22 setDelegate:v4];
        [v20 addGestureRecognizer:v22];
        [(NSMutableArray *)v4->_deliveryTypeCellGestures addObject:v22];

        v19 = v19 + 1;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v17);
  }

  return v4;
}

- (void)layoutSubviews
{
  v51.receiver = self;
  v51.super_class = AlertDeliveryTypeCell;
  [(AlertDeliveryTypeCell *)&v51 layoutSubviews];
  specifier = [(AlertDeliveryTypeCell *)self specifier];
  performGetter = [specifier performGetter];

  if ([performGetter lockScreenSetting])
  {
    -[AlertDeliveryLocationView setSelected:](self->_lockscreenLocationView, "setSelected:", [performGetter lockScreenSetting] == &dword_0 + 2);
  }

  if ([performGetter notificationCenterSetting])
  {
    -[AlertDeliveryLocationView setSelected:](self->_historyLocationView, "setSelected:", [performGetter notificationCenterSetting] == &dword_0 + 2);
  }

  if ([performGetter bannerSetting])
  {
    -[AlertDeliveryLocationView setSelected:](self->_bannersLocationView, "setSelected:", [performGetter bannerSetting] == &dword_0 + 2);
  }

  v5 = +[NSMutableArray array];
  v6 = +[NSMutableArray array];
  historyLocationView = self->_historyLocationView;
  v55[0] = self->_lockscreenLocationView;
  v55[1] = historyLocationView;
  v55[2] = self->_bannersLocationView;
  v8 = [NSArray arrayWithObjects:v55 count:3];
  if ([(AlertDeliveryTypeCell *)self effectiveUserInterfaceLayoutDirection]== &dword_0 + 1)
  {
    bs_reverse = [v8 bs_reverse];

    v8 = bs_reverse;
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v47 objects:v54 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v48;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v48 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v47 + 1) + 8 * i);
        if (AlertDeliveryLocationTypeShouldBeHiddenForDescriptor([v15 type], performGetter))
        {
          v16 = v6;
        }

        else
        {
          v16 = v5;
        }

        [v16 addObject:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v47 objects:v54 count:16];
    }

    while (v12);
  }

  [v5 count];
  contentView = [(AlertDeliveryTypeCell *)self contentView];
  [contentView bounds];

  traitCollection = [(AlertDeliveryTypeCell *)self traitCollection];
  [traitCollection displayScale];

  v19 = +[AlertDeliveryLocationView preferredFont];
  [v19 _scaledValueForValue:24.0];
  [v19 _scaledValueForValue:16.0];
  UIPointRoundToScale();
  v21 = v20;
  v23 = v22;
  UISizeRoundToScale();
  v25 = v24;
  v27 = v26;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v28 = v5;
  v29 = [v28 countByEnumeratingWithState:&v43 objects:v53 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v44;
    do
    {
      for (j = 0; j != v30; j = j + 1)
      {
        if (*v44 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v43 + 1) + 8 * j);
        [v33 setHidden:0];
        [v33 setFrame:{v21, v23, v25, v27}];
        v21 = v25 + v21;
      }

      v30 = [v28 countByEnumeratingWithState:&v43 objects:v53 count:16];
    }

    while (v30);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v34 = v6;
  v35 = [v34 countByEnumeratingWithState:&v39 objects:v52 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v40;
    do
    {
      for (k = 0; k != v36; k = k + 1)
      {
        if (*v40 != v37)
        {
          objc_enumerationMutation(v34);
        }

        [*(*(&v39 + 1) + 8 * k) setHidden:{1, v39}];
      }

      v36 = [v34 countByEnumeratingWithState:&v39 objects:v52 count:16];
    }

    while (v36);
  }
}

+ (double)preferredHeightInWidth:(double)width
{
  v3 = +[AlertDeliveryLocationView preferredFont];
  v4 = +[UIScreen mainScreen];
  UIRoundToScreenScale();
  v6 = v5;

  [AlertDeliveryLocationView preferredHeightInWidth:v6];
  v8 = v7;
  [v3 _scaledValueForValue:24.0];
  v10 = v9;
  [v3 _scaledValueForValue:16.0];
  v12 = v8 + v10 + v11;

  return v12;
}

- (void)_handleLocationViewPress:(id)press
{
  pressCopy = press;
  state = [pressCopy state];
  if (state == &dword_0 + 1)
  {
    [(UIImpactFeedbackGenerator *)self->_feedbackGenerator prepare];
  }

  v13 = [(AlertDeliveryTypeCell *)self _locationViewForGestureRecognizer:pressCopy];
  [pressCopy locationInView:v13];
  v7 = v6;
  v9 = v8;

  v10 = [v13 pointInside:0 withEvent:{v7, v9}];
  [v13 setHighlighted:((state - 1) < 2) & v10];
  if (state == &dword_0 + 3 && (v10 & 1) != 0)
  {
    [v13 setSelected:objc_msgSend(v13 animated:{"selected") ^ 1, 1}];
    specifier = [(AlertDeliveryTypeCell *)self specifier];
    _currentDescriptor = [(AlertDeliveryTypeCell *)self _currentDescriptor];
    [specifier performSetterWithValue:_currentDescriptor];

    [(UIImpactFeedbackGenerator *)self->_feedbackGenerator impactOccurred];
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  if ([(NSMutableArray *)self->_deliveryTypeCellGestures containsObject:recognizer])
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (void)reloadWithSpecifier:(id)specifier animated:(BOOL)animated
{
  animatedCopy = animated;
  v7.receiver = self;
  v7.super_class = AlertDeliveryTypeCell;
  [(AlertDeliveryTypeCell *)&v7 reloadWithSpecifier:specifier animated:?];
  [(AlertDeliveryTypeCell *)self setNeedsLayout];
  if (animatedCopy)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_21210;
    v6[3] = &unk_4D388;
    v6[4] = self;
    [UIView _animateUsingDefaultTimingWithOptions:2 animations:v6 completion:0];
  }
}

- (id)_currentDescriptor
{
  v3 = objc_alloc_init(AlertDeliveryTypeDescriptor);
  if (([(AlertDeliveryLocationView *)self->_lockscreenLocationView isHidden]& 1) == 0)
  {
    if ([(AlertDeliveryLocationView *)self->_lockscreenLocationView selected])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    [(AlertDeliveryTypeDescriptor *)v3 setLockScreenSetting:v4];
  }

  if (([(AlertDeliveryLocationView *)self->_historyLocationView isHidden]& 1) == 0)
  {
    if ([(AlertDeliveryLocationView *)self->_historyLocationView selected])
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }

    [(AlertDeliveryTypeDescriptor *)v3 setNotificationCenterSetting:v5];
  }

  if (([(AlertDeliveryLocationView *)self->_bannersLocationView isHidden]& 1) == 0)
  {
    if ([(AlertDeliveryLocationView *)self->_bannersLocationView selected])
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    [(AlertDeliveryTypeDescriptor *)v3 setBannerSetting:v6];
  }

  return v3;
}

@end