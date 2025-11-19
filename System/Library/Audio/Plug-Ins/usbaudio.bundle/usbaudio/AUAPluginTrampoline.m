@interface AUAPluginTrampoline
- (void)halInitializeWithPluginHost:(AudioServerPlugInHostInterface *)a3;
@end

@implementation AUAPluginTrampoline

- (void)halInitializeWithPluginHost:(AudioServerPlugInHostInterface *)a3
{
  v5 = [(AUAPluginTrampoline *)self fnHALInitializeWithPluginHost];

  if (v5)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100005764;
    v8[3] = &unk_100159D58;
    v8[4] = self;
    v6 = objc_retainBlock(v8);
    v7 = [(AUAPluginTrampoline *)self fnHALInitializeWithPluginHost];
    (v7)[2](v7, a3, v6);
  }
}

@end