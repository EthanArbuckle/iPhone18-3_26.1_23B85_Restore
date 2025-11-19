@interface AKAttestationRequestData
- (AKAttestationRequestData)init;
- (AKAttestationRequestData)initWithCoder:(id)a3;
- (AKAttestationRequestData)initWithRequest:(id)a3 requiredHeaders:(id)a4;
- (AKAttestationRequestData)initWithRequestURL:(id)a3 signingDataHash:(id)a4 requiredHeaders:(id)a5;
- (AKAttestationRequestData)initWithSigningData:(id)a3 requiredHeaders:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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

- (AKAttestationRequestData)initWithRequest:(id)a3 requiredHeaders:(id)a4
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v6 = [location[0] allHTTPHeaderFields];
  v12 = [v6 ak_dictionaryWithKeysFromArray:v13];
  _objc_release(v6);
  v7 = v15;
  v10 = [location[0] URL];
  v9 = [location[0] HTTPBody];
  v8 = [v9 ak_SHA256Data];
  v15 = 0;
  v15 = [AKAttestationRequestData initWithRequestURL:v7 signingDataHash:"initWithRequestURL:signingDataHash:requiredHeaders:" requiredHeaders:v10];
  v11 = _objc_retain(v15);
  _objc_release(v8);
  _objc_release(v9);
  _objc_release(v10);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v15, 0);
  return v11;
}

- (AKAttestationRequestData)initWithSigningData:(id)a3 requiredHeaders:(id)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v6 = v11;
  v7 = [location[0] ak_SHA256Data];
  v11 = 0;
  v11 = [AKAttestationRequestData initWithRequestURL:v6 signingDataHash:"initWithRequestURL:signingDataHash:requiredHeaders:" requiredHeaders:0];
  v8 = _objc_retain(v11);
  _objc_release(v7);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v11, 0);
  return v8;
}

- (AKAttestationRequestData)initWithRequestURL:(id)a3 signingDataHash:(id)a4 requiredHeaders:(id)a5
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v14 = 0;
  objc_storeStrong(&v14, a5);
  v5 = v17;
  v17 = 0;
  v13.receiver = v5;
  v13.super_class = AKAttestationRequestData;
  v12 = [(AKAttestationRequestData *)&v13 init];
  v17 = v12;
  objc_storeStrong(&v17, v12);
  if (v12)
  {
    objc_storeStrong(&v17->_requestURL, location[0]);
    objc_storeStrong(&v17->_signingDataHash, v15);
    v6 = [v14 copy];
    headers = v17->_headers;
    v17->_headers = v6;
    _objc_release(headers);
  }

  v9 = _objc_retain(v17);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v17, 0);
  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10 = self;
  v9[2] = a2;
  v9[1] = a3;
  v9[0] = objc_alloc_init(objc_opt_class());
  v3 = [(NSData *)v10->_signingDataHash copy];
  v4 = *(v9[0] + 2);
  *(v9[0] + 2) = v3;
  _objc_release(v4);
  v5 = [(NSDictionary *)v10->_headers copy];
  v6 = *(v9[0] + 3);
  *(v9[0] + 3) = v5;
  _objc_release(v6);
  v8 = _objc_retain(v9[0]);
  objc_storeStrong(v9, 0);
  return v8;
}

- (AKAttestationRequestData)initWithCoder:(id)a3
{
  v21 = &v25;
  v25 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v25;
  v25 = 0;
  v22 = [(AKAttestationRequestData *)v3 init];
  v25 = v22;
  objc_storeStrong(&v25, v22);
  if (v22)
  {
    v15 = location[0];
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_requestURL"];
    requestURL = v25->_requestURL;
    v25->_requestURL = v4;
    _objc_release(requestURL);
    v16 = location[0];
    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_signingDataHash"];
    signingDataHash = v25->_signingDataHash;
    v25->_signingDataHash = v6;
    _objc_release(signingDataHash);
    v18 = NSSet;
    v17 = objc_opt_class();
    v20 = 0;
    v8 = [NSSet setWithObjects:v17, objc_opt_class(), 0];
    v19 = &v23;
    v23 = v8;
    v9 = [location[0] decodeObjectOfClasses:v8 forKey:@"_headers"];
    headers = v25->_headers;
    v25->_headers = v9;
    _objc_release(headers);
    objc_storeStrong(v19, v20);
  }

  v12 = &v25;
  v14 = _objc_retain(v25);
  obj = 0;
  objc_storeStrong(location, 0);
  objc_storeStrong(v12, obj);
  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] encodeObject:v4->_requestURL forKey:@"_requestURL"];
  [location[0] encodeObject:v4->_signingDataHash forKey:@"_signingDataHash"];
  [location[0] encodeObject:v4->_headers forKey:@"_headers"];
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