@interface _ANEIOSurfaceOutputSets
+ (id)objectWithstatsSurRef:(__IOSurface *)ref outputBuffer:(id)buffer;
- (_ANEIOSurfaceOutputSets)initWithCoder:(id)coder;
- (_ANEIOSurfaceOutputSets)initWithstatsSurRef:(__IOSurface *)ref outputBuffer:(id)buffer;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _ANEIOSurfaceOutputSets

+ (id)objectWithstatsSurRef:(__IOSurface *)ref outputBuffer:(id)buffer
{
  bufferCopy = buffer;
  v7 = [[self alloc] initWithstatsSurRef:ref outputBuffer:bufferCopy];

  return v7;
}

- (_ANEIOSurfaceOutputSets)initWithstatsSurRef:(__IOSurface *)ref outputBuffer:(id)buffer
{
  bufferCopy = buffer;
  v8 = bufferCopy;
  selfCopy = 0;
  if (ref && bufferCopy)
  {
    v13.receiver = self;
    v13.super_class = _ANEIOSurfaceOutputSets;
    v10 = [(_ANEIOSurfaceOutputSets *)&v13 init];
    v11 = v10;
    if (v10)
    {
      v10->_statsSurRef = ref;
      objc_storeStrong(&v10->_outputBuffer, buffer);
    }

    self = v11;
    selfCopy = self;
  }

  return selfCopy;
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
  statsSurRef = [(_ANEIOSurfaceOutputSets *)self statsSurRef];
  outputBuffer = [(_ANEIOSurfaceOutputSets *)self outputBuffer];
  v8 = [v3 stringWithFormat:@"%@: { statsSurRef=%@  outputBuffer=%@}", v5, statsSurRef, outputBuffer];;

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  XPCObject = IOSurfaceCreateXPCObject([(_ANEIOSurfaceOutputSets *)self statsSurRef]);
  [coderCopy encodeXPCObject:XPCObject forKey:@"statsSurRef"];
  outputBuffer = [(_ANEIOSurfaceOutputSets *)self outputBuffer];
  [coderCopy encodeObject:outputBuffer forKey:@"outputs"];
}

- (_ANEIOSurfaceOutputSets)initWithCoder:(id)coder
{
  v14[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v7 = [v4 setWithArray:v6];

  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"outputs"];
  v9 = [coderCopy decodeXPCObjectForKey:@"statsSurRef"];

  if (v9)
  {
    v10 = IOSurfaceLookupFromXPCObject(v9);
    self = [(_ANEIOSurfaceOutputSets *)self initWithstatsSurRef:v10 outputBuffer:v8];
    CFRelease(v10);
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

@end