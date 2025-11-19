@interface BLSHBacklightAggregateState
+ (BOOL)isState:(id)a3 equalToObject:(id)a4;
+ (id)bls_debugLoggingDescriptionForState:(id)a3;
+ (id)bls_loggingStringForState:(id)a3;
+ (id)bls_shortLoggingStringForState:(id)a3;
+ (unint64_t)stateHash:(id)a3;
- (BLSHBacklightAggregateState)initWithDisplayModeSource:(id)a3;
- (BLSHBacklightEnvironmentPresentation)presentation;
@end

@implementation BLSHBacklightAggregateState

- (BLSHBacklightEnvironmentPresentation)presentation
{
  v2 = [(BLSHBacklightAggregateState *)self presentationSource];
  v3 = [v2 presentation];

  return v3;
}

- (BLSHBacklightAggregateState)initWithDisplayModeSource:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BLSHBacklightAggregateState;
  v6 = [(BLSHBacklightAggregateState *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_displayModeSource, a3);
  }

  return v7;
}

+ (BOOL)isState:(id)a3 equalToObject:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v7 = v6;
    v8 = [v5 displayMode];
    if (v8 == [v7 displayMode])
    {
      v9 = [v5 presentation];
      v10 = [v7 presentation];
      v11 = v10;
      if (v9)
      {
        v12 = [v9 isEqual:v10];
      }

      else
      {
        v12 = v10 == 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (unint64_t)stateHash:(id)a3
{
  v3 = MEMORY[0x277CF0C40];
  v4 = a3;
  v5 = [v3 builder];
  v6 = [v5 appendInteger:{objc_msgSend(v4, "displayMode")}];
  v7 = [v4 presentation];

  v8 = [v5 appendObject:v7];
  v9 = [v5 hash];

  return v9;
}

+ (id)bls_loggingStringForState:(id)a3
{
  v3 = MEMORY[0x277CF0C00];
  v4 = a3;
  v5 = [v3 builderWithObject:v4];
  v6 = NSStringFromBLSBacklightDisplayMode([v4 displayMode]);
  [v5 appendString:v6 withName:@"displayMode"];

  v7 = [v4 presentation];

  v8 = [v5 appendObject:v7 withName:@"presentation"];
  v9 = [v5 build];

  return v9;
}

+ (id)bls_shortLoggingStringForState:(id)a3
{
  v3 = MEMORY[0x277CF0C00];
  v4 = a3;
  v5 = [v3 builderWithObject:v4];
  v6 = [v4 displayMode];

  v7 = NSStringFromBLSBacklightDisplayMode(v6);
  [v5 appendString:v7 withName:@"displayMode"];

  v8 = [v5 build];

  return v8;
}

+ (id)bls_debugLoggingDescriptionForState:(id)a3
{
  v3 = MEMORY[0x277CF0C00];
  v4 = a3;
  v5 = [v3 builderWithObject:v4];
  v6 = NSStringFromBLSBacklightDisplayMode([v4 displayMode]);
  [v5 appendString:v6 withName:@"displayMode"];

  v7 = [v4 presentation];

  v8 = [v7 debugDescription];
  v9 = [v5 appendObject:v8 withName:@"presentation"];

  v10 = [v5 build];

  return v10;
}

@end