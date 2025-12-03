@interface SCATModernMenuStopContinuousGestureSheet
- (CGRect)rectToClear;
- (SCATMenuStopContinuousGestureItemViewDelegate)delegate;
- (id)makeMenuItemsIfNeeded;
- (void)menuItemWasActivated:(id)activated;
@end

@implementation SCATModernMenuStopContinuousGestureSheet

- (id)makeMenuItemsIfNeeded
{
  v3 = +[NSMutableArray array];
  delegate = [(SCATModernMenuStopContinuousGestureSheet *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(SCATModernMenuStopContinuousGestureSheet *)self delegate];
    activationBehavior = [delegate2 activationBehavior];
  }

  else
  {
    activationBehavior = 0;
  }

  v8 = sub_100042B24(@"STOP");
  v9 = [SCATModernMenuItem itemWithIdentifier:@"general_stop" delegate:self title:v8 imageName:0 activateBehavior:activationBehavior];
  [v3 addObject:v9];

  return v3;
}

- (CGRect)rectToClear
{
  delegate = [(SCATModernMenuStopContinuousGestureSheet *)self delegate];
  [delegate rectToClearForStop:self];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)menuItemWasActivated:(id)activated
{
  activatedCopy = activated;
  identifier = [activatedCopy identifier];
  if ([identifier isEqualToString:@"general_stop"])
  {
    delegate = [(SCATModernMenuStopContinuousGestureSheet *)self delegate];
    [delegate didChooseStop:self];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SCATModernMenuStopContinuousGestureSheet;
    [(SCATModernMenuSheet *)&v7 menuItemWasActivated:activatedCopy];
  }
}

- (SCATMenuStopContinuousGestureItemViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end