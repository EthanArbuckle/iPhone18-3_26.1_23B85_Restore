@interface SNTimeUtils
+ ($E36B78CDAC119E0352F6B513F3BB0FF8)addOffset:(SEL)offset toTimeRange:(id *)range;
+ ($E36B78CDAC119E0352F6B513F3BB0FF8)clipTimeRange:(SEL)range toBounds:(id *)bounds;
+ ($E36B78CDAC119E0352F6B513F3BB0FF8)convertScaleForTimeRange:(SEL)range toValue:(id *)value preferShrinkingWhenRounding:(int)rounding;
+ ($E36B78CDAC119E0352F6B513F3BB0FF8)standardizeTimeRange:(SEL)range directionShouldBePositive:(id *)positive negativeShouldResideInTimescale:(BOOL)timescale;
+ (void)clipTimeRange:(id *)range toBounds:(id *)bounds handler:(id)handler;
@end

@implementation SNTimeUtils

+ ($E36B78CDAC119E0352F6B513F3BB0FF8)convertScaleForTimeRange:(SEL)range toValue:(id *)value preferShrinkingWhenRounding:(int)rounding
{
  var3 = value->var1.var3;
  v17[0] = value->var0.var0;
  v17[1] = *&value->var0.var1;
  v18 = *&value->var0.var3;
  v19 = *&value->var1.var1;
  v20 = var3;
  result = sub_1C97CB164(v17, v13);
  v9 = v16;
  v10 = v15;
  v11 = v14;
  v12 = v13[1];
  retstr->var0.var0 = v13[0];
  *&retstr->var0.var1 = v12;
  *&retstr->var0.var3 = v11;
  *&retstr->var1.var1 = v10;
  retstr->var1.var3 = v9;
  return result;
}

+ ($E36B78CDAC119E0352F6B513F3BB0FF8)standardizeTimeRange:(SEL)range directionShouldBePositive:(id *)positive negativeShouldResideInTimescale:(BOOL)timescale
{
  var3 = positive->var1.var3;
  v16[0] = *&positive->var0.var0;
  v16[1] = *&positive->var0.var3;
  v17 = *&positive->var1.var1;
  v18 = var3;
  sub_1C97CB43C(v16, timescale, a6, v13);
  v9 = v15;
  v10 = v14;
  v11 = v13[1];
  v12 = *(&v13[0] + 1);
  retstr->var0.var0 = *&v13[0];
  *&retstr->var0.var1 = v12;
  *&retstr->var0.var3 = v11;
  *&retstr->var1.var1 = v10;
  retstr->var1.var3 = v9;
  return result;
}

+ (void)clipTimeRange:(id *)range toBounds:(id *)bounds handler:(id)handler
{
  var0 = range->var0.var0;
  v6 = bounds->var0.var0;
  var3 = bounds->var1.var3;
  v12 = range->var1.var3;
  v13[0].n128_u64[0] = v6;
  v13[0].n128_u64[1] = *&bounds->var0.var1;
  v13[1] = *&bounds->var0.var3;
  v14 = *&bounds->var1.var1;
  v15 = var3;
  v10[0].n128_u64[0] = var0;
  v10[0].n128_u64[1] = *&range->var0.var1;
  v10[1] = *&range->var0.var3;
  v11 = *&range->var1.var1;
  v8 = _Block_copy(handler);
  ObjCClassMetadata = swift_getObjCClassMetadata();
  sub_1C97CB574(v10, v13, ObjCClassMetadata, v8);
}

+ ($E36B78CDAC119E0352F6B513F3BB0FF8)clipTimeRange:(SEL)range toBounds:(id *)bounds
{
  var0 = bounds->var0.var0;
  var3 = bounds->var1.var3;
  v8 = a5->var1.var3;
  v20[0] = *&a5->var0.var0;
  v20[1] = *&a5->var0.var3;
  v21 = *&a5->var1.var1;
  v22 = v8;
  v17[0].n128_u64[0] = var0;
  v17[0].n128_u64[1] = *&bounds->var0.var1;
  v17[1] = *&bounds->var0.var3;
  v18 = *&bounds->var1.var1;
  v19 = var3;
  swift_getObjCClassMetadata();
  sub_1C97CC23C(v17, v20, v14);
  v10 = v16;
  v11 = v15;
  v12 = v14[1];
  v13 = *(&v14[0] + 1);
  retstr->var0.var0 = *&v14[0];
  *&retstr->var0.var1 = v13;
  *&retstr->var0.var3 = v12;
  *&retstr->var1.var1 = v11;
  retstr->var1.var3 = v10;
  return result;
}

+ ($E36B78CDAC119E0352F6B513F3BB0FF8)addOffset:(SEL)offset toTimeRange:(id *)range
{
  var0 = range->var0;
  v7 = *&range->var1;
  var3 = range->var3;
  v9 = a5->var1.var3;
  v18[0] = *&a5->var0.var0;
  v18[1] = *&a5->var0.var1;
  v19 = *&a5->var0.var3;
  v20 = *&a5->var1.var1;
  v21 = v9;
  sub_1C97CC360(var0, v7, var3, v18, v15);
  v11 = v17;
  v12 = v16;
  v13 = v15[1];
  v14 = *(&v15[0] + 1);
  retstr->var0.var0 = *&v15[0];
  *&retstr->var0.var1 = v14;
  *&retstr->var0.var3 = v13;
  *&retstr->var1.var1 = v12;
  retstr->var1.var3 = v11;
  return result;
}

@end