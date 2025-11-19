@interface HNDMorphTransitionHelper
- (HNDMorphTransitionHelper)init;
@end

@implementation HNDMorphTransitionHelper

- (HNDMorphTransitionHelper)init
{
  *(&self->super.isa + OBJC_IVAR___HNDMorphTransitionHelper_menuTransitionAnimation) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for MorphTransitionHelper();
  return [(HNDMorphTransitionHelper *)&v3 init];
}

@end