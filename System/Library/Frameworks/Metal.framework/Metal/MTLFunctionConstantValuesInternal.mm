@interface MTLFunctionConstantValuesInternal
- (BOOL)isEqual:(id)equal;
- (MTLFunctionConstantValuesInternal)init;
- (const)constantValueWithFunctionConstant:(id)constant;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)reset;
- (void)setConstantValue:(const void *)value type:(unint64_t)type atIndex:(unint64_t)index;
- (void)setConstantValue:(const void *)value type:(unint64_t)type withName:(id)name;
- (void)setConstantValues:(const void *)values type:(unint64_t)type withRange:(_NSRange)range;
@end

@implementation MTLFunctionConstantValuesInternal

- (MTLFunctionConstantValuesInternal)init
{
  v3.receiver = self;
  v3.super_class = MTLFunctionConstantValuesInternal;
  if ([(MTLFunctionConstantValuesInternal *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  constantStorage = self->_constantStorage;
  if (constantStorage)
  {
    std::__tree<std::__value_type<unsigned short,MTLConstantStorage::ConstantData>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,MTLConstantStorage::ConstantData>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,MTLConstantStorage::ConstantData>>>::destroy((constantStorage + 3), constantStorage[4]);
    std::__tree<std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTLConstantStorage::ConstantData>>>::destroy(constantStorage, constantStorage[1]);
    MEMORY[0x1865FF210](constantStorage, 0x1020C404C310C12);
  }

  v4.receiver = self;
  v4.super_class = MTLFunctionConstantValuesInternal;
  [(MTLFunctionConstantValuesInternal *)&v4 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      std::__tree<std::__value_type<unsigned short,MTLConstantStorage::ConstantData>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,MTLConstantStorage::ConstantData>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,MTLConstantStorage::ConstantData>>>::destroy(v4 + 24, *(v4 + 32));
      std::__tree<std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTLConstantStorage::ConstantData>>>::destroy(v4, *(v4 + 8));
      MEMORY[0x1865FF210](v4, 0x1020C404C310C12);
    }

    operator new();
  }

  return 0;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  Class = object_getClass(self);
  if (Class != object_getClass(equal))
  {
    return 0;
  }

  constantStorage = self->_constantStorage;
  v8 = *(equal + 1);

  return MTLConstantStorage::isEqual(constantStorage, v8);
}

- (void)setConstantValue:(const void *)value type:(unint64_t)type atIndex:(unint64_t)index
{
  if (index >= 0x10000)
  {
    [(MTLFunctionConstantValuesInternal *)index setConstantValue:a2 type:value atIndex:type, index, v5, v6, v7];
  }

  constantStorage = self->_constantStorage;
  _MTLConstantDataSize(type);
  operator new[]();
}

- (void)setConstantValues:(const void *)values type:(unint64_t)type withRange:(_NSRange)range
{
  location = range.location;
  v9 = range.location + range.length;
  if (range.location + range.length > 0x10000)
  {
    [(MTLFunctionConstantValuesInternal *)range.location + range.length setConstantValues:a2 type:values withRange:type, range.location, range.length, v5, v6];
  }

  if (MTLDataTypeGetComponentCount(type) == 3)
  {
    ComponentType = MTLDataTypeGetComponentType(type);
    _MTLConstantDataSize(ComponentType);
  }

  else
  {
    _MTLConstantDataSize(type);
  }

  if (location < v9)
  {
    constantStorage = self->_constantStorage;
    _MTLConstantDataSize(type);
    operator new[]();
  }
}

- (void)setConstantValue:(const void *)value type:(unint64_t)type withName:(id)name
{
  constantStorage = self->_constantStorage;
  uTF8String = [name UTF8String];

  MTLConstantStorage::setConstantData(constantStorage, uTF8String, type, value);
}

- (void)reset
{
  constantStorage = self->_constantStorage;
  if (constantStorage)
  {
    std::__tree<std::__value_type<unsigned short,MTLConstantStorage::ConstantData>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,MTLConstantStorage::ConstantData>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,MTLConstantStorage::ConstantData>>>::destroy((constantStorage + 3), constantStorage[4]);
    std::__tree<std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTLConstantStorage::ConstantData>>>::destroy(constantStorage, constantStorage[1]);
    MEMORY[0x1865FF210](constantStorage, 0x1020C404C310C12);
  }

  operator new();
}

- (id)description
{
  v13[2] = *MEMORY[0x1E69E9840];
  newNamedConstantArray = [(MTLFunctionConstantValuesInternal *)self newNamedConstantArray];
  newIndexedConstantArray = [(MTLFunctionConstantValuesInternal *)self newIndexedConstantArray];
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = MTLFunctionConstantValuesInternal;
  v6 = [(MTLFunctionConstantValuesInternal *)&v11 description];
  v12[0] = @"named constants";
  v7 = arrayDescription(newNamedConstantArray);
  v12[1] = @"index constants";
  v13[0] = v7;
  v13[1] = arrayDescription(newIndexedConstantArray);
  v8 = [v5 stringWithFormat:@"%@\n%@", v6, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v13, v12, 2)];

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (const)constantValueWithFunctionConstant:(id)constant
{
  result = MTLConstantStorage::findConstantValue(self->_constantStorage, constant);
  if (result)
  {
    v5 = result;
    v6 = *result;
    if ([constant type] == v6)
    {
      return *(v5 + 1);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

@end