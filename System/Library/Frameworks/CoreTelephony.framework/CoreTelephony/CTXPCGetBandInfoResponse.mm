@interface CTXPCGetBandInfoResponse
+ (id)allowedClassesForArguments;
- (CTBandInfo)bandInfo;
- (CTXPCGetBandInfoResponse)initWithBandInfo:(id)info;
- (CTXPCGetBandInfoResponse)initWithBandMasks:(id)masks;
- (NSDictionary)bandMasks;
@end

@implementation CTXPCGetBandInfoResponse

- (CTXPCGetBandInfoResponse)initWithBandMasks:(id)masks
{
  v11[1] = *MEMORY[0x1E69E9840];
  masksCopy = masks;
  v10 = @"bands";
  v11[0] = masksCopy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v9.receiver = self;
  v9.super_class = CTXPCGetBandInfoResponse;
  v6 = [(CTXPCMessage *)&v9 initWithNamedArguments:v5];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (CTXPCGetBandInfoResponse)initWithBandInfo:(id)info
{
  v11[1] = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v10 = @"bands";
  v11[0] = infoCopy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v9.receiver = self;
  v9.super_class = CTXPCGetBandInfoResponse;
  v6 = [(CTXPCMessage *)&v9 initWithNamedArguments:v5];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (NSDictionary)bandMasks
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"bands"];
  v4 = CTThrowingCastIfClass<NSDictionary>(v3);

  return v4;
}

- (CTBandInfo)bandInfo
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"bands"];
  v4 = CTThrowingCastIfClass<CTBandInfo>(v3);

  return v4;
}

+ (id)allowedClassesForArguments
{
  v8[3] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___CTXPCGetBandInfoResponse;
  v2 = objc_msgSendSuper2(&v7, sel_allowedClassesForArguments);
  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v8[2] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

@end