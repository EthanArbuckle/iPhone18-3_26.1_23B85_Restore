@interface _SwiftUIProxyImage
- (_SwiftUIProxyImage)initWithCoder:(id)a3;
- (id)initWithCGImage:(CGColorSpace *)a3 colorSpace:;
- (id)replacementObjectForCoder:(id)a3;
- (void)CA_copyRenderValue;
- (void)CA_copyRenderValueWithColorspace:(CGColorSpace *)a3;
- (void)CA_prepareRenderValue;
- (void)dealloc;
- (void)finish;
- (void)prepare;
- (void)schedule;
@end

@implementation _SwiftUIProxyImage

- (void)schedule
{
  if (a1)
  {
    v1 = a1;
    v2 = *(a1 + 24);
    if ((atomic_load_explicit(&qword_1ED5515D8, memory_order_acquire) & 1) == 0)
    {
      v5 = v1;
      v6 = v2;
      v3 = __cxa_guard_acquire(&qword_1ED5515D8);
      v1 = v5;
      v2 = v6;
      if (v3)
      {
        v4 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x1E69E96A8], QOS_CLASS_USER_INTERACTIVE, 0);
        _MergedGlobals = dispatch_queue_create("com.apple.SwiftUI.prepare-image", v4);

        __cxa_guard_release(&qword_1ED5515D8);
        v1 = v5;
        v2 = v6;
      }
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __30___SwiftUIProxyImage_schedule__block_invoke;
    block[3] = &unk_1E72422E0;
    block[4] = v1;
    dispatch_group_async(v2, _MergedGlobals, block);
  }
}

- (void)prepare
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    if (WeakRetained)
    {
      [WeakRetained CA_copyRenderValueWithColorspace:*(a1 + 16)];
      CARenderRelease();
    }
  }
}

- (void)finish
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 32));
    v2 = *(a1 + 24);
    os_unfair_lock_unlock((a1 + 32));
    if (v2)
    {
      dispatch_group_wait(*(a1 + 24), 0xFFFFFFFFFFFFFFFFLL);
      os_unfair_lock_lock((a1 + 32));
      v3 = *(a1 + 24);
      *(a1 + 24) = 0;

      os_unfair_lock_unlock((a1 + 32));
    }
  }
}

- (void)CA_copyRenderValue
{
  [(_SwiftUIProxyImage *)self finish];
  WeakRetained = objc_loadWeakRetained(&self->_image);
  v4 = [WeakRetained CA_copyRenderValue];

  return v4;
}

- (void)CA_prepareRenderValue
{
  [(_SwiftUIProxyImage *)self finish];
  WeakRetained = objc_loadWeakRetained(&self->_image);
  [WeakRetained CA_prepareRenderValue];
}

- (void)dealloc
{
  CGColorSpaceRelease(self->_color_space);
  v3.receiver = self;
  v3.super_class = _SwiftUIProxyImage;
  [(_SwiftUIProxyImage *)&v3 dealloc];
}

- (id)initWithCGImage:(CGColorSpace *)a3 colorSpace:
{
  if (!a1)
  {
    return 0;
  }

  v10.receiver = a1;
  v10.super_class = _SwiftUIProxyImage;
  v5 = objc_msgSendSuper2(&v10, sel_init);
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(v5 + 1, a2);
    v6[2] = CGColorSpaceRetain(a3);
    v7 = dispatch_group_create();
    v8 = v6[3];
    v6[3] = v7;
  }

  return v6;
}

- (void)CA_copyRenderValueWithColorspace:(CGColorSpace *)a3
{
  [(_SwiftUIProxyImage *)self finish];
  WeakRetained = objc_loadWeakRetained(&self->_image);
  v6 = [WeakRetained CA_copyRenderValueWithColorspace:a3];

  return v6;
}

- (id)replacementObjectForCoder:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_image);

  return WeakRetained;
}

- (_SwiftUIProxyImage)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = _SwiftUIProxyImage;

  return 0;
}

@end