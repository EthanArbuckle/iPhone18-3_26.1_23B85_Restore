@interface WFContactsAction
- (void)runWithInput:(id)input error:(id *)error;
@end

@implementation WFContactsAction

- (void)runWithInput:(id)input error:(id *)error
{
  v6 = [(WFContactsAction *)self parameterValueForKey:@"WFContact" ofClass:objc_opt_class()];
  contentCollection = [v6 contentCollection];
  [(WFContactsAction *)self setOutput:contentCollection];
}

@end