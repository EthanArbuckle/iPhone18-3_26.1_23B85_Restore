@interface MTLIOAccelBlitCommandEncoder
- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)destinationLevel sliceCount:(unint64_t)count levelCount:(unint64_t)self0;
- (void)copyFromTexture:(id)texture toTexture:(id)toTexture;
- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region color:(id)color;
- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region color:(id)color pixelFormat:(unint64_t)format;
@end

@implementation MTLIOAccelBlitCommandEncoder

- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region color:(id)color
{
  var3 = color.var3;
  var2 = color.var2;
  var1 = color.var1;
  var0 = color.var0;
  pixelFormat = [texture pixelFormat];
  v17 = *&region->var0.var2;
  v18[0] = *&region->var0.var0;
  v18[1] = v17;
  v18[2] = *&region->var1.var1;
  [(MTLIOAccelBlitCommandEncoder *)self fillTexture:texture level:level slice:slice region:v18 color:pixelFormat pixelFormat:var0, var1, var2, var3];
}

- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region color:(id)color pixelFormat:(unint64_t)format
{
  v21 = *MEMORY[0x1E69E9840];
  v17.f64[0] = color.var0;
  v17.f64[1] = color.var1;
  var2 = color.var2;
  var3 = color.var3;
  v13 = MTLPackColor(format, &v17, v20);
  v14 = *&region->var0.var2;
  v16[0] = *&region->var0.var0;
  v16[1] = v14;
  v16[2] = *&region->var1.var1;
  [(MTLIOAccelBlitCommandEncoder *)self fillTexture:texture level:level slice:slice region:v16 bytes:v20 length:v13];
  v15 = *MEMORY[0x1E69E9840];
}

- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)destinationLevel sliceCount:(unint64_t)count levelCount:(unint64_t)self0
{
  if ([texture width] >> level < 2)
  {
    v14 = 1;
  }

  else
  {
    v14 = [texture width] >> level;
  }

  toTextureCopy = toTexture;
  if ([texture height] >> level < 2)
  {
    v15 = 1;
  }

  else
  {
    v15 = [texture height] >> level;
  }

  levelCopy = level;
  selfCopy = self;
  textureCopy = texture;
  if ([texture depth] >> level < 2)
  {
    v16 = 1;
  }

  else
  {
    v16 = [texture depth] >> level;
  }

  v17 = v14;
  if (levelCount)
  {
    v18 = v15;
    for (i = 0; i != levelCount; ++i)
    {
      v20 = levelCopy;
      if (count)
      {
        destinationSliceCopy = destinationSlice;
        sliceCopy = slice;
        countCopy = count;
        do
        {
          memset(v33, 0, 24);
          memset(v32, 0, sizeof(v32));
          v31[0] = v17;
          v31[1] = v18;
          v31[2] = v16;
          [(MTLIOAccelBlitCommandEncoder *)selfCopy copyFromTexture:textureCopy sourceSlice:sliceCopy sourceLevel:i + v20 sourceOrigin:v33 sourceSize:v31 toTexture:toTextureCopy destinationSlice:destinationSliceCopy destinationLevel:i + destinationLevel destinationOrigin:v32];
          v20 = levelCopy;
          ++destinationSliceCopy;
          ++sliceCopy;
          --countCopy;
        }

        while (countCopy);
      }

      if (v17 >> 1 <= 1)
      {
        v17 = 1;
      }

      else
      {
        v17 >>= 1;
      }

      if (v18 >> 1 <= 1)
      {
        v18 = 1;
      }

      else
      {
        v18 >>= 1;
      }

      if (v16 >> 1 <= 1)
      {
        v16 = 1;
      }

      else
      {
        v16 >>= 1;
      }
    }
  }
}

- (void)copyFromTexture:(id)texture toTexture:(id)toTexture
{
  width = [texture width];
  height = [texture height];
  depth = [texture depth];
  v37 = depth;
  v38 = height;
  width2 = [toTexture width];
  height2 = [toTexture height];
  depth2 = [toTexture depth];
  v35 = depth2;
  v36 = height2;
  if (width <= width2 && height <= height2 && depth <= depth2)
  {
    v13 = 0;
    v14 = &v38;
    v15 = &v37;
    v16 = width;
    depth = depth2;
    height = height2;
    width = width2;
  }

  else
  {
    v13 = 1;
    v14 = &v36;
    v15 = &v35;
    v16 = width2;
  }

  v17 = 0;
  v18 = *v14;
  v19 = *v15;
  while (width > v16 || height > v18 || depth > v19)
  {
    width >>= 1;
    height >>= 1;
    ++v17;
    depth >>= 1;
  }

  if (v13)
  {
    v20 = v17;
  }

  else
  {
    v20 = 0;
  }

  if (v13)
  {
    v21 = 0;
  }

  else
  {
    v21 = v17;
  }

  v22 = [texture mipmapLevelCount] - v20;
  v23 = [toTexture mipmapLevelCount] - v21;
  if (v22 >= v23)
  {
    textureCopy = toTexture;
  }

  else
  {
    textureCopy = texture;
  }

  if (v22 >= v23)
  {
    v25 = v21;
  }

  else
  {
    v25 = v20;
  }

  v26 = [textureCopy mipmapLevelCount] - v25;
  arrayLength = [texture arrayLength];
  if (([texture textureType] - 5) >= 2)
  {
    v28 = 1;
  }

  else
  {
    v28 = 6;
  }

  v29 = v28 * arrayLength;
  arrayLength2 = [toTexture arrayLength];
  if (([toTexture textureType] - 5) >= 2)
  {
    v31 = 1;
  }

  else
  {
    v31 = 6;
  }

  if (v29 >= v31 * arrayLength2)
  {
    textureCopy2 = toTexture;
  }

  else
  {
    textureCopy2 = texture;
  }

  arrayLength3 = [textureCopy2 arrayLength];
  if (([textureCopy2 textureType] - 5) >= 2)
  {
    v34 = 1;
  }

  else
  {
    v34 = 6;
  }

  [(MTLIOAccelBlitCommandEncoder *)self copyFromTexture:texture sourceSlice:0 sourceLevel:v20 toTexture:toTexture destinationSlice:0 destinationLevel:v21 sliceCount:v34 * arrayLength3 levelCount:v26, v35, v36];
}

@end