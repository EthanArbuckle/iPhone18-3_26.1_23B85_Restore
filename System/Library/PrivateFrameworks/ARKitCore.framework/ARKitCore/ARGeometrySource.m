@interface ARGeometrySource
- (ARGeometrySource)initWithBuffer:(id)a3 count:(int64_t)a4 format:(unint64_t)a5 componentsPerVector:(int64_t)a6 offset:(int64_t)a7 stride:(int64_t)a8;
- (ARGeometrySource)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (unint64_t)componentSize;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ARGeometrySource

- (ARGeometrySource)initWithBuffer:(id)a3 count:(int64_t)a4 format:(unint64_t)a5 componentsPerVector:(int64_t)a6 offset:(int64_t)a7 stride:(int64_t)a8
{
  v15 = a3;
  v19.receiver = self;
  v19.super_class = ARGeometrySource;
  v16 = [(ARGeometrySource *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_buffer, a3);
    v17->_count = a4;
    v17->_format = a5;
    v17->_componentsPerVector = a6;
    v17->_offset = a7;
    v17->_stride = a8;
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

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DEF0];
  buffer = self->_buffer;
  v6 = a3;
  v7 = [v4 dataWithBytesNoCopy:-[MTLBuffer contents](buffer length:"contents") freeWhenDone:{-[ARGeometrySource componentSize](self, "componentSize") * self->_count * self->_componentsPerVector, 0}];
  [v6 encodeObject:v7 forKey:@"buffer"];
  [v6 encodeInteger:self->_count forKey:@"count"];
  [v6 encodeInteger:self->_format forKey:@"format"];
  [v6 encodeInteger:self->_componentsPerVector forKey:@"componentsPerVector"];
  [v6 encodeInteger:self->_offset forKey:@"offset"];
  [v6 encodeInteger:self->_stride forKey:@"stride"];
}

- (ARGeometrySource)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ARGeometrySource;
  v5 = [(ARGeometrySource *)&v11 init];
  if (v5)
  {
    v5->_count = [v4 decodeIntegerForKey:@"count"];
    v5->_format = [v4 decodeIntegerForKey:@"format"];
    v5->_componentsPerVector = [v4 decodeIntegerForKey:@"componentsPerVector"];
    v5->_offset = [v4 decodeIntegerForKey:@"offset"];
    v5->_stride = [v4 decodeIntegerForKey:@"stride"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"buffer"];
    v7 = MTLCreateSystemDefaultDevice();
    v8 = [v7 newBufferWithBytes:objc_msgSend(v6 length:"bytes") options:{-[ARGeometrySource componentSize](v5, "componentSize") * v5->_count * v5->_componentsPerVector, 0}];
    buffer = v5->_buffer;
    v5->_buffer = v8;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v17 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:-[MTLBuffer contents](self->_buffer length:"contents") freeWhenDone:{-[ARGeometrySource componentSize](self, "componentSize") * self->_count * self->_componentsPerVector, 0}];
      v7 = MEMORY[0x1E695DEF0];
      v8 = [(ARGeometrySource *)v5 buffer];
      v9 = [v7 dataWithBytesNoCopy:objc_msgSend(v8 length:"contents") freeWhenDone:{-[ARGeometrySource componentSize](self, "componentSize") * -[ARGeometrySource count](v5, "count") * self->_componentsPerVector, 0}];

      count = self->_count;
      if (count == [(ARGeometrySource *)v5 count]&& (format = self->_format, format == [(ARGeometrySource *)v5 format]) && (offset = self->_offset, offset == [(ARGeometrySource *)v5 offset]) && (componentsPerVector = self->_componentsPerVector, componentsPerVector == [(ARGeometrySource *)v5 componentsPerVector]) && (stride = self->_stride, stride == [(ARGeometrySource *)v5 stride]))
      {
        buffer = self->_buffer;
        v16 = [(ARGeometrySource *)v5 buffer];
        if (buffer == v16)
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