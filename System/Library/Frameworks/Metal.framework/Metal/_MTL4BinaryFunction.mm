@interface _MTL4BinaryFunction
- (BOOL)isEqual:(id)equal;
- (_MTL4BinaryFunction)init;
- (_MTL4BinaryFunction)initWithFunctionDescriptor:(id)descriptor;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)dealloc;
- (void)setRelocations:(id)relocations;
@end

@implementation _MTL4BinaryFunction

- (_MTL4BinaryFunction)init
{
  v3.receiver = self;
  v3.super_class = _MTL4BinaryFunction;
  return [(_MTLObjectWithLabel *)&v3 init];
}

- (_MTL4BinaryFunction)initWithFunctionDescriptor:(id)descriptor
{
  v4.receiver = self;
  v4.super_class = _MTL4BinaryFunction;
  return [(_MTLObjectWithLabel *)&v4 init];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5[4] = [(NSString *)self->_name copyWithZone:zone];
  v5[6] = [(MTL4BinaryFunctionReflection *)self->_reflection copy];
  v5[7] = self->_functionType;
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    Class = object_getClass(self);
    if (Class == object_getClass(equal))
    {
      name = self->_name;
      if (name == *(equal + 4) || (v6 = [(NSString *)name isEqual:?]) != 0)
      {
        reflection = self->_reflection;
        if (reflection == *(equal + 6) || (v6 = [(MTL4BinaryFunctionReflection *)reflection isEqual:?]) != 0)
        {
          LOBYTE(v6) = *(equal + 7) == self->_functionType;
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

- (void)setRelocations:(id)relocations
{
  relocations = self->_relocations;
  if (relocations != relocations)
  {

    self->_relocations = [relocations copy];
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _MTL4BinaryFunction;
  [(_MTLObjectWithLabel *)&v3 dealloc];
}

@end