@interface GetNetworkInfoReportGenerator
- (GetNetworkInfoReportGenerator)initWithQueue:(id)queue;
- (void)setDefaults;
@end

@implementation GetNetworkInfoReportGenerator

- (GetNetworkInfoReportGenerator)initWithQueue:(id)queue
{
  v7.receiver = self;
  v7.super_class = GetNetworkInfoReportGenerator;
  v3 = [(NetworkDiagnosticsReportGenerator *)&v7 initWithQueue:queue];
  v4 = v3;
  if (v3)
  {
    v5 = [(NetworkDiagnosticsReportGenerator *)v3 createDefaultTaskDictionaryWithTaskName:kNetDiagTaskGetNetworkInfo[0]];
    [(NetworkDiagnosticsReportGenerator *)v4 setOptions:v5];
    [(GetNetworkInfoReportGenerator *)v4 setDefaults];
  }

  return v4;
}

- (void)setDefaults
{
  v3 = +[ABCAdministrator sharedInstance];
  configurationManager = [v3 configurationManager];
  -[GetNetworkInfoReportGenerator setGNISensitiveOption:](self, "setGNISensitiveOption:", [configurationManager autoBugCaptureSensitivePayloads]);

  [(GetNetworkInfoReportGenerator *)self setGNISysConfigOption:1];

  [(GetNetworkInfoReportGenerator *)self setGNINDFInfoOption:1];
}

@end