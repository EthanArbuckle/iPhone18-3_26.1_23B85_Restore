@interface TradeInToolInputs
- (BOOL)validateAndInitializeParameters:(id)a3;
@end

@implementation TradeInToolInputs

- (BOOL)validateAndInitializeParameters:(id)a3
{
  v7.receiver = self;
  v7.super_class = TradeInToolInputs;
  v4 = a3;
  v8 = ![(DisplayViewInputs *)&v7 validateAndInitializeParameters:v4];
  v5 = [v4 dk_BOOLFromKey:@"autoAdvanceImages" defaultValue:0 failed:&v8];

  [(TradeInToolInputs *)self setUseAutoAdvance:v5];
  return (v8 & 1) == 0;
}

@end