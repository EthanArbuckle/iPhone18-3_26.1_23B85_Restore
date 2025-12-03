@interface ARGeometryElement
- (ARGeometryElement)initWithBuffer:(id)buffer count:(int64_t)count bytesPerIndex:(int64_t)index primitiveType:(int64_t)type;
- (ARGeometryElement)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (NSInteger)indexCountPerPrimitive;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ARGeometryElement

- (ARGeometryElement)initWithBuffer:(id)buffer count:(int64_t)count bytesPerIndex:(int64_t)index primitiveType:(int64_t)type
{
  bufferCopy = buffer;
  v15.receiver = self;
  v15.super_class = ARGeometryElement;
  v12 = [(ARGeometryElement *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_buffer, buffer);
    v13->_count = count;
    v13->_bytesPerIndex = index;
    v13->_primitiveType = type;
  }

  return v13;
}

- (NSInteger)indexCountPerPrimitive
{
  if (self->_primitiveType == 1)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DEF0];
  buffer = self->_buffer;
  coderCopy = coder;
  v7 = [v4 dataWithBytesNoCopy:-[MTLBuffer contents](buffer length:"contents") freeWhenDone:{self->_bytesPerIndex * self->_count * -[ARGeometryElement indexCountPerPrimitive](self, "indexCountPerPrimitive"), 0}];
  [coderCopy encodeObject:v7 forKey:@"buffer"];
  [coderCopy encodeInteger:self->_count forKey:@"count"];
  [coderCopy encodeInteger:self->_bytesPerIndex forKey:@"bytesPerIndex"];
  [coderCopy encodeInteger:self->_primitiveType forKey:@"primitiveType"];
}

- (ARGeometryElement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = ARGeometryElement;
  v5 = [(ARGeometryElement *)&v11 init];
  if (v5)
  {
    v5->_count = [coderCopy decodeIntegerForKey:@"count"];
    v5->_bytesPerIndex = [coderCopy decodeIntegerForKey:@"bytesPerIndex"];
    v5->_primitiveType = [coderCopy decodeIntegerForKey:@"primitiveType"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"buffer"];
    v7 = MTLCreateSystemDefaultDevice();
    v8 = [v7 newBufferWithBytes:objc_msgSend(v6 length:"bytes") options:{v5->_bytesPerIndex * v5->_count * -[ARGeometryElement indexCountPerPrimitive](v5, "indexCountPerPrimitive"), 0}];
    buffer = v5->_buffer;
    v5->_buffer = v8;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:-[MTLBuffer contents](self->_buffer length:"contents") freeWhenDone:{self->_bytesPerIndex * self->_count * -[ARGeometryElement indexCountPerPrimitive](self, "indexCountPerPrimitive"), 0}];
      v7 = MEMORY[0x1E695DEF0];
      buffer = [(ARGeometryElement *)v5 buffer];
      v9 = [v7 dataWithBytesNoCopy:objc_msgSend(buffer length:"contents") freeWhenDone:{-[ARGeometryElement bytesPerIndex](v5, "bytesPerIndex") * -[ARGeometryElement count](v5, "count") * -[ARGeometryElement indexCountPerPrimitive](self, "indexCountPerPrimitive"), 0}];

      count = self->_count;
      if (count == [(ARGeometryElement *)v5 count]&& (bytesPerIndex = self->_bytesPerIndex, bytesPerIndex == [(ARGeometryElement *)v5 bytesPerIndex]))
      {
        buffer = self->_buffer;
        buffer2 = [(ARGeometryElement *)v5 buffer];
        if (buffer == buffer2 || [v6 isEqualToData:v9])
        {
          primitiveType = self->_primitiveType;
          v15 = primitiveType == [(ARGeometryElement *)v5 primitiveType];
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p count=%ld>", v5, self, -[ARGeometryElement count](self, "count")];

  return v6;
}

@end