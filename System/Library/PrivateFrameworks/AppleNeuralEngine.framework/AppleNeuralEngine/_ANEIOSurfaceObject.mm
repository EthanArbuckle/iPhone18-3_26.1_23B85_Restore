@interface _ANEIOSurfaceObject
+ (_ANEIOSurfaceObject)objectWithIOSurface:(__IOSurface *)a3;
+ (_ANEIOSurfaceObject)objectWithIOSurface:(__IOSurface *)a3 startOffset:(id)a4;
+ (_ANEIOSurfaceObject)objectWithIOSurfaceNoRetain:(__IOSurface *)a3 startOffset:(id)a4;
- (_ANEIOSurfaceObject)initWithCoder:(id)a3;
- (_ANEIOSurfaceObject)initWithIOSurface:(__IOSurface *)a3 startOffset:(id)a4 shouldRetain:(BOOL)a5;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _ANEIOSurfaceObject

- (void)dealloc
{
  ioSurface = self->_ioSurface;
  if (ioSurface)
  {
    CFRelease(ioSurface);
  }

  v4.receiver = self;
  v4.super_class = _ANEIOSurfaceObject;
  [(_ANEIOSurfaceObject *)&v4 dealloc];
}

+ (_ANEIOSurfaceObject)objectWithIOSurface:(__IOSurface *)a3
{
  v3 = [[a1 alloc] initWithIOSurface:a3 startOffset:&unk_1F22544A0 shouldRetain:1];

  return v3;
}

+ (_ANEIOSurfaceObject)objectWithIOSurface:(__IOSurface *)a3 startOffset:(id)a4
{
  v6 = a4;
  v7 = [[a1 alloc] initWithIOSurface:a3 startOffset:v6 shouldRetain:1];

  return v7;
}

+ (_ANEIOSurfaceObject)objectWithIOSurfaceNoRetain:(__IOSurface *)a3 startOffset:(id)a4
{
  v6 = a4;
  v7 = [[a1 alloc] initWithIOSurface:a3 startOffset:v6 shouldRetain:0];

  return v7;
}

- (_ANEIOSurfaceObject)initWithIOSurface:(__IOSurface *)a3 startOffset:(id)a4 shouldRetain:(BOOL)a5
{
  v5 = a5;
  v9 = a4;
  if (a3)
  {
    v13.receiver = self;
    v13.super_class = _ANEIOSurfaceObject;
    v10 = [(_ANEIOSurfaceObject *)&v13 init];
    if (v10)
    {
      if (v5)
      {
        CFRetain(a3);
      }

      v10->_ioSurface = a3;
      objc_storeStrong(&v10->_startOffset, a4);
    }

    self = v10;
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(_ANEIOSurfaceObject *)self ioSurface];
  v7 = [(_ANEIOSurfaceObject *)self startOffset];
  v8 = [v3 stringWithFormat:@"%@: { ioSurface=%p  startOffset=%lu }", v5, v6, objc_msgSend(v7, "unsignedIntegerValue")];;

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [(_ANEIOSurfaceObject *)self ioSurface])
  {
    XPCObject = IOSurfaceCreateXPCObject([(_ANEIOSurfaceObject *)self ioSurface]);
    [v5 encodeXPCObject:XPCObject forKey:@"_ANEIOSurface"];
  }
}

- (_ANEIOSurfaceObject)initWithCoder:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 decodeXPCObjectForKey:@"_ANEIOSurface"];
    v6 = v5;
    if (v5)
    {
      v7 = IOSurfaceLookupFromXPCObject(v5);
      self = [(_ANEIOSurfaceObject *)self initWithIOSurface:v7 startOffset:&unk_1F22544A0 shouldRetain:1];
      CFRelease(v7);

      v6 = self;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end