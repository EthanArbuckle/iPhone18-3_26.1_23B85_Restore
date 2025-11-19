@interface SNMLModelObjC
- (MLModelDescription)modelDescription;
- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5;
@end

@implementation SNMLModelObjC

- (MLModelDescription)modelDescription
{
  v2 = self;
  v3 = sub_1C9888E54();

  return v3;
}

- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5
{
  swift_unknownObjectRetain();
  v7 = a4;
  v8 = self;
  v9 = sub_1C9888EA0();

  swift_unknownObjectRelease();

  return v9;
}

@end