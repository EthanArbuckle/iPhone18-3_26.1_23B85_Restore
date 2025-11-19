@interface FoVPredictorInput
- (NSSet)featureNames;
- (id)featureValueForName:(id)a3;
@end

@implementation FoVPredictorInput

- (NSSet)featureNames
{
  sub_23ED4B440(&unk_285161168);
  sub_23ED5E6E0(&unk_285161188);
  v2 = sub_23ED5EA84();

  return v2;
}

- (id)featureValueForName:(id)a3
{
  if (sub_23ED5E9E4() == 0x6567616D69 && v4 == 0xE500000000000000)
  {

LABEL_5:
    v6 = *self->image;
    v7 = objc_opt_self();
    v8 = v6;
    v9 = [v7 featureValueWithMultiArray_];

    goto LABEL_7;
  }

  v5 = sub_23ED5EE04();

  if (v5)
  {
    goto LABEL_5;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

@end