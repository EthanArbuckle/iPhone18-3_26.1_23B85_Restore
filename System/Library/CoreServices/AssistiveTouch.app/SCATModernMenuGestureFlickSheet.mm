@interface SCATModernMenuGestureFlickSheet
- (SCATMenuFlickItemsViewDelegate)delegate;
- (id)makeMenuItemsIfNeeded;
- (void)menuItemWasActivated:(id)activated;
@end

@implementation SCATModernMenuGestureFlickSheet

- (id)makeMenuItemsIfNeeded
{
  v3 = +[NSMutableArray array];
  v4 = sub_100042B24(@"FLICK_UP");
  v5 = [SCATModernMenuItem itemWithIdentifier:@"gestures_flickUp" delegate:self title:v4 imageName:0 activateBehavior:0];
  [v3 addObject:v5];

  v6 = sub_100042B24(@"FLICK_DOWN");
  v7 = [SCATModernMenuItem itemWithIdentifier:@"gestures_flickDown" delegate:self title:v6 imageName:0 activateBehavior:0];
  [v3 addObject:v7];

  v8 = sub_100042B24(@"FLICK_LEFT");
  v9 = [SCATModernMenuItem itemWithIdentifier:@"gestures_flickLeft" delegate:self title:v8 imageName:0 activateBehavior:0];
  [v3 addObject:v9];

  v10 = sub_100042B24(@"FLICK_RIGHT");
  v11 = [SCATModernMenuItem itemWithIdentifier:@"gestures_flickRight" delegate:self title:v10 imageName:0 activateBehavior:0];
  [v3 addObject:v11];

  v12 = sub_100042B24(@"FLICK_ARBITRARY");
  v13 = [SCATModernMenuItem itemWithIdentifier:@"gestures_flickCustom" delegate:self title:v12 imageName:0 activateBehavior:0];
  [v3 addObject:v13];

  return v3;
}

- (void)menuItemWasActivated:(id)activated
{
  activatedCopy = activated;
  identifier = [activatedCopy identifier];
  if ([identifier isEqualToString:@"gestures_flickUp"])
  {
    delegate = [(SCATModernMenuGestureFlickSheet *)self delegate];
    [delegate didChooseFlickUp:self];
  }

  else if ([identifier isEqualToString:@"gestures_flickDown"])
  {
    delegate = [(SCATModernMenuGestureFlickSheet *)self delegate];
    [delegate didChooseFlickDown:self];
  }

  else if ([identifier isEqualToString:@"gestures_flickLeft"])
  {
    delegate = [(SCATModernMenuGestureFlickSheet *)self delegate];
    [delegate didChooseFlickLeft:self];
  }

  else if ([identifier isEqualToString:@"gestures_flickRight"])
  {
    delegate = [(SCATModernMenuGestureFlickSheet *)self delegate];
    [delegate didChooseFlickRight:self];
  }

  else
  {
    if (![identifier isEqualToString:@"gestures_flickCustom"])
    {
      v7.receiver = self;
      v7.super_class = SCATModernMenuGestureFlickSheet;
      [(SCATModernMenuSheet *)&v7 menuItemWasActivated:activatedCopy];
      goto LABEL_12;
    }

    delegate = [(SCATModernMenuGestureFlickSheet *)self delegate];
    [delegate didChooseArbitraryFlick:self];
  }

LABEL_12:
}

- (SCATMenuFlickItemsViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end