@interface SKPhysicsGrid
+ (id)gridFromTexture:(id)a3 alphaThreshold:(float)a4 accuracy:(float)a5;
+ (id)vectorGridFromTexture:(id)a3 accuracy:(float)a4;
- (void)spritesFromGrid:(id)a3 gridSize:(CGSize)a4 zPosition:(double)a5 edgeColor:(id)a6 interiorColor:(id)a7 spriteSize:(CGSize)a8 physicsBody:(id)a9;
- (void)spritesFromGrid:(id)a3 xDivisions:(int)a4 zPosition:(double)a5 spriteSize:(CGSize)a6 texture:(id)a7 physicsBody:(id)a8;
@end

@implementation SKPhysicsGrid

+ (id)gridFromTexture:(id)a3 alphaThreshold:(float)a4 accuracy:(float)a5
{
  v7 = a3;
  v8 = v7;
  LODWORD(v9) = 981668463;
  LODWORD(v10) = 1.0;
  if (a5 <= 1.0)
  {
    *&v10 = a5;
  }

  if (a5 >= 0.001)
  {
    v11 = *&v10;
  }

  else
  {
    v11 = 0.001;
  }

  v12 = [v7 _newTextureFromGLCache];
  v13 = v12;
  if (v12)
  {
    DataProvider = CGImageGetDataProvider(v12);
    v15 = CGDataProviderCopyData(DataProvider);
    BytePtr = CFDataGetBytePtr(v15);
    Width = CGImageGetWidth(v13);
    Height = CGImageGetHeight(v13);
    *&v19 = a4;
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

+ (id)vectorGridFromTexture:(id)a3 accuracy:(float)a4
{
  v5 = a3;
  v6 = v5;
  LODWORD(v7) = 981668463;
  LODWORD(v8) = 1.0;
  if (a4 <= 1.0)
  {
    *&v8 = a4;
  }

  if (a4 >= 0.001)
  {
    v9 = *&v8;
  }

  else
  {
    v9 = 0.001;
  }

  v10 = [v5 _createCGImage];
  v11 = v10;
  if (v10)
  {
    DataProvider = CGImageGetDataProvider(v10);
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

- (void)spritesFromGrid:(id)a3 gridSize:(CGSize)a4 zPosition:(double)a5 edgeColor:(id)a6 interiorColor:(id)a7 spriteSize:(CGSize)a8 physicsBody:(id)a9
{
  height = a8.height;
  width = a8.width;
  v15 = a4.height;
  v16 = a4.width;
  v36 = a3;
  v18 = a6;
  v19 = a7;
  v20 = a9;
  if (v36)
  {
    [(SKPhysicsGrid *)self height];
    v22 = v21;
    [(SKPhysicsGrid *)self width];
    v24 = v23;
    v25 = self;
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
            v29 = [(SKPhysicsGrid *)v25 gridDataAtX:v28 y:v26 z:1];
            if (v29)
            {
              if (v29 == 2)
              {
                v30 = v19;
              }

              else
              {
                v30 = v18;
              }

              v31 = [SKSpriteNode spriteNodeWithColor:v30 size:width, height];
              [(SKPhysicsGrid *)v25 width];
              v33 = v32;
              [(SKPhysicsGrid *)v25 height];
              [v31 setPosition:{v16 * (v28 / v33), v15 * (v26 / v34)}];
              [v31 setZPosition:a5];
              v35 = [v20 copy];
              [v31 setPhysicsBody:v35];

              [v36 addChild:v31];
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

- (void)spritesFromGrid:(id)a3 xDivisions:(int)a4 zPosition:(double)a5 spriteSize:(CGSize)a6 texture:(id)a7 physicsBody:(id)a8
{
  height = a6.height;
  width = a6.width;
  v31 = a3;
  v12 = a7;
  v13 = a8;
  HIDWORD(v26) = a4;
  if (a4 >= 1 && v31 && v12)
  {
    v14 = height / width;
    v15 = self;
    *&v26 = v14;
    if (v14 > 0.0)
    {
      v16 = 1.0 / a4;
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
          if (([(SKPhysicsGrid *)v15 isGridRegionOccupied:v22 y:v18 width:v16 height:v16, v26]& 1) != 0)
          {
            v23 = [SKTexture textureWithRect:v12 inTexture:v22, v19, v16, v16];
            v24 = [SKSpriteNode spriteNodeWithTexture:v23 size:width * v16, height * v16];
            [v24 setPosition:{width * v22, v20}];
            [v24 setZPosition:a5];
            v25 = [v13 copy];
            [v24 setPhysicsBody:v25];

            [v31 addChild:v24];
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