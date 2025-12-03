@interface _SNVGGishFeatureEmbeddingCustomModel
- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error;
@end

@implementation _SNVGGishFeatureEmbeddingCustomModel

- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error
{
  swift_unknownObjectRetain();
  optionsCopy = options;
  selfCopy = self;
  v10 = sub_1C984D134(features, optionsCopy);

  swift_unknownObjectRelease();

  return v10;
}

@end