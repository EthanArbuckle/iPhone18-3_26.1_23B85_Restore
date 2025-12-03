@interface SCATModernMenuGesturePinchSheet
- (CGRect)rectToClear;
- (SCATMenuPinchItemsViewDelegate)delegate;
- (id)makeMenuItemsIfNeeded;
- (void)menuItemWasActivated:(id)activated;
- (void)sheetWillAppear:(BOOL)appear;
- (void)sheetWillDisappear:(BOOL)disappear;
@end

@implementation SCATModernMenuGesturePinchSheet

- (id)makeMenuItemsIfNeeded
{
  v3 = +[NSMutableArray array];
  v4 = sub_100042B24(@"PINCH_IN");
  v5 = [SCATModernMenuItem itemWithIdentifier:@"gestures_pinchIn" delegate:self title:v4 imageName:0 activateBehavior:2];
  [v3 addObject:v5];

  v6 = sub_100042B24(@"PINCH_OUT");
  v7 = [SCATModernMenuItem itemWithIdentifier:@"gestures_pinchOut" delegate:self title:v6 imageName:0 activateBehavior:2];
  [v3 addObject:v7];

  v8 = sub_100042B24(@"ROTATE_CLOCKWISE");
  v9 = [SCATModernMenuItem itemWithIdentifier:@"gestures_rotateClockwise" delegate:self title:v8 imageName:0 activateBehavior:2];
  [v3 addObject:v9];

  v10 = sub_100042B24(@"ROTATE_COUNTERCLOCKWISE");
  v11 = [SCATModernMenuItem itemWithIdentifier:@"gestures_rotateCounterclockwise" delegate:self title:v10 imageName:0 activateBehavior:2];
  [v3 addObject:v11];

  return v3;
}

- (void)sheetWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = SCATModernMenuGesturePinchSheet;
  [(SCATModernMenuSheet *)&v5 sheetWillAppear:appear];
  self->_shouldStayInPinchModeDuringDisappearance = 0;
  delegate = [(SCATModernMenuGesturePinchSheet *)self delegate];
  [delegate didPushPinchItemsViewController:self];
}

- (void)sheetWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = SCATModernMenuGesturePinchSheet;
  [(SCATModernMenuSheet *)&v5 sheetWillDisappear:disappear];
  if (!self->_shouldStayInPinchModeDuringDisappearance)
  {
    delegate = [(SCATModernMenuGesturePinchSheet *)self delegate];
    [delegate willPopPinchItemsViewController:self];
  }
}

- (CGRect)rectToClear
{
  delegate = [(SCATModernMenuGesturePinchSheet *)self delegate];
  [delegate rectToClearForPinchGesture:self];
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
  if ([identifier isEqualToString:@"gestures_pinchIn"])
  {
    self->_shouldStayInPinchModeDuringDisappearance = 1;
    delegate = [(SCATModernMenuGesturePinchSheet *)self delegate];
    [delegate didChoosePinchIn:self];
  }

  else if ([identifier isEqualToString:@"gestures_pinchOut"])
  {
    self->_shouldStayInPinchModeDuringDisappearance = 1;
    delegate = [(SCATModernMenuGesturePinchSheet *)self delegate];
    [delegate didChoosePinchOut:self];
  }

  else if ([identifier isEqualToString:@"gestures_rotateClockwise"])
  {
    self->_shouldStayInPinchModeDuringDisappearance = 1;
    delegate = [(SCATModernMenuGesturePinchSheet *)self delegate];
    [delegate didChooseRotateClockwise:self];
  }

  else
  {
    if (![identifier isEqualToString:@"gestures_rotateCounterclockwise"])
    {
      v7.receiver = self;
      v7.super_class = SCATModernMenuGesturePinchSheet;
      [(SCATModernMenuSheet *)&v7 menuItemWasActivated:activatedCopy];
      goto LABEL_10;
    }

    self->_shouldStayInPinchModeDuringDisappearance = 1;
    delegate = [(SCATModernMenuGesturePinchSheet *)self delegate];
    [delegate didChooseRotateCounterclockwise:self];
  }

LABEL_10:
}

- (SCATMenuPinchItemsViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end