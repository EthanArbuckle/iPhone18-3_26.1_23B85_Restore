@interface _ANEBuffer
+ (id)bufferWithIOSurfaceObject:(id)a3 symbolIndex:(id)a4 source:(int64_t)a5;
- (_ANEBuffer)initWithCoder:(id)a3;
- (_ANEBuffer)initWithIOSurfaceObject:(id)a3 symbolIndex:(id)a4 source:(int64_t)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _ANEBuffer

+ (id)bufferWithIOSurfaceObject:(id)a3 symbolIndex:(id)a4 source:(int64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [[a1 alloc] initWithIOSurfaceObject:v9 symbolIndex:v8 source:a5];

  return v10;
}

- (_ANEBuffer)initWithIOSurfaceObject:(id)a3 symbolIndex:(id)a4 source:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  if (v9)
  {
    v15.receiver = self;
    v15.super_class = _ANEBuffer;
    v11 = [(_ANEBuffer *)&v15 init];
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_ioSurfaceObject, a3);
      objc_storeStrong(&v12->_symbolIndex, a4);
      v12->_source = a5;
    }

    self = v12;
    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(_ANEBuffer *)self ioSurfaceObject];
  v7 = [(_ANEBuffer *)self symbolIndex];
  v8 = [v3 stringWithFormat:@"%@: { ANEIOSurfaceObject=%@  symbolIndex=%@ ; ANEBufferProducerAgent=%lu}", v5, v6, v7, -[_ANEBuffer source](self, "source")];;

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(_ANEBuffer *)self ioSurfaceObject];
  [v6 encodeObject:v4 forKey:@"ioSurfaceObject"];

  v5 = [(_ANEBuffer *)self symbolIndex];
  [v6 encodeInteger:objc_msgSend(v5 forKey:{"longValue"), @"symbolIndex"}];

  [v6 encodeInteger:-[_ANEBuffer source](self forKey:{"source"), @"source"}];
}

- (_ANEBuffer)initWithCoder:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:3];
  v7 = [v4 setWithArray:{v6, v14, v15}];

  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"ioSurfaceObject"];
  v9 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"symbolIndex"];
  v10 = [v5 decodeIntegerForKey:@"source"];

  v11 = [(_ANEBuffer *)self initWithIOSurfaceObject:v8 symbolIndex:v9 source:v10];
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

@end