@interface ASDExternalManifestResponse
- (ASDExternalManifestResponse)initWithCoder:(id)a3;
- (ASDExternalManifestResponse)initWithError:(id)a3;
- (ASDExternalManifestResponse)initWithResults:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASDExternalManifestResponse

- (ASDExternalManifestResponse)initWithResults:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ASDExternalManifestResponse;
  v5 = [(ASDRequestResponse *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v4 copyItems:1];
    results = v5->_results;
    v5->_results = v6;
  }

  return v5;
}

- (ASDExternalManifestResponse)initWithError:(id)a3
{
  v7.receiver = self;
  v7.super_class = ASDExternalManifestResponse;
  v3 = [(ASDRequestResponse *)&v7 initWithError:a3];
  v4 = v3;
  if (v3)
  {
    results = v3->_results;
    v3->_results = MEMORY[0x1E695E0F0];
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = ASDExternalManifestResponse;
  v5 = [(ASDRequestResponse *)&v9 copyWithZone:?];
  v6 = [(NSArray *)self->_results copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  return v5;
}

- (ASDExternalManifestResponse)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"results"];

  v9 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"error"];

  if (v9)
  {
    v10 = [(ASDExternalManifestResponse *)self initWithError:v9];
  }

  else
  {
    if (v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = MEMORY[0x1E695E0F0];
    }

    v10 = [(ASDExternalManifestResponse *)self initWithResults:v11];
  }

  v12 = v10;

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v8 = 0;
  v5 = [(ASDRequestResponse *)self error];

  if (v5)
  {
    v6 = [(ASDRequestResponse *)self error];
    v7 = ASDErrorWithSafeUserInfo(v6);
    [ASDCoding securelyEncodeObject:v7 forKey:@"error" withCoder:v4 error:&v8];
  }

  else
  {
    [ASDCoding securelyEncodeObject:self->_results forKey:@"results" withCoder:v4 error:&v8];
  }

  if (v8)
  {
    [v4 encodeObject:v8 forKey:@"error"];
  }
}

@end