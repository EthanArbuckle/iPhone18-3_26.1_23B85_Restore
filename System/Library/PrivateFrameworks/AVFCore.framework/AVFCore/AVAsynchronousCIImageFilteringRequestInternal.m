@interface AVAsynchronousCIImageFilteringRequestInternal
- (void)dealloc;
@end

@implementation AVAsynchronousCIImageFilteringRequestInternal

- (void)dealloc
{
  [(AVAsynchronousCIImageFilteringRequestInternal *)self _willDeallocOrFinalize];

  v3.receiver = self;
  v3.super_class = AVAsynchronousCIImageFilteringRequestInternal;
  [(AVAsynchronousCIImageFilteringRequestInternal *)&v3 dealloc];
}

@end