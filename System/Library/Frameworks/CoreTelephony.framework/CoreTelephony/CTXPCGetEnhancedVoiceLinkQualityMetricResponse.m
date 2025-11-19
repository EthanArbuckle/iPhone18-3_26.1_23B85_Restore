@interface CTXPCGetEnhancedVoiceLinkQualityMetricResponse
+ (id)allowedClassesForArguments;
- (CTEnhancedLinkQualityMetric)linkQuality;
- (CTXPCGetEnhancedVoiceLinkQualityMetricResponse)initWithEnhancedLinkQualityMetric:(id)a3;
@end

@implementation CTXPCGetEnhancedVoiceLinkQualityMetricResponse

- (CTXPCGetEnhancedVoiceLinkQualityMetricResponse)initWithEnhancedLinkQualityMetric:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = @"linkQuality";
  v11[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v9.receiver = self;
  v9.super_class = CTXPCGetEnhancedVoiceLinkQualityMetricResponse;
  v6 = [(CTXPCMessage *)&v9 initWithNamedArguments:v5];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (CTEnhancedLinkQualityMetric)linkQuality
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKey:@"linkQuality"];
  v4 = CTThrowingCastIfClass<CTEnhancedLinkQualityMetric>(v3);

  return v4;
}

+ (id)allowedClassesForArguments
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___CTXPCGetEnhancedVoiceLinkQualityMetricResponse;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

@end