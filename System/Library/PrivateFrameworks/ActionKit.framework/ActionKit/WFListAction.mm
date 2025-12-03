@interface WFListAction
- (void)runWithInput:(id)input error:(id *)error;
@end

@implementation WFListAction

- (void)runWithInput:(id)input error:(id *)error
{
  v5 = [(WFListAction *)self parameterValueForKey:@"WFItems" ofClass:objc_opt_class()];
  [(WFListAction *)self setOutput:v5];
}

@end