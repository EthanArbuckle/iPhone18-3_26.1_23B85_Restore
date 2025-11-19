@interface WFListAction
- (void)runWithInput:(id)a3 error:(id *)a4;
@end

@implementation WFListAction

- (void)runWithInput:(id)a3 error:(id *)a4
{
  v5 = [(WFListAction *)self parameterValueForKey:@"WFItems" ofClass:objc_opt_class()];
  [(WFListAction *)self setOutput:v5];
}

@end