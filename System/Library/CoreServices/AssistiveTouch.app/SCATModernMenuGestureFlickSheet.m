@interface SCATModernMenuGestureFlickSheet
- (SCATMenuFlickItemsViewDelegate)delegate;
- (id)makeMenuItemsIfNeeded;
- (void)menuItemWasActivated:(id)a3;
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

- (void)menuItemWasActivated:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  if ([v5 isEqualToString:@"gestures_flickUp"])
  {
    v6 = [(SCATModernMenuGestureFlickSheet *)self delegate];
    [v6 didChooseFlickUp:self];
  }

  else if ([v5 isEqualToString:@"gestures_flickDown"])
  {
    v6 = [(SCATModernMenuGestureFlickSheet *)self delegate];
    [v6 didChooseFlickDown:self];
  }

  else if ([v5 isEqualToString:@"gestures_flickLeft"])
  {
    v6 = [(SCATModernMenuGestureFlickSheet *)self delegate];
    [v6 didChooseFlickLeft:self];
  }

  else if ([v5 isEqualToString:@"gestures_flickRight"])
  {
    v6 = [(SCATModernMenuGestureFlickSheet *)self delegate];
    [v6 didChooseFlickRight:self];
  }

  else
  {
    if (![v5 isEqualToString:@"gestures_flickCustom"])
    {
      v7.receiver = self;
      v7.super_class = SCATModernMenuGestureFlickSheet;
      [(SCATModernMenuSheet *)&v7 menuItemWasActivated:v4];
      goto LABEL_12;
    }

    v6 = [(SCATModernMenuGestureFlickSheet *)self delegate];
    [v6 didChooseArbitraryFlick:self];
  }

LABEL_12:
}

- (SCATMenuFlickItemsViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end