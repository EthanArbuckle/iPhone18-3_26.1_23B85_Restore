@interface BLSSetPresentationOperation
- (BLSSetPresentationOperation)initWithBacklightState:(int64_t)state additions:(id)additions;
- (id)description;
@end

@implementation BLSSetPresentationOperation

- (BLSSetPresentationOperation)initWithBacklightState:(int64_t)state additions:(id)additions
{
  additionsCopy = additions;
  v11.receiver = self;
  v11.super_class = BLSSetPresentationOperation;
  v8 = [(BLSHEnvironmentOperation *)&v11 initWithBacklightState:state];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_additions, additions);
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
  build = [v3 build];

  return build;
}

@end