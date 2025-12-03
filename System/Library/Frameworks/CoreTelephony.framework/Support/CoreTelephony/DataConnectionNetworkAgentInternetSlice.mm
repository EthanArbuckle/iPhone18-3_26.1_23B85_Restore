@interface DataConnectionNetworkAgentInternetSlice
- (BOOL)assertAgentWithOptions:(id)options;
- (void)unassertAgentWithOptions:(id)options;
@end

@implementation DataConnectionNetworkAgentInternetSlice

- (BOOL)assertAgentWithOptions:(id)options
{
  optionsCopy = options;
  DataConnectionAgent::assertDataAgentWithOptions([(DataConnectionNetworkAgent *)self dataAgent], optionsCopy, 0);

  return 1;
}

- (void)unassertAgentWithOptions:(id)options
{
  optionsCopy = options;
  DataConnectionAgent::unassertDataAgentWithOptions([(DataConnectionNetworkAgent *)self dataAgent], optionsCopy, 0);
}

@end