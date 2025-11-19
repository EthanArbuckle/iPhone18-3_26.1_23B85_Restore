@interface _TUIFlexibleStrictEqualWidthLayoutController
- (double)adjustedNaturalLengthWithMeasured:(double)a3 computed:(double)a4;
@end

@implementation _TUIFlexibleStrictEqualWidthLayoutController

- (double)adjustedNaturalLengthWithMeasured:(double)a3 computed:(double)a4
{
  if ([(NSMutableArray *)self->super.super._layouts count]< 2)
  {
    return NAN;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = self->super.super._layouts;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = *v18;
    v10 = 0.0;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v16 = *(*(&v17 + 1) + 8 * i);
        v12 = sub_E428C(&self->super.super._layoutToLength.__table_.__bucket_list_.__ptr_, &v16);
        v10 = fmax(v10, v12[6] - fmax((COERCE_FLOAT(*(v12 + 3)) - COERCE_FLOAT(HIDWORD(*(v12 + 3)))), 0.0));
      }

      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 0.0;
  }

  v14 = v10 * [(NSMutableArray *)self->super.super._layouts count]- self->super.super._layoutTotalLength + a3;
  IsLessThanOrAlmostEqualFloat = TUICGFloatIsLessThanOrAlmostEqualFloat(v14, a4);
  result = NAN;
  if (!IsLessThanOrAlmostEqualFloat)
  {
    return v14;
  }

  return result;
}

@end