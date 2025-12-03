@interface SKPhysicsGrid
+ (id)gridFromTexture:(id)texture alphaThreshold:(float)threshold accuracy:(float)accuracy;
+ (id)vectorGridFromTexture:(id)texture accuracy:(float)accuracy;
- (void)spritesFromGrid:(id)grid gridSize:(CGSize)size zPosition:(double)position edgeColor:(id)color interiorColor:(id)interiorColor spriteSize:(CGSize)spriteSize physicsBody:(id)body;
- (void)spritesFromGrid:(id)grid xDivisions:(int)divisions zPosition:(double)position spriteSize:(CGSize)size texture:(id)texture physicsBody:(id)body;
@end

@implementation SKPhysicsGrid

+ (id)gridFromTexture:(id)texture alphaThreshold:(float)threshold accuracy:(float)accuracy
{
  textureCopy = texture;
  v8 = textureCopy;
  LODWORD(v9) = 981668463;
  LODWORD(v10) = 1.0;
  if (accuracy <= 1.0)
  {
    *&v10 = accuracy;
  }

  if (accuracy >= 0.001)
  {
    v11 = *&v10;
  }

  else
  {
    v11 = 0.001;
  }

  _newTextureFromGLCache = [textureCopy _newTextureFromGLCache];
  v13 = _newTextureFromGLCache;
  if (_newTextureFromGLCache)
  {
    DataProvider = CGImageGetDataProvider(_newTextureFromGLCache);
    v15 = CGDataProviderCopyData(DataProvider);
    BytePtr = CFDataGetBytePtr(v15);
    Width = CGImageGetWidth(v13);
    Height = CGImageGetHeight(v13);
    *&v19 = threshold;
    *&v20 = v11;
    v21 = [MEMORY[0x277D3D138] gridFromRGBAU8PixelData:BytePtr imageWidth:Width imageHeight:Height alphaThreshold:v19 accuracy:v20];
    CGImageRelease(v13);
    CFRelease(v15);
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

+ (id)vectorGridFromTexture:(id)texture accuracy:(float)accuracy
{
  textureCopy = texture;
  v6 = textureCopy;
  LODWORD(v7) = 981668463;
  LODWORD(v8) = 1.0;
  if (accuracy <= 1.0)
  {
    *&v8 = accuracy;
  }

  if (accuracy >= 0.001)
  {
    v9 = *&v8;
  }

  else
  {
    v9 = 0.001;
  }

  _createCGImage = [textureCopy _createCGImage];
  v11 = _createCGImage;
  if (_createCGImage)
  {
    DataProvider = CGImageGetDataProvider(_createCGImage);
    v13 = CGDataProviderCopyData(DataProvider);
    BytePtr = CFDataGetBytePtr(v13);
    Width = CGImageGetWidth(v11);
    Height = CGImageGetHeight(v11);
    *&v17 = v9;
    v18 = [MEMORY[0x277D3D138] vectorGridFromRGBAU8PixelData:BytePtr imageWidth:Width imageHeight:Height accuracy:v17];
    CGImageRelease(v11);
    CFRelease(v13);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)spritesFromGrid:(id)grid gridSize:(CGSize)size zPosition:(double)position edgeColor:(id)color interiorColor:(id)interiorColor spriteSize:(CGSize)spriteSize physicsBody:(id)body
{
  height = spriteSize.height;
  width = spriteSize.width;
  v15 = size.height;
  v16 = size.width;
  gridCopy = grid;
  colorCopy = color;
  interiorColorCopy = interiorColor;
  bodyCopy = body;
  if (gridCopy)
  {
    [(SKPhysicsGrid *)self height];
    v22 = v21;
    [(SKPhysicsGrid *)self width];
    v24 = v23;
    selfCopy = self;
    if (v22 >= 1)
    {
      v26 = 0;
      v27 = v24;
      do
      {
        if (v27 >= 1)
        {
          v28 = 0;
          do
          {
            v29 = [(SKPhysicsGrid *)selfCopy gridDataAtX:v28 y:v26 z:1];
            if (v29)
            {
              if (v29 == 2)
              {
                v30 = interiorColorCopy;
              }

              else
              {
                v30 = colorCopy;
              }

              height = [SKSpriteNode spriteNodeWithColor:v30 size:width, height];
              [(SKPhysicsGrid *)selfCopy width];
              v33 = v32;
              [(SKPhysicsGrid *)selfCopy height];
              [height setPosition:{v16 * (v28 / v33), v15 * (v26 / v34)}];
              [height setZPosition:position];
              v35 = [bodyCopy copy];
              [height setPhysicsBody:v35];

              [gridCopy addChild:height];
            }

            v28 = (v28 + 5);
          }

          while (v28 < v27);
        }

        v26 = (v26 + 5);
      }

      while (v26 < v22);
    }
  }

  else
  {
    NSLog(&cfstr_CanTCreateGrid.isa);
  }
}

- (void)spritesFromGrid:(id)grid xDivisions:(int)divisions zPosition:(double)position spriteSize:(CGSize)size texture:(id)texture physicsBody:(id)body
{
  height = size.height;
  width = size.width;
  gridCopy = grid;
  textureCopy = texture;
  bodyCopy = body;
  HIDWORD(v26) = divisions;
  if (divisions >= 1 && gridCopy && textureCopy)
  {
    v14 = height / width;
    selfCopy = self;
    *&v26 = v14;
    if (v14 > 0.0)
    {
      v16 = 1.0 / divisions;
      v17 = 0.0;
      do
      {
        v18 = v17;
        v28 = v17;
        v19 = v17;
        v20 = height * v17;
        v21 = HIDWORD(v26);
        v22 = 0.0;
        do
        {
          v22 = v16 + v22;
          if (([(SKPhysicsGrid *)selfCopy isGridRegionOccupied:v22 y:v18 width:v16 height:v16, v26]& 1) != 0)
          {
            v23 = [SKTexture textureWithRect:textureCopy inTexture:v22, v19, v16, v16];
            v24 = [SKSpriteNode spriteNodeWithTexture:v23 size:width * v16, height * v16];
            [v24 setPosition:{width * v22, v20}];
            [v24 setZPosition:position];
            v25 = [bodyCopy copy];
            [v24 setPhysicsBody:v25];

            [gridCopy addChild:v24];
          }

          --v21;
        }

        while (v21);
        v17 = v16 + v28;
      }

      while ((v16 + v28) < *&v26);
    }
  }

  else
  {
    NSLog(&cfstr_CanTCreateGrid_0.isa);
  }
}

@end