@interface _SNVGGishFrontEndProcessingCustomModel
- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error;
@end

@implementation _SNVGGishFrontEndProcessingCustomModel

- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error
{
  swift_unknownObjectRetain();
  optionsCopy = options;
  selfCopy = self;
  v10 = sub_1C99CDFA8(features);

  swift_unknownObjectRelease();

  return v10;
}

@end