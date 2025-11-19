@interface MDLURLTexture
- (MDLURLTexture)initWithURL:(NSURL *)URL name:(NSString *)name;
- (void)setURL:(NSURL *)URL;
@end

@implementation MDLURLTexture

- (MDLURLTexture)initWithURL:(NSURL *)URL name:(NSString *)name
{
  v6 = URL;
  v7 = name;
  v14.receiver = self;
  v14.super_class = MDLURLTexture;
  v9 = [(MDLTexture *)&v14 init];
  if (v9)
  {
    if (v7)
    {
      v10 = objc_msgSend_stringWithString_(MEMORY[0x277CCACA8], v8, v7);
      v11 = v9->super._name;
      v9->super._name = v10;
    }

    objc_msgSend_setURL_(v9, v8, v6);
    v12 = v9;
  }

  return v9;
}

- (void)setURL:(NSURL *)URL
{
  url = URL;
  objc_storeStrong(&self->_url, URL);
  if (url)
  {
    v5 = CGImageSourceCreateWithURL(url, 0);
    v6 = v5;
    if (v5)
    {
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v5, 0, 0);
      CFRelease(v6);
      if (ImageAtIndex)
      {
        Width = CGImageGetWidth(ImageAtIndex);
        Height = CGImageGetHeight(ImageAtIndex);
        *self->super._anon_118 = __PAIR64__(Height, Width);
        if (Height / 6 == Width)
        {
          self->super._anon_118[16] = 1;
        }

        v10 = objc_alloc(MEMORY[0x277CBEB28]);
        v12 = objc_msgSend_initWithLength_(v10, v11, (4 * HIDWORD(*self->super._anon_118) * *self->super._anon_118));
        v13 = self->super._bottomLeftOriginData[0];
        self->super._bottomLeftOriginData[0] = v12;

        v14 = self->super._bottomLeftOriginData[0];
        self->super._textureData.bottomLeftBytesForMip[0] = objc_msgSend_bytes(v14, v15, v16);
        DeviceRGB = CGColorSpaceCreateDeviceRGB();
        v18 = self->super._bottomLeftOriginData[0];
        v21 = objc_msgSend_bytes(v18, v19, v20);
        v22 = CGBitmapContextCreate(v21, *self->super._anon_118, HIDWORD(*self->super._anon_118), 8uLL, (4 * *self->super._anon_118), DeviceRGB, 1u);
        CFRelease(DeviceRGB);
        CGContextSetBlendMode(v22, kCGBlendModeCopy);
        v23 = *self->super._anon_118;
        v26.size.width = v23;
        v26.size.height = SHIDWORD(v23);
        v26.origin.x = 0.0;
        v26.origin.y = 0.0;
        CGContextDrawImage(v22, v26, ImageAtIndex);
        CGContextRelease(v22);
        CFRelease(ImageAtIndex);
        *&self->super._anon_118[8] = (4 * *self->super._anon_118);
        self->super._textureData.channelCount = 4;
        self->super._channelEncoding = 1;
      }
    }
  }
}

@end