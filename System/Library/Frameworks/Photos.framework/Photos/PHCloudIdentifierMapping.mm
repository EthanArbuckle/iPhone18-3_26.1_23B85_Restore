@interface PHCloudIdentifierMapping
- (PHCloudIdentifierMapping)initWithCloudIdentifier:(id)identifier error:(id)error;
@end

@implementation PHCloudIdentifierMapping

- (PHCloudIdentifierMapping)initWithCloudIdentifier:(id)identifier error:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  v12.receiver = self;
  v12.super_class = PHCloudIdentifierMapping;
  v9 = [(PHCloudIdentifierMapping *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_cloudIdentifier, identifier);
    objc_storeStrong(&v10->_error, error);
  }

  return v10;
}

@end