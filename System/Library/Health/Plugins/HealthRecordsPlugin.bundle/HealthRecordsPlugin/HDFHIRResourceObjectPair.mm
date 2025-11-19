@interface HDFHIRResourceObjectPair
- (HDFHIRResourceObjectPair)init;
- (HDFHIRResourceObjectPair)initWithProvidedResource:(id)a3 databaseResource:(id)a4;
@end

@implementation HDFHIRResourceObjectPair

- (HDFHIRResourceObjectPair)init
{
  v3 = NSStringFromSelector(a2);
  [NSException raise:NSInvalidArgumentException format:@"The -%@ method is not available on %@", v3, objc_opt_class()];

  return 0;
}

- (HDFHIRResourceObjectPair)initWithProvidedResource:(id)a3 databaseResource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HDFHIRResourceObjectPair;
  v8 = [(HDFHIRResourceObjectPair *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    providedResource = v8->_providedResource;
    v8->_providedResource = v9;

    v11 = [v7 copy];
    databaseResource = v8->_databaseResource;
    v8->_databaseResource = v11;
  }

  return v8;
}

@end