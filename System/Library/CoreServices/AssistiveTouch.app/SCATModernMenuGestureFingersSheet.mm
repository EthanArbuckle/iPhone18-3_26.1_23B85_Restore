@interface SCATModernMenuGestureFingersSheet
- (SCATMenuFingerItemsViewDelegate)delegate;
- (id)makeMenuItemsIfNeeded;
- (void)menuItemWasActivated:(id)activated;
@end

@implementation SCATModernMenuGestureFingersSheet

- (id)makeMenuItemsIfNeeded
{
  v3 = +[NSMutableArray array];
  v4 = AXFormatInteger();
  v5 = [SCATModernMenuItem itemWithIdentifier:@"gestures_fingers1" delegate:self title:v4 imageName:0 activateBehavior:2];
  [v3 addObject:v5];

  v6 = AXFormatInteger();
  v7 = [SCATModernMenuItem itemWithIdentifier:@"gestures_fingers2" delegate:self title:v6 imageName:0 activateBehavior:2];
  [v3 addObject:v7];

  v8 = AXFormatInteger();
  v9 = [SCATModernMenuItem itemWithIdentifier:@"gestures_fingers3" delegate:self title:v8 imageName:0 activateBehavior:2];
  [v3 addObject:v9];

  v10 = AXFormatInteger();
  v11 = [SCATModernMenuItem itemWithIdentifier:@"gestures_fingers4" delegate:self title:v10 imageName:0 activateBehavior:2];
  [v3 addObject:v11];

  v12 = AXFormatInteger();
  v13 = [SCATModernMenuItem itemWithIdentifier:@"gestures_fingers5" delegate:self title:v12 imageName:0 activateBehavior:2];
  [v3 addObject:v13];

  return v3;
}

- (void)menuItemWasActivated:(id)activated
{
  activatedCopy = activated;
  identifier = [activatedCopy identifier];
  if ([identifier isEqualToString:@"gestures_fingers1"])
  {
    v6 = 1;
  }

  else if ([identifier isEqualToString:@"gestures_fingers2"])
  {
    v6 = 2;
  }

  else if ([identifier isEqualToString:@"gestures_fingers3"])
  {
    v6 = 3;
  }

  else if ([identifier isEqualToString:@"gestures_fingers4"])
  {
    v6 = 4;
  }

  else
  {
    if (![identifier isEqualToString:@"gestures_fingers5"])
    {
      v8.receiver = self;
      v8.super_class = SCATModernMenuGestureFingersSheet;
      [(SCATModernMenuSheet *)&v8 menuItemWasActivated:activatedCopy];
      goto LABEL_12;
    }

    v6 = 5;
  }

  delegate = [(SCATModernMenuGestureFingersSheet *)self delegate];
  [delegate fingerItemsViewController:self didChooseNumberOfFingers:v6];

LABEL_12:
}

- (SCATMenuFingerItemsViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end