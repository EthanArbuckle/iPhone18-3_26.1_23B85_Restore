@interface AVPresentationConfiguration
+ (AVPresentationConfiguration)configurationWithTransitionStyle:(unint64_t)style transitionDuration:(double)duration;
@end

@implementation AVPresentationConfiguration

+ (AVPresentationConfiguration)configurationWithTransitionStyle:(unint64_t)style transitionDuration:(double)duration
{
  v6 = objc_alloc_init(AVPresentationConfiguration);
  v6->_transitionStyle = style;
  v6->_transitionDuration = duration;

  return v6;
}

@end