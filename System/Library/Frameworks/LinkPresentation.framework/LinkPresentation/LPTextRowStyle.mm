@interface LPTextRowStyle
- (LPTextRowStyle)initWithPlatform:(int64_t)platform fontScalingFactor:(double)factor;
- (id)left;
- (id)right;
- (void)applyToAllTextViewStyles:(id)styles;
@end

@implementation LPTextRowStyle

- (LPTextRowStyle)initWithPlatform:(int64_t)platform fontScalingFactor:(double)factor
{
  v13.receiver = self;
  v13.super_class = LPTextRowStyle;
  v6 = [(LPTextRowStyle *)&v13 init];
  if (v6)
  {
    v7 = [[LPTextViewStyle alloc] initWithPlatform:platform fontScalingFactor:factor];
    leading = v6->_leading;
    v6->_leading = v7;

    [(LPTextViewStyle *)v6->_leading setTextAlignment:0];
    v9 = [[LPTextViewStyle alloc] initWithPlatform:platform fontScalingFactor:factor];
    trailing = v6->_trailing;
    v6->_trailing = v9;

    [(LPTextViewStyle *)v6->_trailing setTextAlignment:1];
    v6->_balancingMode = 0;
    v11 = v6;
  }

  return v6;
}

- (id)left
{
  if (appIsLTR())
  {
    [(LPTextRowStyle *)self leading];
  }

  else
  {
    [(LPTextRowStyle *)self trailing];
  }
  v3 = ;

  return v3;
}

- (id)right
{
  if (appIsLTR())
  {
    [(LPTextRowStyle *)self trailing];
  }

  else
  {
    [(LPTextRowStyle *)self leading];
  }
  v3 = ;

  return v3;
}

- (void)applyToAllTextViewStyles:(id)styles
{
  stylesCopy = styles;
  stylesCopy[2](stylesCopy, self->_leading);
  stylesCopy[2](stylesCopy, self->_trailing);
}

@end