@interface CIEnhancementHistogram
+ (id)histogramFromData:(const double *)data;
+ (id)histogramFromDoubleData:(const double *)data;
+ (id)histogramFromFloatData:(const float *)data;
@end

@implementation CIEnhancementHistogram

+ (id)histogramFromData:(const double *)data
{
  result = objc_alloc_init(CIEnhancementHistogram);
  if (result)
  {
    for (i = 0; i != 256; ++i)
    {
      *(result + i * 8 + 8) = data[i];
    }
  }

  return result;
}

+ (id)histogramFromFloatData:(const float *)data
{
  result = objc_alloc_init(CIEnhancementHistogram);
  if (result)
  {
    v5 = 0;
    v6 = (result + 8);
    do
    {
      v7 = *&data[v5];
      *v6 = vcvtq_f64_f32(*v7.f32);
      v6[1] = vcvt_hight_f64_f32(v7);
      v6 += 2;
      v5 += 4;
    }

    while (v5 != 256);
  }

  return result;
}

+ (id)histogramFromDoubleData:(const double *)data
{
  result = objc_alloc_init(CIEnhancementHistogram);
  if (result)
  {
    for (i = 0; i != 256; ++i)
    {
      *(result + i * 8 + 8) = data[i];
    }
  }

  return result;
}

@end