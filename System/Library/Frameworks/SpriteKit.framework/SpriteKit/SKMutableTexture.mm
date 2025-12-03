@interface SKMutableTexture
+ (SKMutableTexture)mutableTextureWithSize:(CGSize)size;
- (SKMutableTexture)initWithSize:(CGSize)size ioSurfaceBacked:(BOOL)backed pixelFormat:(int)format;
- (id)description;
- (shared_ptr<jet_texture>)_backingTexture;
- (void)dealloc;
- (void)modifyPixelDataWithBlock:(void *)block;
@end

@implementation SKMutableTexture

- (SKMutableTexture)initWithSize:(CGSize)size ioSurfaceBacked:(BOOL)backed pixelFormat:(int)format
{
  height = size.height;
  width = size.width;
  formatCopy = format;
  v37.receiver = self;
  v37.super_class = SKMutableTexture;
  v9 = [(SKTexture *)&v37 _initWithGLTextureId:0 size:?];
  if (v9)
  {
    v10 = SKGetGlobalDefaults();
    [v10 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"kSKMutableTextureExists"];

    [(SKTexture *)v9 size];
    v12 = v11;
    v36 = v11;
    [(SKTexture *)v9 size];
    v14 = v13;
    if (format == 1380410945)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (format == 1380411457)
    {
      v15 = 3;
    }

    valuePtr = v12 << v15;
    v35 = v13;
    v16 = ((v12 << v15) & 0xC) == 0 && backed;
    v9->_ioSurface = 0;
    v9->_textureSize.width = width;
    v9->_textureSize.height = height;
    v9->_pixelData = 0;
    v9->_pixelDataLength = 0;
    v9->_ioSurfaceBacked = v16;
    v9->_pixelFormat = format;
    _textureCache = [(SKTexture *)v9 _textureCache];
    v18 = _textureCache;
    if (format == 1380410945)
    {
      v19 = 10;
    }

    else if (format == 1380411457)
    {
      v19 = 0;
    }

    else if (v9->_ioSurfaceBacked)
    {
      v19 = 4;
    }

    else
    {
      v19 = 3;
    }

    [_textureCache setTextureFormat:v19];
    v20 = valuePtr * v14;
    v33 = valuePtr * v14;
    if (v9->_ioSurfaceBacked)
    {
      v9->_ioSurface = 0;
      v32 = 4;
      v21 = *MEMORY[0x277CBECE8];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v23 = CFNumberCreate(v21, kCFNumberSInt32Type, &valuePtr);
      CFDictionarySetValue(Mutable, *MEMORY[0x277CD2968], v23);
      CFRelease(v23);
      v24 = CFNumberCreate(v21, kCFNumberSInt32Type, &v32);
      CFDictionarySetValue(Mutable, *MEMORY[0x277CD2960], v24);
      CFRelease(v24);
      v25 = CFNumberCreate(v21, kCFNumberSInt32Type, &v36);
      CFDictionarySetValue(Mutable, *MEMORY[0x277CD2B88], v25);
      CFRelease(v25);
      v26 = CFNumberCreate(v21, kCFNumberSInt32Type, &v35);
      CFDictionarySetValue(Mutable, *MEMORY[0x277CD2A28], v26);
      CFRelease(v26);
      v27 = CFNumberCreate(v21, kCFNumberSInt32Type, &formatCopy);
      CFDictionarySetValue(Mutable, *MEMORY[0x277CD2A70], v27);
      CFRelease(v27);
      v28 = CFNumberCreate(v21, kCFNumberSInt32Type, &v33);
      CFDictionarySetValue(Mutable, *MEMORY[0x277CD2948], v28);
      CFRelease(v28);
      v9->_ioSurface = IOSurfaceCreate(Mutable);
      CFRelease(Mutable);
      v31.receiver = v9;
      v31.super_class = SKMutableTexture;
      [(SKTexture *)&v31 setTextureTarget:3553];
    }

    else
    {
      v9->_pixelDataLength = v20;
      v9->_pixelData = malloc_type_malloc(v20, 0x9D761DDFuLL);
      v30.receiver = v9;
      v30.super_class = SKMutableTexture;
      [(SKTexture *)&v30 setTextureTarget:3553];
    }
  }

  return v9;
}

+ (SKMutableTexture)mutableTextureWithSize:(CGSize)size
{
  v3 = [[SKMutableTexture alloc] initWithSize:size.width, size.height];

  return v3;
}

- (void)modifyPixelDataWithBlock:(void *)block
{
  v4 = block;
  v5 = v4;
  if (self->_ioSurfaceBacked)
  {
    IOSurfaceLock(self->_ioSurface, 0, 0);
    BaseAddress = IOSurfaceGetBaseAddress(self->_ioSurface);
    AllocSize = IOSurfaceGetAllocSize(self->_ioSurface);
    (v5)[2](v5, BaseAddress, AllocSize);
    IOSurfaceUnlock(self->_ioSurface, 0, 0);
  }

  else
  {
    (*(v4 + 2))(v4, self->_pixelData, self->_pixelDataLength);
    _textureCache = [(SKTexture *)self _textureCache];
    v9 = 0;
    v10 = 0;
    [_textureCache setBackingTexture:&v9];
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }
}

- (shared_ptr<jet_texture>)_backingTexture
{
  v4 = v2;
  _textureCache = [(SKTexture *)self _textureCache];
  v6 = _textureCache;
  if (_textureCache)
  {
    [_textureCache backingTexture];
  }

  else
  {
    v21 = 0;
    v22 = 0;
  }

  if (v21)
  {
    v9 = v22;
    *v4 = v21;
    v4[1] = v9;
  }

  else
  {
    _textureCache2 = [(SKTexture *)self _textureCache];
    [_textureCache2 pixelSize];
    v12 = v11;

    _textureCache3 = [(SKTexture *)self _textureCache];
    [_textureCache3 pixelSize];
    v15 = vcvtpd_u64_f64(v14);

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __35__SKMutableTexture__backingTexture__block_invoke;
    v18[3] = &unk_278310138;
    v18[4] = self;
    v19 = vcvtpd_u64_f64(v12);
    v20 = v15;
    SKCPerformResourceOperation(v18);
    _textureCache4 = [(SKTexture *)self _textureCache];
    v17 = _textureCache4;
    if (_textureCache4)
    {
      [_textureCache4 backingTexture];
    }

    else
    {
      *v4 = 0;
      v4[1] = 0;
    }

    v7 = v22;
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }
  }

  result.__cntrl_ = v8;
  result.__ptr_ = v7;
  return result;
}

void __35__SKMutableTexture__backingTexture__block_invoke(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 32);
  if (*(v3 + 248) == 1)
  {
    v4 = *a2;
    ID = IOSurfaceGetID(*(v3 + 240));
    v6 = (*(*v4 + 32))(v4, ID, *(a1 + 40), *(a1 + 44), 3, 0);
    std::shared_ptr<jet_texture>::shared_ptr[abi:ne200100]<jet_texture,0>(&v8, v6);
  }

  texture_2d = jet_context::create_texture_2d();
  std::shared_ptr<jet_texture>::shared_ptr[abi:ne200100]<jet_texture,0>(&v8, texture_2d);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  [(SKTexture *)self pixelSize];
  v5 = v4;
  [(SKTexture *)self pixelSize];
  return [v3 stringWithFormat:@"<SKMutableTexture> (%d x %d)", v5, v6];
}

- (void)dealloc
{
  ioSurface = self->_ioSurface;
  if (ioSurface)
  {
    CFRelease(ioSurface);
    self->_ioSurface = 0;
  }

  pixelData = self->_pixelData;
  if (pixelData)
  {
    free(pixelData);
    self->_pixelData = 0;
  }

  v5.receiver = self;
  v5.super_class = SKMutableTexture;
  [(SKTexture *)&v5 dealloc];
}

@end