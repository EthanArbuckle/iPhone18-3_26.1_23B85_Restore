@interface CTXPCGetVoiceLinkQualityMetricResponse
+ (id)allowedClassesForArguments;
- (CTVoiceLinkQualityMetric)linkQuality;
- (CTXPCGetVoiceLinkQualityMetricResponse)initWithVoiceLinkQualityMetric:(id)metric;
@end

@implementation CTXPCGetVoiceLinkQualityMetricResponse

- (CTXPCGetVoiceLinkQualityMetricResponse)initWithVoiceLinkQualityMetric:(id)metric
{
  v11[1] = *MEMORY[0x1E69E9840];
  metricCopy = metric;
  v10 = @"linkQuality";
  v11[0] = metricCopy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v9.receiver = self;
  v9.super_class = CTXPCGetVoiceLinkQualityMetricResponse;
  v6 = [(CTXPCMessage *)&v9 initWithNamedArguments:v5];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (CTVoiceLinkQualityMetric)linkQuality
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"linkQuality"];
  v4 = CTThrowingCastIfClass<CTVoiceLinkQualityMetric>(v3);

  return v4;
}

+ (id)allowedClassesForArguments
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CTXPCGetVoiceLinkQualityMetricResponse;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

@end