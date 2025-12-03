@interface CTXPCGetSignalStrengthMeasurementsResponse
+ (id)allowedClassesForArguments;
- (CTSignalStrengthMeasurements)measurements;
- (CTXPCGetSignalStrengthMeasurementsResponse)initWithSignalStrengthMeasurements:(id)measurements;
@end

@implementation CTXPCGetSignalStrengthMeasurementsResponse

- (CTXPCGetSignalStrengthMeasurementsResponse)initWithSignalStrengthMeasurements:(id)measurements
{
  v11[1] = *MEMORY[0x1E69E9840];
  measurementsCopy = measurements;
  v10 = @"measurements";
  v11[0] = measurementsCopy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v9.receiver = self;
  v9.super_class = CTXPCGetSignalStrengthMeasurementsResponse;
  v6 = [(CTXPCMessage *)&v9 initWithNamedArguments:v5];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (CTSignalStrengthMeasurements)measurements
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"measurements"];
  v4 = CTThrowingCastIfClass<CTSignalStrengthMeasurements>(v3);

  return v4;
}

+ (id)allowedClassesForArguments
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CTXPCGetSignalStrengthMeasurementsResponse;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

@end