@interface _SNEBankCustomModel
- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error;
@end

@implementation _SNEBankCustomModel

- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error
{
  swift_unknownObjectRetain();
  optionsCopy = options;
  selfCopy = self;
  sub_1C9950274(features);
  v11 = v10;

  swift_unknownObjectRelease();

  return v11;
}

@end