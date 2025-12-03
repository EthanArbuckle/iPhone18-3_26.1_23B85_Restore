@interface TUIRenderReferenceCollector
+ (id)referenceCollectorWithViewState:(id)state;
@end

@implementation TUIRenderReferenceCollector

+ (id)referenceCollectorWithViewState:(id)state
{
  stateCopy = state;
  v4 = [[_TUIRenderReferenceCollector alloc] initWithViewState:stateCopy];

  return v4;
}

@end