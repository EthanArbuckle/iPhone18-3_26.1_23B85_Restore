@interface _ANEBuffer
+ (id)bufferWithIOSurfaceObject:(id)object symbolIndex:(id)index source:(int64_t)source;
- (_ANEBuffer)initWithCoder:(id)coder;
- (_ANEBuffer)initWithIOSurfaceObject:(id)object symbolIndex:(id)index source:(int64_t)source;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _ANEBuffer

+ (id)bufferWithIOSurfaceObject:(id)object symbolIndex:(id)index source:(int64_t)source
{
  indexCopy = index;
  objectCopy = object;
  v10 = [[self alloc] initWithIOSurfaceObject:objectCopy symbolIndex:indexCopy source:source];

  return v10;
}

- (_ANEBuffer)initWithIOSurfaceObject:(id)object symbolIndex:(id)index source:(int64_t)source
{
  objectCopy = object;
  indexCopy = index;
  if (objectCopy)
  {
    v15.receiver = self;
    v15.super_class = _ANEBuffer;
    v11 = [(_ANEBuffer *)&v15 init];
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_ioSurfaceObject, object);
      objc_storeStrong(&v12->_symbolIndex, index);
      v12->_source = source;
    }

    self = v12;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  ioSurfaceObject = [(_ANEBuffer *)self ioSurfaceObject];
  symbolIndex = [(_ANEBuffer *)self symbolIndex];
  v8 = [v3 stringWithFormat:@"%@: { ANEIOSurfaceObject=%@  symbolIndex=%@ ; ANEBufferProducerAgent=%lu}", v5, ioSurfaceObject, symbolIndex, -[_ANEBuffer source](self, "source")];;

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  ioSurfaceObject = [(_ANEBuffer *)self ioSurfaceObject];
  [coderCopy encodeObject:ioSurfaceObject forKey:@"ioSurfaceObject"];

  symbolIndex = [(_ANEBuffer *)self symbolIndex];
  [coderCopy encodeInteger:objc_msgSend(symbolIndex forKey:{"longValue"), @"symbolIndex"}];

  [coderCopy encodeInteger:-[_ANEBuffer source](self forKey:{"source"), @"source"}];
}

- (_ANEBuffer)initWithCoder:(id)coder
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:3];
  v7 = [v4 setWithArray:{v6, v14, v15}];

  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"ioSurfaceObject"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"symbolIndex"];
  v10 = [coderCopy decodeIntegerForKey:@"source"];

  v11 = [(_ANEBuffer *)self initWithIOSurfaceObject:v8 symbolIndex:v9 source:v10];
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

@end