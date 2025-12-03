@interface ASDViewPresentationRequest
- (ASDViewPresentationRequest)initWithCoder:(id)coder;
- (ASDViewPresentationRequest)initWithViewIdentifier:(int64_t)identifier;
- (ASDViewPresentationRequest)initWithViewIdentifier:(int64_t)identifier configuration:(id)configuration;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASDViewPresentationRequest

- (ASDViewPresentationRequest)initWithViewIdentifier:(int64_t)identifier
{
  v8.receiver = self;
  v8.super_class = ASDViewPresentationRequest;
  v4 = [(ASDViewPresentationRequest *)&v8 init];
  v5 = v4;
  if (v4)
  {
    configuration = v4->_configuration;
    v4->_configuration = MEMORY[0x1E695E0F8];

    v5->_viewIdentifier = identifier;
  }

  return v5;
}

- (ASDViewPresentationRequest)initWithViewIdentifier:(int64_t)identifier configuration:(id)configuration
{
  configurationCopy = configuration;
  v11.receiver = self;
  v11.super_class = ASDViewPresentationRequest;
  v8 = [(ASDViewPresentationRequest *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_configuration, configuration);
    v9->_viewIdentifier = identifier;
  }

  return v9;
}

- (ASDViewPresentationRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
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
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"C"];
    configuration = v5->_configuration;
    v5->_configuration = v13;

    v5->_viewIdentifier = [coderCopy decodeIntegerForKey:@"V"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  configuration = self->_configuration;
  coderCopy = coder;
  [coderCopy encodeObject:configuration forKey:@"C"];
  [coderCopy encodeInteger:self->_viewIdentifier forKey:@"V"];
}

@end