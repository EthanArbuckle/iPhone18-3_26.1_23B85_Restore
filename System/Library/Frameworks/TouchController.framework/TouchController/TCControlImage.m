@interface TCControlImage
- (CGPoint)offset;
- (CGSize)size;
- (TCControlImage)initWithCGImage:(CGImage *)a3 size:(CGSize)a4 device:(id)a5;
- (TCControlImage)initWithTexture:(id)a3 size:(CGSize)a4;
- (TCControlImage)initWithTexture:(id)a3 size:(CGSize)a4 highlightTexture:(id)a5 offset:(CGPoint)a6 tintColor:(CGColor *)a7;
- (TCControlImage)initWithUIImage:(id)a3 size:(CGSize)a4 device:(id)a5;
- (void)setTintColor:(CGColor *)a3;
@end

@implementation TCControlImage

- (TCControlImage)initWithTexture:(id)a3 size:(CGSize)a4 highlightTexture:(id)a5 offset:(CGPoint)a6 tintColor:(CGColor *)a7
{
  y = a6.y;
  x = a6.x;
  height = a4.height;
  width = a4.width;
  v15 = a3;
  v16 = a5;
  v20.receiver = self;
  v20.super_class = TCControlImage;
  v17 = [(TCControlImage *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_texture, a3);
    v18->_size.width = width;
    v18->_size.height = height;
    objc_storeStrong(&v18->_highlightTexture, a5);
    v18->_offset.x = x;
    v18->_offset.y = y;
    v18->_tintColor = a7;
    CGColorRetain(a7);
  }

  return v18;
}

- (TCControlImage)initWithTexture:(id)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v13 = *MEMORY[0x277D85DE8];
  v7 = a3;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v12[0] = xmmword_23AAEDFD0;
  v12[1] = unk_23AAEDFE0;
  v9 = [(TCControlImage *)self initWithTexture:v7 size:0 highlightTexture:CGColorCreate(DeviceRGB offset:v12) tintColor:width, height, 0.0, 0.0];

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (TCControlImage)initWithCGImage:(CGImage *)a3 size:(CGSize)a4 device:(id)a5
{
  height = a4.height;
  width = a4.width;
  v23[1] = *MEMORY[0x277D85DE8];
  v9 = MEMORY[0x277CD71F0];
  v10 = a5;
  v11 = [[v9 alloc] initWithDevice:v10];

  v22 = *MEMORY[0x277CD71B0];
  v23[0] = MEMORY[0x277CBEC38];
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  v21 = 0;
  v13 = [v11 newTextureWithCGImage:a3 options:v12 error:&v21];
  v14 = v21;
  if (v13)
  {
    GenericRGB = CGColorCreateGenericRGB(1.0, 1.0, 1.0, 1.0);
    v16 = [(TCControlImage *)self initWithTexture:v13 size:0 highlightTexture:GenericRGB offset:width tintColor:height, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
    CGColorRelease(GenericRGB);
    self = v16;
    v17 = self;
  }

  else
  {
    v18 = getTCLogger();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [TCControlImage initWithCGImage:v14 size:v18 device:?];
    }

    v17 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v17;
}

- (TCControlImage)initWithUIImage:(id)a3 size:(CGSize)a4 device:(id)a5
{
  height = a4.height;
  width = a4.width;
  v9 = a5;
  v10 = [a3 CGImage];
  if (v10)
  {
    self = [(TCControlImage *)self initWithCGImage:v10 size:v9 device:width, height];
    v11 = self;
  }

  else
  {
    v12 = getTCLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [TCControlImage initWithUIImage:v12 size:? device:?];
    }

    v11 = 0;
  }

  return v11;
}

- (void)setTintColor:(CGColor *)a3
{
  CGColorRelease(self->_tintColor);
  self->_tintColor = a3;

  CGColorRetain(a3);
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)offset
{
  x = self->_offset.x;
  y = self->_offset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)initWithCGImage:(uint64_t)a1 size:(NSObject *)a2 device:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_23AADD000, a2, OS_LOG_TYPE_ERROR, "Error creating texture from CGImage: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end