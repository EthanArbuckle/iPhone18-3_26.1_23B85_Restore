@interface BKSAnimationFenceHandle
+ (id)newFenceHandleForCAFenceHandle:(id)handle;
+ (id)newFenceHandleForContext:(id)context;
- (BKSAnimationFenceHandle)init;
- (BKSAnimationFenceHandle)initWithBSXPCCoder:(id)coder;
- (BKSAnimationFenceHandle)initWithCoder:(id)coder;
- (BKSAnimationFenceHandle)initWithXPCDictionary:(id)dictionary;
- (id)_initWithCAFenceHandle:(id)handle;
- (id)copyWithZone:(_NSZone *)zone;
- (unsigned)CAPort;
- (void)dealloc;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation BKSAnimationFenceHandle

- (void)dealloc
{
  [(CAFenceHandle *)self->_caFence invalidate];
  v3.receiver = self;
  v3.super_class = BKSAnimationFenceHandle;
  [(BKSAnimationFenceHandle *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [BKSAnimationFenceHandle alloc];
  v6 = [(CAFenceHandle *)self->_caFence copyWithZone:zone];
  v7 = [(BKSAnimationFenceHandle *)v5 _initWithCAFenceHandle:v6];

  return v7;
}

- (BKSAnimationFenceHandle)initWithCoder:(id)coder
{
  coderCopy = coder;
  getCAFenceHandleClass();
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"f"];

  v6 = [(BKSAnimationFenceHandle *)self _initWithCAFenceHandle:v5];
  return v6;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  createXPCRepresentation = [(CAFenceHandle *)self->_caFence createXPCRepresentation];
  if (createXPCRepresentation)
  {
    [coderCopy encodeXPCObject:createXPCRepresentation forKey:@"f"];
  }
}

- (BKSAnimationFenceHandle)initWithBSXPCCoder:(id)coder
{
  v4 = [coder decodeXPCObjectOfType:MEMORY[0x1E69E9E80] forKey:@"f"];
  v5 = [getCAFenceHandleClass() handleFromXPCRepresentation:v4];
  v6 = [(BKSAnimationFenceHandle *)self _initWithCAFenceHandle:v5];

  return v6;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    xdict = dictionaryCopy;
    createXPCRepresentation = [(CAFenceHandle *)self->_caFence createXPCRepresentation];
    if (createXPCRepresentation)
    {
      xpc_dictionary_set_value(xdict, "f", createXPCRepresentation);
    }

    dictionaryCopy = xdict;
  }
}

- (BKSAnimationFenceHandle)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  CAFenceHandleClass = getCAFenceHandleClass();
  if (dictionaryCopy)
  {
    v6 = xpc_dictionary_get_value(dictionaryCopy, "f");
  }

  else
  {
    v6 = 0;
  }

  v7 = [CAFenceHandleClass handleFromXPCRepresentation:v6];
  v8 = [(BKSAnimationFenceHandle *)self _initWithCAFenceHandle:v7];

  if (dictionaryCopy)
  {
  }

  return v8;
}

- (unsigned)CAPort
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  caFence = self->_caFence;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__BKSAnimationFenceHandle_CAPort__block_invoke;
  v5[3] = &unk_1E6F47060;
  v5[4] = &v6;
  [(CAFenceHandle *)caFence accessMachPort:v5];
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __33__BKSAnimationFenceHandle_CAPort__block_invoke(uint64_t result, int a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    *(*(*(result + 32) + 8) + 24) = a2;
  }

  return result;
}

- (id)_initWithCAFenceHandle:(id)handle
{
  handleCopy = handle;
  v9.receiver = self;
  v9.super_class = BKSAnimationFenceHandle;
  v6 = [(BKSAnimationFenceHandle *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_caFence, handle);
  }

  return v7;
}

- (BKSAnimationFenceHandle)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"BKSAnimationFence.m" lineNumber:27 description:{@"you can't instantiate %@ directly", objc_opt_class()}];

  return 0;
}

+ (id)newFenceHandleForCAFenceHandle:(id)handle
{
  handleCopy = handle;
  v4 = [[BKSAnimationFenceHandle alloc] _initWithCAFenceHandle:handleCopy];

  return v4;
}

+ (id)newFenceHandleForContext:(id)context
{
  contextCopy = context;
  if (!contextCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BKSAnimationFence.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"context"}];
  }

  newFenceFromDefaultServer = [getCAFenceHandleClass() newFenceFromDefaultServer];
  [contextCopy addFence:newFenceFromDefaultServer];
  v7 = [BKSAnimationFenceHandle newFenceHandleForCAFenceHandle:newFenceFromDefaultServer];

  return v7;
}

@end