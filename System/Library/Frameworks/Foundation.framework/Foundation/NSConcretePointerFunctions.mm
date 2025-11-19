@interface NSConcretePointerFunctions
+ (BOOL)initializeSlice:(NSSlice *)a3 withOptions:(unint64_t)a4;
+ (void)initializeBackingStore:(NSSlice *)a3 sentinel:(BOOL)a4 weakAutoreleasing:(BOOL)a5 dynamic:(BOOL)a6;
- (NSConcretePointerFunctions)initWithOptions:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)setHashFunction:(void *)a3;
- (void)setIsEqualFunction:(void *)a3;
- (void)setUsesStrongWriteBarrier:(BOOL)a3;
- (void)setUsesWeakReadAndWriteBarriers:(BOOL)a3;
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

+ (void)initializeBackingStore:(NSSlice *)a3 sentinel:(BOOL)a4 weakAutoreleasing:(BOOL)a5 dynamic:(BOOL)a6
{
  acquisitionProps = a3->acquisitionProps;
  if (*(acquisitionProps + 1) == 1)
  {
    v8 = &weakBarriers;
    v9 = *(acquisitionProps + 2);
    if (a5)
    {
      v8 = &weakBarriersAutoreleasing;
      v10 = &weakBarriersSentinelAutoreleasing;
    }

    else
    {
      v10 = &weakBarriersSentinel;
    }

    if (a4)
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

    if (!a6)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v11 = &noWriteBarriers;
    if (!a6)
    {
LABEL_11:
      a3->internalProps = v11;
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
  internalProps = a3->internalProps;
  if (internalProps)
  {
    free(internalProps);
  }

  a3->internalProps = v12;
}

+ (BOOL)initializeSlice:(NSSlice *)a3 withOptions:(unint64_t)a4
{
  v4 = a4;
  a3->items = 0;
  v6 = a4 & 0xFF00;
  v7 = a4 & 0xFFFFFFFFFFFF0000;
  if (_CFExecutableLinkedOnOrAfter())
  {
    if (v7 == 0x10000 && (v6 == 256 || v4 <= 5u && ((1 << v4) & 0x26) != 0))
    {
      v8 = "fails due to copyin with opaque personality or opaque or weak memory";
LABEL_13:
      NSLog(@"*** An unsupported PointerFunctions configuration was requested, probably for use by NSMapTable, NSHashTable, or NSPointerArray.  The requested configuration %s", v8);
      return 0;
    }

    if ((v4 & 0xFD00) == 0 && (v4 > 6u || ((1 << v4) & 0x67) == 0))
    {
      v8 = "fails due to objects with none of strong, weak, or opaque memory\n";
      goto LABEL_13;
    }

    if (v6 == 1280 && v4 != 2)
    {
      v8 = "fails due to integer personality not using opaque memory\n";
      goto LABEL_13;
    }
  }

  result = 0;
  if (v4 <= 2u)
  {
    if (v4)
    {
      if (v4 == 1)
      {
        v10 = &initializeSlice_withOptions__zeroingWeakMemory;
        goto LABEL_36;
      }

      if (v4 != 2)
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

  if (v4 > 4u)
  {
    if (v4 == 5)
    {
      v10 = &initializeSlice_withOptions__weakAutoreleasingMemory;
    }

    else
    {
      if (v4 != 6)
      {
        return result;
      }

      v10 = &initializeSlice_withOptions__weakNonautoreleasingMemory;
    }
  }

  else
  {
    if (v4 == 3)
    {
      v10 = &initializeSlice_withOptions__mallocMemory;
      v11 = &initializeSlice_withOptions__mallocMemory_copy;
    }

    else
    {
      if (v4 != 4)
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
  a3->acquisitionProps = v10;
  result = 0;
  if (HIBYTE(v4) > 2u)
  {
    switch(HIBYTE(v4))
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
    if (!HIBYTE(v4))
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

    if (HIBYTE(v4) != 1)
    {
      if (HIBYTE(v4) != 2)
      {
        return result;
      }

      goto LABEL_40;
    }

    v12 = &initializeSlice_withOptions__opaquePers;
  }

LABEL_50:
  a3->personalityProps = v12;
  return 1;
}

- (NSConcretePointerFunctions)initWithOptions:(unint64_t)a3
{
  v6 = *MEMORY[0x1E69E9840];
  memset(v5, 0, sizeof(v5));
  if (([objc_opt_class() initializeSlice:v5 withOptions:a3] & 1) != 0 || !_CFExecutableLinkedOnOrAfter())
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [NSConcretePointerFunctions alloc];
  NSSliceInitWithSlice(&v4->slice.items, &self->slice.items);
  return v4;
}

- (void)setHashFunction:(void *)a3
{
  personalityProps = self->slice.personalityProps;
  *(personalityProps + 2) = a3;
  *personalityProps = 0;
}

- (void)setIsEqualFunction:(void *)a3
{
  personalityProps = self->slice.personalityProps;
  *(personalityProps + 3) = a3;
  *personalityProps = 0;
}

- (void)setUsesStrongWriteBarrier:(BOOL)a3
{
  acquisitionProps = self->slice.acquisitionProps;
  *(acquisitionProps + 1) = 0;
  *acquisitionProps = a3;
}

- (void)setUsesWeakReadAndWriteBarriers:(BOOL)a3
{
  acquisitionProps = self->slice.acquisitionProps;
  *acquisitionProps = 0;
  *(acquisitionProps + 1) = a3;
}

@end