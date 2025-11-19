@interface WFContactsAction
- (void)runWithInput:(id)a3 error:(id *)a4;
@end

@implementation WFContactsAction

- (void)runWithInput:(id)a3 error:(id *)a4
{
  v6 = [(WFContactsAction *)self parameterValueForKey:@"WFContact" ofClass:objc_opt_class()];
  v5 = [v6 contentCollection];
  [(WFContactsAction *)self setOutput:v5];
}

@end