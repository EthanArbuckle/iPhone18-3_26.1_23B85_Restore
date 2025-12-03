@interface CoreMLModelSecurityXPCFeatureProvider
- (CoreMLModelSecurityXPCFeatureProvider)initWithRemoteProvider:(id)provider clientProxy:(id)proxy;
- (NSSet)featureNames;
- (id)featureValueForName:(id)name;
@end

@implementation CoreMLModelSecurityXPCFeatureProvider

- (CoreMLModelSecurityXPCFeatureProvider)initWithRemoteProvider:(id)provider clientProxy:(id)proxy
{
  providerCopy = provider;
  proxyCopy = proxy;
  v14.receiver = self;
  v14.super_class = CoreMLModelSecurityXPCFeatureProvider;
  v9 = [(CoreMLModelSecurityXPCFeatureProvider *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_uniqueKeyForProvider, provider);
    objc_storeStrong(&v10->_clientProxy, proxy);
    v11 = +[NSMutableDictionary dictionary];
    resolvedFeaturesDict = v10->_resolvedFeaturesDict;
    v10->_resolvedFeaturesDict = v11;
  }

  return v10;
}

- (NSSet)featureNames
{
  p_featureNames = &self->_featureNames;
  featureNames = self->_featureNames;
  if (!featureNames)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = sub_100005474;
    v13 = sub_100005484;
    v14 = 0;
    clientProxy = [(CoreMLModelSecurityXPCFeatureProvider *)self clientProxy];
    uniqueKeyForProvider = [(CoreMLModelSecurityXPCFeatureProvider *)self uniqueKeyForProvider];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10000548C;
    v8[3] = &unk_100010388;
    v8[4] = &v9;
    [clientProxy clientFeatureNames:uniqueKeyForProvider withReply:v8];

    objc_storeStrong(p_featureNames, v10[5]);
    _Block_object_dispose(&v9, 8);

    featureNames = *p_featureNames;
  }

  return featureNames;
}

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100005474;
  v24 = sub_100005484;
  resolvedFeaturesDict = [(CoreMLModelSecurityXPCFeatureProvider *)self resolvedFeaturesDict];
  v25 = [resolvedFeaturesDict objectForKeyedSubscript:nameCopy];

  v6 = v21[5];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    clientProxy = [(CoreMLModelSecurityXPCFeatureProvider *)self clientProxy];
    uniqueKeyForProvider = [(CoreMLModelSecurityXPCFeatureProvider *)self uniqueKeyForProvider];
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_100005754;
    v17 = &unk_1000103B0;
    v10 = nameCopy;
    v18 = v10;
    v19 = &v20;
    [clientProxy clientFeatureValueForName:v10 uniqueKeyForProvider:uniqueKeyForProvider withReply:&v14];

    v11 = v21[5];
    v12 = [(CoreMLModelSecurityXPCFeatureProvider *)self resolvedFeaturesDict:v14];
    [v12 setObject:v11 forKeyedSubscript:v10];

    v7 = v21[5];
  }

  _Block_object_dispose(&v20, 8);

  return v7;
}

@end