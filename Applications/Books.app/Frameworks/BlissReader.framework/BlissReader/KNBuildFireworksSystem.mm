@interface KNBuildFireworksSystem
- ($94F468A8D4C62B317260615823C2B210)lifeSpan;
- ($94F468A8D4C62B317260615823C2B210)lifeSpanAtIndexPoint:(CGPoint)a3;
- ($C28CD4A45FD07A4F97CC9D5F91F25271)colorAtIndexPoint:(CGPoint)a3;
- ($E2C29196C7A5C696474C6955C5A9CE06)speedAtIndexPoint:(CGPoint)a3;
- (CGPoint)randomParticleSpeedMinMax;
- (CGPoint)startingPoint;
- (CGPoint)startingPointAtIndexPoint:(CGPoint)a3;
- (CGSize)randomParticleSizeMinMax;
- (double)scaleAtIndexPoint:(CGPoint)a3;
- (void)setupWithTexture:(id)a3 particleTextureSize:(CGSize)a4 reverseDrawOrder:(BOOL)a5;
@end

@implementation KNBuildFireworksSystem

- (void)setupWithTexture:(id)a3 particleTextureSize:(CGSize)a4 reverseDrawOrder:(BOOL)a5
{
  v5 = a5;
  height = a4.height;
  width = a4.width;
  v8 = a3;
  [(KNBuildFireworksSystem *)self fireworkStartingPositionX];
  v10 = v9;
  [(KNBuildFireworksSystem *)self objectSize];
  v12 = v11;
  [(KNBuildFireworksSystem *)self slideSize];
  v13 = 1.0;
  v14 = 1.0;
  if (v15 > 0.0)
  {
    [(KNBuildFireworksSystem *)self slideSize];
    v14 = v16;
  }

  [v8 frame];
  v18 = v17;
  [v8 frame];
  v20 = v19;
  v21 = [(KNBuildFireworksSystem *)self randomGenerator];
  [(KNBuildFireworksSystem *)self objectSize];
  v23 = v22;
  [(KNBuildFireworksSystem *)self slideSize];
  v25 = v24 / 10.0;
  if (v23 < v24 / 10.0)
  {
    v25 = v23;
  }

  v26 = -v25;
  [(KNBuildFireworksSystem *)self objectSize];
  [v21 doubleBetween:v26 :?];
  v28 = v27;

  [(KNBuildFireworksSystem *)self slideSize];
  if (v29 > 0.0)
  {
    [(KNBuildFireworksSystem *)self slideSize];
    v13 = v30;
  }

  v31 = v18 + v20 * (v10 * v12 / v14);
  v32 = v28 / v13;
  [v8 frame];
  v34 = v33;
  [v8 frame];
  self->_startingPoint.x = v31;
  self->_startingPoint.y = v34 + v35 * v32;
  TSURandom();
  v36 = [TSUColor colorWithHue:"colorWithHue:saturation:brightness:alpha:" saturation:? brightness:? alpha:?];
  [v36 redComponent];
  v38 = v37;
  [v36 greenComponent];
  v40 = v39;
  [v36 blueComponent];
  v41 = v38;
  v42 = v40;
  *&v43 = v43;
  self->_startingColorRGB.x = v41;
  self->_startingColorRGB.y = v42;
  self->_startingColorRGB.z = *&v43;
  v45.receiver = self;
  v45.super_class = KNBuildFireworksSystem;
  [(KNBuildFireworksSystem *)&v45 setupWithTexture:0 particleTextureSize:v5 reverseDrawOrder:width, height];
}

- (CGPoint)startingPointAtIndexPoint:(CGPoint)a3
{
  x = self->_startingPoint.x;
  y = self->_startingPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- ($C28CD4A45FD07A4F97CC9D5F91F25271)colorAtIndexPoint:(CGPoint)a3
{
  objc_opt_class();
  v4 = [(KNBuildFireworksSystem *)self randomGenerator];
  v5 = TSUDynamicCast();

  [v5 metalPoint3DRandomDirection];
  [(KNBuildFireworksSystem *)self colorRandomness];
  TSUClamp();
  v7 = v6;
  TSUClamp();
  v9 = v8;
  TSUClamp();
  v11 = v10;

  v12 = 1.0;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.var3 = v12;
  result.var2 = v15;
  result.var1 = v14;
  result.var0 = v13;
  return result;
}

- ($E2C29196C7A5C696474C6955C5A9CE06)speedAtIndexPoint:(CGPoint)a3
{
  v4 = [(KNBuildFireworksSystem *)self randomGenerator:a3.x];
  [v4 metalPoint3DRandomDirection];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(KNBuildFireworksSystem *)self randomParticleSpeedMinMax];
  v12 = v11;
  [(KNBuildFireworksSystem *)self randomParticleSpeedMinMax];
  [v4 doubleBetween:v12 :?];
  v14 = v13 * v6;
  v15 = v13 * v8;
  v16 = v13 * v10;

  v17 = v14;
  v18 = v15;
  v19 = v16;
  result.var2 = v19;
  result.var1 = v18;
  result.var0 = v17;
  return result;
}

- (double)scaleAtIndexPoint:(CGPoint)a3
{
  v4 = [(KNBuildFireworksSystem *)self randomGenerator:a3.x];
  [(KNBuildFireworksSystem *)self randomParticleSizeMinMax];
  v6 = v5;
  [(KNBuildFireworksSystem *)self randomParticleSizeMinMax];
  [v4 doubleBetween:v6 :?];
  v8 = v7;

  return v8;
}

- ($94F468A8D4C62B317260615823C2B210)lifeSpanAtIndexPoint:(CGPoint)a3
{
  v4 = [(KNBuildFireworksSystem *)self randomGenerator:a3.x];
  [(KNBuildFireworksSystem *)self lifeSpanMinDuration];
  [v4 doubleBetween:? :?];
  v6 = v5;

  v7 = 0.0;
  v8 = v6;
  result.var1 = v8;
  result.var0 = v7;
  return result;
}

- ($94F468A8D4C62B317260615823C2B210)lifeSpan
{
  start = self->_lifeSpan.start;
  duration = self->_lifeSpan.duration;
  result.var1 = duration;
  result.var0 = start;
  return result;
}

- (CGSize)randomParticleSizeMinMax
{
  width = self->_randomParticleSizeMinMax.width;
  height = self->_randomParticleSizeMinMax.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)randomParticleSpeedMinMax
{
  x = self->_randomParticleSpeedMinMax.x;
  y = self->_randomParticleSpeedMinMax.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)startingPoint
{
  x = self->_startingPoint.x;
  y = self->_startingPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end