@interface MTLCounterInternal
- (BOOL)isEqual:(id)equal;
- (MTLCounterInternal)initWithName:(id)name description:(id)description;
- (NSString)description;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation MTLCounterInternal

- (MTLCounterInternal)initWithName:(id)name description:(id)description
{
  v8.receiver = self;
  v8.super_class = MTLCounterInternal;
  v6 = [(MTLCounterInternal *)&v8 init];
  v6->_name = name;
  v6->_description = description;
  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLCounterInternal;
  [(MTLCounterInternal *)&v3 dealloc];
}

- (NSString)description
{
  v2 = [(NSString *)self->_description copy];

  return v2;
}

- (unint64_t)hash
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = [(NSString *)self->_name hash];
  v5[1] = [(NSString *)self->_description hash];
  LODWORD(result) = _MTLHashState(v5, 0x10uLL);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    v16 = v5;
    v17 = v4;
    v18 = v3;
    Class = object_getClass(self);
    if (Class == object_getClass(equal))
    {
      name = self->_name;
      if (name == [equal name] || (v12 = -[NSString isEqual:](self->_name, "isEqual:", objc_msgSend(equal, "name"))) != 0)
      {
        description = self->_description;
        if (description == [equal description] || (v12 = -[NSString isEqual:](self->_description, "isEqual:", objc_msgSend(equal, "description"))) != 0)
        {
          LOBYTE(v12) = 1;
        }
      }
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  return v12;
}

@end