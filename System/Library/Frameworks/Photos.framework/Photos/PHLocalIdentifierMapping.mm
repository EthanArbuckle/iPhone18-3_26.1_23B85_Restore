@interface PHLocalIdentifierMapping
- (PHLocalIdentifierMapping)initWithLocalIdentifier:(id)a3 error:(id)a4;
@end

@implementation PHLocalIdentifierMapping

- (PHLocalIdentifierMapping)initWithLocalIdentifier:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = PHLocalIdentifierMapping;
  v8 = [(PHLocalIdentifierMapping *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    localIdentifier = v8->_localIdentifier;
    v8->_localIdentifier = v9;

    objc_storeStrong(&v8->_error, a4);
  }

  return v8;
}

@end