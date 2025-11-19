@interface DataConnectionNetworkAgentInternetSliceRouter
- (BOOL)assertAgentWithOptions:(id)a3;
- (void)unassertAgentWithOptions:(id)a3;
@end

@implementation DataConnectionNetworkAgentInternetSliceRouter

- (BOOL)assertAgentWithOptions:(id)a3
{
  v4 = a3;
  DataConnectionAgent::assertDataAgentWithOptions([(DataConnectionNetworkAgent *)self dataAgent], v4, 1);

  return 1;
}

- (void)unassertAgentWithOptions:(id)a3
{
  v4 = a3;
  DataConnectionAgent::unassertDataAgentWithOptions([(DataConnectionNetworkAgent *)self dataAgent], v4, 1);
}

@end