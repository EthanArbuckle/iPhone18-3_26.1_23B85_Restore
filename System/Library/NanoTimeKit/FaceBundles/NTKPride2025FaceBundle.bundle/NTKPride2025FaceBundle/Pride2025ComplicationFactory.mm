@interface Pride2025ComplicationFactory
- (id)initForDevice:(id)device;
- (id)keylineViewForComplicationSlot:(id)slot;
- (id)newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot;
- (id)newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot faceView:(id)view;
- (void)configureComplicationView:(id)view forSlot:(id)slot;
- (void)configureComplicationView:(id)view forSlot:(id)slot faceView:(id)faceView;
- (void)loadLayoutRules;
- (void)loadLayoutRulesForFaceView:(id)view;
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
    selfCopy = self;
    sub_2548(sub_3084, v6);
  }
}

- (id)newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot
{
  if (slot)
  {
    v7 = sub_12784();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  complicationCopy = complication;
  selfCopy = self;
  v12 = sub_2D70(complication, v7, v9);

  return v12;
}

- (void)configureComplicationView:(id)view forSlot:(id)slot
{
  if (slot)
  {
    v6 = sub_12784();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  viewCopy = view;
  selfCopy = self;
  sub_1F5C(view, v6, v8);
}

- (id)initForDevice:(id)device
{
  deviceCopy = device;
  v4 = sub_2E60(deviceCopy);

  return v4;
}

- (id)keylineViewForComplicationSlot:(id)slot
{
  v3 = NTKKeylineViewWithContinuousCurveCornerRadius();

  return v3;
}

- (void)loadLayoutRulesForFaceView:(id)view
{
  sub_12834();
  v7[2] = self;
  v7[3] = view;
  viewCopy = view;
  selfCopy = self;
  sub_2548(sub_2CEC, v7);
}

- (id)newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot faceView:(id)view
{
  complicationCopy = complication;
  complicationType = [complicationCopy complicationType];
  sub_12834();
  v10[2] = complicationType;
  v8 = sub_26D0(sub_2C90, v10, "NTKPride2025FaceBundle/Pride2025ComplicationFactory.swift", 57);

  return v8;
}

- (void)configureComplicationView:(id)view forSlot:(id)slot faceView:(id)faceView
{
  v13.receiver = self;
  v13.super_class = swift_getObjectType();
  viewCopy = view;
  faceViewCopy = faceView;
  v10 = v13.receiver;
  [(Pride2025ComplicationFactory *)&v13 configureComplicationView:viewCopy forSlot:slot faceView:faceViewCopy];
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