@interface AKAttestationRequestData
- (AKAttestationRequestData)init;
- (AKAttestationRequestData)initWithCoder:(id)coder;
- (AKAttestationRequestData)initWithRequest:(id)request requiredHeaders:(id)headers;
- (AKAttestationRequestData)initWithRequestURL:(id)l signingDataHash:(id)hash requiredHeaders:(id)headers;
- (AKAttestationRequestData)initWithSigningData:(id)data requiredHeaders:(id)headers;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AKAttestationRequestData

- (AKAttestationRequestData)init
{
  v4 = 0;
  v4 = [(AKAttestationRequestData *)self initWithRequestURL:0 signingDataHash:0 requiredHeaders:?];
  v3 = _objc_retain(v4);
  objc_storeStrong(&v4, 0);
  return v3;
}

- (AKAttestationRequestData)initWithRequest:(id)request requiredHeaders:(id)headers
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v13 = 0;
  objc_storeStrong(&v13, headers);
  allHTTPHeaderFields = [location[0] allHTTPHeaderFields];
  v12 = [allHTTPHeaderFields ak_dictionaryWithKeysFromArray:v13];
  _objc_release(allHTTPHeaderFields);
  v7 = selfCopy;
  v10 = [location[0] URL];
  hTTPBody = [location[0] HTTPBody];
  ak_SHA256Data = [hTTPBody ak_SHA256Data];
  selfCopy = 0;
  selfCopy = [AKAttestationRequestData initWithRequestURL:v7 signingDataHash:"initWithRequestURL:signingDataHash:requiredHeaders:" requiredHeaders:v10];
  v11 = _objc_retain(selfCopy);
  _objc_release(ak_SHA256Data);
  _objc_release(hTTPBody);
  _objc_release(v10);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v11;
}

- (AKAttestationRequestData)initWithSigningData:(id)data requiredHeaders:(id)headers
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v9 = 0;
  objc_storeStrong(&v9, headers);
  v6 = selfCopy;
  ak_SHA256Data = [location[0] ak_SHA256Data];
  selfCopy = 0;
  selfCopy = [AKAttestationRequestData initWithRequestURL:v6 signingDataHash:"initWithRequestURL:signingDataHash:requiredHeaders:" requiredHeaders:0];
  v8 = _objc_retain(selfCopy);
  _objc_release(ak_SHA256Data);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v8;
}

- (AKAttestationRequestData)initWithRequestURL:(id)l signingDataHash:(id)hash requiredHeaders:(id)headers
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, l);
  v15 = 0;
  objc_storeStrong(&v15, hash);
  v14 = 0;
  objc_storeStrong(&v14, headers);
  v5 = selfCopy;
  selfCopy = 0;
  v13.receiver = v5;
  v13.super_class = AKAttestationRequestData;
  v12 = [(AKAttestationRequestData *)&v13 init];
  selfCopy = v12;
  objc_storeStrong(&selfCopy, v12);
  if (v12)
  {
    objc_storeStrong(&selfCopy->_requestURL, location[0]);
    objc_storeStrong(&selfCopy->_signingDataHash, v15);
    v6 = [v14 copy];
    headers = selfCopy->_headers;
    selfCopy->_headers = v6;
    _objc_release(headers);
  }

  v9 = _objc_retain(selfCopy);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v9[2] = a2;
  v9[1] = zone;
  v9[0] = objc_alloc_init(objc_opt_class());
  v3 = [(NSData *)selfCopy->_signingDataHash copy];
  v4 = *(v9[0] + 2);
  *(v9[0] + 2) = v3;
  _objc_release(v4);
  v5 = [(NSDictionary *)selfCopy->_headers copy];
  v6 = *(v9[0] + 3);
  *(v9[0] + 3) = v5;
  _objc_release(v6);
  v8 = _objc_retain(v9[0]);
  objc_storeStrong(v9, 0);
  return v8;
}

- (AKAttestationRequestData)initWithCoder:(id)coder
{
  v21 = &selfCopy;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v22 = [(AKAttestationRequestData *)v3 init];
  selfCopy = v22;
  objc_storeStrong(&selfCopy, v22);
  if (v22)
  {
    v15 = location[0];
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_requestURL"];
    requestURL = selfCopy->_requestURL;
    selfCopy->_requestURL = v4;
    _objc_release(requestURL);
    v16 = location[0];
    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_signingDataHash"];
    signingDataHash = selfCopy->_signingDataHash;
    selfCopy->_signingDataHash = v6;
    _objc_release(signingDataHash);
    v18 = NSSet;
    v17 = objc_opt_class();
    v20 = 0;
    v8 = [NSSet setWithObjects:v17, objc_opt_class(), 0];
    v19 = &v23;
    v23 = v8;
    v9 = [location[0] decodeObjectOfClasses:v8 forKey:@"_headers"];
    headers = selfCopy->_headers;
    selfCopy->_headers = v9;
    _objc_release(headers);
    objc_storeStrong(v19, v20);
  }

  v12 = &selfCopy;
  v14 = _objc_retain(selfCopy);
  obj = 0;
  objc_storeStrong(location, 0);
  objc_storeStrong(v12, obj);
  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  [location[0] encodeObject:selfCopy->_requestURL forKey:@"_requestURL"];
  [location[0] encodeObject:selfCopy->_signingDataHash forKey:@"_signingDataHash"];
  [location[0] encodeObject:selfCopy->_headers forKey:@"_headers"];
  objc_storeStrong(location, 0);
}

- (id)description
{
  v3 = [(NSData *)self->_signingDataHash base64EncodedStringWithOptions:0];
  v4 = [NSString stringWithFormat:@"AKAttestationRequestData: signingDataHash: %@, headers: %@", v3, self->_headers];
  _objc_release(v3);

  return v4;
}

@end