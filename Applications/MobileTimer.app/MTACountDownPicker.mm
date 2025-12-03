@interface MTACountDownPicker
- (BOOL)becomeFirstResponder;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)decrementValue;
- (BOOL)incrementValue;
- (BOOL)resignFirstResponder;
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (CGRect)caretRectForPosition:(id)position;
- (CGRect)editingRectForBounds:(CGRect)bounds;
- (CGRect)hourHighlightFrame;
- (CGRect)minuteHighlightFrame;
- (CGRect)secondHighlightFrame;
- (CGRect)textRectForBounds:(CGRect)bounds;
- (MTACountDownPicker)initWithFrame:(CGRect)frame;
- (void)activateNextKeyField;
- (void)activatePreviousKeyField;
- (void)decrementValueContinuouslly;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)endEditing;
- (void)incrementValueContinuouslly;
- (void)layoutSubviews;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)pressesEnded:(id)ended withEvent:(id)event;
- (void)recognizeTapGesture:(id)gesture;
- (void)setDuration:(double)duration;
- (void)setSelectedField:(int64_t)field;
- (void)setShowText:(BOOL)text;
- (void)setUsesSmallSize:(BOOL)size;
- (void)startEditing;
- (void)updateHighlightPath;
@end

@implementation MTACountDownPicker

- (MTACountDownPicker)initWithFrame:(CGRect)frame
{
  v22.receiver = self;
  v22.super_class = MTACountDownPicker;
  v3 = [(MTACountDownPicker *)&v22 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v21.receiver = v3;
    v21.super_class = MTACountDownPicker;
    [(MTACountDownPicker *)&v21 setBorderStyle:3];
    v5 = [MTAUtilities thinG2MonospacedDigitFontWithSize:100.0];
    v20.receiver = v4;
    v20.super_class = MTACountDownPicker;
    [(MTACountDownPicker *)&v20 setFont:v5];

    v19.receiver = v4;
    v19.super_class = MTACountDownPicker;
    [(MTACountDownPicker *)&v19 setTextAlignment:1];
    v18.receiver = v4;
    v18.super_class = MTACountDownPicker;
    [(MTACountDownPicker *)&v18 setFocusEffect:0];
    v17.receiver = v4;
    v17.super_class = MTACountDownPicker;
    [(MTACountDownPicker *)&v17 setDelegate:v4];
    v16.receiver = v4;
    v16.super_class = MTACountDownPicker;
    [(MTACountDownPicker *)&v16 setKeyboardType:4];
    v6 = +[CAShapeLayer layer];
    highlightLayer = v4->_highlightLayer;
    v4->_highlightLayer = v6;

    v15.receiver = v4;
    v15.super_class = MTACountDownPicker;
    layer = [(MTACountDownPicker *)&v15 layer];
    [layer addSublayer:v4->_highlightLayer];

    v9 = objc_alloc_init(NSDateComponentsFormatter);
    formatter = v4->_formatter;
    v4->_formatter = v9;

    [(NSDateComponentsFormatter *)v4->_formatter setUnitsStyle:0];
    [(NSDateComponentsFormatter *)v4->_formatter setAllowedUnits:224];
    [(NSDateComponentsFormatter *)v4->_formatter setZeroFormattingBehavior:0x10000];
    v11 = [(NSDateComponentsFormatter *)v4->_formatter stringFromTimeInterval:v4->_duration];
    v14.receiver = v4;
    v14.super_class = MTACountDownPicker;
    [(MTACountDownPicker *)&v14 setText:v11];

    v4->_selectedField = 0;
    [(MTACountDownPicker *)v4 endEditing];
    [(MTACountDownPicker *)v4 updateHighlightPath];
    v4->_underEditing = 0;
    v12 = [[UITapGestureRecognizer alloc] initWithTarget:v4 action:"recognizeTapGesture:"];
    [(MTACountDownPicker *)v4 addGestureRecognizer:v12];
  }

  return v4;
}

- (BOOL)becomeFirstResponder
{
  v5.receiver = self;
  v5.super_class = MTACountDownPicker;
  becomeFirstResponder = [(MTACountDownPicker *)&v5 becomeFirstResponder];
  if (becomeFirstResponder)
  {
    [(MTACountDownPicker *)self setSelectedField:1];
  }

  return becomeFirstResponder;
}

- (BOOL)resignFirstResponder
{
  v5.receiver = self;
  v5.super_class = MTACountDownPicker;
  resignFirstResponder = [(MTACountDownPicker *)&v5 resignFirstResponder];
  if (resignFirstResponder)
  {
    [(MTACountDownPicker *)self setSelectedField:0];
  }

  return resignFirstResponder;
}

- (CGRect)caretRectForPosition:(id)position
{
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)textRectForBounds:(CGRect)bounds
{
  v4 = CGRectInset(bounds, 10.0, 10.0);

  return CGRectOffset(v4, 0.0, -2.0);
}

- (CGRect)editingRectForBounds:(CGRect)bounds
{
  v4 = CGRectInset(bounds, 10.0, 10.0);

  return CGRectOffset(v4, 0.0, -2.0);
}

- (void)layoutSubviews
{
  v33.receiver = self;
  v33.super_class = MTACountDownPicker;
  [(MTACountDownPicker *)&v33 layoutSubviews];
  [(MTACountDownPicker *)self bounds];
  [(MTACountDownPicker *)self editingRectForBounds:?];
  v4 = v3;
  beginningOfDocument = [(MTACountDownPicker *)self beginningOfDocument];
  v6 = [(MTACountDownPicker *)self positionFromPosition:beginningOfDocument offset:0];

  v7 = [(MTACountDownPicker *)self positionFromPosition:v6 offset:2];
  v8 = [(MTACountDownPicker *)self textRangeFromPosition:v6 toPosition:v7];
  [(MTACountDownPicker *)self firstRectForRange:v8];
  v10 = v9;
  v12 = v11;

  v13 = v4 + v10;
  [(MTACountDownPicker *)self bounds];
  v14 = CGRectGetHeight(v34) + -20.0;
  [(MTACountDownPicker *)self setHourHighlightFrame:v13, 10.0, v12, v14];
  v35.origin.y = 10.0;
  v35.origin.x = v13;
  v35.size.width = v12;
  v35.size.height = v14;
  [(MTACountDownPicker *)self setHourMidX:CGRectGetMidX(v35)];
  beginningOfDocument2 = [(MTACountDownPicker *)self beginningOfDocument];
  v16 = [(MTACountDownPicker *)self positionFromPosition:beginningOfDocument2 offset:3];

  v17 = [(MTACountDownPicker *)self positionFromPosition:v16 offset:2];

  v18 = [(MTACountDownPicker *)self textRangeFromPosition:v16 toPosition:v17];
  [(MTACountDownPicker *)self firstRectForRange:v18];
  v20 = v19;
  v22 = v21;

  v23 = v4 + v20;
  [(MTACountDownPicker *)self setMinuteHighlightFrame:v23, 10.0, v22, v14];
  v36.origin.y = 10.0;
  v36.origin.x = v23;
  v36.size.width = v22;
  v36.size.height = v14;
  [(MTACountDownPicker *)self setMinuteMidX:CGRectGetMidX(v36)];
  beginningOfDocument3 = [(MTACountDownPicker *)self beginningOfDocument];
  v25 = [(MTACountDownPicker *)self positionFromPosition:beginningOfDocument3 offset:6];

  v26 = [(MTACountDownPicker *)self positionFromPosition:v25 offset:2];

  v27 = [(MTACountDownPicker *)self textRangeFromPosition:v25 toPosition:v26];
  [(MTACountDownPicker *)self firstRectForRange:v27];
  v29 = v28;
  v31 = v30;

  v32 = v4 + v29;
  [(MTACountDownPicker *)self setSecondHighlightFrame:v32, 10.0, v31, v14];
  v37.origin.y = 10.0;
  v37.origin.x = v32;
  v37.size.width = v31;
  v37.size.height = v14;
  [(MTACountDownPicker *)self setSecondMidX:CGRectGetMidX(v37)];
  [(MTACountDownPicker *)self updateHighlightPath];
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  v10.receiver = self;
  v10.super_class = MTACountDownPicker;
  v5 = [(MTACountDownPicker *)&v10 canPerformAction:action withSender:sender];
  v8 = "copy:" != action || "paste:" != action || "selectAll:" != action;
  return v8 & v5;
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = MTACountDownPicker;
  [(MTACountDownPicker *)&v12 didUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinator];
  previouslyFocusedView = [contextCopy previouslyFocusedView];
  v8 = previouslyFocusedView;
  if (previouslyFocusedView == self)
  {
  }

  else
  {
    nextFocusedView = [contextCopy nextFocusedView];

    if (nextFocusedView == self)
    {
      if ([contextCopy focusHeading] == 32)
      {
        selfCopy2 = self;
        v11 = 3;
LABEL_8:
        [(MTACountDownPicker *)selfCopy2 setSelectedField:v11];
        goto LABEL_9;
      }

      if ([contextCopy focusHeading] == 16)
      {
        selfCopy2 = self;
        v11 = 1;
        goto LABEL_8;
      }
    }
  }

LABEL_9:
}

- (void)setUsesSmallSize:(BOOL)size
{
  if (self->_usesSmallSize != size)
  {
    v10 = v3;
    self->_usesSmallSize = size;
    v8 = 100.0;
    if (size)
    {
      v8 = 54.0;
    }

    v9 = [MTAUtilities thinG2MonospacedDigitFontWithSize:v8, v4, v10, v5];
    [(MTACountDownPicker *)self setFont:v9];

    [(MTACountDownPicker *)self setNeedsLayout];
  }
}

- (void)setDuration:(double)duration
{
  if (self->_duration != duration)
  {
    v12 = v6;
    v13 = v5;
    v14 = v3;
    v15 = v4;
    durationCopy = 0.0;
    if (duration >= 0.0)
    {
      durationCopy = duration;
      if (duration > 86399.0)
      {
        durationCopy = 86399.0;
      }
    }

    self->_duration = durationCopy;
    formatter = [(MTACountDownPicker *)self formatter];
    v10 = [formatter stringFromTimeInterval:durationCopy];
    v11.receiver = self;
    v11.super_class = MTACountDownPicker;
    [(MTACountDownPicker *)&v11 setText:v10];
  }
}

- (void)setShowText:(BOOL)text
{
  if (self->_showText != text)
  {
    v10 = formatter;
    v11 = v4;
    v12 = v5;
    textCopy = text;
    self->_showText = text;
    if (text)
    {
      formatter = [(MTACountDownPicker *)self formatter];
      [(MTACountDownPicker *)self duration];
      v8 = [formatter stringFromTimeInterval:?];
    }

    else
    {
      v8 = &stru_1000AEF10;
    }

    v9.receiver = self;
    v9.super_class = MTACountDownPicker;
    [(MTACountDownPicker *)&v9 setText:v8];
    if (textCopy)
    {
    }
  }
}

- (void)setSelectedField:(int64_t)field
{
  if (self->_selectedField != field)
  {
    self->_selectedField = field;
    [(MTACountDownPicker *)self endEditing];

    [(MTACountDownPicker *)self updateHighlightPath];
  }
}

- (void)updateHighlightPath
{
  selectedField = [(MTACountDownPicker *)self selectedField];
  switch(selectedField)
  {
    case 3:
      [(MTACountDownPicker *)self secondHighlightFrame];
      break;
    case 2:
      [(MTACountDownPicker *)self minuteHighlightFrame];
      break;
    case 1:
      [(MTACountDownPicker *)self hourHighlightFrame];
      break;
    default:
      x = CGRectZero.origin.x;
      y = CGRectZero.origin.y;
      width = CGRectZero.size.width;
      height = CGRectZero.size.height;
      break;
  }

  v8 = CGPathCreateWithRoundedRect(*&x, 3.0, 3.0, 0);
  highlightLayer = [(MTACountDownPicker *)self highlightLayer];
  [highlightLayer setPath:v8];

  CGPathRelease(v8);
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  if ([(MTACountDownPicker *)self isFocused])
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v8 = beganCopy;
    v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v9)
    {
      v10 = v9;
      v23 = eventCopy;
      v22 = beganCopy;
      v11 = 0;
      v12 = *v26;
      while (1)
      {
        v13 = 0;
        do
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = [*(*(&v25 + 1) + 8 * v13) key];
          v15 = v14;
          if (v14)
          {
            charactersIgnoringModifiers = [v14 charactersIgnoringModifiers];
            if ([charactersIgnoringModifiers isEqualToString:UIKeyInputEscape])
            {
              superview = [(MTACountDownPicker *)self superview];
              [superview pressesBegan:v8 withEvent:v23];

LABEL_23:
              goto LABEL_24;
            }

            if ([charactersIgnoringModifiers isEqualToString:UIKeyInputUpArrow])
            {
              if ([(MTACountDownPicker *)self incrementValue])
              {
                selfCopy2 = self;
                v19 = "incrementValueContinuouslly";
                goto LABEL_16;
              }

LABEL_17:
              [(MTACountDownPicker *)self beep];
              goto LABEL_22;
            }

            if ([charactersIgnoringModifiers isEqualToString:UIKeyInputDownArrow])
            {
              if (![(MTACountDownPicker *)self decrementValue])
              {
                goto LABEL_17;
              }

              selfCopy2 = self;
              v19 = "decrementValueContinuouslly";
LABEL_16:
              [(MTACountDownPicker *)selfCopy2 performSelector:v19 withObject:0 afterDelay:0.2];
LABEL_22:
              v11 = 1;
              goto LABEL_23;
            }

            if ([charactersIgnoringModifiers isEqualToString:UIKeyInputLeftArrow])
            {
LABEL_19:
              [(MTACountDownPicker *)self activatePreviousKeyField];
              goto LABEL_22;
            }

            if ([charactersIgnoringModifiers isEqualToString:UIKeyInputRightArrow])
            {
LABEL_21:
              [(MTACountDownPicker *)self activateNextKeyField];
              goto LABEL_22;
            }

            if (![charactersIgnoringModifiers isEqualToString:@"\t"])
            {
              goto LABEL_23;
            }

            modifierFlags = [v15 modifierFlags];
            if (modifierFlags == 0x20000)
            {
              if ([(MTACountDownPicker *)self selectedField]!= 1)
              {
                goto LABEL_19;
              }
            }

            else
            {
              if (modifierFlags)
              {
                goto LABEL_23;
              }

              if ([(MTACountDownPicker *)self selectedField]!= 3)
              {
                goto LABEL_21;
              }
            }

            [(MTACountDownPicker *)self setSelectedField:0];
            goto LABEL_23;
          }

LABEL_24:

          v13 = v13 + 1;
        }

        while (v10 != v13);
        v21 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
        v10 = v21;
        if (!v21)
        {

          beganCopy = v22;
          eventCopy = v23;
          if (v11)
          {
            goto LABEL_38;
          }

          goto LABEL_37;
        }
      }
    }
  }

LABEL_37:
  v24.receiver = self;
  v24.super_class = MTACountDownPicker;
  [(MTACountDownPicker *)&v24 pressesBegan:beganCopy withEvent:eventCopy];
LABEL_38:
}

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  eventCopy = event;
  selfCopy = self;
  if (![(MTACountDownPicker *)self isFocused])
  {
    goto LABEL_17;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = endedCopy;
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (!v9)
  {

LABEL_17:
    v23.receiver = selfCopy;
    v23.super_class = MTACountDownPicker;
    [(MTACountDownPicker *)&v23 pressesEnded:endedCopy withEvent:eventCopy];
    goto LABEL_18;
  }

  v10 = v9;
  v20 = eventCopy;
  v21 = endedCopy;
  v11 = 0;
  v12 = *v25;
  do
  {
    for (i = 0; i != v10; i = i + 1)
    {
      if (*v25 != v12)
      {
        objc_enumerationMutation(v8);
      }

      v14 = [*(*(&v24 + 1) + 8 * i) key];
      v15 = v14;
      if (v14)
      {
        charactersIgnoringModifiers = [v14 charactersIgnoringModifiers];
        v17 = [charactersIgnoringModifiers isEqualToString:UIKeyInputUpArrow];
        v18 = "incrementValueContinuouslly";
        if ((v17 & 1) != 0 || (v19 = [charactersIgnoringModifiers isEqualToString:{UIKeyInputDownArrow, "incrementValueContinuouslly"}], v18 = "decrementValueContinuouslly", v19))
        {
          [NSThread cancelPreviousPerformRequestsWithTarget:selfCopy selector:v18 object:0];
          v11 = 1;
        }
      }
    }

    v10 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
  }

  while (v10);

  eventCopy = v20;
  endedCopy = v21;
  if ((v11 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_18:
}

- (void)activateNextKeyField
{
  selectedField = [(MTACountDownPicker *)self selectedField];
  if ((selectedField - 1) < 2)
  {
    v4 = [(MTACountDownPicker *)self selectedField]+ 1;
  }

  else
  {
    v4 = 1;
    if (selectedField && selectedField != 3)
    {
      return;
    }
  }

  [(MTACountDownPicker *)self setSelectedField:v4];
}

- (void)activatePreviousKeyField
{
  selectedField = [(MTACountDownPicker *)self selectedField];
  if (selectedField < 2)
  {
    v4 = 3;
  }

  else
  {
    if (selectedField - 2 > 1)
    {
      return;
    }

    v4 = [(MTACountDownPicker *)self selectedField]- 1;
  }

  [(MTACountDownPicker *)self setSelectedField:v4];
}

- (BOOL)incrementValue
{
  [(MTACountDownPicker *)self duration];
  v4 = v3;
  selectedField = [(MTACountDownPicker *)self selectedField];
  if (selectedField == 3)
  {
    v6 = 0.0;
    if (v4 % 60 >= 59)
    {
      v7 = 0.0;
    }

    else
    {
      v7 = 1.0;
    }
  }

  else
  {
    if (selectedField == 2)
    {
      v8 = v4 % 3600 < 3540;
      v6 = 60.0;
    }

    else
    {
      v7 = 0.0;
      if (selectedField != 1)
      {
        goto LABEL_12;
      }

      v8 = v4 < 82800;
      v6 = 3600.0;
    }

    if (v8)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0.0;
    }
  }

LABEL_12:
  [(MTACountDownPicker *)self duration];
  [(MTACountDownPicker *)self setDuration:v7 + v9];
  return v7 > 0.0;
}

- (void)incrementValueContinuouslly
{
  if ([(MTACountDownPicker *)self incrementValue])
  {

    [(MTACountDownPicker *)self performSelector:"incrementValueContinuouslly" withObject:0 afterDelay:0.1];
  }

  else
  {

    [(MTACountDownPicker *)self beep];
  }
}

- (BOOL)decrementValue
{
  [(MTACountDownPicker *)self duration];
  v4 = v3;
  selectedField = [(MTACountDownPicker *)self selectedField];
  if (selectedField == 3)
  {
    v6 = 0.0;
    if (v4 % 60 <= 0)
    {
      v7 = 0.0;
    }

    else
    {
      v7 = -1.0;
    }
  }

  else
  {
    if (selectedField == 2)
    {
      v8 = v4 % 3600 <= 59;
      v6 = -60.0;
    }

    else
    {
      v7 = 0.0;
      if (selectedField != 1)
      {
        goto LABEL_12;
      }

      v8 = v4 <= 3599;
      v6 = -3600.0;
    }

    if (v8)
    {
      v7 = 0.0;
    }

    else
    {
      v7 = v6;
    }
  }

LABEL_12:
  [(MTACountDownPicker *)self duration];
  [(MTACountDownPicker *)self setDuration:v7 + v9];
  return v7 < 0.0;
}

- (void)decrementValueContinuouslly
{
  if ([(MTACountDownPicker *)self decrementValue])
  {

    [(MTACountDownPicker *)self performSelector:"decrementValueContinuouslly" withObject:0 afterDelay:0.1];
  }

  else
  {

    [(MTACountDownPicker *)self beep];
  }
}

- (void)startEditing
{
  [NSThread cancelPreviousPerformRequestsWithTarget:self selector:"endEditing" object:0];
  [(MTACountDownPicker *)self setUnderEditing:1];

  [(MTACountDownPicker *)self performSelector:"endEditing" withObject:0 afterDelay:0.5];
}

- (void)endEditing
{
  [NSThread cancelPreviousPerformRequestsWithTarget:self selector:"endEditing" object:0];

  [(MTACountDownPicker *)self setUnderEditing:0];
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  stringCopy = string;
  v7 = +[NSCharacterSet decimalDigitCharacterSet];
  v8 = [stringCopy stringByTrimmingCharactersInSet:v7];

  if (![v8 length])
  {
    selectedField = [(MTACountDownPicker *)self selectedField];
    switch(selectedField)
    {
      case 3:
        [(MTACountDownPicker *)self duration];
        v11 = v15 % 60;
        v12 = 59;
        v13 = 1;
        break;
      case 2:
        [(MTACountDownPicker *)self duration];
        v11 = ((((34953 * (v14 % 3600)) >> 16) >> 5) + (((v14 % 3600 + ((-30583 * (v14 % 3600)) >> 16)) & 0x8000) >> 15));
        v12 = 59;
        v13 = 60;
        break;
      case 1:
        [(MTACountDownPicker *)self duration];
        v11 = v10 / 3600;
        v12 = 23;
        v13 = 3600;
        break;
      default:
        [(MTACountDownPicker *)self beep];
        v13 = 0;
        v12 = 0;
        v11 = 0;
        break;
    }

    integerValue = [stringCopy integerValue];
    if (integerValue >= 0xA || (v17 = integerValue, [(MTACountDownPicker *)self underEditing]) && (v17 += 10 * v11, v17 > v12))
    {
      [(MTACountDownPicker *)self beep];
    }

    else
    {
      [(MTACountDownPicker *)self startEditing];
      [(MTACountDownPicker *)self duration];
      [(MTACountDownPicker *)self setDuration:v18 + (&v17[-v11] * v13)];
    }
  }

  return 0;
}

- (void)recognizeTapGesture:(id)gesture
{
  [gesture locationInView:self];
  v5 = v4;
  v7 = v6;
  [(MTACountDownPicker *)self hourHighlightFrame];
  v10.x = v5;
  v10.y = v7;
  if (CGRectContainsPoint(v13, v10))
  {
    v8 = 1;
  }

  else
  {
    [(MTACountDownPicker *)self minuteHighlightFrame];
    v11.x = v5;
    v11.y = v7;
    if (CGRectContainsPoint(v14, v11))
    {
      v8 = 2;
    }

    else
    {
      [(MTACountDownPicker *)self secondHighlightFrame];
      v12.x = v5;
      v12.y = v7;
      if (!CGRectContainsPoint(v15, v12))
      {
        return;
      }

      v8 = 3;
    }
  }

  [(MTACountDownPicker *)self setSelectedField:v8];
}

- (CGRect)hourHighlightFrame
{
  x = self->_hourHighlightFrame.origin.x;
  y = self->_hourHighlightFrame.origin.y;
  width = self->_hourHighlightFrame.size.width;
  height = self->_hourHighlightFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)minuteHighlightFrame
{
  x = self->_minuteHighlightFrame.origin.x;
  y = self->_minuteHighlightFrame.origin.y;
  width = self->_minuteHighlightFrame.size.width;
  height = self->_minuteHighlightFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)secondHighlightFrame
{
  x = self->_secondHighlightFrame.origin.x;
  y = self->_secondHighlightFrame.origin.y;
  width = self->_secondHighlightFrame.size.width;
  height = self->_secondHighlightFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end