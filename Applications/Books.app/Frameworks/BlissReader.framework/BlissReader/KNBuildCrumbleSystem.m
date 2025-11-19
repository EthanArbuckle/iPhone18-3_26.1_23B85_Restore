@interface KNBuildCrumbleSystem
+ (id)newParticleSystemWithNumberOfParticles:(unint64_t)a3 objectSize:(CGSize)a4 slideSize:(CGSize)a5 duration:(double)a6 direction:(unint64_t)a7 shader:(id)a8 percentOfCellsToSplit:(double)a9 randomGenerator:(id)a10 metalContext:(id)a11;
- ($94F468A8D4C62B317260615823C2B210)centerAtIndexPoint:(CGPoint)a3;
- ($94F468A8D4C62B317260615823C2B210)lifeSpanAtIndexPoint:(CGPoint)a3;
- ($94F468A8D4C62B317260615823C2B210)vertexPositionAtVertexIndex:(unint64_t)a3 particleIndexPoint:(CGPoint)a4;
- ($E2C29196C7A5C696474C6955C5A9CE06)rotationAtIndexPoint:(CGPoint)a3;
- ($E2C29196C7A5C696474C6955C5A9CE06)speedAtIndexPoint:(CGPoint)a3;
- (void)dealloc;
- (void)p_setupParameters;
@end

@implementation KNBuildCrumbleSystem

- (void)p_setupParameters
{
  v49 = [(KNBuildCrumbleSystem *)self randomGenerator];
  self->_cellParameters = malloc_type_calloc(0x28uLL, [(TSDGPUVoronoiTriangleData *)self->_voronoiTriangleData cellCount], 0x60DC1DDEuLL);
  if ([(TSDGPUVoronoiTriangleData *)self->_voronoiTriangleData cellCount])
  {
    v3 = 0;
    v4 = 0;
    while (1)
    {
      v5 = [(TSDGPUVoronoiTriangleData *)self->_voronoiTriangleData cells];
      v6 = [v5 objectAtIndexedSubscript:v4];
      [v6 centerPoint];
      v8 = v7;
      v10 = v9;

      [v49 metalPoint3DRandomDirection];
      v44 = v11;
      v47 = v12;
      v48 = v13;
      [v49 randomDouble];
      v15 = v14;
      [v49 metalPoint3DRandomDirection];
      v46 = v16;
      v18 = v17;
      v20 = v19;
      [(KNBuildCrumbleSystem *)self objectSize];
      v22 = v21 * 0.5;
      v23 = fabsf(v18);
      if (v22 >= v10)
      {
        v24 = -v23;
      }

      else
      {
        v24 = v23;
      }

      v45 = LODWORD(v24);
      [v49 randomDouble];
      v26 = v25;
      [(KNBuildCrumbleSystem *)self speedMaxLimiter];
      v43 = pow(v26, v27);
      v28 = [(KNBuildCrumbleSystem *)self direction];
      if (v28 == (&stru_20.maxprot + 3))
      {
        goto LABEL_12;
      }

      if (v28 != &dword_C && v28 != (&dword_8 + 3))
      {
        break;
      }

      [(KNBuildCrumbleSystem *)self objectSize];
LABEL_13:
      v32.f64[0] = v15 * v15;
      v33 = vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(__PAIR64__(v44, v47)), v15 * v15));
      v32.f64[1] = v43;
      v34.i32[0] = v45;
      v34.f32[1] = -fabsf(v20);
      v35 = vcvt_f32_f64(vmulq_f64(v32, vcvtq_f64_f32(__PAIR64__(v46, v48))));
      v36 = vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(v34), v43));
      [(KNBuildCrumbleSystem *)self lifeSpanDelay];
      [(KNBuildCrumbleSystem *)self lifeSpanRandomness];
      v37 = [(KNBuildCrumbleSystem *)self randomGenerator];
      [v37 doubleBetween:-1.0 :1.0];

      [(KNBuildCrumbleSystem *)self lifeSpanDelay];
      TSUClamp();
      v39 = v38;
      [(KNBuildCrumbleSystem *)self lifeSpanDelay];
      v41 = v39;
      *&v40 = 1.0 - v40;
      v42 = &self->_cellParameters[v3];
      v42->var0.var0 = v8;
      v42->var0.var1 = v10;
      *&v42->var1.var0 = v33;
      *&v42->var1.var2 = v35;
      *&v42->var2.var1 = v36;
      v42->var3.var0 = v41;
      v42->var3.var1 = *&v40;
      ++v4;
      ++v3;
      if (v4 >= [(TSDGPUVoronoiTriangleData *)self->_voronoiTriangleData cellCount])
      {
        goto LABEL_14;
      }
    }

    v29 = +[TSUAssertionHandler currentHandler];
    v30 = [NSString stringWithUTF8String:"[KNBuildCrumbleSystem p_setupParameters]"];
    v31 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Keynote/Animations/Builds/KNBuildCrumble.m"];
    [v29 handleFailureInFunction:v30 file:v31 lineNumber:736 description:@"Invalid direction!"];

LABEL_12:
    TSURandomBetween();
    goto LABEL_13;
  }

LABEL_14:
}

+ (id)newParticleSystemWithNumberOfParticles:(unint64_t)a3 objectSize:(CGSize)a4 slideSize:(CGSize)a5 duration:(double)a6 direction:(unint64_t)a7 shader:(id)a8 percentOfCellsToSplit:(double)a9 randomGenerator:(id)a10 metalContext:(id)a11
{
  height = a5.height;
  width = a5.width;
  v17 = a4.height;
  v18 = a4.width;
  v21 = a8;
  v22 = a10;
  v23 = a11;
  if (!v22)
  {
    v24 = +[TSUAssertionHandler currentHandler];
    v25 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[KNBuildCrumbleSystem newParticleSystemWithNumberOfParticles:objectSize:slideSize:duration:direction:shader:percentOfCellsToSplit:randomGenerator:metalContext:]");
    v26 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Keynote/Animations/Builds/KNBuildCrumble.m"];
    [v24 handleFailureInFunction:v25 file:v26 lineNumber:762 description:{@"invalid nil value for '%s'", "randGen"}];
  }

  v27 = [TSDGPUVoronoiTriangleData alloc];
  TSDRectWithSize();
  v28 = [v27 initWithPoints:a3 clippedToRect:v22 percentOfCellsToSplit:? randomGenerator:?];
  v31.receiver = a1;
  v31.super_class = &OBJC_METACLASS___KNBuildCrumbleSystem;
  v29 = objc_msgSendSuper2(&v31, "newParticleSystemWithParticleSize:particleSystemSize:objectSize:slideSize:duration:direction:randomGenerator:shader:metalContext:", a7, v22, v21, v23, CGSizeZero.width, CGSizeZero.height, [v28 triangleCount], 1.0, v18, v17, width, height, *&a6);
  if (v29)
  {
    [v29 setTriangleCount:{objc_msgSend(v28, "triangleCount")}];
    objc_storeStrong(v29 + 1, v28);
  }

  return v29;
}

- (void)dealloc
{
  free(self->_cellParameters);
  v3.receiver = self;
  v3.super_class = KNBuildCrumbleSystem;
  [(KNBuildCrumbleSystem *)&v3 dealloc];
}

- ($94F468A8D4C62B317260615823C2B210)vertexPositionAtVertexIndex:(unint64_t)a3 particleIndexPoint:(CGPoint)a4
{
  v6 = [(KNBuildCrumbleSystem *)self indexFromPoint:a4.x, a4.y];
  v7 = [(TSDGPUVoronoiTriangleData *)self->_voronoiTriangleData cellFromTriangleIndex:v6];
  v8 = [(TSDGPUVoronoiTriangleData *)self->_voronoiTriangleData triangleIndexInCellFromGlobalTriangleIndex:v6];
  v9 = ([v7 vertexData] + 24 * v8 + 8 * a3);
  v10 = *v9;
  v11 = v9[1];

  v12 = v10;
  v13 = v11;
  result.var1 = v13;
  result.var0 = v12;
  return result;
}

- ($94F468A8D4C62B317260615823C2B210)centerAtIndexPoint:(CGPoint)a3
{
  v3 = [(TSDGPUVoronoiTriangleData *)self->_voronoiTriangleData cellFromTriangleIndex:[(KNBuildCrumbleSystem *)self indexFromPoint:a3.x, a3.y]];
  [v3 centerPoint];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.var1 = v9;
  result.var0 = v8;
  return result;
}

- ($E2C29196C7A5C696474C6955C5A9CE06)rotationAtIndexPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (!self->_cellParameters)
  {
    [(KNBuildCrumbleSystem *)self p_setupParameters];
  }

  v6 = &self->_cellParameters[[(TSDGPUVoronoiTriangleData *)self->_voronoiTriangleData cellIndexFromTriangleIndex:[(KNBuildCrumbleSystem *)self indexFromPoint:x, y]]];
  var0 = v6->var1.var0;
  var1 = v6->var1.var1;
  var2 = v6->var1.var2;
  result.var2 = var2;
  result.var1 = var1;
  result.var0 = var0;
  return result;
}

- ($E2C29196C7A5C696474C6955C5A9CE06)speedAtIndexPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (!self->_cellParameters)
  {
    [(KNBuildCrumbleSystem *)self p_setupParameters];
  }

  v6 = &self->_cellParameters[[(TSDGPUVoronoiTriangleData *)self->_voronoiTriangleData cellIndexFromTriangleIndex:[(KNBuildCrumbleSystem *)self indexFromPoint:x, y]]];
  var0 = v6->var2.var0;
  var1 = v6->var2.var1;
  var2 = v6->var2.var2;
  result.var2 = var2;
  result.var1 = var1;
  result.var0 = var0;
  return result;
}

- ($94F468A8D4C62B317260615823C2B210)lifeSpanAtIndexPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (!self->_cellParameters)
  {
    [(KNBuildCrumbleSystem *)self p_setupParameters];
  }

  v6 = &self->_cellParameters[[(TSDGPUVoronoiTriangleData *)self->_voronoiTriangleData cellIndexFromTriangleIndex:[(KNBuildCrumbleSystem *)self indexFromPoint:x, y]]];
  var0 = v6->var3.var0;
  var1 = v6->var3.var1;
  result.var1 = var1;
  result.var0 = var0;
  return result;
}

@end