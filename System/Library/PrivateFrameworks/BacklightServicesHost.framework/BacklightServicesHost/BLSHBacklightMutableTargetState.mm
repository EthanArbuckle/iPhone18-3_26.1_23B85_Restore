@interface BLSHBacklightMutableTargetState
- (BLSHBacklightMutableTargetState)initWithState:(id)state;
- (void)setToState:(id)state;
@end

@implementation BLSHBacklightMutableTargetState

- (BLSHBacklightMutableTargetState)initWithState:(id)state
{
  stateCopy = state;
  v8.receiver = self;
  v8.super_class = BLSHBacklightMutableTargetState;
  v5 = [(BLSHBacklightMutableTargetState *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(BLSHBacklightMutableTargetState *)v5 setToState:stateCopy];
  }

  return v6;
}

- (void)setToState:(id)state
{
  stateCopy = state;
  -[BLSHBacklightMutableTargetState setDisplayMode:](self, "setDisplayMode:", [stateCopy displayMode]);
  presentation = [stateCopy presentation];

  [(BLSHBacklightMutableTargetState *)self setPresentation:presentation];
}

@end