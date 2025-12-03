@interface RawCameraCIImageProxy
- (RawCameraCIImageProxy)initWithRawImage:(shared_ptr<CRawImage>)image;
- (id).cxx_construct;
- (id)methodSignatureForSelector:(SEL)selector;
- (id)proxyedObject;
- (shared_ptr<CRawImage>)rawImage;
- (void)forwardInvocation:(id)invocation;
@end

@implementation RawCameraCIImageProxy

- (id)proxyedObject
{
  objc_msgSend_rawImage(self, a2, v2, v3, v4);
  if (v18)
  {
    v10 = objc_msgSend_ciImage(self, v6, v7, v8, v9);
    v11 = v10 == 0;
  }

  else
  {
    v11 = 0;
  }

  if (v19)
  {
    sub_2337239E8(v19);
  }

  if (v11)
  {
    v12 = sub_2337D2F6C(self->rawImage.__ptr_, 0);
    objc_msgSend_setCiImage_(self, v13, v12, v14, v15);
  }

  v16 = objc_msgSend_ciImage(self, v6, v7, v8, v9);

  return v16;
}

- (RawCameraCIImageProxy)initWithRawImage:(shared_ptr<CRawImage>)image
{
  if (self)
  {
    v5 = *(image.__ptr_ + 1);
    v7 = *image.__ptr_;
    v8 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    objc_msgSend_setRawImage_(self, a2, &v7, image.__cntrl_, v3);
    if (v8)
    {
      sub_2337239E8(v8);
    }
  }

  return self;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  v9 = objc_msgSend_proxyedObject(self, v5, v6, v7, v8);
  objc_msgSend_selector(invocationCopy, v10, v11, v12, v13);
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_invokeWithTarget_(invocationCopy, v14, v9, v15, v16);
  }

  else
  {
    v17.receiver = self;
    v17.super_class = RawCameraCIImageProxy;
    [(RawCameraCIImageProxy *)&v17 forwardInvocation:invocationCopy];
  }
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v6 = objc_msgSend_proxyedObject(self, a2, selector, v3, v4);
  v10 = objc_msgSend_methodSignatureForSelector_(v6, v7, selector, v8, v9);

  return v10;
}

- (shared_ptr<CRawImage>)rawImage
{
  objc_copyCppObjectAtomic(v2, &self->rawImage, sub_2337819B4);
  result.__cntrl_ = v4;
  result.__ptr_ = v3;
  return result;
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end