@interface BKSAnimationFenceHandle
+ (id)newFenceHandleForCAFenceHandle:(id)a3;
+ (id)newFenceHandleForContext:(id)a3;
- (BKSAnimationFenceHandle)init;
- (BKSAnimationFenceHandle)initWithBSXPCCoder:(id)a3;
- (BKSAnimationFenceHandle)initWithCoder:(id)a3;
- (BKSAnimationFenceHandle)initWithXPCDictionary:(id)a3;
- (id)_initWithCAFenceHandle:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unsigned)CAPort;
- (void)dealloc;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation BKSAnimationFenceHandle

- (void)dealloc
{
  [(CAFenceHandle *)self->_caFence invalidate];
  v3.receiver = self;
  v3.super_class = BKSAnimationFenceHandle;
  [(BKSAnimationFenceHandle *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [BKSAnimationFenceHandle alloc];
  v6 = [(CAFenceHandle *)self->_caFence copyWithZone:a3];
  v7 = [(BKSAnimationFenceHandle *)v5 _initWithCAFenceHandle:v6];

  return v7;
}

- (BKSAnimationFenceHandle)initWithCoder:(id)a3
{
  v4 = a3;
  getCAFenceHandleClass();
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"f"];

  v6 = [(BKSAnimationFenceHandle *)self _initWithCAFenceHandle:v5];
  return v6;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v5 = a3;
  v4 = [(CAFenceHandle *)self->_caFence createXPCRepresentation];
  if (v4)
  {
    [v5 encodeXPCObject:v4 forKey:@"f"];
  }
}

- (BKSAnimationFenceHandle)initWithBSXPCCoder:(id)a3
{
  v4 = [a3 decodeXPCObjectOfType:MEMORY[0x1E69E9E80] forKey:@"f"];
  v5 = [getCAFenceHandleClass() handleFromXPCRepresentation:v4];
  v6 = [(BKSAnimationFenceHandle *)self _initWithCAFenceHandle:v5];

  return v6;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  v4 = a3;
  if (v4)
  {
    xdict = v4;
    v5 = [(CAFenceHandle *)self->_caFence createXPCRepresentation];
    if (v5)
    {
      xpc_dictionary_set_value(xdict, "f", v5);
    }

    v4 = xdict;
  }
}

- (BKSAnimationFenceHandle)initWithXPCDictionary:(id)a3
{
  v4 = a3;
  CAFenceHandleClass = getCAFenceHandleClass();
  if (v4)
  {
    v6 = xpc_dictionary_get_value(v4, "f");
  }

  else
  {
    v6 = 0;
  }

  v7 = [CAFenceHandleClass handleFromXPCRepresentation:v6];
  v8 = [(BKSAnimationFenceHandle *)self _initWithCAFenceHandle:v7];

  if (v4)
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

- (id)_initWithCAFenceHandle:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BKSAnimationFenceHandle;
  v6 = [(BKSAnimationFenceHandle *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_caFence, a3);
  }

  return v7;
}

- (BKSAnimationFenceHandle)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"BKSAnimationFence.m" lineNumber:27 description:{@"you can't instantiate %@ directly", objc_opt_class()}];

  return 0;
}

+ (id)newFenceHandleForCAFenceHandle:(id)a3
{
  v3 = a3;
  v4 = [[BKSAnimationFenceHandle alloc] _initWithCAFenceHandle:v3];

  return v4;
}

+ (id)newFenceHandleForContext:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"BKSAnimationFence.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"context"}];
  }

  v6 = [getCAFenceHandleClass() newFenceFromDefaultServer];
  [v5 addFence:v6];
  v7 = [BKSAnimationFenceHandle newFenceHandleForCAFenceHandle:v6];

  return v7;
}

@end