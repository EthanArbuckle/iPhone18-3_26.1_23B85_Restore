@interface RoutePlanningWaypointTextField
- (CGRect)clearButtonRectForBounds:(CGRect)bounds;
- (CGRect)editingRectForBounds:(CGRect)bounds;
- (CGRect)leftViewRectForBounds:(CGRect)bounds;
- (CGRect)placeholderRectForBounds:(CGRect)bounds;
- (CGRect)rightViewRectForBounds:(CGRect)bounds;
- (CGRect)textRectForBounds:(CGRect)bounds;
- (RoutePlanningWaypointTextField)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)alignmentRectInsets;
- (double)_textMinimumLeadingMargin;
- (double)_textMinimumTrailingMargin;
- (void)_hoverGesture:(id)gesture;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation RoutePlanningWaypointTextField

- (CGRect)clearButtonRectForBounds:(CGRect)bounds
{
  v19.receiver = self;
  v19.super_class = RoutePlanningWaypointTextField;
  [(RoutePlanningWaypointTextField *)&v19 clearButtonRectForBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = +[UIApplication sharedApplication];
  userInterfaceLayoutDirection = [v12 userInterfaceLayoutDirection];

  if (sub_10000FA08(self) == 5)
  {
    sub_10000FA08(self);
    v14 = -10.0;
    if (userInterfaceLayoutDirection == 1)
    {
      v14 = 10.0;
    }

    v5 = v14 + v5;
  }

  v15 = v5;
  v16 = v7;
  v17 = v9;
  v18 = v11;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)editingRectForBounds:(CGRect)bounds
{
  [(RoutePlanningWaypointTextField *)self textRectForBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)placeholderRectForBounds:(CGRect)bounds
{
  [(RoutePlanningWaypointTextField *)self textRectForBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)textRectForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  sub_10000FA08(self);
  v8 = +[UIApplication sharedApplication];
  userInterfaceLayoutDirection = [v8 userInterfaceLayoutDirection];

  [(RoutePlanningWaypointTextField *)self leftViewRectForBounds:x, y, width, height];
  v10 = v56.origin.x;
  v11 = v56.origin.y;
  v12 = v56.size.width;
  v13 = v56.size.height;
  v54 = 0.0;
  if (CGRectGetWidth(v56) > 0.0)
  {
    v57.origin.x = v10;
    v57.origin.y = v11;
    v57.size.width = v12;
    v57.size.height = v13;
    v54 = CGRectGetMaxX(v57) + 8.0;
  }

  [(RoutePlanningWaypointTextField *)self rightViewRectForBounds:x, y, width, height];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  rect = height;
  [(RoutePlanningWaypointTextField *)self clearButtonRectForBounds:x, y, width, height];
  v53.origin.x = v22;
  v53.origin.y = v23;
  v53.size.width = v24;
  v53.size.height = v25;
  v58.origin.x = v15;
  v58.origin.y = v17;
  v58.size.width = v19;
  v58.size.height = v21;
  v26 = CGRectGetWidth(v58);
  if (userInterfaceLayoutDirection == 1)
  {
    v27 = 0.0;
    if (v26 > 0.0)
    {
      v59.origin.x = v15;
      v59.origin.y = v17;
      v59.size.width = v19;
      v59.size.height = v21;
      v28 = CGRectGetWidth(v59);
      v60.origin.x = x;
      v60.origin.y = y;
      v60.size.width = width;
      v60.size.height = rect;
      v51 = CGRectGetWidth(v60);
      v61.origin.x = v15;
      v61.origin.y = v17;
      v61.size.width = v19;
      v61.size.height = v21;
      v27 = v28 + 8.0 + v51 - CGRectGetMaxX(v61);
    }

    _clearButton = [(RoutePlanningWaypointTextField *)self _clearButton];
    superview = [_clearButton superview];
    v31 = 0.0;
    if (superview)
    {
      v31 = CGRectGetMaxX(v53) + 8.0;
    }

    v32 = fmax(v54, v31);
  }

  else
  {
    v33 = 0.0;
    v34 = v26 <= 0.0;
    v35 = 0.0;
    if (!v34)
    {
      v62.origin.x = x;
      v62.origin.y = y;
      v62.size.width = width;
      v62.size.height = rect;
      MaxX = CGRectGetMaxX(v62);
      v63.origin.x = v15;
      v63.origin.y = v17;
      v63.size.width = v19;
      v63.size.height = v21;
      v35 = MaxX + 8.0 - CGRectGetMinX(v63);
    }

    v36 = v35;
    _clearButton2 = [(RoutePlanningWaypointTextField *)self _clearButton];
    superview2 = [_clearButton2 superview];
    if (superview2)
    {
      v64.origin.x = x;
      v64.origin.y = y;
      v64.size.width = width;
      v64.size.height = rect;
      v39 = CGRectGetMaxX(v64);
      v33 = v39 + 8.0 - CGRectGetMinX(v53);
    }

    v27 = fmax(v36, v33);
    v32 = v54;
  }

  [(RoutePlanningWaypointTextField *)self _textMinimumLeadingMargin];
  v41 = v40;
  [(RoutePlanningWaypointTextField *)self _textMinimumTrailingMargin];
  v43 = fmax(v32, v42);
  v44 = fmax(v27, v41);
  v45 = fmax(v32, v41);
  v46 = fmax(v27, v42);
  if (userInterfaceLayoutDirection != 1)
  {
    v43 = v45;
    v44 = v46;
  }

  v47 = v43 + x;
  v48 = width - (v43 + v44);
  v49 = y;
  v50 = rect;
  result.size.height = v50;
  result.size.width = v48;
  result.origin.y = v49;
  result.origin.x = v47;
  return result;
}

- (double)_textMinimumTrailingMargin
{
  v3 = sub_10000FA08(self);
  result = 0.0;
  if (v3 == 5)
  {
    sub_10000FA08(self);
    return 10.0;
  }

  return result;
}

- (double)_textMinimumLeadingMargin
{
  v3 = sub_10000FA08(self);
  result = 0.0;
  if (v3 == 5)
  {
    sub_10000FA08(self);
    return 10.0;
  }

  return result;
}

- (CGRect)rightViewRectForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v8 = +[UIApplication sharedApplication];
  userInterfaceLayoutDirection = [v8 userInterfaceLayoutDirection];

  if (userInterfaceLayoutDirection == 1)
  {
    [(RoutePlanningWaypointTextField *)self leftView];
  }

  else
  {
    [(RoutePlanningWaypointTextField *)self rightView];
  }
  v10 = ;
  v11 = CGRectZero.origin.y;
  [v10 intrinsicContentSize];
  v13 = v12;
  v15 = v14;
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  v16 = CGRectGetMaxX(v25) - v13;
  sub_10000FA08(self);
  v17 = v16 + -10.0;
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  MidY = CGRectGetMidY(v26);
  v27.origin.x = v17;
  v27.origin.y = v11;
  v27.size.width = v13;
  v27.size.height = v15;
  v19 = CGRectGetHeight(v27);
  if (sub_10000FA08(self) == 5)
  {
    sub_10000FA08(self);
    v20 = 10.0;
    if (userInterfaceLayoutDirection != 1)
    {
      v20 = -10.0;
    }

    v17 = v17 + v20;
  }

  v21 = v17;
  v22 = round(MidY + v19 * -0.5);
  v23 = v13;
  v24 = v15;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (CGRect)leftViewRectForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v8 = +[UIApplication sharedApplication];
  userInterfaceLayoutDirection = [v8 userInterfaceLayoutDirection];

  if (userInterfaceLayoutDirection == 1)
  {
    [(RoutePlanningWaypointTextField *)self rightView];
  }

  else
  {
    [(RoutePlanningWaypointTextField *)self leftView];
  }
  v10 = ;
  v11 = CGRectZero.origin.y;
  [v10 intrinsicContentSize];
  v13 = v12;
  v15 = v14;
  sub_10000FA08(self);
  v16 = x + 10.0;
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  MidY = CGRectGetMidY(v24);
  v25.origin.x = x + 10.0;
  v25.origin.y = v11;
  v25.size.width = v13;
  v25.size.height = v15;
  v18 = CGRectGetHeight(v25);
  if (sub_10000FA08(self) == 5)
  {
    sub_10000FA08(self);
    v19 = -10.0;
    if (userInterfaceLayoutDirection != 1)
    {
      v19 = 10.0;
    }

    v16 = v19 + v16;
  }

  v20 = v16;
  v21 = round(MidY + v18 * -0.5);
  v22 = v13;
  v23 = v15;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (UIEdgeInsets)alignmentRectInsets
{
  if (sub_10000FA08(self) == 5)
  {
    sub_10000FA08(self);
    v3 = 0.0;
    v4 = 10.0;
    v5 = 0.0;
    v6 = 10.0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = RoutePlanningWaypointTextField;
    [(RoutePlanningWaypointTextField *)&v7 alignmentRectInsets];
  }

  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = RoutePlanningWaypointTextField;
  [(RoutePlanningWaypointTextField *)&v5 touchesCancelled:cancelled withEvent:event];
  self->_isHandlingTouch = 0;
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = RoutePlanningWaypointTextField;
  [(RoutePlanningWaypointTextField *)&v5 touchesEnded:ended withEvent:event];
  self->_isHandlingTouch = 0;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  self->_isHandlingTouch = 1;
  eventCopy = event;
  beganCopy = began;
  isEditing = [(RoutePlanningWaypointTextField *)self isEditing];
  v12.receiver = self;
  v12.super_class = RoutePlanningWaypointTextField;
  [(RoutePlanningWaypointTextField *)&v12 touchesBegan:beganCopy withEvent:eventCopy];

  if (sub_10000FA08(self) == 5 && isEditing && !self->_didBeginEditingFromTouch)
  {
    delegate = [(RoutePlanningWaypointTextField *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      delegate2 = [(RoutePlanningWaypointTextField *)self delegate];
      [delegate2 textFieldDidBeginEditing:self];
    }
  }
}

- (void)_hoverGesture:(id)gesture
{
  gestureCopy = gesture;
  if ([gestureCopy state] == 1 && -[RoutePlanningWaypointTextField clearButtonMode](self, "clearButtonMode") != 3)
  {
    v4 = 3;
  }

  else
  {
    if ([gestureCopy state] != 3 && objc_msgSend(gestureCopy, "state") != 4 || -[RoutePlanningWaypointTextField clearButtonMode](self, "clearButtonMode") != 3)
    {
      goto LABEL_9;
    }

    v4 = 0;
  }

  [(RoutePlanningWaypointTextField *)self setClearButtonMode:v4];
LABEL_9:
}

- (RoutePlanningWaypointTextField)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = RoutePlanningWaypointTextField;
  v3 = [(RoutePlanningWaypointTextField *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(RoutePlanningWaypointTextField *)v3 _setSupportsKeyboardNavigationForSuggestions:1];
    if (sub_10000FA08(v4) == 5)
    {
      v5 = [[UIHoverGestureRecognizer alloc] initWithTarget:v4 action:"_hoverGesture:"];
      [(RoutePlanningWaypointTextField *)v4 addGestureRecognizer:v5];
    }

    else
    {
      [(RoutePlanningWaypointTextField *)v4 setClearButtonMode:0];
    }
  }

  return v4;
}

@end