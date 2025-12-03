@interface NSConcretePointerFunctions
+ (BOOL)initializeSlice:(NSSlice *)slice withOptions:(unint64_t)options;
+ (void)initializeBackingStore:(NSSlice *)store sentinel:(BOOL)sentinel weakAutoreleasing:(BOOL)autoreleasing dynamic:(BOOL)dynamic;
- (NSConcretePointerFunctions)initWithOptions:(unint64_t)options;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)setHashFunction:(void *)function;
- (void)setIsEqualFunction:(void *)function;
- (void)setUsesStrongWriteBarrier:(BOOL)barrier;
- (void)setUsesWeakReadAndWriteBarriers:(BOOL)barriers;
@end

@implementation NSConcretePointerFunctions

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  NSSliceDealloc(&self->slice);
  v3.receiver = self;
  v3.super_class = NSConcretePointerFunctions;
  [(NSConcretePointerFunctions *)&v3 dealloc];
}

+ (void)initializeBackingStore:(NSSlice *)store sentinel:(BOOL)sentinel weakAutoreleasing:(BOOL)autoreleasing dynamic:(BOOL)dynamic
{
  acquisitionProps = store->acquisitionProps;
  if (*(acquisitionProps + 1) == 1)
  {
    v8 = &weakBarriers;
    v9 = *(acquisitionProps + 2);
    if (autoreleasing)
    {
      v8 = &weakBarriersAutoreleasing;
      v10 = &weakBarriersSentinelAutoreleasing;
    }

    else
    {
      v10 = &weakBarriersSentinel;
    }

    if (sentinel)
    {
      v8 = v10;
    }

    if (v9 == 1)
    {
      v11 = v8;
    }

    else
    {
      v11 = &noWriteBarriers;
    }

    if (!dynamic)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v11 = &noWriteBarriers;
    if (!dynamic)
    {
LABEL_11:
      store->internalProps = v11;
      return;
    }
  }

  v12 = malloc_type_malloc(0x40uLL, 0x1080040E27AD052uLL);
  v13 = *v11;
  v14 = v11[1];
  v15 = v11[3];
  *(v12 + 2) = v11[2];
  *(v12 + 3) = v15;
  *v12 = v13;
  *(v12 + 1) = v14;
  internalProps = store->internalProps;
  if (internalProps)
  {
    free(internalProps);
  }

  store->internalProps = v12;
}

+ (BOOL)initializeSlice:(NSSlice *)slice withOptions:(unint64_t)options
{
  optionsCopy = options;
  slice->items = 0;
  v6 = options & 0xFF00;
  v7 = options & 0xFFFFFFFFFFFF0000;
  if (_CFExecutableLinkedOnOrAfter())
  {
    if (v7 == 0x10000 && (v6 == 256 || optionsCopy <= 5u && ((1 << optionsCopy) & 0x26) != 0))
    {
      v8 = "fails due to copyin with opaque personality or opaque or weak memory";
LABEL_13:
      NSLog(@"*** An unsupported PointerFunctions configuration was requested, probably for use by NSMapTable, NSHashTable, or NSPointerArray.  The requested configuration %s", v8);
      return 0;
    }

    if ((optionsCopy & 0xFD00) == 0 && (optionsCopy > 6u || ((1 << optionsCopy) & 0x67) == 0))
    {
      v8 = "fails due to objects with none of strong, weak, or opaque memory\n";
      goto LABEL_13;
    }

    if (v6 == 1280 && optionsCopy != 2)
    {
      v8 = "fails due to integer personality not using opaque memory\n";
      goto LABEL_13;
    }
  }

  result = 0;
  if (optionsCopy <= 2u)
  {
    if (optionsCopy)
    {
      if (optionsCopy == 1)
      {
        v10 = &initializeSlice_withOptions__zeroingWeakMemory;
        goto LABEL_36;
      }

      if (optionsCopy != 2)
      {
        return result;
      }
    }

    else
    {
      if (v7 == 0x10000)
      {
        if (v6 == 512)
        {
          v10 = &initializeSlice_withOptions__strongMemory_copyObjectPointers;
        }

        else
        {
          if (v6)
          {
            v8 = "fails due to strong copyin not used with objects\n";
            goto LABEL_13;
          }

          v10 = &initializeSlice_withOptions__strongMemory_copyObjects;
        }

        goto LABEL_36;
      }

      if (v6 == 512)
      {
        v10 = &initializeSlice_withOptions__strongMemory_objectPointers;
        goto LABEL_36;
      }

      if (!v6)
      {
        v10 = &initializeSlice_withOptions__strongMemory_objects;
        goto LABEL_36;
      }
    }

    v10 = &initializeSlice_withOptions__opaqueMemory;
    goto LABEL_36;
  }

  if (optionsCopy > 4u)
  {
    if (optionsCopy == 5)
    {
      v10 = &initializeSlice_withOptions__weakAutoreleasingMemory;
    }

    else
    {
      if (optionsCopy != 6)
      {
        return result;
      }

      v10 = &initializeSlice_withOptions__weakNonautoreleasingMemory;
    }
  }

  else
  {
    if (optionsCopy == 3)
    {
      v10 = &initializeSlice_withOptions__mallocMemory;
      v11 = &initializeSlice_withOptions__mallocMemory_copy;
    }

    else
    {
      if (optionsCopy != 4)
      {
        return result;
      }

      v10 = &initializeSlice_withOptions__machMemory;
      v11 = &initializeSlice_withOptions__machMemory_copy;
    }

    if (v7 == 0x10000)
    {
      v10 = v11;
    }
  }

LABEL_36:
  slice->acquisitionProps = v10;
  result = 0;
  if (HIBYTE(optionsCopy) > 2u)
  {
    switch(HIBYTE(optionsCopy))
    {
      case 3u:
        v12 = &initializeSlice_withOptions__cStringPers;
        break;
      case 4u:
        v12 = &initializeSlice_withOptions__structPers;
        break;
      case 5u:
        v12 = &initializeSlice_withOptions__intPers;
        break;
      default:
        return result;
    }
  }

  else
  {
    if (!HIBYTE(optionsCopy))
    {
LABEL_40:
      if (v6)
      {
        v12 = &initializeSlice_withOptions__objectPtrPers;
      }

      else
      {
        v12 = &initializeSlice_withOptions__objectPers;
      }

      goto LABEL_50;
    }

    if (HIBYTE(optionsCopy) != 1)
    {
      if (HIBYTE(optionsCopy) != 2)
      {
        return result;
      }

      goto LABEL_40;
    }

    v12 = &initializeSlice_withOptions__opaquePers;
  }

LABEL_50:
  slice->personalityProps = v12;
  return 1;
}

- (NSConcretePointerFunctions)initWithOptions:(unint64_t)options
{
  v6 = *MEMORY[0x1E69E9840];
  memset(v5, 0, sizeof(v5));
  if (([objc_opt_class() initializeSlice:v5 withOptions:options] & 1) != 0 || !_CFExecutableLinkedOnOrAfter())
  {
    NSSliceInitWithSlice(&self->slice.items, v5);
  }

  else
  {
    NSLog(@"*** An unsupported PointerFunctions configuration was requested, probably for use by NSMapTable, NSHashTable, or NSPointerArray.  The requested configuration %s", "would create only a partially initialized NSPointerFunctions object");
    NSDeallocateObject(self);
    return 0;
  }

  return self;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [NSConcretePointerFunctions alloc];
  NSSliceInitWithSlice(&v4->slice.items, &self->slice.items);
  return v4;
}

- (void)setHashFunction:(void *)function
{
  personalityProps = self->slice.personalityProps;
  *(personalityProps + 2) = function;
  *personalityProps = 0;
}

- (void)setIsEqualFunction:(void *)function
{
  personalityProps = self->slice.personalityProps;
  *(personalityProps + 3) = function;
  *personalityProps = 0;
}

- (void)setUsesStrongWriteBarrier:(BOOL)barrier
{
  acquisitionProps = self->slice.acquisitionProps;
  *(acquisitionProps + 1) = 0;
  *acquisitionProps = barrier;
}

- (void)setUsesWeakReadAndWriteBarriers:(BOOL)barriers
{
  acquisitionProps = self->slice.acquisitionProps;
  *acquisitionProps = 0;
  *(acquisitionProps + 1) = barriers;
}

@end