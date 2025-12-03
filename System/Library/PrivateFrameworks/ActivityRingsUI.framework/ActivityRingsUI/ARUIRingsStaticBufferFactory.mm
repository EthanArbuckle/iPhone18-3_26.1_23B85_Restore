@interface ARUIRingsStaticBufferFactory
+ (id)ringIndexBufferWithDevice:(id)device;
+ (id)ringVertexPositionsBufferWithDevice:(id)device;
+ (void)clearCaches;
@end

@implementation ARUIRingsStaticBufferFactory

+ (id)ringVertexPositionsBufferWithDevice:(id)device
{
  v3 = __ringVertexPositionsBuffer;
  if (!__ringVertexPositionsBuffer)
  {
    deviceCopy = device;
    v5 = objc_alloc_init(ARUIRingsGeometry);
    [(ARUIRingsGeometry *)v5 setCircleSegments:30];
    v6 = 32 * [(ARUIRingsGeometry *)v5 vertexCount];
    v7 = malloc_type_malloc(v6, 0x68D0062CuLL);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __68__ARUIRingsStaticBufferFactory_ringVertexPositionsBufferWithDevice___block_invoke;
    v11[3] = &__block_descriptor_40_e23_v32__0I8I12f16f20f24f28l;
    v11[4] = v7;
    [(ARUIRingsGeometry *)v5 enumerateVertexGeometryWithBlock:v11];
    v8 = [deviceCopy newBufferWithBytes:v7 length:v6 options:0];

    v9 = __ringVertexPositionsBuffer;
    __ringVertexPositionsBuffer = v8;

    [__ringVertexPositionsBuffer setLabel:@"Verticies"];
    free(v7);

    v3 = __ringVertexPositionsBuffer;
  }

  return v3;
}

float __68__ARUIRingsStaticBufferFactory_ringVertexPositionsBufferWithDevice___block_invoke(uint64_t a1, double a2, float a3, __n128 a4, float a5, uint64_t a6, unsigned int a7)
{
  v7 = (*(a1 + 32) + 32 * a7);
  a4.n128_f32[1] = a5;
  a4.n128_u32[2] = 0;
  result = 1.0;
  a4.n128_u32[3] = 1.0;
  *v7 = a4;
  v7[1].n128_f32[0] = a3;
  v7[1].n128_u32[1] = 0;
  v9 = (*(a1 + 32) + 32 * (a7 + 1));
  *v9 = a4;
  v9[1].n128_f32[0] = a3;
  v9[1].n128_u32[1] = 1;
  return result;
}

+ (id)ringIndexBufferWithDevice:(id)device
{
  v3 = __ringIndexBuffer;
  if (!__ringIndexBuffer)
  {
    deviceCopy = device;
    v5 = objc_alloc_init(ARUIRingsGeometry);
    [(ARUIRingsGeometry *)v5 setCircleSegments:30];
    v6 = 2 * [(ARUIRingsGeometry *)v5 indexCount];
    connectedIndiciesGeometry = [(ARUIRingsGeometry *)v5 connectedIndiciesGeometry];
    v8 = [deviceCopy newBufferWithBytes:connectedIndiciesGeometry length:v6 options:0];

    v9 = __ringIndexBuffer;
    __ringIndexBuffer = v8;

    [__ringIndexBuffer setLabel:@"Indicies"];
    free(connectedIndiciesGeometry);

    v3 = __ringIndexBuffer;
  }

  return v3;
}

+ (void)clearCaches
{
  v3 = __ringVertexPositionsBuffer;
  if (__ringVertexPositionsBuffer)
  {
    __ringVertexPositionsBuffer = 0;

    v2 = vars8;
  }

  v4 = __ringIndexBuffer;
  if (__ringIndexBuffer)
  {
    __ringIndexBuffer = 0;
  }
}

@end