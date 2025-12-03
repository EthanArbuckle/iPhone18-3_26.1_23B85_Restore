@interface _EXItemProviderItem
- (_EXItemProviderItem)initWithCoder:(id)coder;
- (_EXItemProviderItem)initWithTypeIdentifier:(id)identifier error:(id)error;
- (_EXItemProviderItem)initWithTypeIdentifier:(id)identifier payload:(id)payload;
- (id)payloadOfClass:(Class)class;
- (id)payloadOfClasses:(id)classes;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _EXItemProviderItem

- (_EXItemProviderItem)initWithTypeIdentifier:(id)identifier payload:(id)payload
{
  identifierCopy = identifier;
  payloadCopy = payload;
  v8 = [(_EXItemProviderItem *)self init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    typeIdentifier = v8->_typeIdentifier;
    v8->_typeIdentifier = v9;

    objc_storeStrong(&v8->_payload, payload);
    if (payloadCopy)
    {
      v11 = objc_opt_new();
      payloadIdentifier = v8->_payloadIdentifier;
      v8->_payloadIdentifier = v11;
    }
  }

  return v8;
}

- (_EXItemProviderItem)initWithTypeIdentifier:(id)identifier error:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  v8 = [(_EXItemProviderItem *)self init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    typeIdentifier = v8->_typeIdentifier;
    v8->_typeIdentifier = v9;

    objc_storeStrong(&v8->_error, error);
  }

  return v8;
}

- (_EXItemProviderItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(_EXItemProviderItem *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"typeIdentifier"];
    typeIdentifier = v5->_typeIdentifier;
    v5->_typeIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"payloadIdentifier"];
    payloadIdentifier = v5->_payloadIdentifier;
    v5->_payloadIdentifier = v8;

    v10 = +[_EXDefaults sharedInstance];
    errorTypes = [v10 errorTypes];
    v12 = [coderCopy decodeObjectOfClasses:errorTypes forKey:@"error"];
    error = v5->_error;
    v5->_error = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_typeIdentifier forKey:@"typeIdentifier"];
  error = self->_error;
  if (error)
  {
    [coderCopy encodeObject:error forKey:@"error"];
  }

  payloadIdentifier = self->_payloadIdentifier;
  if (payloadIdentifier)
  {
    [coderCopy encodeObject:payloadIdentifier forKey:@"payloadIdentifier"];
  }
}

- (id)payloadOfClass:(Class)class
{
  payload = self->_payload;
  if (payload)
  {
    goto LABEL_4;
  }

  encodedPayload = self->_encodedPayload;
  if (encodedPayload)
  {
    uUIDString = [(NSUUID *)self->_payloadIdentifier UUIDString];
    v8 = [(NSCoder *)encodedPayload decodeObjectOfClass:class forKey:uUIDString];
    v9 = self->_payload;
    self->_payload = v8;

    payload = self->_payload;
LABEL_4:
    v10 = payload;
    goto LABEL_5;
  }

  v10 = 0;
LABEL_5:

  return v10;
}

- (id)payloadOfClasses:(id)classes
{
  classesCopy = classes;
  payload = self->_payload;
  if (payload)
  {
    goto LABEL_4;
  }

  encodedPayload = self->_encodedPayload;
  if (encodedPayload)
  {
    uUIDString = [(NSUUID *)self->_payloadIdentifier UUIDString];
    v8 = [(NSCoder *)encodedPayload decodeObjectOfClasses:classesCopy forKey:uUIDString];
    v9 = self->_payload;
    self->_payload = v8;

    payload = self->_payload;
LABEL_4:
    v10 = payload;
    goto LABEL_5;
  }

  v10 = 0;
LABEL_5:

  return v10;
}

@end