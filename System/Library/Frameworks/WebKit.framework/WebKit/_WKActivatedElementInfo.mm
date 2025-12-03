@interface _WKActivatedElementInfo
+ (_WKActivatedElementInfo)activatedElementInfoWithInteractionInformationAtPosition:(const void *)position userInfo:(id)info;
- (CGRect)boundingRect;
- (UIImage)image;
- (id).cxx_construct;
- (id)_initWithInteractionInformationAtPosition:(const void *)position isUsingAlternateURLForImage:(BOOL)image userInfo:(id)info;
- (id)_initWithType:(int64_t)type URL:(id)l image:(void *)image information:(const void *)information;
- (id)_initWithType:(int64_t)type URL:(id)l imageURL:(id)rL image:(void *)image userInfo:(id)info information:(const void *)information;
- (id)_initWithType:(int64_t)type URL:(id)l imageURL:(id)rL location:(const IntPoint *)location title:(id)title ID:(id)d rect:(CGRect)rect image:(void *)self0 imageMIMEType:(id)self1 isAnimatedImage:(BOOL)self2 isAnimating:(BOOL)self3 canShowAnimationControls:(BOOL)self4 animationsUnderElement:()Vector<WebCore:()0UL :()WTF:()16UL :(WTF:(id)self6 :FastMalloc>)self5 CrashOnOverflow ElementAnimationContext userInfo:;
- (id)_initWithType:(int64_t)type URL:(id)l information:(const void *)information;
- (id)_initWithType:(int64_t)type image:(void *)image information:(const void *)information;
@end

@implementation _WKActivatedElementInfo

+ (_WKActivatedElementInfo)activatedElementInfoWithInteractionInformationAtPosition:(const void *)position userInfo:(id)info
{
  v4 = [[self alloc] _initWithInteractionInformationAtPosition:position isUsingAlternateURLForImage:0 userInfo:info];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  return v5;
}

- (id)_initWithInteractionInformationAtPosition:(const void *)position isUsingAlternateURLForImage:(BOOL)image userInfo:(id)info
{
  v48.receiver = self;
  v48.super_class = _WKActivatedElementInfo;
  v8 = [(_WKActivatedElementInfo *)&v48 init];
  if (!v8)
  {
    return v8;
  }

  WTF::URL::createCFURL(&v47, (position + 72));
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

  WTF::URL::createCFURL(&v47, (position + 112));
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

  v15 = *(position + 19);
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

  *(v8 + 4) = *position;
  v22 = *(position + 20);
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
  if (*(position + 26) == 1)
  {
    v34 = 2;
  }

  else
  {
    if (*(position + 24) == 1)
    {
      *(v8 + 14) = 0;
      goto LABEL_33;
    }

    if (*(position + 25) == 1)
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
  v35 = *(position + 24);
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

  v37 = *(position + 21);
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

  *(v8 + 104) = *(position + 27);
  *(v8 + 80) = *(position + 28);
  *(v8 + 81) = *(position + 29);
  *(v8 + 105) = *(position + 25);
  *(v8 + 106) = image;
  if (info)
  {
    infoCopy = info;
  }

  v45 = *(v8 + 9);
  *(v8 + 9) = info;
  if (v45)
  {
  }

  WTF::Vector<WebCore::ElementAnimationContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(v8 + 88, position + 512);
  return v8;
}

- (id)_initWithType:(int64_t)type URL:(id)l information:(const void *)information
{
  WTF::URL::createCFURL(&v12, (information + 112));
  v9 = [(_WKActivatedElementInfo *)self _initWithType:type URL:l imageURL:v12 information:information];
  v10 = v12;
  v12 = 0;
  if (v10)
  {
  }

  return v9;
}

- (id)_initWithType:(int64_t)type image:(void *)image information:(const void *)information
{
  WTF::URL::createCFURL(&v15, (information + 72));
  v9 = v15;
  WTF::URL::createCFURL(&v14, (information + 112));
  v10 = [(_WKActivatedElementInfo *)self _initWithType:type URL:v9 imageURL:v14 image:image userInfo:0 information:information];
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

- (id)_initWithType:(int64_t)type URL:(id)l image:(void *)image information:(const void *)information
{
  WTF::URL::createCFURL(&v14, (information + 112));
  v11 = [(_WKActivatedElementInfo *)self _initWithType:type URL:l imageURL:v14 image:image userInfo:0 information:information];
  v12 = v14;
  v14 = 0;
  if (v12)
  {
  }

  return v11;
}

- (id)_initWithType:(int64_t)type URL:(id)l imageURL:(id)rL image:(void *)image userInfo:(id)info information:(const void *)information
{
  WTF::Vector<WebCore::ElementAnimationContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v58, information + 512);
  v15 = *(information + 20);
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
  v19 = *(information + 21);
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
  v31 = *(information + 19);
  v51 = v18;
  selfCopy = self;
  v50 = v22;
  if (v31)
  {
    atomic_fetch_add_explicit(v31, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v55, v31);
    imageCopy2 = image;
    lCopy2 = l;
    rLCopy2 = rL;
    if (atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v31, v32);
    }
  }

  else
  {
    imageCopy2 = image;
    lCopy2 = l;
    rLCopy2 = rL;
    v55 = &stru_1F1147748;
    v36 = &stru_1F1147748;
  }

  v37 = v55;
  v38 = *(information + 27);
  v39 = *(information + 28);
  v40 = *(information + 29);
  WTF::Vector<WebCore::ElementAnimationContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v53, &v58);
  BYTE2(v49) = v40;
  BYTE1(v49) = v39;
  LOBYTE(v49) = v38;
  info = [(_WKActivatedElementInfo *)selfCopy _initWithType:type URL:lCopy2 imageURL:rLCopy2 location:information title:v51 ID:v50 rect:v24 image:v26 imageMIMEType:v28 isAnimatedImage:v30 isAnimating:imageCopy2 canShowAnimationControls:v37 animationsUnderElement:v49 userInfo:&v53, info];
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

  return info;
}

- (id)_initWithType:(int64_t)type URL:(id)l imageURL:(id)rL location:(const IntPoint *)location title:(id)title ID:(id)d rect:(CGRect)rect image:(void *)self0 imageMIMEType:(id)self1 isAnimatedImage:(BOOL)self2 isAnimating:(BOOL)self3 canShowAnimationControls:(BOOL)self4 animationsUnderElement:()Vector<WebCore:()0UL :()WTF:()16UL :(WTF:(id)self6 :FastMalloc>)self5 CrashOnOverflow ElementAnimationContext userInfo:
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v42.receiver = self;
  v42.super_class = _WKActivatedElementInfo;
  v26 = [(_WKActivatedElementInfo *)&v42 init];
  if (v26)
  {
    v27 = [l copy];
    v28 = *(v26 + 1);
    *(v26 + 1) = v27;
    if (v28)
    {
    }

    v29 = [rL copy];
    v30 = *(v26 + 2);
    *(v26 + 2) = v29;
    if (v30)
    {
    }

    v31 = [eType copy];
    v32 = *(v26 + 7);
    *(v26 + 7) = v31;
    if (v32)
    {
    }

    *(v26 + 4) = *location;
    v33 = [title copy];
    v35 = *(v26 + 3);
    *(v26 + 3) = v33;
    if (v35)
    {
    }

    *(v26 + 15) = x;
    *(v26 + 16) = y;
    *(v26 + 17) = width;
    *(v26 + 18) = height;
    *(v26 + 14) = type;
    if (image)
    {
      atomic_fetch_add(image, 1u);
    }

    v36 = *(v26 + 6);
    *(v26 + 6) = image;
    if (v36)
    {
      WTF::ThreadSafeRefCounted<WebCore::ShareableBitmap,(WTF::DestructionThread)0>::deref(v36, v34);
    }

    if (d)
    {
      dCopy = d;
    }

    v38 = *(v26 + 5);
    *(v26 + 5) = d;
    if (v38)
    {
    }

    v39 = [*&a15.m_capacity copy];
    v40 = *(v26 + 9);
    *(v26 + 9) = v39;
    if (v40)
    {
    }

    *(v26 + 80) = animating;
    *(v26 + 81) = controls;
    WTF::Vector<WebCore::ElementAnimationContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(v26 + 88, a15.m_buffer);
    *(v26 + 104) = animatedImage;
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