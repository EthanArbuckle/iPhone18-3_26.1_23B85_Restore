@interface RPIOSurfaceObject
- (RPIOSurfaceObject)initWithCoder:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setIOSurface:(__IOSurface *)a3;
@end

@implementation RPIOSurfaceObject

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    ioSurface = self->_ioSurface;
    if (ioSurface)
    {
      XPCObject = IOSurfaceCreateXPCObject(ioSurface);
      [v6 encodeXPCObject:XPCObject forKey:@"ioSurface"];
    }
  }
}

- (RPIOSurfaceObject)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = RPIOSurfaceObject;
  v5 = [(RPIOSurfaceObject *)&v11 init];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v4 decodeXPCObjectForKey:@"ioSurface"];
      v7 = v6;
      if (v6)
      {
        v8 = IOSurfaceLookupFromXPCObject(v6);
        [(RPIOSurfaceObject *)v5 setIOSurface:v8];
        CFRelease(v8);
      }
    }

    v9 = v5;
  }

  return v5;
}

- (void)setIOSurface:(__IOSurface *)a3
{
  ioSurface = self->_ioSurface;
  if (ioSurface != a3)
  {
    if (ioSurface)
    {
      CFRelease(ioSurface);
    }

    self->_ioSurface = a3;
    if (a3)
    {

      CFRetain(a3);
    }
  }
}

- (void)dealloc
{
  ioSurface = self->_ioSurface;
  if (ioSurface)
  {
    CFRelease(ioSurface);
  }

  v4.receiver = self;
  v4.super_class = RPIOSurfaceObject;
  [(RPIOSurfaceObject *)&v4 dealloc];
}

@end