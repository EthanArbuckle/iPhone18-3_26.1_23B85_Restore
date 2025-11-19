@interface BLSHBacklightMutableTargetState
- (BLSHBacklightMutableTargetState)initWithState:(id)a3;
- (void)setToState:(id)a3;
@end

@implementation BLSHBacklightMutableTargetState

- (BLSHBacklightMutableTargetState)initWithState:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = BLSHBacklightMutableTargetState;
  v5 = [(BLSHBacklightMutableTargetState *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(BLSHBacklightMutableTargetState *)v5 setToState:v4];
  }

  return v6;
}

- (void)setToState:(id)a3
{
  v4 = a3;
  -[BLSHBacklightMutableTargetState setDisplayMode:](self, "setDisplayMode:", [v4 displayMode]);
  v5 = [v4 presentation];

  [(BLSHBacklightMutableTargetState *)self setPresentation:v5];
}

@end