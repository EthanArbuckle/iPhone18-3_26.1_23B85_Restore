@interface BLSSetPresentationOperation
- (BLSSetPresentationOperation)initWithBacklightState:(int64_t)a3 additions:(id)a4;
- (id)description;
@end

@implementation BLSSetPresentationOperation

- (BLSSetPresentationOperation)initWithBacklightState:(int64_t)a3 additions:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = BLSSetPresentationOperation;
  v8 = [(BLSHEnvironmentOperation *)&v11 initWithBacklightState:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_additions, a4);
  }

  return v9;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [(BLSHEnvironmentOperation *)self backlightState];
  v4 = NSStringFromBLSBacklightState();
  v5 = [v3 appendObject:v4 withName:@"backlightState"];

  v6 = [v3 appendObject:self->_additions withName:@"additions"];
  v7 = [v3 build];

  return v7;
}

@end