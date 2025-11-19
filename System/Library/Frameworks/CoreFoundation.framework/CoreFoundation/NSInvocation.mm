@interface NSInvocation
+ (id)_invocationWithMethodSignature:(id)a3 frame:(void *)a4;
- (SEL)selector;
- (id)copyWithZone:(_NSZone *)a3;
- (id)target;
- (uint64_t)_initWithMethodSignature:(const void *)a3 frame:(void *)a4 buffer:(size_t)a5 size:;
- (void)_addAttachedObject:(id)a3;
- (void)dealloc;
- (void)getArgument:(void *)argumentLocation atIndex:(NSInteger)idx;
- (void)invoke;
- (void)invokeUsingIMP:(IMP)imp;
- (void)invokeWithTarget:(id)target;
- (void)retainArguments;
- (void)setArgument:(void *)argumentLocation atIndex:(NSInteger)idx;
- (void)setSelector:(SEL)selector;
- (void)setTarget:(id)target;
@end

@implementation NSInvocation

- (void)invoke
{
  v28[1] = *MEMORY[0x1E69E9840];
  magic = self->_magic;
  if (magic_cookie_oGuard != -1)
  {
    [NSInvocation invoke];
  }

  if (magic != magic_cookie_oValue)
  {
    [NSInvocation invoke];
  }

  v28[0] = 0;
  [(NSInvocation *)self getArgument:v28 atIndex:0];
  if (v28[0])
  {
    v4 = [(NSMethodSignature *)self->_signature _frameDescriptor];
    var0 = v4->var0;
    if ((*(v4->var0 + 17) & 0x80) != 0 && !*(self->_frame + *(var0 + 28) + *(var0 + 32)))
    {
      __NSICreateBackingForArgumentIfNeeded(self, var0, -1, 0);
    }

    v6 = objc_lookUpClass("NSBlock");
    for (i = object_getClass(v28[0]); ; i = class_getSuperclass(i))
    {
      v8 = MEMORY[0x1E69E5918];
      if (!i)
      {
        goto LABEL_14;
      }

      if (i == v6)
      {
        break;
      }
    }

    v8 = *(v28[0] + 2);
    if (v8)
    {
      v9 = *(v28[0] + 2);
LABEL_14:
      v10 = v8;
      goto LABEL_15;
    }

    v10 = 0;
LABEL_15:
    [(NSMethodSignature *)self->_signature numberOfArguments];
    v11 = self->_magic;
    signature = self->_signature;
    objc_opt_class();
    v13 = [(NSMethodSignature *)self->_signature frameLength];
    if (v13)
    {
      if ((v13 & 7) != 0)
      {
        [NSInvocation invoke];
      }

      frame = self->_frame;
      v16 = 8;
      do
      {
        v17 = *frame++;
        --v16;
      }

      while (v16);
    }

    if (v14 != self->_pac_signature)
    {
      _NSIPoisoned();
    }

    v19 = self->_frame;
    retdata = self->_retdata;
    v20 = [(NSMethodSignature *)self->_signature frameLength];
    var24 = v4->var0->var24;
    __invoking___(v10, retdata, v19, v20);
    if (_CFExecutableLinkedOnOrAfter(5uLL))
    {
      if (self->_retainedArgs)
      {
        v22 = v4->var0;
        v23 = 8;
        if ((*(v4->var0 + 17) & 0x80) == 0)
        {
          v23 = 16;
        }

        v24 = *(&self->super.isa + v23);
        p_container = &self->_container;
LABEL_25:
        __NSI3(v22, v24, p_container, 1);
        while (1)
        {
          v4 = v4->var1;
          if (!v4)
          {
            break;
          }

          if ((WORD1(v4[1].var1) & 3) != 1)
          {
            v24 = self->_frame;
            p_container = &self->_container;
            v22 = v4;
            goto LABEL_25;
          }
        }
      }
    }

    else
    {
      v26 = 8;
      if ((*(v4->var0 + 17) & 0x80) == 0)
      {
        v26 = 16;
      }

      __NSI3(v4->var0, *(&self->super.isa + v26), &self->_container, 1);
    }
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  if (self->_stackAllocated == 1)
  {

    v3 = *MEMORY[0x1E69E9840];

    objc_destructInstance(self);
  }

  else
  {
    retdata = self->_retdata;
    if (retdata)
    {
      free(retdata);
    }

    self->_frame = 0;
    self->_retdata = 0;

    v6.receiver = self;
    v6.super_class = NSInvocation;
    [(NSInvocation *)&v6 dealloc];
    v5 = *MEMORY[0x1E69E9840];
  }
}

- (SEL)selector
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  [(NSInvocation *)self getArgument:v4 atIndex:1];
  result = v4[0];
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)retainArguments
{
  magic = self->_magic;
  if (magic_cookie_oGuard != -1)
  {
    [NSInvocation retainArguments];
  }

  if (magic != magic_cookie_oValue)
  {
    [NSInvocation retainArguments];
  }

  if (!self->_retainedArgs)
  {
    self->_retainedArgs = 1;
    [(NSMethodSignature *)self->_signature numberOfArguments];
    v4 = self->_magic;
    signature = self->_signature;
    objc_opt_class();
    v6 = [(NSMethodSignature *)self->_signature frameLength];
    if (v6)
    {
      if ((v6 & 7) != 0)
      {
        [NSInvocation retainArguments];
      }

      frame = self->_frame;
      v9 = 8;
      do
      {
        v10 = *frame++;
        --v9;
      }

      while (v9);
    }

    if (v7 != self->_pac_signature)
    {
      _NSIPoisoned();
    }

    v11 = [(NSMethodSignature *)self->_signature _frameDescriptor];
    __NSICreateBackingForArgumentIfNeeded(self, v11->var0, -1, 1);
    v12 = 8;
    if ((*(v11->var0 + 17) & 0x80) == 0)
    {
      v12 = 16;
    }

    __NSI3(v11->var0, *(&self->super.isa + v12), &self->_container, 1);
    var1 = v11->var1;
    if (var1)
    {
      v14 = 0;
      do
      {
        __NSICreateBackingForArgumentIfNeeded(self, var1, v14, 1);
        __NSI3(var1, self->_frame, &self->_container, 1);
        ++v14;
        var1 = *(var1 + 8);
      }

      while (var1);
    }

    [(NSMethodSignature *)self->_signature numberOfArguments];
    v15 = self->_magic;
    v16 = self->_signature;
    objc_opt_class();
    v17 = [(NSMethodSignature *)self->_signature frameLength];
    if (v17)
    {
      if ((v17 & 7) != 0)
      {
        [NSInvocation retainArguments];
      }

      v19 = self->_frame;
      v20 = 8;
      do
      {
        v21 = *v19++;
        --v20;
      }

      while (v20);
    }

    self->_pac_signature = v18;
  }
}

- (id)target
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  [(NSInvocation *)self getArgument:v4 atIndex:0];
  result = v4[0];
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)_initWithMethodSignature:(const void *)a3 frame:(void *)a4 buffer:(size_t)a5 size:
{
  if (a1)
  {
    if ([a2 frameLength] + 320 > a5)
    {
      __break(1u);
    }

    else
    {
      *(a1 + 24) = a2;
      *(a1 + 32) = 0;
      *(a1 + 16) = a4;
      bzero(a4, a5);
      *(a1 + 8) = *(a1 + 16) + 320;
      if (magic_cookie_oGuard != -1)
      {
        [NSInvocation _initWithMethodSignature:frame:buffer:size:];
      }

      *(a1 + 56) = magic_cookie_oValue;
      if (a3)
      {
        memmove(*(a1 + 8), a3, [a2 frameLength]);
      }

      *(a1 + 60) = 256;
      [*(a1 + 24) numberOfArguments];
      v10 = *(a1 + 56);
      v11 = *(a1 + 24);
      objc_opt_class();
      v12 = [*(a1 + 24) frameLength];
      if (!v12)
      {
        goto LABEL_11;
      }

      if ((v12 & 7) == 0)
      {
        v14 = *(a1 + 8);
        v15 = 8;
        do
        {
          v16 = *v14++;
          --v15;
        }

        while (v15);
LABEL_11:
        *(a1 + 48) = v13;
        return a1;
      }
    }

    [NSInvocation _initWithMethodSignature:frame:buffer:size:];
  }

  return a1;
}

+ (id)_invocationWithMethodSignature:(id)a3 frame:(void *)a4
{
  if (!a3)
  {
    v22 = __CFExceptionProem(a1, a2);
    v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: method signature argument cannot be nil", v22);
    goto LABEL_16;
  }

  v8 = [a3 frameLength];
  v9 = v8 + 320;
  if (((v8 >= 0xFFFFFFFFFFFFFEC0) << 63) >> 63 != v8 >= 0xFFFFFFFFFFFFFEC0)
  {
    v23 = __CFExceptionProem(a1, a2);
    v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"Overflow while allocating space for method signature %@", v23);
LABEL_16:
    v21 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v20), 0];
    objc_exception_throw(v21);
  }

  v10 = [a1 alloc];
  *(v10 + 3) = a3;
  v11 = malloc_type_calloc(1uLL, v9, 0xB800B753uLL);
  *(v10 + 1) = v11 + 320;
  *(v10 + 2) = v11;
  *(v10 + 4) = 0;
  if (magic_cookie_oGuard != -1)
  {
    +[NSInvocation _invocationWithMethodSignature:frame:];
  }

  *(v10 + 14) = magic_cookie_oValue;
  if (a4)
  {
    memmove(*(v10 + 1), a4, [a3 frameLength]);
  }

  *(v10 + 60) = 0;
  [*(v10 + 3) numberOfArguments];
  v12 = *(v10 + 14);
  v13 = *(v10 + 3);
  objc_opt_class();
  v14 = [*(v10 + 3) frameLength];
  if (v14)
  {
    if ((v14 & 7) != 0)
    {
      +[NSInvocation _invocationWithMethodSignature:frame:];
    }

    v16 = *(v10 + 1);
    v17 = 8;
    do
    {
      v18 = *v16++;
      --v17;
    }

    while (v17);
  }

  *(v10 + 6) = v15;

  return v10;
}

- (void)_addAttachedObject:(id)a3
{
  if (a3)
  {
    container = self->_container;
    if (!container)
    {
      container = objc_opt_new();
      self->_container = container;
    }

    [(NSMutableArray *)container addObject:a3];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  magic = self->_magic;
  if (magic_cookie_oGuard != -1)
  {
    [NSInvocation copyWithZone:];
  }

  if (magic != magic_cookie_oValue)
  {
    [NSInvocation copyWithZone:];
  }

  v5 = objc_alloc(objc_opt_class());
  *(v5 + 3) = self->_signature;
  v6 = malloc_type_calloc(1uLL, [(NSMethodSignature *)self->_signature frameLength]+ 320, 0xB98301C1uLL);
  *(v5 + 1) = v6 + 320;
  *(v5 + 2) = v6;
  *(v5 + 4) = 0;
  *(v5 + 14) = self->_magic;
  if (self->_retainedArgs)
  {
    [v5 retainArguments];
  }

  [(NSMethodSignature *)self->_signature numberOfArguments];
  v7 = self->_magic;
  signature = self->_signature;
  objc_opt_class();
  v9 = [(NSMethodSignature *)self->_signature frameLength];
  if (v9)
  {
    if ((v9 & 7) != 0)
    {
      [NSInvocation copyWithZone:];
    }

    frame = self->_frame;
    v12 = 8;
    do
    {
      v13 = *frame++;
      --v12;
    }

    while (v12);
  }

  if (v10 != self->_pac_signature)
  {
    _NSIPoisoned();
  }

  [*(v5 + 3) numberOfArguments];
  v14 = *(v5 + 14);
  v15 = *(v5 + 3);
  objc_opt_class();
  v16 = [*(v5 + 3) frameLength];
  if (v16)
  {
    if ((v16 & 7) != 0)
    {
      [NSInvocation copyWithZone:];
    }

    v18 = *(v5 + 1);
    v19 = 8;
    do
    {
      v20 = *v18++;
      --v19;
    }

    while (v19);
  }

  *(v5 + 6) = v17;
  return v5;
}

- (void)setTarget:(id)target
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = target;
  [(NSInvocation *)self setArgument:v4 atIndex:0];
  v3 = *MEMORY[0x1E69E9840];
}

- (void)setSelector:(SEL)selector
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = selector;
  [(NSInvocation *)self setArgument:v4 atIndex:1];
  v3 = *MEMORY[0x1E69E9840];
}

- (void)getArgument:(void *)argumentLocation atIndex:(NSInteger)idx
{
  retdata = self->_retdata;
  signature = self->_signature;
  frame = self->_frame;
  v10 = [(NSMethodSignature *)signature numberOfArguments];
  if (idx < -1 || v10 <= idx)
  {
    v12 = v10;
    v15 = __CFExceptionProem(self, sel_getArgument_atIndex_);
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: index (%ld) out of bounds [-1, %ld]", v15, idx, v12 - 1);
    goto LABEL_10;
  }

  if (!argumentLocation)
  {
    v16 = __CFExceptionProem(self, sel_getArgument_atIndex_);
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: NULL address argument", v16);
LABEL_10:
    v14 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13), 0];
    objc_exception_throw(v14);
  }

  v11 = [(NSMethodSignature *)signature _argInfo:idx];
  if ((idx & 0x8000000000000000) == 0 || (*(v11 + 34) & 0x80) != 0)
  {
    retdata = frame;
  }

  __NSI1(v11, retdata, argumentLocation, 1);
}

- (void)setArgument:(void *)argumentLocation atIndex:(NSInteger)idx
{
  v8 = [(NSMethodSignature *)self->_signature numberOfArguments];
  v9 = v8;
  if (idx < -1 || v8 <= idx)
  {
    v31 = __CFExceptionProem(self, a2);
    v29 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: index (%ld) out of bounds [-1, %ld]", v31, idx, v9 - 1);
    goto LABEL_28;
  }

  [(NSMethodSignature *)self->_signature numberOfArguments];
  magic = self->_magic;
  signature = self->_signature;
  objc_opt_class();
  v12 = [(NSMethodSignature *)self->_signature frameLength];
  if (v12)
  {
    if ((v12 & 7) != 0)
    {
      [NSInvocation setArgument:atIndex:];
    }

    frame = self->_frame;
    v15 = 8;
    do
    {
      v16 = *frame++;
      --v15;
    }

    while (v15);
  }

  if (v13 != self->_pac_signature)
  {
    _NSIPoisoned();
  }

  v17 = [(NSMethodSignature *)self->_signature _argInfo:idx];
  if (!argumentLocation)
  {
    v32 = __CFExceptionProem(self, a2);
    v29 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: NULL address argument", v32);
LABEL_28:
    v30 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v29), 0];
    objc_exception_throw(v30);
  }

  v18 = v17;
  if ((idx & 0x8000000000000000) == 0)
  {
    v19 = self->_frame;
LABEL_11:
    __NSICreateBackingForArgumentIfNeeded(self, v17, idx, 0);
    goto LABEL_16;
  }

  v20 = *(v17 + 17);
  v21 = 8;
  if ((v20 & 0x80) == 0)
  {
    v21 = 16;
  }

  v19 = *(&self->super.isa + v21);
  if ((v20 & 0x80) != 0 && !*(self->_frame + v17->var5 + v17->var6))
  {
    goto LABEL_11;
  }

LABEL_16:
  __NSI2(v18, v19, argumentLocation, 1);
  if (self->_retainedArgs || idx == -1 && !_CFExecutableLinkedOnOrAfter(5uLL))
  {
    __NSI3(v18, v19, &self->_container, 1);
  }

  [(NSMethodSignature *)self->_signature numberOfArguments];
  v22 = self->_magic;
  v23 = self->_signature;
  objc_opt_class();
  v24 = [(NSMethodSignature *)self->_signature frameLength];
  if (v24)
  {
    if ((v24 & 7) != 0)
    {
      [NSInvocation setArgument:atIndex:];
    }

    v26 = self->_frame;
    v27 = 8;
    do
    {
      v28 = *v26++;
      --v27;
    }

    while (v27);
  }

  self->_pac_signature = v25;
}

- (void)invokeUsingIMP:(IMP)imp
{
  v22[1] = *MEMORY[0x1E69E9840];
  magic = self->_magic;
  if (magic_cookie_oGuard != -1)
  {
    [NSInvocation invokeUsingIMP:];
  }

  if (magic != magic_cookie_oValue)
  {
    [NSInvocation invokeUsingIMP:];
  }

  v22[0] = 0;
  [(NSInvocation *)self getArgument:v22 atIndex:0];
  if (v22[0])
  {
    v6 = [(NSMethodSignature *)self->_signature _frameDescriptor];
    var0 = v6->var0;
    if ((*(v6->var0 + 17) & 0x80) != 0 && !*(self->_frame + *(var0 + 28) + *(var0 + 32)))
    {
      __NSICreateBackingForArgumentIfNeeded(self, var0, -1, 0);
    }

    [(NSMethodSignature *)self->_signature numberOfArguments];
    v8 = self->_magic;
    signature = self->_signature;
    objc_opt_class();
    v10 = [(NSMethodSignature *)self->_signature frameLength];
    if (v10)
    {
      if ((v10 & 7) != 0)
      {
        [NSInvocation invokeUsingIMP:];
      }

      frame = self->_frame;
      v13 = 8;
      do
      {
        v14 = *frame++;
        --v13;
      }

      while (v13);
    }

    if (v11 != self->_pac_signature)
    {
      _NSIPoisoned();
    }

    v16 = self->_frame;
    retdata = self->_retdata;
    v17 = [(NSMethodSignature *)self->_signature frameLength];
    var24 = v6->var0->var24;
    __invoking___(imp, retdata, v16, v17);
    if (self->_retainedArgs)
    {
      v19 = 8;
      if ((*(v6->var0 + 17) & 0x80) == 0)
      {
        v19 = 16;
      }

      __NSI3(v6->var0, *(&self->super.isa + v19), &self->_container, 1);
      for (i = v6->var1; i; i = i->var1)
      {
        if ((*(i + 17) & 3) != 1)
        {
          __NSI3(i, self->_frame, &self->_container, 1);
        }
      }
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)invokeWithTarget:(id)target
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = target;
  [(NSInvocation *)self setArgument:v5 atIndex:0];
  [(NSInvocation *)self invoke];
  v4 = *MEMORY[0x1E69E9840];
}

@end