@interface ARUISpritesStaticBufferFactory
+ (id)spriteIndexBufferWithDevice:(id)a3;
+ (id)spritePositionsBufferWithDevice:(id)a3;
+ (void)clearCaches;
@end

@implementation ARUISpritesStaticBufferFactory

+ (id)spritePositionsBufferWithDevice:(id)a3
{
  v3 = __spriteVertexBuffer;
  if (!__spriteVertexBuffer)
  {
    v4 = a3;
    v5 = malloc_type_malloc(0x80uLL, 0x10000406D1CE384uLL);
    *v5 = xmmword_1CFD91220;
    v5[2] = 0x3F80000000000000;
    *(v5 + 2) = xmmword_1CFD91230;
    __asm { FMOV            V0.2S, #1.0 }

    v5[6] = _D0;
    *(v5 + 4) = xmmword_1CFD91240;
    v5[10] = 0;
    *(v5 + 6) = xmmword_1CFD91250;
    v5[14] = 1065353216;
    v11 = [v4 newBufferWithBytes:v5 length:128 options:0];

    v12 = __spriteVertexBuffer;
    __spriteVertexBuffer = v11;

    [__spriteVertexBuffer setLabel:@"Sprite verticies"];
    free(v5);
    v3 = __spriteVertexBuffer;
  }

  return v3;
}

+ (id)spriteIndexBufferWithDevice:(id)a3
{
  v3 = __spriteIndexBuffer;
  if (!__spriteIndexBuffer)
  {
    v4 = a3;
    v5 = malloc_type_malloc(0xCuLL, 0x1000040BDFB0063uLL);
    *v5 = 0x1000200010000;
    v5[2] = 196610;
    v6 = [v4 newBufferWithBytes:v5 length:12 options:0];

    v7 = __spriteIndexBuffer;
    __spriteIndexBuffer = v6;

    [__spriteIndexBuffer setLabel:@"Sprite indicies"];
    free(v5);
    v3 = __spriteIndexBuffer;
  }

  return v3;
}

+ (void)clearCaches
{
  v3 = __spriteVertexBuffer;
  if (__spriteVertexBuffer)
  {
    __spriteVertexBuffer = 0;

    v2 = vars8;
  }

  v4 = __spriteIndexBuffer;
  if (__spriteIndexBuffer)
  {
    __spriteIndexBuffer = 0;
  }
}

@end