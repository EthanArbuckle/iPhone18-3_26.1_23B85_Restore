@interface AUAXPCPlugin
- (void)halInitializeWithPluginHost:(const AudioServerPlugInHostInterface *)host;
@end

@implementation AUAXPCPlugin

- (void)halInitializeWithPluginHost:(const AudioServerPlugInHostInterface *)host
{
  selfCopy = self;
  sub_1700(host);
}

@end