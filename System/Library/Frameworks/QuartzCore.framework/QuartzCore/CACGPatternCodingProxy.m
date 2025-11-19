@interface CACGPatternCodingProxy
- (CACGPatternCodingProxy)initWithCoder:(id)a3;
- (CACGPatternCodingProxy)initWithObject:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CACGPatternCodingProxy

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  CGPatternRelease(self->_pattern);
  v3.receiver = self;
  v3.super_class = CACGPatternCodingProxy;
  [(CACGPatternCodingProxy *)&v3 dealloc];
}

- (CACGPatternCodingProxy)initWithCoder:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  memset(&v20, 0, sizeof(v20));
  memset(&v19, 0, sizeof(v19));
  v18 = 0uLL;
  v17.receiver = self;
  v17.super_class = CACGPatternCodingProxy;
  v4 = [(CACGPatternCodingProxy *)&v17 init];
  if (v4 && [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"CGPatternType", "isEqualToString:", @"tiling"}])
  {
    if (([a3 CA_decodeCGFloatArray:&v20 count:6 forKey:@"CGPatternMatrix"] & 1) == 0)
    {
      v5 = *(MEMORY[0x1E695EFD0] + 16);
      *&v20.a = *MEMORY[0x1E695EFD0];
      *&v20.c = v5;
      *&v20.tx = *(MEMORY[0x1E695EFD0] + 32);
    }

    if (([a3 CA_decodeCGFloatArray:&v19 count:4 forKey:@"CGPatternBounds"] & 1) == 0)
    {
      v6 = *(MEMORY[0x1E695F050] + 16);
      v19.origin = *MEMORY[0x1E695F050];
      v19.size = v6;
    }

    if (([a3 CA_decodeCGFloatArray:&v18 count:2 forKey:@"CGPatternStep"] & 1) == 0)
    {
      v18 = *MEMORY[0x1E695F060];
    }

    v7 = [a3 decodeIntForKey:@"CGPatternTiling"];
    v8 = [a3 decodeIntForKey:@"CGPatternColored"];
    v9 = [a3 CA_decodeObjectForKey:@"CGPatternImage"];
    if (v9)
    {
      v10 = v9;
      v11 = CFGetTypeID(v9);
      if (v11 == CGImageGetTypeID())
      {
        if (v19.origin.x == 0.0 && v19.origin.y == 0.0 && (width = v19.size.width, width == CGImageGetWidth(v10)) && (height = v19.size.height, height == CGImageGetHeight(v10)) && *&v18 == v19.size.width && *(&v18 + 1) == v19.size.height && (v8 != 0) != CGImageIsMask(v10))
        {
          v16 = v20;
          v4->_pattern = CGPatternCreateWithImage2();
        }

        else
        {
          v16 = v20;
          v14 = CGPatternCreate(v10, v19, &v16, *&v18, *(&v18 + 1), v7, v8 != 0, &pattern_callbacks);
          v4->_pattern = v14;
          if (v14)
          {
            CGImageRetain(v10);
          }
        }
      }
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  if (!CGPatternGetType())
  {
    memset(v25, 0, sizeof(v25));
    [a3 encodeObject:@"tiling" forKey:@"CGPatternType"];
    CGPatternGetMatrix();
    [a3 CA_encodeCGFloatArray:v25 count:6 forKey:@"CGPatternMatrix"];
    CGPatternGetBounds();
    v24[0] = v5;
    v24[1] = v6;
    v24[2] = v7;
    v24[3] = v8;
    [a3 CA_encodeCGFloatArray:v24 count:4 forKey:@"CGPatternBounds"];
    CGPatternGetStep();
    v23[0] = v9;
    v23[1] = v10;
    [a3 CA_encodeCGFloatArray:v23 count:2 forKey:@"CGPatternStep"];
    [a3 encodeInt:CGPatternGetTiling() forKey:@"CGPatternTiling"];
    [a3 encodeInt:CGPatternIsColored() forKey:@"CGPatternColored"];
    Image = CGPatternGetImage();
    if (Image)
    {
      goto LABEL_3;
    }

    pattern = self->_pattern;
    v13 = CAGetColorSpace(36);
    __asm { FMOV            V0.2D, #1.0 }

    v22 = _Q0;
    pattern_image = CA::Render::create_pattern_image(pattern, v13, &v22, v24);
    if (!pattern_image)
    {
LABEL_3:
      [a3 CA_encodeObject:Image forKey:@"CGPatternImage" conditional:0];
    }

    else
    {
      v20 = pattern_image;
      v21 = CA::Render::Image::copy_cgimage(pattern_image);
      if (atomic_fetch_add(v20 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v20 + 16))(v20);
      }

      [a3 CA_encodeObject:v21 forKey:@"CGPatternImage" conditional:0];
      CGImageRelease(v21);
    }
  }
}

- (CACGPatternCodingProxy)initWithObject:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = CACGPatternCodingProxy;
  v4 = [(CACGPatternCodingProxy *)&v6 init];
  if (v4)
  {
    v4->_pattern = CGPatternRetain(a3);
  }

  return v4;
}

@end