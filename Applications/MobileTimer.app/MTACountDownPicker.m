@interface MTACountDownPicker
- (BOOL)becomeFirstResponder;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)decrementValue;
- (BOOL)incrementValue;
- (BOOL)resignFirstResponder;
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (CGRect)caretRectForPosition:(id)a3;
- (CGRect)editingRectForBounds:(CGRect)a3;
- (CGRect)hourHighlightFrame;
- (CGRect)minuteHighlightFrame;
- (CGRect)secondHighlightFrame;
- (CGRect)textRectForBounds:(CGRect)a3;
- (MTACountDownPicker)initWithFrame:(CGRect)a3;
- (void)activateNextKeyField;
- (void)activatePreviousKeyField;
- (void)decrementValueContinuouslly;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)endEditing;
- (void)incrementValueContinuouslly;
- (void)layoutSubviews;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)pressesEnded:(id)a3 withEvent:(id)a4;
- (void)recognizeTapGesture:(id)a3;
- (void)setDuration:(double)a3;
- (void)setSelectedField:(int64_t)a3;
- (void)setShowText:(BOOL)a3;
- (void)setUsesSmallSize:(BOOL)a3;
- (void)startEditing;
- (void)updateHighlightPath;
@end

@implementation MTACountDownPicker

- (MTACountDownPicker)initWithFrame:(CGRect)a3
{
  v22.receiver = self;
  v22.super_class = MTACountDownPicker;
  v3 = [(MTACountDownPicker *)&v22 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v8 = [(MTACountDownPicker *)&v15 layer];
    [v8 addSublayer:v4->_highlightLayer];

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
  v3 = [(MTACountDownPicker *)&v5 becomeFirstResponder];
  if (v3)
  {
    [(MTACountDownPicker *)self setSelectedField:1];
  }

  return v3;
}

- (BOOL)resignFirstResponder
{
  v5.receiver = self;
  v5.super_class = MTACountDownPicker;
  v3 = [(MTACountDownPicker *)&v5 resignFirstResponder];
  if (v3)
  {
    [(MTACountDownPicker *)self setSelectedField:0];
  }

  return v3;
}

- (CGRect)caretRectForPosition:(id)a3
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

- (CGRect)textRectForBounds:(CGRect)a3
{
  v4 = CGRectInset(a3, 10.0, 10.0);

  return CGRectOffset(v4, 0.0, -2.0);
}

- (CGRect)editingRectForBounds:(CGRect)a3
{
  v4 = CGRectInset(a3, 10.0, 10.0);

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
  v5 = [(MTACountDownPicker *)self beginningOfDocument];
  v6 = [(MTACountDownPicker *)self positionFromPosition:v5 offset:0];

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
  v15 = [(MTACountDownPicker *)self beginningOfDocument];
  v16 = [(MTACountDownPicker *)self positionFromPosition:v15 offset:3];

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
  v24 = [(MTACountDownPicker *)self beginningOfDocument];
  v25 = [(MTACountDownPicker *)self positionFromPosition:v24 offset:6];

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

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v10.receiver = self;
  v10.super_class = MTACountDownPicker;
  v5 = [(MTACountDownPicker *)&v10 canPerformAction:a3 withSender:a4];
  v8 = "copy:" != a3 || "paste:" != a3 || "selectAll:" != a3;
  return v8 & v5;
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = MTACountDownPicker;
  [(MTACountDownPicker *)&v12 didUpdateFocusInContext:v6 withAnimationCoordinator:a4];
  v7 = [v6 previouslyFocusedView];
  v8 = v7;
  if (v7 == self)
  {
  }

  else
  {
    v9 = [v6 nextFocusedView];

    if (v9 == self)
    {
      if ([v6 focusHeading] == 32)
      {
        v10 = self;
        v11 = 3;
LABEL_8:
        [(MTACountDownPicker *)v10 setSelectedField:v11];
        goto LABEL_9;
      }

      if ([v6 focusHeading] == 16)
      {
        v10 = self;
        v11 = 1;
        goto LABEL_8;
      }
    }
  }

LABEL_9:
}

- (void)setUsesSmallSize:(BOOL)a3
{
  if (self->_usesSmallSize != a3)
  {
    v10 = v3;
    self->_usesSmallSize = a3;
    v8 = 100.0;
    if (a3)
    {
      v8 = 54.0;
    }

    v9 = [MTAUtilities thinG2MonospacedDigitFontWithSize:v8, v4, v10, v5];
    [(MTACountDownPicker *)self setFont:v9];

    [(MTACountDownPicker *)self setNeedsLayout];
  }
}

- (void)setDuration:(double)a3
{
  if (self->_duration != a3)
  {
    v12 = v6;
    v13 = v5;
    v14 = v3;
    v15 = v4;
    v8 = 0.0;
    if (a3 >= 0.0)
    {
      v8 = a3;
      if (a3 > 86399.0)
      {
        v8 = 86399.0;
      }
    }

    self->_duration = v8;
    v9 = [(MTACountDownPicker *)self formatter];
    v10 = [v9 stringFromTimeInterval:v8];
    v11.receiver = self;
    v11.super_class = MTACountDownPicker;
    [(MTACountDownPicker *)&v11 setText:v10];
  }
}

- (void)setShowText:(BOOL)a3
{
  if (self->_showText != a3)
  {
    v10 = v3;
    v11 = v4;
    v12 = v5;
    v6 = a3;
    self->_showText = a3;
    if (a3)
    {
      v3 = [(MTACountDownPicker *)self formatter];
      [(MTACountDownPicker *)self duration];
      v8 = [v3 stringFromTimeInterval:?];
    }

    else
    {
      v8 = &stru_1000AEF10;
    }

    v9.receiver = self;
    v9.super_class = MTACountDownPicker;
    [(MTACountDownPicker *)&v9 setText:v8];
    if (v6)
    {
    }
  }
}

- (void)setSelectedField:(int64_t)a3
{
  if (self->_selectedField != a3)
  {
    self->_selectedField = a3;
    [(MTACountDownPicker *)self endEditing];

    [(MTACountDownPicker *)self updateHighlightPath];
  }
}

- (void)updateHighlightPath
{
  v3 = [(MTACountDownPicker *)self selectedField];
  switch(v3)
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
  v9 = [(MTACountDownPicker *)self highlightLayer];
  [v9 setPath:v8];

  CGPathRelease(v8);
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(MTACountDownPicker *)self isFocused])
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v9)
    {
      v10 = v9;
      v23 = v7;
      v22 = v6;
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
            v16 = [v14 charactersIgnoringModifiers];
            if ([v16 isEqualToString:UIKeyInputEscape])
            {
              v17 = [(MTACountDownPicker *)self superview];
              [v17 pressesBegan:v8 withEvent:v23];

LABEL_23:
              goto LABEL_24;
            }

            if ([v16 isEqualToString:UIKeyInputUpArrow])
            {
              if ([(MTACountDownPicker *)self incrementValue])
              {
                v18 = self;
                v19 = "incrementValueContinuouslly";
                goto LABEL_16;
              }

LABEL_17:
              [(MTACountDownPicker *)self beep];
              goto LABEL_22;
            }

            if ([v16 isEqualToString:UIKeyInputDownArrow])
            {
              if (![(MTACountDownPicker *)self decrementValue])
              {
                goto LABEL_17;
              }

              v18 = self;
              v19 = "decrementValueContinuouslly";
LABEL_16:
              [(MTACountDownPicker *)v18 performSelector:v19 withObject:0 afterDelay:0.2];
LABEL_22:
              v11 = 1;
              goto LABEL_23;
            }

            if ([v16 isEqualToString:UIKeyInputLeftArrow])
            {
LABEL_19:
              [(MTACountDownPicker *)self activatePreviousKeyField];
              goto LABEL_22;
            }

            if ([v16 isEqualToString:UIKeyInputRightArrow])
            {
LABEL_21:
              [(MTACountDownPicker *)self activateNextKeyField];
              goto LABEL_22;
            }

            if (![v16 isEqualToString:@"\t"])
            {
              goto LABEL_23;
            }

            v20 = [v15 modifierFlags];
            if (v20 == 0x20000)
            {
              if ([(MTACountDownPicker *)self selectedField]!= 1)
              {
                goto LABEL_19;
              }
            }

            else
            {
              if (v20)
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

          v6 = v22;
          v7 = v23;
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
  [(MTACountDownPicker *)&v24 pressesBegan:v6 withEvent:v7];
LABEL_38:
}

- (void)pressesEnded:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22 = self;
  if (![(MTACountDownPicker *)self isFocused])
  {
    goto LABEL_17;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (!v9)
  {

LABEL_17:
    v23.receiver = v22;
    v23.super_class = MTACountDownPicker;
    [(MTACountDownPicker *)&v23 pressesEnded:v6 withEvent:v7];
    goto LABEL_18;
  }

  v10 = v9;
  v20 = v7;
  v21 = v6;
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
        v16 = [v14 charactersIgnoringModifiers];
        v17 = [v16 isEqualToString:UIKeyInputUpArrow];
        v18 = "incrementValueContinuouslly";
        if ((v17 & 1) != 0 || (v19 = [v16 isEqualToString:{UIKeyInputDownArrow, "incrementValueContinuouslly"}], v18 = "decrementValueContinuouslly", v19))
        {
          [NSThread cancelPreviousPerformRequestsWithTarget:v22 selector:v18 object:0];
          v11 = 1;
        }
      }
    }

    v10 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
  }

  while (v10);

  v7 = v20;
  v6 = v21;
  if ((v11 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_18:
}

- (void)activateNextKeyField
{
  v3 = [(MTACountDownPicker *)self selectedField];
  if ((v3 - 1) < 2)
  {
    v4 = [(MTACountDownPicker *)self selectedField]+ 1;
  }

  else
  {
    v4 = 1;
    if (v3 && v3 != 3)
    {
      return;
    }
  }

  [(MTACountDownPicker *)self setSelectedField:v4];
}

- (void)activatePreviousKeyField
{
  v3 = [(MTACountDownPicker *)self selectedField];
  if (v3 < 2)
  {
    v4 = 3;
  }

  else
  {
    if (v3 - 2 > 1)
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
  v5 = [(MTACountDownPicker *)self selectedField];
  if (v5 == 3)
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
    if (v5 == 2)
    {
      v8 = v4 % 3600 < 3540;
      v6 = 60.0;
    }

    else
    {
      v7 = 0.0;
      if (v5 != 1)
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
  v5 = [(MTACountDownPicker *)self selectedField];
  if (v5 == 3)
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
    if (v5 == 2)
    {
      v8 = v4 % 3600 <= 59;
      v6 = -60.0;
    }

    else
    {
      v7 = 0.0;
      if (v5 != 1)
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

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  v6 = a5;
  v7 = +[NSCharacterSet decimalDigitCharacterSet];
  v8 = [v6 stringByTrimmingCharactersInSet:v7];

  if (![v8 length])
  {
    v9 = [(MTACountDownPicker *)self selectedField];
    switch(v9)
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

    v16 = [v6 integerValue];
    if (v16 >= 0xA || (v17 = v16, [(MTACountDownPicker *)self underEditing]) && (v17 += 10 * v11, v17 > v12))
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

- (void)recognizeTapGesture:(id)a3
{
  [a3 locationInView:self];
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