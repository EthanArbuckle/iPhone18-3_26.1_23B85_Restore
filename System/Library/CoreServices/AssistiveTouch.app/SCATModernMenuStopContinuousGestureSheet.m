@interface SCATModernMenuStopContinuousGestureSheet
- (CGRect)rectToClear;
- (SCATMenuStopContinuousGestureItemViewDelegate)delegate;
- (id)makeMenuItemsIfNeeded;
- (void)menuItemWasActivated:(id)a3;
@end

@implementation SCATModernMenuStopContinuousGestureSheet

- (id)makeMenuItemsIfNeeded
{
  v3 = +[NSMutableArray array];
  v4 = [(SCATModernMenuStopContinuousGestureSheet *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SCATModernMenuStopContinuousGestureSheet *)self delegate];
    v7 = [v6 activationBehavior];
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_100042B24(@"STOP");
  v9 = [SCATModernMenuItem itemWithIdentifier:@"general_stop" delegate:self title:v8 imageName:0 activateBehavior:v7];
  [v3 addObject:v9];

  return v3;
}

- (CGRect)rectToClear
{
  v3 = [(SCATModernMenuStopContinuousGestureSheet *)self delegate];
  [v3 rectToClearForStop:self];
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

- (void)menuItemWasActivated:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  if ([v5 isEqualToString:@"general_stop"])
  {
    v6 = [(SCATModernMenuStopContinuousGestureSheet *)self delegate];
    [v6 didChooseStop:self];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SCATModernMenuStopContinuousGestureSheet;
    [(SCATModernMenuSheet *)&v7 menuItemWasActivated:v4];
  }
}

- (SCATMenuStopContinuousGestureItemViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end