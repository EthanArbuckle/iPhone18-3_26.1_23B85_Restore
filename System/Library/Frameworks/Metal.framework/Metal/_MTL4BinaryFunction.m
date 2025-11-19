@interface _MTL4BinaryFunction
- (BOOL)isEqual:(id)a3;
- (_MTL4BinaryFunction)init;
- (_MTL4BinaryFunction)initWithFunctionDescriptor:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)dealloc;
- (void)setRelocations:(id)a3;
@end

@implementation _MTL4BinaryFunction

- (_MTL4BinaryFunction)init
{
  v3.receiver = self;
  v3.super_class = _MTL4BinaryFunction;
  return [(_MTLObjectWithLabel *)&v3 init];
}

- (_MTL4BinaryFunction)initWithFunctionDescriptor:(id)a3
{
  v4.receiver = self;
  v4.super_class = _MTL4BinaryFunction;
  return [(_MTLObjectWithLabel *)&v4 init];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5[4] = [(NSString *)self->_name copyWithZone:a3];
  v5[6] = [(MTL4BinaryFunctionReflection *)self->_reflection copy];
  v5[7] = self->_functionType;
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    Class = object_getClass(self);
    if (Class == object_getClass(a3))
    {
      name = self->_name;
      if (name == *(a3 + 4) || (v6 = [(NSString *)name isEqual:?]) != 0)
      {
        reflection = self->_reflection;
        if (reflection == *(a3 + 6) || (v6 = [(MTL4BinaryFunctionReflection *)reflection isEqual:?]) != 0)
        {
          LOBYTE(v6) = *(a3 + 7) == self->_functionType;
        }
      }
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  bzero(v6, 0x18uLL);
  v6[0] = [(NSString *)self->_name hash];
  v3 = [(MTL4BinaryFunctionReflection *)self->_reflection hash];
  functionType = self->_functionType;
  v6[1] = v3;
  v6[2] = functionType;
  return _MTLHashState(v6, 0x18uLL);
}

- (void)setRelocations:(id)a3
{
  relocations = self->_relocations;
  if (relocations != a3)
  {

    self->_relocations = [a3 copy];
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _MTL4BinaryFunction;
  [(_MTLObjectWithLabel *)&v3 dealloc];
}

@end