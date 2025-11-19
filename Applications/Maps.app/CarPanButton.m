@interface CarPanButton
+ (id)arrowImageForDirection:(int64_t)a3;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CarPanButton)initWithDirection:(int64_t)a3;
- (NSString)description;
- (id)accessibilityUserInputLabels;
- (id)axIdentifierForDirection:(int64_t)a3;
- (void)handleLongPress:(id)a3;
- (void)handleTap:(id)a3;
@end

@implementation CarPanButton

- (id)accessibilityUserInputLabels
{
  v2 = [(CarPanButton *)self direction];
  v3 = 0;
  if (v2 > 2)
  {
    if (v2 == 4)
    {
      v4 = +[NSBundle mainBundle];
      v5 = [v4 localizedStringForKey:@"CarPlay_Right" value:@"localized string not found" table:0];
      v13 = v5;
      v6 = @"CarPlay_Pan_Right";
      v7 = &v13;
    }

    else
    {
      if (v2 != 3)
      {
        goto LABEL_11;
      }

      v4 = +[NSBundle mainBundle];
      v5 = [v4 localizedStringForKey:@"CarPlay_Left" value:@"localized string not found" table:0];
      v14 = v5;
      v6 = @"CarPlay_Pan_Left";
      v7 = &v14;
    }
  }

  else if (v2 == 1)
  {
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"CarPlay_Up" value:@"localized string not found" table:0];
    v12 = v5;
    v6 = @"CarPlay_Pan_Up";
    v7 = &v12;
  }

  else
  {
    if (v2 != 2)
    {
      goto LABEL_11;
    }

    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"CarPlay_Down" value:@"localized string not found" table:0];
    v11 = v5;
    v6 = @"CarPlay_Pan_Down";
    v7 = &v11;
  }

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:v6 value:@"localized string not found" table:0];
  v7[1] = v9;
  v3 = [NSArray arrayWithObjects:v7 count:2];

LABEL_11:

  return v3;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_longPressRecognizer == v4 || self->_tapRecognizer == v4)
  {
    v6 = 1;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CarPanButton;
    v6 = [(CarPanButton *)&v8 gestureRecognizerShouldBegin:v4];
  }

  return v6;
}

- (id)axIdentifierForDirection:(int64_t)a3
{
  if ((a3 - 1) > 3)
  {
    v3 = &stru_1016631F0;
  }

  else
  {
    v3 = off_101631908[a3 - 1];
  }

  return [@"CarPanButton." stringByAppendingString:v3];
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = [NSNumber numberWithInteger:[(CarPanButton *)self direction]];
  v5 = [NSString stringWithFormat:@"<%@: %p direction=%@>", v3, self, v4];;

  return v5;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = 36.0;
  v4 = 36.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)handleTap:(id)a3
{
  if ([a3 state] == 3)
  {

    [(CarPanButton *)self sendActionsForControlEvents:0x1000000];
  }
}

- (void)handleLongPress:(id)a3
{
  v5 = a3;
  if ([v5 state] == 1)
  {
    v4 = 0x2000000;
LABEL_6:
    [(CarPanButton *)self sendActionsForControlEvents:v4];
    goto LABEL_7;
  }

  if ([v5 state] == 3 || objc_msgSend(v5, "state") == 4)
  {
    v4 = 0x4000000;
    goto LABEL_6;
  }

LABEL_7:
}

- (CarPanButton)initWithDirection:(int64_t)a3
{
  v5 = [objc_opt_class() arrowImageForDirection:a3];
  v29.receiver = self;
  v29.super_class = CarPanButton;
  v6 = [(CarFocusableImageButton *)&v29 initWithImage:v5];
  v7 = v6;
  if (v6)
  {
    v6->_direction = a3;
    [(CarFocusableBlurControl *)v6 setRoundedCornerRadius:18.0];
    v8 = [(CarPanButton *)v7 axIdentifierForDirection:a3];
    [(CarPanButton *)v7 setAccessibilityIdentifier:v8];

    if ((a3 - 3) >= 2)
    {
      v9 = 0;
    }

    else
    {
      v9 = 3;
    }

    [(CarFocusableImageButton *)v7 setSemanticContentAttributeForImage:v9];
    v10 = [[UILongPressGestureRecognizer alloc] initWithTarget:v7 action:"handleLongPress:"];
    longPressRecognizer = v7->_longPressRecognizer;
    v7->_longPressRecognizer = v10;

    [(UILongPressGestureRecognizer *)v7->_longPressRecognizer setCancelsTouchesInView:0];
    [(UILongPressGestureRecognizer *)v7->_longPressRecognizer setMinimumPressDuration:0.25];
    v12 = [[UILongPressGestureRecognizer alloc] initWithTarget:v7 action:"handleLongPress:"];
    physicalLongPressRecognizer = v7->_physicalLongPressRecognizer;
    v7->_physicalLongPressRecognizer = v12;

    [(UILongPressGestureRecognizer *)v7->_physicalLongPressRecognizer setAllowedPressTypes:&off_1016ED280];
    [(UILongPressGestureRecognizer *)v7->_physicalLongPressRecognizer setMinimumPressDuration:0.25];
    v14 = [[UITapGestureRecognizer alloc] initWithTarget:v7 action:"handleTap:"];
    tapRecognizer = v7->_tapRecognizer;
    v7->_tapRecognizer = v14;

    [(UITapGestureRecognizer *)v7->_tapRecognizer setCancelsTouchesInView:0];
    [(UITapGestureRecognizer *)v7->_tapRecognizer requireGestureRecognizerToFail:v7->_longPressRecognizer];
    v16 = [[UITapGestureRecognizer alloc] initWithTarget:v7 action:"handleTap:"];
    physicalTapRecognizer = v7->_physicalTapRecognizer;
    v7->_physicalTapRecognizer = v16;

    [(UITapGestureRecognizer *)v7->_physicalTapRecognizer setAllowedPressTypes:&off_1016ED298];
    [(UITapGestureRecognizer *)v7->_physicalTapRecognizer requireGestureRecognizerToFail:v7->_physicalLongPressRecognizer];
    [(UITapGestureRecognizer *)v7->_physicalTapRecognizer setDelegate:v7];
    v31[0] = v7->_longPressRecognizer;
    v31[1] = v7->_tapRecognizer;
    v31[2] = v7->_physicalLongPressRecognizer;
    v31[3] = v7->_physicalTapRecognizer;
    [NSArray arrayWithObjects:v31 count:4];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v18 = v28 = 0u;
    v19 = [v18 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v26;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v26 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v25 + 1) + 8 * i);
          [v23 setAllowedTouchTypes:{&off_1016ED2B0, v25}];
          [(CarPanButton *)v7 addGestureRecognizer:v23];
        }

        v20 = [v18 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v20);
    }
  }

  return v7;
}

+ (id)arrowImageForDirection:(int64_t)a3
{
  if ((a3 - 1) > 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [UIImage _mapsCar_systemImageNamed:off_1016318E8[a3 - 1] textStyle:UIFontTextStyleSubheadline, v3];
  }

  return v5;
}

@end