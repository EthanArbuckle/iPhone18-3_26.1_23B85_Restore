@interface SNMLModelObjC
- (MLModelDescription)modelDescription;
- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error;
@end

@implementation SNMLModelObjC

- (MLModelDescription)modelDescription
{
  selfCopy = self;
  v3 = sub_1C9888E54();

  return v3;
}

- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error
{
  swift_unknownObjectRetain();
  optionsCopy = options;
  selfCopy = self;
  v9 = sub_1C9888EA0();

  swift_unknownObjectRelease();

  return v9;
}

@end