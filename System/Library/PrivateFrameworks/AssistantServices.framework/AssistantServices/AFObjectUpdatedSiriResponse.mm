@interface AFObjectUpdatedSiriResponse
- (AFObjectUpdatedSiriResponse)initWithCoder:(id)coder;
- (id)_initWithRequest:(id)request objectIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFObjectUpdatedSiriResponse

- (AFObjectUpdatedSiriResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = AFObjectUpdatedSiriResponse;
  v5 = [(AFSiriResponse *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ObjectUpdatedResponseObjectIdentifier"];
    v7 = [v6 copy];
    objectIdentifier = v5->_objectIdentifier;
    v5->_objectIdentifier = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = AFObjectUpdatedSiriResponse;
  coderCopy = coder;
  [(AFSiriResponse *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_objectIdentifier forKey:{@"ObjectUpdatedResponseObjectIdentifier", v5.receiver, v5.super_class}];
}

- (id)_initWithRequest:(id)request objectIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = AFObjectUpdatedSiriResponse;
  v7 = [(AFSiriResponse *)&v11 _initWithRequest:request];
  if (v7)
  {
    v8 = [identifierCopy copy];
    v9 = v7[2];
    v7[2] = v8;
  }

  return v7;
}

@end