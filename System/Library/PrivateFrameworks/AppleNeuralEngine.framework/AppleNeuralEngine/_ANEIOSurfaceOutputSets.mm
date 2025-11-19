@interface _ANEIOSurfaceOutputSets
+ (id)objectWithstatsSurRef:(__IOSurface *)a3 outputBuffer:(id)a4;
- (_ANEIOSurfaceOutputSets)initWithCoder:(id)a3;
- (_ANEIOSurfaceOutputSets)initWithstatsSurRef:(__IOSurface *)a3 outputBuffer:(id)a4;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _ANEIOSurfaceOutputSets

+ (id)objectWithstatsSurRef:(__IOSurface *)a3 outputBuffer:(id)a4
{
  v6 = a4;
  v7 = [[a1 alloc] initWithstatsSurRef:a3 outputBuffer:v6];

  return v7;
}

- (_ANEIOSurfaceOutputSets)initWithstatsSurRef:(__IOSurface *)a3 outputBuffer:(id)a4
{
  v7 = a4;
  v8 = v7;
  v9 = 0;
  if (a3 && v7)
  {
    v13.receiver = self;
    v13.super_class = _ANEIOSurfaceOutputSets;
    v10 = [(_ANEIOSurfaceOutputSets *)&v13 init];
    v11 = v10;
    if (v10)
    {
      v10->_statsSurRef = a3;
      objc_storeStrong(&v10->_outputBuffer, a4);
    }

    self = v11;
    v9 = self;
  }

  return v9;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = _ANEIOSurfaceOutputSets;
  [(_ANEIOSurfaceOutputSets *)&v2 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(_ANEIOSurfaceOutputSets *)self statsSurRef];
  v7 = [(_ANEIOSurfaceOutputSets *)self outputBuffer];
  v8 = [v3 stringWithFormat:@"%@: { statsSurRef=%@  outputBuffer=%@}", v5, v6, v7];;

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  XPCObject = IOSurfaceCreateXPCObject([(_ANEIOSurfaceOutputSets *)self statsSurRef]);
  [v4 encodeXPCObject:XPCObject forKey:@"statsSurRef"];
  v5 = [(_ANEIOSurfaceOutputSets *)self outputBuffer];
  [v4 encodeObject:v5 forKey:@"outputs"];
}

- (_ANEIOSurfaceOutputSets)initWithCoder:(id)a3
{
  v14[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v7 = [v4 setWithArray:v6];

  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"outputs"];
  v9 = [v5 decodeXPCObjectForKey:@"statsSurRef"];

  if (v9)
  {
    v10 = IOSurfaceLookupFromXPCObject(v9);
    self = [(_ANEIOSurfaceOutputSets *)self initWithstatsSurRef:v10 outputBuffer:v8];
    CFRelease(v10);
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

@end