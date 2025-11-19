@interface _WKActivatedElementInfo
+ (_WKActivatedElementInfo)activatedElementInfoWithInteractionInformationAtPosition:(const void *)a3 userInfo:(id)a4;
- (CGRect)boundingRect;
- (UIImage)image;
- (id).cxx_construct;
- (id)_initWithInteractionInformationAtPosition:(const void *)a3 isUsingAlternateURLForImage:(BOOL)a4 userInfo:(id)a5;
- (id)_initWithType:(int64_t)a3 URL:(id)a4 image:(void *)a5 information:(const void *)a6;
- (id)_initWithType:(int64_t)a3 URL:(id)a4 imageURL:(id)a5 image:(void *)a6 userInfo:(id)a7 information:(const void *)a8;
- (id)_initWithType:(int64_t)a3 URL:(id)a4 imageURL:(id)a5 location:(const IntPoint *)a6 title:(id)a7 ID:(id)a8 rect:(CGRect)a9 image:(void *)a10 imageMIMEType:(id)a11 isAnimatedImage:(BOOL)a12 isAnimating:(BOOL)a13 canShowAnimationControls:(BOOL)a14 animationsUnderElement:()Vector<WebCore:()0UL :()WTF:()16UL :(WTF:(id)a16 :FastMalloc>)a15 CrashOnOverflow ElementAnimationContext userInfo:;
- (id)_initWithType:(int64_t)a3 URL:(id)a4 information:(const void *)a5;
- (id)_initWithType:(int64_t)a3 image:(void *)a4 information:(const void *)a5;
@end

@implementation _WKActivatedElementInfo

+ (_WKActivatedElementInfo)activatedElementInfoWithInteractionInformationAtPosition:(const void *)a3 userInfo:(id)a4
{
  v4 = [[a1 alloc] _initWithInteractionInformationAtPosition:a3 isUsingAlternateURLForImage:0 userInfo:a4];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  return v5;
}

- (id)_initWithInteractionInformationAtPosition:(const void *)a3 isUsingAlternateURLForImage:(BOOL)a4 userInfo:(id)a5
{
  v48.receiver = self;
  v48.super_class = _WKActivatedElementInfo;
  v8 = [(_WKActivatedElementInfo *)&v48 init];
  if (!v8)
  {
    return v8;
  }

  WTF::URL::createCFURL(&v47, (a3 + 72));
  v9 = v47;
  v47 = 0;
  v10 = *(v8 + 1);
  *(v8 + 1) = v9;
  if (v10)
  {

    v11 = v47;
    v47 = 0;
    if (v11)
    {
    }
  }

  WTF::URL::createCFURL(&v47, (a3 + 112));
  v12 = v47;
  v47 = 0;
  v13 = *(v8 + 2);
  *(v8 + 2) = v12;
  if (v13)
  {

    v14 = v47;
    v47 = 0;
    if (v14)
    {
    }
  }

  v15 = *(a3 + 19);
  if (v15)
  {
    atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v47, v15);
    if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v16);
    }
  }

  else
  {
    v47 = &stru_1F1147748;
    v17 = &stru_1F1147748;
  }

  v18 = v47;
  if (v47)
  {
    v19 = v47;
  }

  v20 = *(v8 + 7);
  *(v8 + 7) = v18;
  if (v20)
  {
  }

  v21 = v47;
  v47 = 0;
  if (v21)
  {
  }

  *(v8 + 4) = *a3;
  v22 = *(a3 + 20);
  if (v22)
  {
    atomic_fetch_add_explicit(v22, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v47, v22);
    if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v22, v23);
    }
  }

  else
  {
    v47 = &stru_1F1147748;
    v24 = &stru_1F1147748;
  }

  v25 = v47;
  if (v47)
  {
    v26 = v47;
  }

  v27 = *(v8 + 3);
  *(v8 + 3) = v25;
  if (v27)
  {
  }

  v28 = v47;
  v47 = 0;
  if (v28)
  {
  }

  WebCore::IntRect::operator CGRect();
  *(v8 + 15) = v30;
  *(v8 + 16) = v31;
  *(v8 + 17) = v32;
  *(v8 + 18) = v33;
  if (*(a3 + 26) == 1)
  {
    v34 = 2;
  }

  else
  {
    if (*(a3 + 24) == 1)
    {
      *(v8 + 14) = 0;
      goto LABEL_33;
    }

    if (*(a3 + 25) == 1)
    {
      v34 = 1;
    }

    else
    {
      v34 = 3;
    }
  }

  *(v8 + 14) = v34;
LABEL_33:
  v35 = *(a3 + 24);
  if (v35)
  {
    atomic_fetch_add(v35, 1u);
  }

  v36 = *(v8 + 6);
  *(v8 + 6) = v35;
  if (v36)
  {
    WTF::ThreadSafeRefCounted<WebCore::ShareableBitmap,(WTF::DestructionThread)0>::deref(v36, v29);
  }

  v37 = *(a3 + 21);
  if (v37)
  {
    atomic_fetch_add_explicit(v37, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v47, v37);
    if (atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v37, v38);
    }
  }

  else
  {
    v47 = &stru_1F1147748;
    v39 = &stru_1F1147748;
  }

  v40 = v47;
  if (v47)
  {
    v41 = v47;
  }

  v42 = *(v8 + 5);
  *(v8 + 5) = v40;
  if (v42)
  {
  }

  v43 = v47;
  v47 = 0;
  if (v43)
  {
  }

  *(v8 + 104) = *(a3 + 27);
  *(v8 + 80) = *(a3 + 28);
  *(v8 + 81) = *(a3 + 29);
  *(v8 + 105) = *(a3 + 25);
  *(v8 + 106) = a4;
  if (a5)
  {
    v44 = a5;
  }

  v45 = *(v8 + 9);
  *(v8 + 9) = a5;
  if (v45)
  {
  }

  WTF::Vector<WebCore::ElementAnimationContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(v8 + 88, a3 + 512);
  return v8;
}

- (id)_initWithType:(int64_t)a3 URL:(id)a4 information:(const void *)a5
{
  WTF::URL::createCFURL(&v12, (a5 + 112));
  v9 = [(_WKActivatedElementInfo *)self _initWithType:a3 URL:a4 imageURL:v12 information:a5];
  v10 = v12;
  v12 = 0;
  if (v10)
  {
  }

  return v9;
}

- (id)_initWithType:(int64_t)a3 image:(void *)a4 information:(const void *)a5
{
  WTF::URL::createCFURL(&v15, (a5 + 72));
  v9 = v15;
  WTF::URL::createCFURL(&v14, (a5 + 112));
  v10 = [(_WKActivatedElementInfo *)self _initWithType:a3 URL:v9 imageURL:v14 image:a4 userInfo:0 information:a5];
  v11 = v14;
  v14 = 0;
  if (v11)
  {
  }

  v12 = v15;
  v15 = 0;
  if (v12)
  {
  }

  return v10;
}

- (id)_initWithType:(int64_t)a3 URL:(id)a4 image:(void *)a5 information:(const void *)a6
{
  WTF::URL::createCFURL(&v14, (a6 + 112));
  v11 = [(_WKActivatedElementInfo *)self _initWithType:a3 URL:a4 imageURL:v14 image:a5 userInfo:0 information:a6];
  v12 = v14;
  v14 = 0;
  if (v12)
  {
  }

  return v11;
}

- (id)_initWithType:(int64_t)a3 URL:(id)a4 imageURL:(id)a5 image:(void *)a6 userInfo:(id)a7 information:(const void *)a8
{
  WTF::Vector<WebCore::ElementAnimationContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v58, a8 + 512);
  v15 = *(a8 + 20);
  if (v15)
  {
    atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v57, v15);
    if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v16);
    }
  }

  else
  {
    v57 = &stru_1F1147748;
    v17 = &stru_1F1147748;
  }

  v18 = v57;
  v19 = *(a8 + 21);
  if (v19)
  {
    atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v56, v19);
    if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v20);
    }
  }

  else
  {
    v56 = &stru_1F1147748;
    v21 = &stru_1F1147748;
  }

  v22 = v56;
  WebCore::IntRect::operator CGRect();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = *(a8 + 19);
  v51 = v18;
  v52 = self;
  v50 = v22;
  if (v31)
  {
    atomic_fetch_add_explicit(v31, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v55, v31);
    v33 = a6;
    v34 = a4;
    v35 = a5;
    if (atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v31, v32);
    }
  }

  else
  {
    v33 = a6;
    v34 = a4;
    v35 = a5;
    v55 = &stru_1F1147748;
    v36 = &stru_1F1147748;
  }

  v37 = v55;
  v38 = *(a8 + 27);
  v39 = *(a8 + 28);
  v40 = *(a8 + 29);
  WTF::Vector<WebCore::ElementAnimationContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v53, &v58);
  BYTE2(v49) = v40;
  BYTE1(v49) = v39;
  LOBYTE(v49) = v38;
  v42 = [(_WKActivatedElementInfo *)v52 _initWithType:a3 URL:v34 imageURL:v35 location:a8 title:v51 ID:v50 rect:v24 image:v26 imageMIMEType:v28 isAnimatedImage:v30 isAnimating:v33 canShowAnimationControls:v37 animationsUnderElement:v49 userInfo:&v53, a7];
  v43 = v53;
  if (v53)
  {
    v53 = 0;
    v54 = 0;
    WTF::fastFree(v43, v41);
  }

  v44 = v55;
  v55 = 0;
  if (v44)
  {
  }

  v45 = v56;
  v56 = 0;
  if (v45)
  {
  }

  v46 = v57;
  v57 = 0;
  if (v46)
  {
  }

  v47 = v58;
  if (v58)
  {
    v58 = 0;
    v59 = 0;
    WTF::fastFree(v47, v41);
  }

  return v42;
}

- (id)_initWithType:(int64_t)a3 URL:(id)a4 imageURL:(id)a5 location:(const IntPoint *)a6 title:(id)a7 ID:(id)a8 rect:(CGRect)a9 image:(void *)a10 imageMIMEType:(id)a11 isAnimatedImage:(BOOL)a12 isAnimating:(BOOL)a13 canShowAnimationControls:(BOOL)a14 animationsUnderElement:()Vector<WebCore:()0UL :()WTF:()16UL :(WTF:(id)a16 :FastMalloc>)a15 CrashOnOverflow ElementAnimationContext userInfo:
{
  height = a9.size.height;
  width = a9.size.width;
  y = a9.origin.y;
  x = a9.origin.x;
  v42.receiver = self;
  v42.super_class = _WKActivatedElementInfo;
  v26 = [(_WKActivatedElementInfo *)&v42 init];
  if (v26)
  {
    v27 = [a4 copy];
    v28 = *(v26 + 1);
    *(v26 + 1) = v27;
    if (v28)
    {
    }

    v29 = [a5 copy];
    v30 = *(v26 + 2);
    *(v26 + 2) = v29;
    if (v30)
    {
    }

    v31 = [a11 copy];
    v32 = *(v26 + 7);
    *(v26 + 7) = v31;
    if (v32)
    {
    }

    *(v26 + 4) = *a6;
    v33 = [a7 copy];
    v35 = *(v26 + 3);
    *(v26 + 3) = v33;
    if (v35)
    {
    }

    *(v26 + 15) = x;
    *(v26 + 16) = y;
    *(v26 + 17) = width;
    *(v26 + 18) = height;
    *(v26 + 14) = a3;
    if (a10)
    {
      atomic_fetch_add(a10, 1u);
    }

    v36 = *(v26 + 6);
    *(v26 + 6) = a10;
    if (v36)
    {
      WTF::ThreadSafeRefCounted<WebCore::ShareableBitmap,(WTF::DestructionThread)0>::deref(v36, v34);
    }

    if (a8)
    {
      v37 = a8;
    }

    v38 = *(v26 + 5);
    *(v26 + 5) = a8;
    if (v38)
    {
    }

    v39 = [*&a15.m_capacity copy];
    v40 = *(v26 + 9);
    *(v26 + 9) = v39;
    if (v40)
    {
    }

    *(v26 + 80) = a13;
    *(v26 + 81) = a14;
    WTF::Vector<WebCore::ElementAnimationContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(v26 + 88, a15.m_buffer);
    *(v26 + 104) = a12;
  }

  return v26;
}

- (UIImage)image
{
  m_ptr = self->_cocoaImage.m_ptr;
  if (m_ptr)
  {
    v4 = [(UIImage *)m_ptr copy];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }
  }

  else
  {
    v7 = self->_image.m_ptr;
    if (v7)
    {
      atomic_fetch_add(v7, 1u);
      v8 = objc_alloc(MEMORY[0x1E69DCAB8]);
      WebCore::ShareableBitmap::makeCGImageCopy(&cf, v7);
      v9 = [v8 initWithCGImage:cf];
      v11 = self->_cocoaImage.m_ptr;
      self->_cocoaImage.m_ptr = v9;
      if (v11)
      {
      }

      v12 = cf;
      cf = 0;
      if (v12)
      {
        CFRelease(v12);
      }

      v13 = self->_image.m_ptr;
      self->_image.m_ptr = 0;
      if (v13)
      {
        WTF::ThreadSafeRefCounted<WebCore::ShareableBitmap,(WTF::DestructionThread)0>::deref(v13, v10);
      }

      v14 = [(UIImage *)self->_cocoaImage.m_ptr copy];
      v5 = v14;
      if (v14)
      {
        v16 = v14;
      }

      WTF::ThreadSafeRefCounted<WebCore::ShareableBitmap,(WTF::DestructionThread)0>::deref(v7, v15);
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

- (CGRect)boundingRect
{
  x = self->_boundingRect.origin.x;
  y = self->_boundingRect.origin.y;
  width = self->_boundingRect.size.width;
  height = self->_boundingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id).cxx_construct
{
  *(self + 11) = 0;
  *(self + 12) = 0;
  *(self + 8) = 0u;
  *(self + 24) = 0u;
  *(self + 40) = 0u;
  *(self + 56) = 0u;
  *(self + 9) = 0;
  return self;
}

@end