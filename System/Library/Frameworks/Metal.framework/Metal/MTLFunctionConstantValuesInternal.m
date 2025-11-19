@interface MTLFunctionConstantValuesInternal
- (BOOL)isEqual:(id)a3;
- (MTLFunctionConstantValuesInternal)init;
- (const)constantValueWithFunctionConstant:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
- (void)reset;
- (void)setConstantValue:(const void *)a3 type:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setConstantValue:(const void *)a3 type:(unint64_t)a4 withName:(id)a5;
- (void)setConstantValues:(const void *)a3 type:(unint64_t)a4 withRange:(_NSRange)a5;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  Class = object_getClass(self);
  if (Class != object_getClass(a3))
  {
    return 0;
  }

  constantStorage = self->_constantStorage;
  v8 = *(a3 + 1);

  return MTLConstantStorage::isEqual(constantStorage, v8);
}

- (void)setConstantValue:(const void *)a3 type:(unint64_t)a4 atIndex:(unint64_t)a5
{
  if (a5 >= 0x10000)
  {
    [(MTLFunctionConstantValuesInternal *)a5 setConstantValue:a2 type:a3 atIndex:a4, a5, v5, v6, v7];
  }

  constantStorage = self->_constantStorage;
  _MTLConstantDataSize(a4);
  operator new[]();
}

- (void)setConstantValues:(const void *)a3 type:(unint64_t)a4 withRange:(_NSRange)a5
{
  location = a5.location;
  v9 = a5.location + a5.length;
  if (a5.location + a5.length > 0x10000)
  {
    [(MTLFunctionConstantValuesInternal *)a5.location + a5.length setConstantValues:a2 type:a3 withRange:a4, a5.location, a5.length, v5, v6];
  }

  if (MTLDataTypeGetComponentCount(a4) == 3)
  {
    ComponentType = MTLDataTypeGetComponentType(a4);
    _MTLConstantDataSize(ComponentType);
  }

  else
  {
    _MTLConstantDataSize(a4);
  }

  if (location < v9)
  {
    constantStorage = self->_constantStorage;
    _MTLConstantDataSize(a4);
    operator new[]();
  }
}

- (void)setConstantValue:(const void *)a3 type:(unint64_t)a4 withName:(id)a5
{
  constantStorage = self->_constantStorage;
  v8 = [a5 UTF8String];

  MTLConstantStorage::setConstantData(constantStorage, v8, a4, a3);
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
  v3 = [(MTLFunctionConstantValuesInternal *)self newNamedConstantArray];
  v4 = [(MTLFunctionConstantValuesInternal *)self newIndexedConstantArray];
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = MTLFunctionConstantValuesInternal;
  v6 = [(MTLFunctionConstantValuesInternal *)&v11 description];
  v12[0] = @"named constants";
  v7 = arrayDescription(v3);
  v12[1] = @"index constants";
  v13[0] = v7;
  v13[1] = arrayDescription(v4);
  v8 = [v5 stringWithFormat:@"%@\n%@", v6, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v13, v12, 2)];

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (const)constantValueWithFunctionConstant:(id)a3
{
  result = MTLConstantStorage::findConstantValue(self->_constantStorage, a3);
  if (result)
  {
    v5 = result;
    v6 = *result;
    if ([a3 type] == v6)
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