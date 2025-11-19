@interface _MTLFunctionLogDebugLocation
- (NSString)functionName;
- (_MTLFunctionLogDebugLocation)initWithDebugLocation:(id)a3;
- (void)dealloc;
@end

@implementation _MTLFunctionLogDebugLocation

- (_MTLFunctionLogDebugLocation)initWithDebugLocation:(id)a3
{
  v8.receiver = self;
  v8.super_class = _MTLFunctionLogDebugLocation;
  v4 = [(_MTLFunctionLogDebugLocation *)&v8 init];
  v5 = a3;
  v4->_debugLocation = v5;
  v6 = [(MTLDebugSubProgram *)[(MTLDebugLocation *)v5 scope] filename];
  if (v6)
  {
    v4->_URL = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v6];
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
  v2 = [(MTLDebugLocation *)self->_debugLocation scope];

  return [(MTLDebugSubProgram *)v2 name];
}

@end