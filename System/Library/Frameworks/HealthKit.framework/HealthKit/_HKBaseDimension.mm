@interface _HKBaseDimension
+ (id)_uniquedDefinedDimensionWithName:(id)name;
+ (id)_uniquedDimensionWithName:(id)name configuration:(id)configuration;
- (BOOL)isEqual:(id)equal;
- (id)_initWithName:(id)name;
- (unint64_t)hash;
@end

@implementation _HKBaseDimension

- (unint64_t)hash
{
  name = [(_HKBaseDimension *)self name];
  v3 = [name hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    name = [equalCopy name];
    name2 = [(_HKBaseDimension *)self name];
    v7 = [name isEqualToString:name2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_uniquedDimensionWithName:(id)name configuration:(id)configuration
{
  nameCopy = name;
  configurationCopy = configuration;
  if (_uniquedDimensionWithName_configuration__onceToken != -1)
  {
    +[_HKBaseDimension _uniquedDimensionWithName:configuration:];
  }

  os_unfair_lock_lock(&_uniquedDimensionWithName_configuration__uniquingLock);
  v8 = [_uniquedDimensionWithName_configuration____dimensionsByName objectForKey:nameCopy];
  if (!v8)
  {
    v8 = [[self alloc] _initWithName:nameCopy];
    if (configurationCopy)
    {
      configurationCopy[2](configurationCopy, v8);
    }

    [_uniquedDimensionWithName_configuration____dimensionsByName setObject:v8 forKey:nameCopy];
  }

  os_unfair_lock_unlock(&_uniquedDimensionWithName_configuration__uniquingLock);

  return v8;
}

+ (id)_uniquedDefinedDimensionWithName:(id)name
{
  nameCopy = name;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53___HKBaseDimension__uniquedDefinedDimensionWithName___block_invoke;
  v8[3] = &unk_1E737E130;
  v9 = nameCopy;
  v5 = nameCopy;
  v6 = [self _uniquedDimensionWithName:v5 configuration:v8];

  return v6;
}

- (id)_initWithName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = _HKBaseDimension;
  v5 = [(_HKDimension *)&v9 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    name = v5->_name;
    v5->_name = v6;
  }

  return v5;
}

@end