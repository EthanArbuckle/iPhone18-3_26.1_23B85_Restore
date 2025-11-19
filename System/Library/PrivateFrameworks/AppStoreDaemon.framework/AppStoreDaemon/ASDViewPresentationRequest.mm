@interface ASDViewPresentationRequest
- (ASDViewPresentationRequest)initWithCoder:(id)a3;
- (ASDViewPresentationRequest)initWithViewIdentifier:(int64_t)a3;
- (ASDViewPresentationRequest)initWithViewIdentifier:(int64_t)a3 configuration:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASDViewPresentationRequest

- (ASDViewPresentationRequest)initWithViewIdentifier:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = ASDViewPresentationRequest;
  v4 = [(ASDViewPresentationRequest *)&v8 init];
  v5 = v4;
  if (v4)
  {
    configuration = v4->_configuration;
    v4->_configuration = MEMORY[0x1E695E0F8];

    v5->_viewIdentifier = a3;
  }

  return v5;
}

- (ASDViewPresentationRequest)initWithViewIdentifier:(int64_t)a3 configuration:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = ASDViewPresentationRequest;
  v8 = [(ASDViewPresentationRequest *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_configuration, a4);
    v9->_viewIdentifier = a3;
  }

  return v9;
}

- (ASDViewPresentationRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = ASDViewPresentationRequest;
  v5 = [(ASDViewPresentationRequest *)&v16 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [v6 setWithObjects:{v7, v8, v9, v10, v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"C"];
    configuration = v5->_configuration;
    v5->_configuration = v13;

    v5->_viewIdentifier = [v4 decodeIntegerForKey:@"V"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  configuration = self->_configuration;
  v5 = a3;
  [v5 encodeObject:configuration forKey:@"C"];
  [v5 encodeInteger:self->_viewIdentifier forKey:@"V"];
}

@end