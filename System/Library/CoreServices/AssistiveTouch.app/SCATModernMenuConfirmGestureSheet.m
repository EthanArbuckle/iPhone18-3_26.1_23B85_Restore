@interface SCATModernMenuConfirmGestureSheet
- (CGRect)rectToClear;
- (SCATMenuGestureConfirmationItemsViewDelegate)delegate;
- (id)makeMenuItemsIfNeeded;
- (void)menuItemWasActivated:(id)a3;
@end

@implementation SCATModernMenuConfirmGestureSheet

- (id)makeMenuItemsIfNeeded
{
  v3 = +[NSMutableArray array];
  v4 = [(SCATModernMenuConfirmGestureSheet *)self delegate];
  v5 = [v4 nameForConfirmationButton:self];
  v6 = [SCATModernMenuItem itemWithIdentifier:@"general_done" delegate:self title:v5 imageName:0 activateBehavior:0];
  [v3 addObject:v6];

  v7 = sub_100042B24(@"REDO_LINE_GESTURE");
  v8 = [SCATModernMenuItem itemWithIdentifier:@"general_redo" delegate:self title:v7 imageName:0 activateBehavior:0];
  [v3 addObject:v8];

  v9 = sub_100042B24(@"CANCEL_LINE_GESTURE");
  v10 = [SCATModernMenuItem itemWithIdentifier:@"general_cancel" delegate:self title:v9 imageName:0 activateBehavior:0];
  [v3 addObject:v10];

  return v3;
}

- (CGRect)rectToClear
{
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)menuItemWasActivated:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  if ([v5 isEqualToString:@"general_done"])
  {
    v6 = [(SCATModernMenuConfirmGestureSheet *)self delegate];
    [v6 didConfirmGesture:self];
  }

  else if ([v5 isEqualToString:@"general_cancel"])
  {
    v6 = [(SCATModernMenuConfirmGestureSheet *)self delegate];
    [v6 didCancelGesture:self];
  }

  else
  {
    if (![v5 isEqualToString:@"general_redo"])
    {
      v7.receiver = self;
      v7.super_class = SCATModernMenuConfirmGestureSheet;
      [(SCATModernMenuSheet *)&v7 menuItemWasActivated:v4];
      goto LABEL_8;
    }

    v6 = [(SCATModernMenuConfirmGestureSheet *)self delegate];
    [v6 didRequestRedoGesture:self];
  }

LABEL_8:
}

- (SCATMenuGestureConfirmationItemsViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end