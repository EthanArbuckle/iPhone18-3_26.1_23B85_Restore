@interface PKInkProperties
+ ($01BB1521EC52D44A8E7628F5261DCEC8)controlPointsForFunctionType:(unint64_t)a3;
+ ($F24F406B2B787EFB06265DBA3D28CBD5)rangeForInkProperty:(unint64_t)a3;
+ ($F24F406B2B787EFB06265DBA3D28CBD5)rangeForInput:(unint64_t)a3;
+ (BOOL)bezierControlPoints:(id)a3 isEqual:(id)a4;
+ (double)defaultValueForInput:(unint64_t)a3;
+ (id)arrayForBezierControlPoints:(id)a3;
+ (unint64_t)functionTypeForBezierControlPoints:(id)a3;
+ (unint64_t)functionTypeForName:(id)a3;
@end

@implementation PKInkProperties

+ ($F24F406B2B787EFB06265DBA3D28CBD5)rangeForInkProperty:(unint64_t)a3
{
  v3 = 1.0;
  if (a3 <= 4)
  {
    v3 = dbl_1C801D918[a3];
  }

  v4 = 0.0;
  result.var1 = v3;
  result.var0 = v4;
  return result;
}

+ ($F24F406B2B787EFB06265DBA3D28CBD5)rangeForInput:(unint64_t)a3
{
  v3 = a3 - 1;
  if (a3 - 1 > 0xA)
  {
    v5 = 1.0;
    v4 = 0.0;
  }

  else
  {
    v4 = dbl_1C801D940[v3];
    v5 = dbl_1C801D998[v3];
  }

  result.var1 = v5;
  result.var0 = v4;
  return result;
}

+ (double)defaultValueForInput:(unint64_t)a3
{
  result = 0.0;
  if (a3 - 1 <= 8)
  {
    return dbl_1C801D9F0[a3 - 1];
  }

  return result;
}

+ (unint64_t)functionTypeForName:(id)a3
{
  v3 = a3;
  v4 = +[PKInkProperties functionNames];
  v5 = [v4 objectForKeyedSubscript:v3];

  v6 = [v5 integerValue];
  return v6;
}

+ ($01BB1521EC52D44A8E7628F5261DCEC8)controlPointsForFunctionType:(unint64_t)a3
{
  v3 = a3 - 1;
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  if (a3 - 1 <= 4)
  {
    v5 = dbl_1C801DA38[v3];
    v6 = dbl_1C801DA60[v3];
    v4 = 1.0;
    v7 = dbl_1C801DA88[v3];
  }

  result.var3 = v4;
  result.var2 = v5;
  result.var1 = v6;
  result.var0 = v7;
  return result;
}

+ (unint64_t)functionTypeForBezierControlPoints:(id)a3
{
  var3 = a3.var3;
  var2 = a3.var2;
  var1 = a3.var1;
  var0 = a3.var0;
  v7 = 2;
  [PKInkProperties controlPointsForFunctionType:2];
  if (![PKInkProperties bezierControlPoints:var0 isEqual:var1, var2, var3, v8, v9, v10, v11])
  {
    v7 = 3;
    [PKInkProperties controlPointsForFunctionType:3];
    if (![PKInkProperties bezierControlPoints:var0 isEqual:var1, var2, var3, v12, v13, v14, v15])
    {
      v7 = 5;
      [PKInkProperties controlPointsForFunctionType:5];
      if (![PKInkProperties bezierControlPoints:var0 isEqual:var1, var2, var3, v16, v17, v18, v19])
      {
        v7 = 4;
        [PKInkProperties controlPointsForFunctionType:4];
        if (![PKInkProperties bezierControlPoints:var0 isEqual:var1, var2, var3, v20, v21, v22, v23])
        {
          [PKInkProperties controlPointsForFunctionType:1];
          return [PKInkProperties bezierControlPoints:var0 isEqual:var1, var2, var3, v24, v25, v26, v27];
        }
      }
    }
  }

  return v7;
}

+ (BOOL)bezierControlPoints:(id)a3 isEqual:(id)a4
{
  if (a3.var0 != a4.var0 && vabdd_f64(a3.var0, a4.var0) >= fabs(a4.var0 * 0.000000999999997) || a3.var1 != a4.var1 && vabdd_f64(a3.var1, a4.var1) >= fabs(a4.var1 * 0.000000999999997) || a3.var2 != a4.var2 && vabdd_f64(a3.var2, a4.var2) >= fabs(a4.var2 * 0.000000999999997))
  {
    return 0;
  }

  if (a3.var3 == a4.var3)
  {
    return 1;
  }

  return vabdd_f64(a3.var3, a4.var3) < fabs(a4.var3 * 0.000000999999997);
}

+ (id)arrayForBezierControlPoints:(id)a3
{
  var3 = a3.var3;
  var2 = a3.var2;
  var1 = a3.var1;
  v12[4] = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3.var0];
  v12[0] = v6;
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:var1];
  v12[1] = v7;
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:var2];
  v12[2] = v8;
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:var3];
  v12[3] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:4];

  return v10;
}

@end