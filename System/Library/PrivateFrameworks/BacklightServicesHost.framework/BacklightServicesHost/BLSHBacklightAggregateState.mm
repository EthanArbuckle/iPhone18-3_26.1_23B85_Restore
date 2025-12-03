@interface BLSHBacklightAggregateState
+ (BOOL)isState:(id)state equalToObject:(id)object;
+ (id)bls_debugLoggingDescriptionForState:(id)state;
+ (id)bls_loggingStringForState:(id)state;
+ (id)bls_shortLoggingStringForState:(id)state;
+ (unint64_t)stateHash:(id)hash;
- (BLSHBacklightAggregateState)initWithDisplayModeSource:(id)source;
- (BLSHBacklightEnvironmentPresentation)presentation;
@end

@implementation BLSHBacklightAggregateState

- (BLSHBacklightEnvironmentPresentation)presentation
{
  presentationSource = [(BLSHBacklightAggregateState *)self presentationSource];
  presentation = [presentationSource presentation];

  return presentation;
}

- (BLSHBacklightAggregateState)initWithDisplayModeSource:(id)source
{
  sourceCopy = source;
  v9.receiver = self;
  v9.super_class = BLSHBacklightAggregateState;
  v6 = [(BLSHBacklightAggregateState *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_displayModeSource, source);
  }

  return v7;
}

+ (BOOL)isState:(id)state equalToObject:(id)object
{
  stateCopy = state;
  objectCopy = object;
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v7 = objectCopy;
    displayMode = [stateCopy displayMode];
    if (displayMode == [v7 displayMode])
    {
      presentation = [stateCopy presentation];
      presentation2 = [v7 presentation];
      v11 = presentation2;
      if (presentation)
      {
        v12 = [presentation isEqual:presentation2];
      }

      else
      {
        v12 = presentation2 == 0;
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

+ (unint64_t)stateHash:(id)hash
{
  v3 = MEMORY[0x277CF0C40];
  hashCopy = hash;
  builder = [v3 builder];
  v6 = [builder appendInteger:{objc_msgSend(hashCopy, "displayMode")}];
  presentation = [hashCopy presentation];

  v8 = [builder appendObject:presentation];
  v9 = [builder hash];

  return v9;
}

+ (id)bls_loggingStringForState:(id)state
{
  v3 = MEMORY[0x277CF0C00];
  stateCopy = state;
  v5 = [v3 builderWithObject:stateCopy];
  v6 = NSStringFromBLSBacklightDisplayMode([stateCopy displayMode]);
  [v5 appendString:v6 withName:@"displayMode"];

  presentation = [stateCopy presentation];

  v8 = [v5 appendObject:presentation withName:@"presentation"];
  build = [v5 build];

  return build;
}

+ (id)bls_shortLoggingStringForState:(id)state
{
  v3 = MEMORY[0x277CF0C00];
  stateCopy = state;
  v5 = [v3 builderWithObject:stateCopy];
  displayMode = [stateCopy displayMode];

  v7 = NSStringFromBLSBacklightDisplayMode(displayMode);
  [v5 appendString:v7 withName:@"displayMode"];

  build = [v5 build];

  return build;
}

+ (id)bls_debugLoggingDescriptionForState:(id)state
{
  v3 = MEMORY[0x277CF0C00];
  stateCopy = state;
  v5 = [v3 builderWithObject:stateCopy];
  v6 = NSStringFromBLSBacklightDisplayMode([stateCopy displayMode]);
  [v5 appendString:v6 withName:@"displayMode"];

  presentation = [stateCopy presentation];

  v8 = [presentation debugDescription];
  v9 = [v5 appendObject:v8 withName:@"presentation"];

  build = [v5 build];

  return build;
}

@end