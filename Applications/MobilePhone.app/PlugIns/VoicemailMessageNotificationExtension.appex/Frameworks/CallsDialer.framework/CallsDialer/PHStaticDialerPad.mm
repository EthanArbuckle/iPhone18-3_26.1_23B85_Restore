@interface PHStaticDialerPad
- (CGSize)intrinsicContentSize;
- (id)_highlightedImage;
- (id)_keypadImage;
- (id)_linearFocusMovementSequences;
- (id)_pressedImage;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)keyPressed:(id)pressed;
- (void)layoutSubviews;
@end

@implementation PHStaticDialerPad

- (void)layoutSubviews
{
  v17.receiver = self;
  v17.super_class = PHStaticDialerPad;
  [(PHStaticDialerPad *)&v17 layoutSubviews];
  v3 = objc_alloc_init(NSMutableArray);
  [(PHStaticDialerPad *)self frame];
  v4 = 0;
  v5 = 0;
  v7 = v6 * 0.25;
  v9 = v8 / 3.0;
  do
  {
    v10 = 0;
    v16 = v5;
    v11 = v7 * v5;
    do
    {
      v12 = objc_alloc_init(CPKeyView);
      [(CPKeyView *)v12 setKeyIndex:v4 + v10];
      [(CPKeyView *)v12 setFrame:v9 * v10, v11, v9, v7];
      v13 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:"keyPressed:"];
      [v13 setMinimumPressDuration:0.0];
      [v13 setAllowedPressTypes:&off_55E08];
      [(CPKeyView *)v12 addGestureRecognizer:v13];
      [(PHStaticDialerPad *)self addSubview:v12];
      [v3 addObject:v12];

      ++v10;
    }

    while (v10 != 3);
    v5 = v16 + 1;
    v4 += 3;
  }

  while (v16 != 3);
  v14 = [_UIFocusLinearMovementSequence sequenceWithItems:v3 loops:0];
  linearSequence = self->_linearSequence;
  self->_linearSequence = v14;
}

- (void)keyPressed:(id)pressed
{
  state = [pressed state];
  if (state == &dword_4)
  {

    [(PHStaticDialerPad *)self performTapActionCancelForHighlightedKey];
  }

  else if (state == (&dword_0 + 3))
  {

    [(PHStaticDialerPad *)self performTapActionEndForHighlightedKey];
  }

  else if (state == (&dword_0 + 1))
  {

    [(PHStaticDialerPad *)self performTapActionDownForHighlightedKey];
  }
}

- (id)_pressedImage
{
  if ([(PHStaticDialerPad *)self dialerType]== 1 || [(PHStaticDialerPad *)self dialerType]== 2)
  {
    v3 = [UIImage phCarPlayImageNamed:@"carplay_keypad_highlighted"];
  }

  else
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v3 = [UIImage _deviceSpecificImageNamed:@"dialerView-pressed" inBundle:v4];
  }

  return v3;
}

- (id)_keypadImage
{
  if ([(PHStaticDialerPad *)self dialerType]== 1 || [(PHStaticDialerPad *)self dialerType]== 2)
  {
    v3 = [UIImage phCarPlayImageNamed:@"carplay_keypad"];
  }

  else
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v3 = [UIImage _deviceSpecificImageNamed:@"dialerView-normal" inBundle:v4];
  }

  return v3;
}

- (id)_highlightedImage
{
  if ([(PHStaticDialerPad *)self dialerType]== 1 || [(PHStaticDialerPad *)self dialerType]== 2)
  {
    v3 = [UIImage phCarPlayImageNamed:@"carplay_keypad_highlighted"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CGSize)intrinsicContentSize
{
  _keypadImage = [(PHStaticDialerPad *)self _keypadImage];
  [_keypadImage size];
  v5 = v4;
  _keypadImage2 = [(PHStaticDialerPad *)self _keypadImage];
  [_keypadImage2 size];
  v8 = v7;

  v9 = v5;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  coordinatorCopy = coordinator;
  [(PHStaticDialerPad *)self performTapActionCancelForHighlightedKey];
  v14.receiver = self;
  v14.super_class = PHStaticDialerPad;
  [(PHStaticDialerPad *)&v14 didUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinatorCopy];

  nextFocusedItem = [contextCopy nextFocusedItem];
  if (nextFocusedItem && (v9 = nextFocusedItem, [contextCopy nextFocusedItem], v10 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v10, v9, (isKindOfClass & 1) != 0))
  {
    nextFocusedItem2 = [contextCopy nextFocusedItem];
    keyIndex = [nextFocusedItem2 keyIndex];
  }

  else
  {
    keyIndex = -1;
  }

  [(PHStaticDialerPad *)self highlightKeyAtIndex:keyIndex];
}

- (id)_linearFocusMovementSequences
{
  linearSequence = self->_linearSequence;
  v2 = [NSArray arrayWithObjects:&linearSequence count:1];

  return v2;
}

@end