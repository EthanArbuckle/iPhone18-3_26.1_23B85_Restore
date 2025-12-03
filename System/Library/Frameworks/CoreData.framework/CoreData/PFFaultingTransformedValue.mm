@interface PFFaultingTransformedValue
+ (void)initialize;
+ (void)transformedValueWithData:(uint64_t)data forAttribute:;
- (PFFaultingTransformedValue)initWithStorage:(id)storage attribute:(id)attribute;
- (id)copyWithZone:(_NSZone *)zone;
- (id)valueWithRegistry:(uint64_t)registry;
- (os_unfair_lock_s)setValue:(os_unfair_lock_s *)result;
- (void)dealloc;
@end

@implementation PFFaultingTransformedValue

- (void)dealloc
{
  self->_storage = 0;

  self->_attributeDescription = 0;
  v3.receiver = self;
  v3.super_class = PFFaultingTransformedValue;
  [(PFFaultingTransformedValue *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    PFFaultingTransformedValue_Encoded = objc_allocateClassPair(self, "PFFaultingTransformedValue_Encoded", 0);
    objc_registerClassPair(PFFaultingTransformedValue_Encoded);
    PFFaultingTransformedValue_Decoded = objc_allocateClassPair(self, "PFFaultingTransformedValue_Decoded", 0);
    objc_registerClassPair(PFFaultingTransformedValue_Decoded);
    ClassPair = objc_allocateClassPair(self, "PFFaultingTransformedValue_Decoded_Dirty", 0);
    PFFaultingTransformedValue_Decoded_Dirty = ClassPair;

    objc_registerClassPair(ClassPair);
  }
}

- (PFFaultingTransformedValue)initWithStorage:(id)storage attribute:(id)attribute
{
  v9.receiver = self;
  v9.super_class = PFFaultingTransformedValue;
  v6 = [(PFFaultingTransformedValue *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    v6->_storage = storage;
    v7->_attributeDescription = attribute;
  }

  return v7;
}

+ (void)transformedValueWithData:(uint64_t)data forAttribute:
{
  objc_opt_self();
  v5 = [[PFFaultingTransformedValue_Encoded alloc] initWithStorage:a2 attribute:data];
  object_setClass(v5, PFFaultingTransformedValue_Encoded);
  if ((byte_1ED4BEECF & 1) == 0)
  {
    [(PFFaultingTransformedValue *)v5 valueWithRegistry:?];
  }

  return v5;
}

- (id)valueWithRegistry:(uint64_t)registry
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (registry)
  {
    os_unfair_lock_lock((registry + 8));
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v12 = __48__PFFaultingTransformedValue_valueWithRegistry___block_invoke;
    v13 = &unk_1E6EC16F0;
    registryCopy = registry;
    if (object_getClass(registry) == PFFaultingTransformedValue_Encoded)
    {
      if ([*(registry + 24) attributeType] == 2200)
      {
        v10 = 0;
        v4 = [*(registry + 24) decode:*(registry + 16) withRegistry:a2 error:&v10];
        if (!v4)
        {
          v5 = MEMORY[0x1E695DF30];
          v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to decode for %@: %@", *(registry + 24), v10];
          v15 = *MEMORY[0x1E696AA08];
          v16[0] = v10;
          v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
          objc_exception_throw([v5 exceptionWithName:*MEMORY[0x1E695D940] reason:v6 userInfo:v7]);
        }
      }

      else
      {
        v4 = [_PFRoutines retainedDecodeValue:*(registry + 24) forTransformableAttribute:?];
      }

      *(registry + 16) = v4;
      object_setClass(registry, PFFaultingTransformedValue_Decoded);
    }

    else
    {
      v4 = *(registry + 16);
    }

    v12(v11);
  }

  else
  {
    v4 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v4;
}

- (os_unfair_lock_s)setValue:(os_unfair_lock_s *)result
{
  if (result)
  {
    v3 = result;
    os_unfair_lock_lock(result + 2);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v5 = __39__PFFaultingTransformedValue_setValue___block_invoke;
    v6 = &unk_1E6EC16F0;
    v7 = v3;
    object_setClass(v3, PFFaultingTransformedValue_Decoded_Dirty);

    v3[2] = a2;
    return (v5)(v4);
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  os_unfair_lock_lock(&self->_lock);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v8 = __43__PFFaultingTransformedValue_copyWithZone___block_invoke;
  v9 = &unk_1E6EC16F0;
  selfCopy = self;
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5[2] = self->_storage;
  v5[3] = self->_attributeDescription;
  v8(v7);
  return v5;
}

@end