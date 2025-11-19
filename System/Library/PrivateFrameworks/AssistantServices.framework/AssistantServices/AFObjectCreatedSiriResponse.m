@interface AFObjectCreatedSiriResponse
- (AFObjectCreatedSiriResponse)initWithCoder:(id)a3;
- (id)_initWithRequest:(id)a3 objectIdentifier:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFObjectCreatedSiriResponse

- (AFObjectCreatedSiriResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = AFObjectCreatedSiriResponse;
  v5 = [(AFSiriResponse *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ObjectCreatedResponseObjectIdentifier"];
    v7 = [v6 copy];
    objectIdentifier = v5->_objectIdentifier;
    v5->_objectIdentifier = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = AFObjectCreatedSiriResponse;
  v4 = a3;
  [(AFSiriResponse *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_objectIdentifier forKey:{@"ObjectCreatedResponseObjectIdentifier", v5.receiver, v5.super_class}];
}

- (id)_initWithRequest:(id)a3 objectIdentifier:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = AFObjectCreatedSiriResponse;
  v7 = [(AFSiriResponse *)&v11 _initWithRequest:a3];
  if (v7)
  {
    v8 = [v6 copy];
    v9 = v7[2];
    v7[2] = v8;
  }

  return v7;
}

@end