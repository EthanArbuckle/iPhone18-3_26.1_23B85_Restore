@interface _SwiftUIProxyImage
- (_SwiftUIProxyImage)initWithCoder:(id)coder;
- (id)initWithCGImage:(CGColorSpace *)image colorSpace:;
- (id)replacementObjectForCoder:(id)coder;
- (void)CA_copyRenderValue;
- (void)CA_copyRenderValueWithColorspace:(CGColorSpace *)colorspace;
- (void)CA_prepareRenderValue;
- (void)dealloc;
- (void)finish;
- (void)prepare;
- (void)schedule;
@end

@implementation _SwiftUIProxyImage

- (void)schedule
{
  if (self)
  {
    selfCopy = self;
    v2 = *(self + 24);
    if ((atomic_load_explicit(&qword_1ED5515D8, memory_order_acquire) & 1) == 0)
    {
      v5 = selfCopy;
      v6 = v2;
      v3 = __cxa_guard_acquire(&qword_1ED5515D8);
      selfCopy = v5;
      v2 = v6;
      if (v3)
      {
        v4 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x1E69E96A8], QOS_CLASS_USER_INTERACTIVE, 0);
        _MergedGlobals = dispatch_queue_create("com.apple.SwiftUI.prepare-image", v4);

        __cxa_guard_release(&qword_1ED5515D8);
        selfCopy = v5;
        v2 = v6;
      }
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __30___SwiftUIProxyImage_schedule__block_invoke;
    block[3] = &unk_1E72422E0;
    block[4] = selfCopy;
    dispatch_group_async(v2, _MergedGlobals, block);
  }
}

- (void)prepare
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 8));
    if (WeakRetained)
    {
      [WeakRetained CA_copyRenderValueWithColorspace:*(self + 16)];
      CARenderRelease();
    }
  }
}

- (void)finish
{
  if (self)
  {
    os_unfair_lock_lock((self + 32));
    v2 = *(self + 24);
    os_unfair_lock_unlock((self + 32));
    if (v2)
    {
      dispatch_group_wait(*(self + 24), 0xFFFFFFFFFFFFFFFFLL);
      os_unfair_lock_lock((self + 32));
      v3 = *(self + 24);
      *(self + 24) = 0;

      os_unfair_lock_unlock((self + 32));
    }
  }
}

- (void)CA_copyRenderValue
{
  [(_SwiftUIProxyImage *)self finish];
  WeakRetained = objc_loadWeakRetained(&self->_image);
  cA_copyRenderValue = [WeakRetained CA_copyRenderValue];

  return cA_copyRenderValue;
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

- (id)initWithCGImage:(CGColorSpace *)image colorSpace:
{
  if (!self)
  {
    return 0;
  }

  v10.receiver = self;
  v10.super_class = _SwiftUIProxyImage;
  v5 = objc_msgSendSuper2(&v10, sel_init);
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(v5 + 1, a2);
    v6[2] = CGColorSpaceRetain(image);
    v7 = dispatch_group_create();
    v8 = v6[3];
    v6[3] = v7;
  }

  return v6;
}

- (void)CA_copyRenderValueWithColorspace:(CGColorSpace *)colorspace
{
  [(_SwiftUIProxyImage *)self finish];
  WeakRetained = objc_loadWeakRetained(&self->_image);
  v6 = [WeakRetained CA_copyRenderValueWithColorspace:colorspace];

  return v6;
}

- (id)replacementObjectForCoder:(id)coder
{
  WeakRetained = objc_loadWeakRetained(&self->_image);

  return WeakRetained;
}

- (_SwiftUIProxyImage)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = _SwiftUIProxyImage;

  return 0;
}

@end