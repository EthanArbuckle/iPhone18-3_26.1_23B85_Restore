@interface MPSGraphExecutableEntryPoint
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualTo:(id)a3;
- (BOOL)isEqualToEntryPoint:(id)a3;
- (MPSGraphExecutableEntryPoint)initWithEntryFunctionName:(id)a3 inputTypes:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation MPSGraphExecutableEntryPoint

- (MPSGraphExecutableEntryPoint)initWithEntryFunctionName:(id)a3 inputTypes:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MPSGraphExecutableEntryPoint;
  v9 = [(MPSGraphExecutableEntryPoint *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_entryFunctionName, a3);
    objc_storeStrong(&v10->_inputTypes, a4);
  }

  return v10;
}

- (BOOL)isEqualTo:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(MPSGraphExecutableEntryPoint *)self isEqual:v4];

    return v5;
  }

  else
  {

    return 0;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {

    return 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(MPSGraphExecutableEntryPoint *)self isEqualToEntryPoint:v5];

    return v6;
  }

  else
  {

    return 0;
  }
}

- (BOOL)isEqualToEntryPoint:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    v5 = [(MPSGraphExecutableEntryPoint *)self entryFunctionName];
    v6 = [(MPSGraphExecutableEntryPoint *)v4 entryFunctionName];
    v7 = [v5 isEqualToString:v6];

    if (v7)
    {
      v8 = [(MPSGraphExecutableEntryPoint *)self inputTypes];
      v9 = [(MPSGraphExecutableEntryPoint *)v4 inputTypes];
      v10 = [v8 isEqualToArray:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [MPSGraphExecutableEntryPoint alloc];
  v6 = [(NSString *)self->_entryFunctionName copyWithZone:a3];
  entryFunctionName = v5->_entryFunctionName;
  v5->_entryFunctionName = v6;

  v8 = [(NSArray *)self->_inputTypes copyWithZone:a3];
  inputTypes = v5->_inputTypes;
  v5->_inputTypes = v8;

  return v5;
}

@end