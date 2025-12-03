@interface SCATModernMenuGesturePanSheet
- (SCATMenuPanItemsViewDelegate)delegate;
- (id)makeMenuItemsIfNeeded;
- (void)menuItemWasActivated:(id)activated;
@end

@implementation SCATModernMenuGesturePanSheet

- (id)makeMenuItemsIfNeeded
{
  v3 = +[NSMutableArray array];
  v4 = sub_100042B24(@"PAN_LEFT");
  v5 = [SCATModernMenuItem itemWithIdentifier:@"gestures_panLeft" delegate:self title:v4 imageName:0 activateBehavior:2];
  [v3 addObject:v5];

  v6 = sub_100042B24(@"PAN_RIGHT");
  v7 = [SCATModernMenuItem itemWithIdentifier:@"gestures_panRight" delegate:self title:v6 imageName:0 activateBehavior:2];
  [v3 addObject:v7];

  v8 = sub_100042B24(@"PAN_UP");
  v9 = [SCATModernMenuItem itemWithIdentifier:@"gestures_panUp" delegate:self title:v8 imageName:0 activateBehavior:2];
  [v3 addObject:v9];

  v10 = sub_100042B24(@"PAN_DOWN");
  v11 = [SCATModernMenuItem itemWithIdentifier:@"gestures_panDown" delegate:self title:v10 imageName:0 activateBehavior:2];
  [v3 addObject:v11];

  return v3;
}

- (void)menuItemWasActivated:(id)activated
{
  activatedCopy = activated;
  identifier = [activatedCopy identifier];
  if ([identifier isEqualToString:@"gestures_panLeft"])
  {
    delegate = [(SCATModernMenuGesturePanSheet *)self delegate];
    [delegate didChoosePanLeft:self];
  }

  else if ([identifier isEqualToString:@"gestures_panRight"])
  {
    delegate = [(SCATModernMenuGesturePanSheet *)self delegate];
    [delegate didChoosePanRight:self];
  }

  else if ([identifier isEqualToString:@"gestures_panUp"])
  {
    delegate = [(SCATModernMenuGesturePanSheet *)self delegate];
    [delegate didChoosePanUp:self];
  }

  else
  {
    if (![identifier isEqualToString:@"gestures_panDown"])
    {
      v7.receiver = self;
      v7.super_class = SCATModernMenuGesturePanSheet;
      [(SCATModernMenuSheet *)&v7 menuItemWasActivated:activatedCopy];
      goto LABEL_10;
    }

    delegate = [(SCATModernMenuGesturePanSheet *)self delegate];
    [delegate didChoosePanDown:self];
  }

LABEL_10:
}

- (SCATMenuPanItemsViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end