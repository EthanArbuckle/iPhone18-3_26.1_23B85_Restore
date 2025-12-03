@interface NSSymbolAutomaticContentTransition
+ (NSSymbolAutomaticContentTransition)transition;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation NSSymbolAutomaticContentTransition

+ (NSSymbolAutomaticContentTransition)transition
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___NSSymbolAutomaticContentTransition;
  v2 = objc_msgSendSuper2(&v4, sel__transitionWithType_, 8);

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = NSSymbolAutomaticContentTransition;
  return [(NSSymbolContentTransition *)&v4 copyWithZone:zone];
}

@end