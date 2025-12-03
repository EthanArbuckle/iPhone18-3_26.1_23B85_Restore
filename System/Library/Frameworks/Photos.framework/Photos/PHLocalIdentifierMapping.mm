@interface PHLocalIdentifierMapping
- (PHLocalIdentifierMapping)initWithLocalIdentifier:(id)identifier error:(id)error;
@end

@implementation PHLocalIdentifierMapping

- (PHLocalIdentifierMapping)initWithLocalIdentifier:(id)identifier error:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  v12.receiver = self;
  v12.super_class = PHLocalIdentifierMapping;
  v8 = [(PHLocalIdentifierMapping *)&v12 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    localIdentifier = v8->_localIdentifier;
    v8->_localIdentifier = v9;

    objc_storeStrong(&v8->_error, error);
  }

  return v8;
}

@end