@interface _NSAuxiliaryUndoManagerReference
- (_NSAuxiliaryUndoManagerReference)initWithCoder:(id)a3;
- (id)_initWithEndpoint:(id)a3 manager:(id)a4;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _NSAuxiliaryUndoManagerReference

- (id)_initWithEndpoint:(id)a3 manager:(id)a4
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = _NSAuxiliaryUndoManagerReference;
  v6 = [(_NSAuxiliaryUndoManagerReference *)&v8 init];
  if (v6)
  {
    v6->_endpoint = a3;
    objc_storeWeak(&v6->_inProcessManager, a4);
  }

  return v6;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = _NSAuxiliaryUndoManagerReference;
  [(_NSAuxiliaryUndoManagerReference *)&v3 dealloc];
}

- (id)description
{
  if (objc_loadWeak(&self->_inProcessManager))
  {
    v3 = [NSString stringWithFormat:@"YES (%p)", objc_loadWeak(&self->_inProcessManager)];
  }

  else
  {
    v3 = @"NO";
  }

  return [NSString stringWithFormat:@"_NSAuxiliaryUndoManagerReference<%p> {endpoint = %@, in-process = %@}", self, self->_endpoint, v3];
}

- (void)encodeWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"_NSAuxiliaryUndoManagerReference cannot be encoded by non-keyed archivers" userInfo:0]);
  }

  endpoint = self->_endpoint;

  [a3 encodeObject:endpoint forKey:@"NSEndpoint"];
}

- (_NSAuxiliaryUndoManagerReference)initWithCoder:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"_NSAuxiliaryUndoManagerReference cannot be decoded by non-keyed archivers" userInfo:0]);
  }

  v5 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSEndpoint"];
  if (v5)
  {

    return [(_NSAuxiliaryUndoManagerReference *)self _initWithEndpoint:v5 manager:0];
  }

  else
  {
    v7 = @"NSDebugDescription";
    v8[0] = @"Missing required key 'NSEndpoint'";
    [a3 failWithError:{+[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 4864, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v8, &v7, 1))}];
    return 0;
  }
}

@end