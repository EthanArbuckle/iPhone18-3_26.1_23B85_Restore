@interface UIView
- (BOOL)scatIsAuxiliaryElement;
- (BOOL)scatIsMemberOfGroup;
- (BOOL)scatIsOnScreen;
- (BOOL)scatIsValid;
- (BOOL)scatPerformAction:(int)action;
- (BOOL)scatShouldActivateDirectly;
- (CGPoint)scatCenterPoint;
- (CGPoint)scatScreenPointForOperations;
- (CGRect)scatFrame;
- (CGRect)scatTextCursorFrame;
- (id)_axSubviews;
- (id)highestAncestorGroup;
- (unint64_t)scatMenuItemStyle;
- (unint64_t)scatTraits;
- (void)_axPrintSubviews:(int64_t)subviews string:(id)string;
- (void)setScatMenuItemStyle:(unint64_t)style;
- (void)setScatShouldActivateDirectly:(BOOL)directly;
@end

@implementation UIView

- (void)_axPrintSubviews:(int64_t)subviews string:(id)string
{
  stringCopy = string;
  if (!subviews)
  {
    v7 = [(UIView *)self description];
    [stringCopy appendFormat:@"SELF: %@\n", v7];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [(UIView *)self subviews];
  v8 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      v11 = 0;
      do
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v18 + 1) + 8 * v11);
        if (subviews >= 1)
        {
          subviewsCopy = subviews;
          do
          {
            [stringCopy appendString:@"    "];
            --subviewsCopy;
          }

          while (subviewsCopy);
        }

        v14 = [v12 description];
        [stringCopy appendFormat:@"%@\n", v14];

        subviews = [v12 subviews];
        v16 = [subviews count];

        if (v16)
        {
          [v12 _axPrintSubviews:subviews + 1 string:stringCopy];
        }

        v11 = v11 + 1;
      }

      while (v11 != v9);
      v9 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }
}

- (id)_axSubviews
{
  v3 = +[NSMutableString string];
  [(UIView *)self _axPrintSubviews:0 string:v3];

  return v3;
}

- (unint64_t)scatMenuItemStyle
{
  v2 = objc_getAssociatedObject(self, &unk_100218B90);
  v3 = v2;
  if (v2)
  {
    integerValue = [v2 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (void)setScatMenuItemStyle:(unint64_t)style
{
  v4 = [NSNumber numberWithUnsignedInteger:style];
  objc_setAssociatedObject(self, &unk_100218B90, v4, 0x301);

  [(UIView *)self didUpdateScatMenuItemStyle];
}

- (CGRect)scatTextCursorFrame
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

- (CGPoint)scatCenterPoint
{
  x = CGPointZero.x;
  y = CGPointZero.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)scatScreenPointForOperations
{
  [(UIView *)self scatFrame];
  sub_1000427AC(v2, v3, v4, v5);

  AX_CGRectGetCenter();
  result.y = v7;
  result.x = v6;
  return result;
}

- (CGRect)scatFrame
{
  [(UIView *)self bounds];

  [HNDScreen convertRect:self fromView:?];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (unint64_t)scatTraits
{
  if ([(UIView *)self scatShouldActivateDirectly])
  {
    return kAXButtonTrait;
  }

  else
  {
    return 0;
  }
}

- (BOOL)scatIsValid
{
  window = [(UIView *)self window];
  v3 = window != 0;

  return v3;
}

- (BOOL)scatShouldActivateDirectly
{
  v2 = objc_getAssociatedObject(self, &unk_100218BD8);
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (void)setScatShouldActivateDirectly:(BOOL)directly
{
  v4 = [NSNumber numberWithBool:directly];
  objc_setAssociatedObject(self, &unk_100218BD8, v4, 0x303);
}

- (BOOL)scatPerformAction:(int)action
{
  NSClassFromString(@"UISegment");
  if (objc_opt_isKindOfClass())
  {
    superview = [(UIView *)self superview];
    v4 = superview;
    AXPerformSafeBlock();

    return 1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UIView *)self sendActionsForControlEvents:64];
    return 1;
  }

  v6 = +[NSThread callStackSymbols];
  _AXLogWithFacility();

  return 0;
}

- (BOOL)scatIsMemberOfGroup
{
  parentGroup = [(UIView *)self parentGroup];
  v3 = parentGroup != 0;

  return v3;
}

- (BOOL)scatIsAuxiliaryElement
{
  scatAuxiliaryElementManager = [(UIView *)self scatAuxiliaryElementManager];
  v3 = scatAuxiliaryElementManager != 0;

  return v3;
}

- (BOOL)scatIsOnScreen
{
  [(UIView *)self frame];
  MinX = CGRectGetMinX(v13);
  [(UIView *)self frame];
  MaxX = CGRectGetMaxX(v14);
  [(UIView *)self frame];
  MinY = CGRectGetMinY(v15);
  [(UIView *)self frame];
  MaxY = CGRectGetMaxY(v16);
  [HNDHandManager screenFrame:]_0();
  v8 = v7;
  [HNDHandManager screenFrame:]_0();
  v9 = fmin(MinX, MinY);
  v10 = MaxX <= v8;
  if (MaxY > v11)
  {
    v10 = 0;
  }

  return v9 >= 0.0 && v10;
}

- (id)highestAncestorGroup
{
  parentGroup = [(UIView *)self parentGroup];
  highestAncestorGroup = [parentGroup highestAncestorGroup];

  return highestAncestorGroup;
}

@end