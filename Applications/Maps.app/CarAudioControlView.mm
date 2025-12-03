@interface CarAudioControlView
- (NSArray)focusOrderSubItems;
- (NSArray)preferredFocusEnvironments;
- (double)containerTopPositionWhenCollapsedForAudioType:(unint64_t)type;
- (double)expandedHeight;
- (double)highlightTopPosition;
- (id)accessibilityUserInputLabels;
- (id)createBackgroundView;
- (id)createButton;
@end

@implementation CarAudioControlView

- (NSArray)focusOrderSubItems
{
  if ([(NavAudioControlView *)self isExpanded])
  {
    buttons = [(NavAudioControlView *)self buttons];
  }

  else
  {
    availableAudioTypes = [(NavAudioControlView *)self availableAudioTypes];
    v5 = [NSNumber numberWithUnsignedInteger:[(NavAudioControlView *)self currentAudioType]];
    v6 = [availableAudioTypes indexOfObject:v5];

    buttons2 = [(NavAudioControlView *)self buttons];
    v8 = [buttons2 count];

    if (v6 >= v8)
    {
      buttons = &__NSArray0__struct;
    }

    else
    {
      buttons3 = [(NavAudioControlView *)self buttons];
      v10 = [buttons3 objectAtIndexedSubscript:v6];
      v12 = v10;
      buttons = [NSArray arrayWithObjects:&v12 count:1];
    }
  }

  return buttons;
}

- (id)accessibilityUserInputLabels
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"CarPlay_Audio" value:@"localized string not found" table:0];
  v8[0] = v3;
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"CarPlay_Speaker" value:@"localized string not found" table:0];
  v8[1] = v5;
  v6 = [NSArray arrayWithObjects:v8 count:2];

  return v6;
}

- (NSArray)preferredFocusEnvironments
{
  availableAudioTypes = [(NavAudioControlView *)self availableAudioTypes];
  v4 = [NSNumber numberWithUnsignedInteger:[(NavAudioControlView *)self currentAudioType]];
  v5 = [availableAudioTypes indexOfObject:v4];

  buttons = [(NavAudioControlView *)self buttons];
  v7 = [buttons count];

  if (v5 >= v7)
  {
    v10 = &__NSArray0__struct;
  }

  else
  {
    buttons2 = [(NavAudioControlView *)self buttons];
    v9 = [buttons2 objectAtIndexedSubscript:v5];
    v12 = v9;
    v10 = [NSArray arrayWithObjects:&v12 count:1];
  }

  return v10;
}

- (double)highlightTopPosition
{
  availableAudioTypes = [(NavAudioControlView *)self availableAudioTypes];
  v4 = [NSNumber numberWithUnsignedInteger:[(NavAudioControlView *)self currentAudioType]];
  v5 = [availableAudioTypes indexOfObject:v4];

  result = 31.5;
  if (v5 != 1)
  {
    result = 1.5;
  }

  if (v5 == 2)
  {
    return 60.0;
  }

  return result;
}

- (double)containerTopPositionWhenCollapsedForAudioType:(unint64_t)type
{
  availableAudioTypes = [(NavAudioControlView *)self availableAudioTypes];
  v5 = [NSNumber numberWithUnsignedInteger:type];
  v6 = [availableAudioTypes indexOfObject:v5];

  result = 0.0;
  if (v6 == 1)
  {
    result = -30.0;
  }

  if (v6 == 2)
  {
    return -60.0;
  }

  return result;
}

- (double)expandedHeight
{
  availableAudioTypes = [(NavAudioControlView *)self availableAudioTypes];
  v4 = [availableAudioTypes count];

  if (v4 == 3)
  {

    [(CarAudioControlView *)self fullHeight];
  }

  else if (v4 == 2)
  {
    [(CarAudioControlView *)self collapsedDimension];
    return v6 * 2.0 + 2.0;
  }

  else
  {
    result = 0.0;
    if (v4 == 1)
    {

      [(CarAudioControlView *)self collapsedDimension];
    }
  }

  return result;
}

- (id)createButton
{
  v2 = +[CarFocusableButton button];
  [v2 setModifiesBackgroundColor:1];

  return v2;
}

- (id)createBackgroundView
{
  carBackgroundView = self->_carBackgroundView;
  if (!carBackgroundView)
  {
    v4 = [[CarDynamicBlurView alloc] initWithBlurViewContext:0 delegate:0];
    v5 = self->_carBackgroundView;
    self->_carBackgroundView = v4;

    carBackgroundView = self->_carBackgroundView;
  }

  return carBackgroundView;
}

@end