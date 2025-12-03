@interface MPSGraphExecutableEntryPoint
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualTo:(id)to;
- (BOOL)isEqualToEntryPoint:(id)point;
- (MPSGraphExecutableEntryPoint)initWithEntryFunctionName:(id)name inputTypes:(id)types;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation MPSGraphExecutableEntryPoint

- (MPSGraphExecutableEntryPoint)initWithEntryFunctionName:(id)name inputTypes:(id)types
{
  nameCopy = name;
  typesCopy = types;
  v12.receiver = self;
  v12.super_class = MPSGraphExecutableEntryPoint;
  v9 = [(MPSGraphExecutableEntryPoint *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_entryFunctionName, name);
    objc_storeStrong(&v10->_inputTypes, types);
  }

  return v10;
}

- (BOOL)isEqualTo:(id)to
{
  toCopy = to;
  if (toCopy)
  {
    v5 = [(MPSGraphExecutableEntryPoint *)self isEqual:toCopy];

    return v5;
  }

  else
  {

    return 0;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {

    return 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(MPSGraphExecutableEntryPoint *)self isEqualToEntryPoint:v5];

    return v6;
  }

  else
  {

    return 0;
  }
}

- (BOOL)isEqualToEntryPoint:(id)point
{
  pointCopy = point;
  if (self == pointCopy)
  {
    v10 = 1;
  }

  else
  {
    entryFunctionName = [(MPSGraphExecutableEntryPoint *)self entryFunctionName];
    entryFunctionName2 = [(MPSGraphExecutableEntryPoint *)pointCopy entryFunctionName];
    v7 = [entryFunctionName isEqualToString:entryFunctionName2];

    if (v7)
    {
      inputTypes = [(MPSGraphExecutableEntryPoint *)self inputTypes];
      inputTypes2 = [(MPSGraphExecutableEntryPoint *)pointCopy inputTypes];
      v10 = [inputTypes isEqualToArray:inputTypes2];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [MPSGraphExecutableEntryPoint alloc];
  v6 = [(NSString *)self->_entryFunctionName copyWithZone:zone];
  entryFunctionName = v5->_entryFunctionName;
  v5->_entryFunctionName = v6;

  v8 = [(NSArray *)self->_inputTypes copyWithZone:zone];
  inputTypes = v5->_inputTypes;
  v5->_inputTypes = v8;

  return v5;
}

@end