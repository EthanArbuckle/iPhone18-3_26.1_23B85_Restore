@interface Pride2025ComplicationFactory
- (id)initForDevice:(id)a3;
- (id)keylineViewForComplicationSlot:(id)a3;
- (id)newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5;
- (id)newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5 faceView:(id)a6;
- (void)configureComplicationView:(id)a3 forSlot:(id)a4;
- (void)configureComplicationView:(id)a3 forSlot:(id)a4 faceView:(id)a5;
- (void)loadLayoutRules;
- (void)loadLayoutRulesForFaceView:(id)a3;
@end

@implementation Pride2025ComplicationFactory

- (void)loadLayoutRules
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_12834();
    __chkstk_darwin();
    v6[2] = self;
    v6[3] = v4;
    v5 = self;
    sub_2548(sub_3084, v6);
  }
}

- (id)newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5
{
  if (a5)
  {
    v7 = sub_12784();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = a3;
  v11 = self;
  v12 = sub_2D70(a3, v7, v9);

  return v12;
}

- (void)configureComplicationView:(id)a3 forSlot:(id)a4
{
  if (a4)
  {
    v6 = sub_12784();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a3;
  v10 = self;
  sub_1F5C(a3, v6, v8);
}

- (id)initForDevice:(id)a3
{
  v3 = a3;
  v4 = sub_2E60(v3);

  return v4;
}

- (id)keylineViewForComplicationSlot:(id)a3
{
  v3 = NTKKeylineViewWithContinuousCurveCornerRadius();

  return v3;
}

- (void)loadLayoutRulesForFaceView:(id)a3
{
  sub_12834();
  v7[2] = self;
  v7[3] = a3;
  v5 = a3;
  v6 = self;
  sub_2548(sub_2CEC, v7);
}

- (id)newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5 faceView:(id)a6
{
  v6 = a3;
  v7 = [v6 complicationType];
  sub_12834();
  v10[2] = v7;
  v8 = sub_26D0(sub_2C90, v10, "NTKPride2025FaceBundle/Pride2025ComplicationFactory.swift", 57);

  return v8;
}

- (void)configureComplicationView:(id)a3 forSlot:(id)a4 faceView:(id)a5
{
  v13.receiver = self;
  v13.super_class = swift_getObjectType();
  v8 = a3;
  v9 = a5;
  v10 = v13.receiver;
  [(Pride2025ComplicationFactory *)&v13 configureComplicationView:v8 forSlot:a4 faceView:v9];
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    v11 = swift_dynamicCastObjCClassUnconditional();
    sub_12834();
    __chkstk_darwin();
    v12[2] = v11;
    v12[3] = v10;
    sub_2548(sub_2C3C, v12);
  }

  else
  {
  }
}

@end