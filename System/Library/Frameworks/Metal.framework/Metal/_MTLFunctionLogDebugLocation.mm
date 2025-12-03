@interface _MTLFunctionLogDebugLocation
- (NSString)functionName;
- (_MTLFunctionLogDebugLocation)initWithDebugLocation:(id)location;
- (void)dealloc;
@end

@implementation _MTLFunctionLogDebugLocation

- (_MTLFunctionLogDebugLocation)initWithDebugLocation:(id)location
{
  v8.receiver = self;
  v8.super_class = _MTLFunctionLogDebugLocation;
  v4 = [(_MTLFunctionLogDebugLocation *)&v8 init];
  locationCopy = location;
  v4->_debugLocation = locationCopy;
  filename = [(MTLDebugSubProgram *)[(MTLDebugLocation *)locationCopy scope] filename];
  if (filename)
  {
    v4->_URL = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:filename];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _MTLFunctionLogDebugLocation;
  [(_MTLFunctionLogDebugLocation *)&v3 dealloc];
}

- (NSString)functionName
{
  scope = [(MTLDebugLocation *)self->_debugLocation scope];

  return [(MTLDebugSubProgram *)scope name];
}

@end