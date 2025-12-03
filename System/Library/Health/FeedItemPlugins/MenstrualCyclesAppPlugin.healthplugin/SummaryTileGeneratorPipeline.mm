@interface SummaryTileGeneratorPipeline
- (void)pregnancyModelDidUpdate:(id)update;
@end

@implementation SummaryTileGeneratorPipeline

- (void)pregnancyModelDidUpdate:(id)update
{
  updateCopy = update;

  sub_29DEEB34C(updateCopy);
}

@end