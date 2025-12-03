@interface ARGeometrySource
- (ARGeometrySource)initWithBuffer:(id)buffer count:(int64_t)count format:(unint64_t)format componentsPerVector:(int64_t)vector offset:(int64_t)offset stride:(int64_t)stride;
- (ARGeometrySource)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)componentSize;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ARGeometrySource

- (ARGeometrySource)initWithBuffer:(id)buffer count:(int64_t)count format:(unint64_t)format componentsPerVector:(int64_t)vector offset:(int64_t)offset stride:(int64_t)stride
{
  bufferCopy = buffer;
  v19.receiver = self;
  v19.super_class = ARGeometrySource;
  v16 = [(ARGeometrySource *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_buffer, buffer);
    v17->_count = count;
    v17->_format = format;
    v17->_componentsPerVector = vector;
    v17->_offset = offset;
    v17->_stride = stride;
  }

  return v17;
}

- (unint64_t)componentSize
{
  format = self->_format;
  if (format == 28 || format == 30)
  {
    return 4;
  }

  else
  {
    return format == 45;
  }
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DEF0];
  buffer = self->_buffer;
  coderCopy = coder;
  v7 = [v4 dataWithBytesNoCopy:-[MTLBuffer contents](buffer length:"contents") freeWhenDone:{-[ARGeometrySource componentSize](self, "componentSize") * self->_count * self->_componentsPerVector, 0}];
  [coderCopy encodeObject:v7 forKey:@"buffer"];
  [coderCopy encodeInteger:self->_count forKey:@"count"];
  [coderCopy encodeInteger:self->_format forKey:@"format"];
  [coderCopy encodeInteger:self->_componentsPerVector forKey:@"componentsPerVector"];
  [coderCopy encodeInteger:self->_offset forKey:@"offset"];
  [coderCopy encodeInteger:self->_stride forKey:@"stride"];
}

- (ARGeometrySource)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = ARGeometrySource;
  v5 = [(ARGeometrySource *)&v11 init];
  if (v5)
  {
    v5->_count = [coderCopy decodeIntegerForKey:@"count"];
    v5->_format = [coderCopy decodeIntegerForKey:@"format"];
    v5->_componentsPerVector = [coderCopy decodeIntegerForKey:@"componentsPerVector"];
    v5->_offset = [coderCopy decodeIntegerForKey:@"offset"];
    v5->_stride = [coderCopy decodeIntegerForKey:@"stride"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"buffer"];
    v7 = MTLCreateSystemDefaultDevice();
    v8 = [v7 newBufferWithBytes:objc_msgSend(v6 length:"bytes") options:{-[ARGeometrySource componentSize](v5, "componentSize") * v5->_count * v5->_componentsPerVector, 0}];
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
    v17 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:-[MTLBuffer contents](self->_buffer length:"contents") freeWhenDone:{-[ARGeometrySource componentSize](self, "componentSize") * self->_count * self->_componentsPerVector, 0}];
      v7 = MEMORY[0x1E695DEF0];
      buffer = [(ARGeometrySource *)v5 buffer];
      v9 = [v7 dataWithBytesNoCopy:objc_msgSend(buffer length:"contents") freeWhenDone:{-[ARGeometrySource componentSize](self, "componentSize") * -[ARGeometrySource count](v5, "count") * self->_componentsPerVector, 0}];

      count = self->_count;
      if (count == [(ARGeometrySource *)v5 count]&& (format = self->_format, format == [(ARGeometrySource *)v5 format]) && (offset = self->_offset, offset == [(ARGeometrySource *)v5 offset]) && (componentsPerVector = self->_componentsPerVector, componentsPerVector == [(ARGeometrySource *)v5 componentsPerVector]) && (stride = self->_stride, stride == [(ARGeometrySource *)v5 stride]))
      {
        buffer = self->_buffer;
        buffer2 = [(ARGeometrySource *)v5 buffer];
        if (buffer == buffer2)
        {
          v17 = 1;
        }

        else
        {
          v17 = [v6 isEqualToData:v9];
        }
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p count=%ld>", v5, self, -[ARGeometrySource count](self, "count")];

  return v6;
}

@end