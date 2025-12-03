@interface AUAPluginTrampoline
- (void)halInitializeWithPluginHost:(AudioServerPlugInHostInterface *)host;
@end

@implementation AUAPluginTrampoline

- (void)halInitializeWithPluginHost:(AudioServerPlugInHostInterface *)host
{
  fnHALInitializeWithPluginHost = [(AUAPluginTrampoline *)self fnHALInitializeWithPluginHost];

  if (fnHALInitializeWithPluginHost)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100005764;
    v8[3] = &unk_100159D58;
    v8[4] = self;
    v6 = objc_retainBlock(v8);
    fnHALInitializeWithPluginHost2 = [(AUAPluginTrampoline *)self fnHALInitializeWithPluginHost];
    (fnHALInitializeWithPluginHost2)[2](fnHALInitializeWithPluginHost2, host, v6);
  }
}

@end