@interface AUAXPCPlugin
- (void)halInitializeWithPluginHost:(const AudioServerPlugInHostInterface *)a3;
@end

@implementation AUAXPCPlugin

- (void)halInitializeWithPluginHost:(const AudioServerPlugInHostInterface *)a3
{
  v4 = self;
  sub_1700(a3);
}

@end