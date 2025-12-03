@interface NTKPrideBetweenCircularQuad
- (float)_dialRadiusForSpline:(int)spline;
- (float)_rectRadiusForSpline:(int)spline;
- (float)softness;
- (id)noiseSamplePositionForControlPoint:(uint64_t)point inSpline:(uint64_t)spline;
- (id)renderPipelineManager;
- (id)splineColorAtIndex:(int)index;
@end

@implementation NTKPrideBetweenCircularQuad

- (id)renderPipelineManager
{
  if (qword_2CCB8 != -1)
  {
    sub_15214();
  }

  v3 = qword_2CCB0;

  return v3;
}

- (float)softness
{
  v3.receiver = self;
  v3.super_class = NTKPrideBetweenCircularQuad;
  [(NTKPrideCircularQuad *)&v3 softness];
  return result;
}

- (float)_dialRadiusForSpline:(int)spline
{
  v16.receiver = self;
  v16.super_class = NTKPrideBetweenCircularQuad;
  [(NTKPrideCircularQuad *)&v16 _dialRadiusForSpline:[(NTKPrideCircularQuad *)self numSplines]- 1];
  v6 = v5;
  v7 = spline / ([(NTKPrideCircularQuad *)self numSplines]- 2);
  if ([(NTKPrideCircularQuad *)self numSplines]- 1 > spline)
  {
    v8 = dword_1B0D0[spline];
    v9 = spline + 1;
    if (v8 == dword_1B0D0[v9])
    {
      v10 = spline - 1;
      if (v8 != dword_1B0D0[v10])
      {
        v11 = (v7 + (v10 / ([(NTKPrideCircularQuad *)self numSplines]- 3))) * 0.5;
        [(NTKPrideBetweenCircularQuad *)self softness];
        v7 = (v12 * 0.5) + v11;
      }
    }

    else
    {
      v13 = (v7 + (v9 / ([(NTKPrideCircularQuad *)self numSplines]- 3))) * 0.5;
      [(NTKPrideBetweenCircularQuad *)self softness];
      v7 = v13 - (v14 * 0.5);
    }
  }

  return v6 * v7;
}

- (float)_rectRadiusForSpline:(int)spline
{
  v16.receiver = self;
  v16.super_class = NTKPrideBetweenCircularQuad;
  [(NTKPrideCircularQuad *)&v16 _rectRadiusForSpline:[(NTKPrideCircularQuad *)self numSplines]- 1];
  v6 = v5;
  v7 = spline / ([(NTKPrideCircularQuad *)self numSplines]- 2);
  if ([(NTKPrideCircularQuad *)self numSplines]- 1 > spline)
  {
    v8 = dword_1B0D0[spline];
    v9 = spline + 1;
    if (v8 == dword_1B0D0[v9])
    {
      v10 = spline - 1;
      if (v8 != dword_1B0D0[v10])
      {
        v11 = (v7 + (v10 / ([(NTKPrideCircularQuad *)self numSplines]- 3))) * 0.5;
        [(NTKPrideBetweenCircularQuad *)self softness];
        v7 = (v12 * 0.5) + v11;
      }
    }

    else
    {
      v13 = (v7 + (v9 / ([(NTKPrideCircularQuad *)self numSplines]- 3))) * 0.5;
      [(NTKPrideBetweenCircularQuad *)self softness];
      v7 = v13 - (v14 * 0.5);
    }
  }

  return v6 * v7;
}

- (id)noiseSamplePositionForControlPoint:(uint64_t)point inSpline:(uint64_t)spline
{
  if (([self numSplines] - 1) <= spline)
  {
    return objc_msgSendSuper2(&v9, "noiseSamplePositionForControlPoint:inSpline:", point, spline, self, NTKPrideBetweenCircularQuad, v10.receiver, v10.super_class);
  }

  v7 = spline + 1;
  if (dword_1B0D0[spline] == dword_1B0D0[v7])
  {
    return objc_msgSendSuper2(&v9, "noiseSamplePositionForControlPoint:inSpline:", point, spline, self, NTKPrideBetweenCircularQuad, v10.receiver, v10.super_class);
  }

  else
  {
    return objc_msgSendSuper2(&v10, "noiseSamplePositionForControlPoint:inSpline:", point, v7, v9.receiver, v9.super_class, self, NTKPrideBetweenCircularQuad);
  }
}

- (id)splineColorAtIndex:(int)index
{
  v4 = index + 2;
  v5 = [(NTKPrideCircularQuad *)self numSplines]- 1;
  if (v4 >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  v9.receiver = self;
  v9.super_class = NTKPrideBetweenCircularQuad;
  v7 = [(NTKPrideCircularQuad *)&v9 splineColorAtIndex:v6];

  return v7;
}

@end