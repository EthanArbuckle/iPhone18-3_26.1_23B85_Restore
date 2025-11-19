@interface AlertDeliveryTypeCell
+ (double)preferredHeightInWidth:(double)a3;
- (AlertDeliveryTypeCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (id)_currentDescriptor;
- (void)_handleLocationViewPress:(id)a3;
- (void)layoutSubviews;
- (void)reloadWithSpecifier:(id)a3 animated:(BOOL)a4;
@end

@implementation AlertDeliveryTypeCell

- (AlertDeliveryTypeCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v28.receiver = self;
  v28.super_class = AlertDeliveryTypeCell;
  v4 = [(AlertDeliveryTypeCell *)&v28 initWithStyle:a3 reuseIdentifier:a4];
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
        v21 = [(AlertDeliveryTypeCell *)v4 contentView];
        [v21 addSubview:v20];

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
  v3 = [(AlertDeliveryTypeCell *)self specifier];
  v4 = [v3 performGetter];

  if ([v4 lockScreenSetting])
  {
    -[AlertDeliveryLocationView setSelected:](self->_lockscreenLocationView, "setSelected:", [v4 lockScreenSetting] == &dword_0 + 2);
  }

  if ([v4 notificationCenterSetting])
  {
    -[AlertDeliveryLocationView setSelected:](self->_historyLocationView, "setSelected:", [v4 notificationCenterSetting] == &dword_0 + 2);
  }

  if ([v4 bannerSetting])
  {
    -[AlertDeliveryLocationView setSelected:](self->_bannersLocationView, "setSelected:", [v4 bannerSetting] == &dword_0 + 2);
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
    v9 = [v8 bs_reverse];

    v8 = v9;
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
        if (AlertDeliveryLocationTypeShouldBeHiddenForDescriptor([v15 type], v4))
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
  v17 = [(AlertDeliveryTypeCell *)self contentView];
  [v17 bounds];

  v18 = [(AlertDeliveryTypeCell *)self traitCollection];
  [v18 displayScale];

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

+ (double)preferredHeightInWidth:(double)a3
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

- (void)_handleLocationViewPress:(id)a3
{
  v4 = a3;
  v5 = [v4 state];
  if (v5 == &dword_0 + 1)
  {
    [(UIImpactFeedbackGenerator *)self->_feedbackGenerator prepare];
  }

  v13 = [(AlertDeliveryTypeCell *)self _locationViewForGestureRecognizer:v4];
  [v4 locationInView:v13];
  v7 = v6;
  v9 = v8;

  v10 = [v13 pointInside:0 withEvent:{v7, v9}];
  [v13 setHighlighted:((v5 - 1) < 2) & v10];
  if (v5 == &dword_0 + 3 && (v10 & 1) != 0)
  {
    [v13 setSelected:objc_msgSend(v13 animated:{"selected") ^ 1, 1}];
    v11 = [(AlertDeliveryTypeCell *)self specifier];
    v12 = [(AlertDeliveryTypeCell *)self _currentDescriptor];
    [v11 performSetterWithValue:v12];

    [(UIImpactFeedbackGenerator *)self->_feedbackGenerator impactOccurred];
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a4;
  if ([(NSMutableArray *)self->_deliveryTypeCellGestures containsObject:a3])
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

- (void)reloadWithSpecifier:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7.receiver = self;
  v7.super_class = AlertDeliveryTypeCell;
  [(AlertDeliveryTypeCell *)&v7 reloadWithSpecifier:a3 animated:?];
  [(AlertDeliveryTypeCell *)self setNeedsLayout];
  if (v4)
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