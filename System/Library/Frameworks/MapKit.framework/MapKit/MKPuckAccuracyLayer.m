@interface MKPuckAccuracyLayer
@end

@implementation MKPuckAccuracyLayer

id __45___MKPuckAccuracyLayer_setAccuracy_duration___block_invoke(id result, int a2)
{
  if (a2)
  {
    v4 = *(result + 4);
    v5 = *(v4 + 72);
    v6 = *(result + 5);
    v7 = vabdd_f64(v6, v5) < 0.01 || v6 < v5;
    *(v4 + 81) = v7;
    v8 = *(result + 4);
    if (v8[80])
    {
      v9 = 1;
    }

    else
    {
      v9 = v8[81];
    }

    v11 = v2;
    v12 = v3;
    v10.receiver = v8;
    v10.super_class = _MKPuckAccuracyLayer;
    return objc_msgSendSuper2(&v10, sel_setHidden_, v9 & 1);
  }

  return result;
}

@end