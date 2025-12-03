@interface WFTextAction
- (void)runWithInput:(id)input error:(id *)error;
@end

@implementation WFTextAction

- (void)runWithInput:(id)input error:(id *)error
{
  v6 = [(WFTextAction *)self output:input];
  v5 = [(WFTextAction *)self parameterValueForKey:@"WFTextActionText" ofClass:objc_opt_class()];
  [v6 addObject:v5];
}

@end