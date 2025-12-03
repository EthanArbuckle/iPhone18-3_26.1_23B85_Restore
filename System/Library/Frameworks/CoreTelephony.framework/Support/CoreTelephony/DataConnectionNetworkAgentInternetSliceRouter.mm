@interface DataConnectionNetworkAgentInternetSliceRouter
- (BOOL)assertAgentWithOptions:(id)options;
- (void)unassertAgentWithOptions:(id)options;
@end

@implementation DataConnectionNetworkAgentInternetSliceRouter

- (BOOL)assertAgentWithOptions:(id)options
{
  optionsCopy = options;
  DataConnectionAgent::assertDataAgentWithOptions([(DataConnectionNetworkAgent *)self dataAgent], optionsCopy, 1);

  return 1;
}

- (void)unassertAgentWithOptions:(id)options
{
  optionsCopy = options;
  DataConnectionAgent::unassertDataAgentWithOptions([(DataConnectionNetworkAgent *)self dataAgent], optionsCopy, 1);
}

@end