@interface _HKBaseDimension
+ (id)_uniquedDefinedDimensionWithName:(id)a3;
+ (id)_uniquedDimensionWithName:(id)a3 configuration:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)_initWithName:(id)a3;
- (unint64_t)hash;
@end

@implementation _HKBaseDimension

- (unint64_t)hash
{
  v2 = [(_HKBaseDimension *)self name];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [v4 name];
    v6 = [(_HKBaseDimension *)self name];
    v7 = [v5 isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_uniquedDimensionWithName:(id)a3 configuration:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (_uniquedDimensionWithName_configuration__onceToken != -1)
  {
    +[_HKBaseDimension _uniquedDimensionWithName:configuration:];
  }

  os_unfair_lock_lock(&_uniquedDimensionWithName_configuration__uniquingLock);
  v8 = [_uniquedDimensionWithName_configuration____dimensionsByName objectForKey:v6];
  if (!v8)
  {
    v8 = [[a1 alloc] _initWithName:v6];
    if (v7)
    {
      v7[2](v7, v8);
    }

    [_uniquedDimensionWithName_configuration____dimensionsByName setObject:v8 forKey:v6];
  }

  os_unfair_lock_unlock(&_uniquedDimensionWithName_configuration__uniquingLock);

  return v8;
}

+ (id)_uniquedDefinedDimensionWithName:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53___HKBaseDimension__uniquedDefinedDimensionWithName___block_invoke;
  v8[3] = &unk_1E737E130;
  v9 = v4;
  v5 = v4;
  v6 = [a1 _uniquedDimensionWithName:v5 configuration:v8];

  return v6;
}

- (id)_initWithName:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _HKBaseDimension;
  v5 = [(_HKDimension *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    name = v5->_name;
    v5->_name = v6;
  }

  return v5;
}

@end