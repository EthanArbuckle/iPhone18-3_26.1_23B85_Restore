@interface AKURLBagRequestProvider
- (AKURLBagRequestProvider)initWithAltDSID:(id)d urlSwitchData:(id)data;
- (id)_bagURLForAltDSID:(id)d;
- (id)newBagURLRequest;
- (void)_signRequestWithServerBackoffInfoHeader:(id)header;
@end

@implementation AKURLBagRequestProvider

- (AKURLBagRequestProvider)initWithAltDSID:(id)d urlSwitchData:(id)data
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v9 = 0;
  objc_storeStrong(&v9, data);
  v4 = selfCopy;
  selfCopy = 0;
  v8.receiver = v4;
  v8.super_class = AKURLBagRequestProvider;
  selfCopy = [(AKURLBagRequestProvider *)&v8 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    [(AKURLBagRequestProvider *)selfCopy setAltDSID:location[0]];
    [(AKURLBagRequestProvider *)selfCopy setUrlSwitchData:v9];
  }

  v6 = _objc_retain(selfCopy);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (id)_bagURLForAltDSID:(id)d
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v6 = _objc_retain(@"https://gsa.apple.com/grandslam/GsService2/lookup/v2");
  if (location[0])
  {
    v5 = [NSString stringWithFormat:@"%@/%@", v6, location[0]];
    v8 = [NSURL URLWithString:v5];
    objc_storeStrong(&v5, 0);
  }

  else
  {
    v8 = [NSURL URLWithString:v6];
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  v3 = v8;

  return v3;
}

- (id)newBagURLRequest
{
  selfCopy = self;
  v13[1] = a2;
  v13[0] = [(AKURLBagRequestProvider *)self _bagURLForAltDSID:self->_altDSID];
  if (selfCopy->_urlSwitchData)
  {
    v12 = [NSURLComponents componentsWithURL:v13[0] resolvingAgainstBaseURL:0];
    v2 = [NSURLQueryItem alloc];
    v11 = [v2 initWithName:@"idata" value:selfCopy->_urlSwitchData];
    v8 = v12;
    v15 = v11;
    v9 = [NSArray arrayWithObjects:&v15 count:1];
    [(NSURLComponents *)v8 setQueryItems:?];
    _objc_release(v9);
    v3 = [(NSURLComponents *)v12 URL];
    v4 = v13[0];
    v13[0] = v3;
    _objc_release(v4);
    objc_storeStrong(&v11, 0);
    objc_storeStrong(&v12, 0);
  }

  v5 = [NSMutableURLRequest alloc];
  v10 = [v5 initWithURL:v13[0]];
  [v10 ak_addClientInfoHeader];
  [v10 ak_addCountryHeader];
  [v10 ak_addDeviceUDIDHeader];
  [v10 ak_addInternalBuildHeader];
  [v10 ak_addSeedBuildHeader];
  [v10 ak_addFeatureMaskHeader];
  [v10 ak_addLocaleHeader];
  [v10 ak_addTimeZoneHeaders];
  [v10 ak_addSKUCountryHeader];
  [v10 ak_addExperimentModeHeader];
  v7 = _objc_retain(v10);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(v13, 0);
  return v7;
}

- (void)_signRequestWithServerBackoffInfoHeader:(id)header
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, header);
  v4 = objc_alloc_init(AKServerBackoffHelper);
  v3 = [v4 serverBackoffInfoForRequest:location[0]];
  [location[0] ak_addServerBackoffInfoHeader:v3];
  objc_storeStrong(&v3, 0);
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
}

@end