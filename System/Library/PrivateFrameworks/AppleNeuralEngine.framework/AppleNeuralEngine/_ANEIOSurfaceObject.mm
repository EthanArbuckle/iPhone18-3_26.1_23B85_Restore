@interface _ANEIOSurfaceObject
+ (_ANEIOSurfaceObject)objectWithIOSurface:(__IOSurface *)surface;
+ (_ANEIOSurfaceObject)objectWithIOSurface:(__IOSurface *)surface startOffset:(id)offset;
+ (_ANEIOSurfaceObject)objectWithIOSurfaceNoRetain:(__IOSurface *)retain startOffset:(id)offset;
- (_ANEIOSurfaceObject)initWithCoder:(id)coder;
- (_ANEIOSurfaceObject)initWithIOSurface:(__IOSurface *)surface startOffset:(id)offset shouldRetain:(BOOL)retain;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
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

+ (_ANEIOSurfaceObject)objectWithIOSurface:(__IOSurface *)surface
{
  v3 = [[self alloc] initWithIOSurface:surface startOffset:&unk_1F22544A0 shouldRetain:1];

  return v3;
}

+ (_ANEIOSurfaceObject)objectWithIOSurface:(__IOSurface *)surface startOffset:(id)offset
{
  offsetCopy = offset;
  v7 = [[self alloc] initWithIOSurface:surface startOffset:offsetCopy shouldRetain:1];

  return v7;
}

+ (_ANEIOSurfaceObject)objectWithIOSurfaceNoRetain:(__IOSurface *)retain startOffset:(id)offset
{
  offsetCopy = offset;
  v7 = [[self alloc] initWithIOSurface:retain startOffset:offsetCopy shouldRetain:0];

  return v7;
}

- (_ANEIOSurfaceObject)initWithIOSurface:(__IOSurface *)surface startOffset:(id)offset shouldRetain:(BOOL)retain
{
  retainCopy = retain;
  offsetCopy = offset;
  if (surface)
  {
    v13.receiver = self;
    v13.super_class = _ANEIOSurfaceObject;
    v10 = [(_ANEIOSurfaceObject *)&v13 init];
    if (v10)
    {
      if (retainCopy)
      {
        CFRetain(surface);
      }

      v10->_ioSurface = surface;
      objc_storeStrong(&v10->_startOffset, offset);
    }

    self = v10;
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
  ioSurface = [(_ANEIOSurfaceObject *)self ioSurface];
  startOffset = [(_ANEIOSurfaceObject *)self startOffset];
  v8 = [v3 stringWithFormat:@"%@: { ioSurface=%p  startOffset=%lu }", v5, ioSurface, objc_msgSend(startOffset, "unsignedIntegerValue")];;

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [(_ANEIOSurfaceObject *)self ioSurface])
  {
    XPCObject = IOSurfaceCreateXPCObject([(_ANEIOSurfaceObject *)self ioSurface]);
    [coderCopy encodeXPCObject:XPCObject forKey:@"_ANEIOSurface"];
  }
}

- (_ANEIOSurfaceObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [coderCopy decodeXPCObjectForKey:@"_ANEIOSurface"];
    selfCopy = v5;
    if (v5)
    {
      v7 = IOSurfaceLookupFromXPCObject(v5);
      self = [(_ANEIOSurfaceObject *)self initWithIOSurface:v7 startOffset:&unk_1F22544A0 shouldRetain:1];
      CFRelease(v7);

      selfCopy = self;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end