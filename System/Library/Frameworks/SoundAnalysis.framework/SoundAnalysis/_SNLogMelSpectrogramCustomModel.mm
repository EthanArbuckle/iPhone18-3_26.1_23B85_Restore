@interface _SNLogMelSpectrogramCustomModel
- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error;
@end

@implementation _SNLogMelSpectrogramCustomModel

- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error
{
  swift_unknownObjectRetain();
  optionsCopy = options;
  selfCopy = self;
  sub_1C99E27F4(features);
  v11 = v10;

  swift_unknownObjectRelease();

  return v11;
}

@end