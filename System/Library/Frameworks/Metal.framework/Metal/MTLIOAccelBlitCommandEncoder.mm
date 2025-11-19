@interface MTLIOAccelBlitCommandEncoder
- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 toTexture:(id)a6 destinationSlice:(unint64_t)a7 destinationLevel:(unint64_t)a8 sliceCount:(unint64_t)a9 levelCount:(unint64_t)a10;
- (void)copyFromTexture:(id)a3 toTexture:(id)a4;
- (void)fillTexture:(id)a3 level:(unint64_t)a4 slice:(unint64_t)a5 region:(id *)a6 color:(id)a7;
- (void)fillTexture:(id)a3 level:(unint64_t)a4 slice:(unint64_t)a5 region:(id *)a6 color:(id)a7 pixelFormat:(unint64_t)a8;
@end

@implementation MTLIOAccelBlitCommandEncoder

- (void)fillTexture:(id)a3 level:(unint64_t)a4 slice:(unint64_t)a5 region:(id *)a6 color:(id)a7
{
  var3 = a7.var3;
  var2 = a7.var2;
  var1 = a7.var1;
  var0 = a7.var0;
  v16 = [a3 pixelFormat];
  v17 = *&a6->var0.var2;
  v18[0] = *&a6->var0.var0;
  v18[1] = v17;
  v18[2] = *&a6->var1.var1;
  [(MTLIOAccelBlitCommandEncoder *)self fillTexture:a3 level:a4 slice:a5 region:v18 color:v16 pixelFormat:var0, var1, var2, var3];
}

- (void)fillTexture:(id)a3 level:(unint64_t)a4 slice:(unint64_t)a5 region:(id *)a6 color:(id)a7 pixelFormat:(unint64_t)a8
{
  v21 = *MEMORY[0x1E69E9840];
  v17.f64[0] = a7.var0;
  v17.f64[1] = a7.var1;
  var2 = a7.var2;
  var3 = a7.var3;
  v13 = MTLPackColor(a8, &v17, v20);
  v14 = *&a6->var0.var2;
  v16[0] = *&a6->var0.var0;
  v16[1] = v14;
  v16[2] = *&a6->var1.var1;
  [(MTLIOAccelBlitCommandEncoder *)self fillTexture:a3 level:a4 slice:a5 region:v16 bytes:v20 length:v13];
  v15 = *MEMORY[0x1E69E9840];
}

- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 toTexture:(id)a6 destinationSlice:(unint64_t)a7 destinationLevel:(unint64_t)a8 sliceCount:(unint64_t)a9 levelCount:(unint64_t)a10
{
  if ([a3 width] >> a5 < 2)
  {
    v14 = 1;
  }

  else
  {
    v14 = [a3 width] >> a5;
  }

  v29 = a6;
  if ([a3 height] >> a5 < 2)
  {
    v15 = 1;
  }

  else
  {
    v15 = [a3 height] >> a5;
  }

  v30 = a5;
  v27 = self;
  v28 = a3;
  if ([a3 depth] >> a5 < 2)
  {
    v16 = 1;
  }

  else
  {
    v16 = [a3 depth] >> a5;
  }

  v17 = v14;
  if (a10)
  {
    v18 = v15;
    for (i = 0; i != a10; ++i)
    {
      v20 = v30;
      if (a9)
      {
        v21 = a7;
        v22 = a4;
        v23 = a9;
        do
        {
          memset(v33, 0, 24);
          memset(v32, 0, sizeof(v32));
          v31[0] = v17;
          v31[1] = v18;
          v31[2] = v16;
          [(MTLIOAccelBlitCommandEncoder *)v27 copyFromTexture:v28 sourceSlice:v22 sourceLevel:i + v20 sourceOrigin:v33 sourceSize:v31 toTexture:v29 destinationSlice:v21 destinationLevel:i + a8 destinationOrigin:v32];
          v20 = v30;
          ++v21;
          ++v22;
          --v23;
        }

        while (v23);
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

- (void)copyFromTexture:(id)a3 toTexture:(id)a4
{
  v7 = [a3 width];
  v8 = [a3 height];
  v9 = [a3 depth];
  v37 = v9;
  v38 = v8;
  v10 = [a4 width];
  v11 = [a4 height];
  v12 = [a4 depth];
  v35 = v12;
  v36 = v11;
  if (v7 <= v10 && v8 <= v11 && v9 <= v12)
  {
    v13 = 0;
    v14 = &v38;
    v15 = &v37;
    v16 = v7;
    v9 = v12;
    v8 = v11;
    v7 = v10;
  }

  else
  {
    v13 = 1;
    v14 = &v36;
    v15 = &v35;
    v16 = v10;
  }

  v17 = 0;
  v18 = *v14;
  v19 = *v15;
  while (v7 > v16 || v8 > v18 || v9 > v19)
  {
    v7 >>= 1;
    v8 >>= 1;
    ++v17;
    v9 >>= 1;
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

  v22 = [a3 mipmapLevelCount] - v20;
  v23 = [a4 mipmapLevelCount] - v21;
  if (v22 >= v23)
  {
    v24 = a4;
  }

  else
  {
    v24 = a3;
  }

  if (v22 >= v23)
  {
    v25 = v21;
  }

  else
  {
    v25 = v20;
  }

  v26 = [v24 mipmapLevelCount] - v25;
  v27 = [a3 arrayLength];
  if (([a3 textureType] - 5) >= 2)
  {
    v28 = 1;
  }

  else
  {
    v28 = 6;
  }

  v29 = v28 * v27;
  v30 = [a4 arrayLength];
  if (([a4 textureType] - 5) >= 2)
  {
    v31 = 1;
  }

  else
  {
    v31 = 6;
  }

  if (v29 >= v31 * v30)
  {
    v32 = a4;
  }

  else
  {
    v32 = a3;
  }

  v33 = [v32 arrayLength];
  if (([v32 textureType] - 5) >= 2)
  {
    v34 = 1;
  }

  else
  {
    v34 = 6;
  }

  [(MTLIOAccelBlitCommandEncoder *)self copyFromTexture:a3 sourceSlice:0 sourceLevel:v20 toTexture:a4 destinationSlice:0 destinationLevel:v21 sliceCount:v34 * v33 levelCount:v26, v35, v36];
}

@end