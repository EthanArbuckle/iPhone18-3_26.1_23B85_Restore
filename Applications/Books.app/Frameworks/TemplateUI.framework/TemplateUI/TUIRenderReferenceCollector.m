@interface TUIRenderReferenceCollector
+ (id)referenceCollectorWithViewState:(id)a3;
@end

@implementation TUIRenderReferenceCollector

+ (id)referenceCollectorWithViewState:(id)a3
{
  v3 = a3;
  v4 = [[_TUIRenderReferenceCollector alloc] initWithViewState:v3];

  return v4;
}

@end