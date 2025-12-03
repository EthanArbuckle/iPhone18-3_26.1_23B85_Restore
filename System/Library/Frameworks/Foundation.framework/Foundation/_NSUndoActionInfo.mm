@interface _NSUndoActionInfo
- (_NSUndoActionInfo)initWithCoder:(id)coder;
- (_NSUndoActionInfo)initWithUUID:(id)d name:(id)name discardable:(BOOL)discardable;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _NSUndoActionInfo

- (_NSUndoActionInfo)initWithUUID:(id)d name:(id)name discardable:(BOOL)discardable
{
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = _NSUndoActionInfo;
  v8 = [(_NSUndoActionInfo *)&v10 init];
  if (v8)
  {
    v8->_uuid = [d copy];
    v8->_name = [name copy];
    v8->_discardable = discardable;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"_NSUndoActionInfo cannot be encoded by non-keyed archivers" userInfo:0]);
  }

  [coder encodeObject:self->_uuid forKey:@"NSUUID"];
  [coder encodeObject:self->_name forKey:@"NSName"];
  discardable = self->_discardable;

  [coder encodeBool:discardable forKey:@"NSDiscardable"];
}

- (_NSUndoActionInfo)initWithCoder:(id)coder
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"_NSUndoActionInfo cannot be decoded by non-keyed archivers" userInfo:0]);
  }

  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [coder decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, objc_opt_class(), 0), @"NSName"}];
  if (v7)
  {
    if ((_NSIsNSString() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v17 = @"NSDebugDescription";
        v18[0] = @"Invalid value for key 'NSName'";
        v12 = MEMORY[0x1E695DF20];
        v13 = v18;
        v14 = &v17;
        goto LABEL_12;
      }
    }
  }

  v8 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSUUID"];
  if (!v8 || (v9 = v8, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v15 = @"NSDebugDescription";
    v16 = @"Missing required key 'NSUUID'";
    v12 = MEMORY[0x1E695DF20];
    v13 = &v16;
    v14 = &v15;
LABEL_12:
    [coder failWithError:{+[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 4864, objc_msgSend(v12, "dictionaryWithObjects:forKeys:count:", v13, v14, 1))}];
    return 0;
  }

  v10 = [coder decodeBoolForKey:@"NSDiscardable"];

  return [(_NSUndoActionInfo *)self initWithUUID:v9 name:v7 discardable:v10];
}

- (id)description
{
  if (self->_discardable)
  {
    v2 = @"YES";
  }

  else
  {
    v2 = @"NO";
  }

  return [NSString stringWithFormat:@"_NSUndoActionInfo<%p>{ uuid = %@, name = %@, discardable = %@ }", self, self->_uuid, self->_name, v2];
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = _NSUndoActionInfo;
  [(_NSUndoActionInfo *)&v3 dealloc];
}

@end