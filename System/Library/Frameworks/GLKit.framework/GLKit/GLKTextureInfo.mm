@interface GLKTextureInfo
- (GLKTextureInfo)initWithTexture:(id)texture textureName:(unsigned int)name;
- (GLKTextureInfo)initWithTextureTXR:(id)r textureName:(unsigned int)name;
- (id)description;
- (void)dealloc;
@end

@implementation GLKTextureInfo

- (GLKTextureInfo)initWithTexture:(id)texture textureName:(unsigned int)name
{
  v15.receiver = self;
  v15.super_class = GLKTextureInfo;
  v6 = [(GLKTextureInfo *)&v15 init];
  v7 = v6;
  if (!v6)
  {
    return v7;
  }

  v6->name = name;
  v6->target = [texture bindTarget];
  v7->width = [texture width];
  v7->height = [texture height];
  v7->depth = 1;
  if ([texture hasAlpha])
  {
    if ([texture hasPremultipliedAlpha])
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  v7->alphaState = v8;
  if ([texture orientation] == 1)
  {
    v9 = 1;
  }

  else
  {
    if ([texture orientation] != 4)
    {
      v7->textureOrigin = 0;
      goto LABEL_13;
    }

    v9 = 2;
  }

  v7->textureOrigin = v9;
LABEL_13:
  v7->containsMipmaps = [texture isMipmapped];
  v7->arrayLength = 1;
  numMipMapLevels = [texture numMipMapLevels];
  v7->mimapLevelCount = numMipMapLevels;
  if (numMipMapLevels == 1 && [texture requestIssuedForMipmapGeneration])
  {
    width = v7->width;
    if (width <= v7->height)
    {
      width = v7->height;
    }

    v12 = __clz(width) ^ 0x1F;
    if (width)
    {
      v13 = v12;
    }

    else
    {
      v13 = -1;
    }

    v7->mimapLevelCount = v13;
  }

  return v7;
}

- (GLKTextureInfo)initWithTextureTXR:(id)r textureName:(unsigned int)name
{
  v9.receiver = self;
  v9.super_class = GLKTextureInfo;
  v6 = [(GLKTextureInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->name = name;
    v6->target = [r target];
    v7->width = [r width];
    v7->height = [r height];
    v7->depth = [r depth];
    v7->lossyCompressedSource = [r lossyCompressedSource];
    v7->alphaState = [r hasAlpha];
    v7->textureOrigin = 0;
    v7->containsMipmaps = [r mipmapLevelCount] > 1;
    v7->arrayLength = [r arrayLength];
    v7->mimapLevelCount = [r mipmapLevelCount];
  }

  return v7;
}

- (id)description
{
  if ([(GLKTextureInfo *)self target]== 3553)
  {
    v3 = @"GL_TEXTURE_2D";
  }

  else if ([(GLKTextureInfo *)self target]== 34067)
  {
    v3 = @"GL_TEXTURE_CUBE_MAP";
  }

  else
  {
    v3 = @"Unknown / Invalid";
  }

  if ([(GLKTextureInfo *)self alphaState])
  {
    if ([(GLKTextureInfo *)self alphaState]== GLKTextureInfoAlphaStateNonPremultiplied)
    {
      v4 = @"GLKTextureInfoAlphaStateNonPremultiplied";
    }

    else if ([(GLKTextureInfo *)self alphaState]== GLKTextureInfoAlphaStatePremultiplied)
    {
      v4 = @"GLKTextureInfoAlphaStatePremultiplied";
    }

    else
    {
      v4 = @"Unknown / Invalid";
    }
  }

  else
  {
    v4 = @"GLKTextureInfoAlphaStateNone";
  }

  if ([(GLKTextureInfo *)self textureOrigin])
  {
    if ([(GLKTextureInfo *)self textureOrigin]== GLKTextureInfoOriginTopLeft)
    {
      v5 = @"GLKTextureInfoOriginTopLeft";
    }

    else if ([(GLKTextureInfo *)self textureOrigin]== GLKTextureInfoOriginBottomLeft)
    {
      v5 = @"GLKTextureInfoOriginBottomLeft";
    }

    else
    {
      v5 = @"Unknown / Invaid";
    }
  }

  else
  {
    v5 = @"GLKTextureInfoOriginUnknown";
  }

  v7.receiver = self;
  v7.super_class = GLKTextureInfo;
  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@ \nname=%d, \ntarget=%@, \nwidth=%d, \nheight=%d, \nalphaState=%@, \ntextureOrigin=%@, \ncontainsMipmaps=%d", -[GLKTextureInfo description](&v7, sel_description), -[GLKTextureInfo name](self, "name"), v3, -[GLKTextureInfo width](self, "width"), -[GLKTextureInfo height](self, "height"), v4, v5, -[GLKTextureInfo containsMipmaps](self, "containsMipmaps")];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = GLKTextureInfo;
  [(GLKTextureInfo *)&v2 dealloc];
}

@end