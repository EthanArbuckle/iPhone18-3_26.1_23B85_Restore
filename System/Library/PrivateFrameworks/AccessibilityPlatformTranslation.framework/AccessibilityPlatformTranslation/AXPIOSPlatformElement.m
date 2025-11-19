@interface AXPIOSPlatformElement
+ (id)platformElementWithTranslationObject:(id)a3;
+ (id)platformElementWithTranslationObject:(id)a3 rootParent:(id)a4;
@end

@implementation AXPIOSPlatformElement

+ (id)platformElementWithTranslationObject:(id)a3 rootParent:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[AXPIOSPlatformElement alloc] initWithAccessibilityContainer:v5];

  [(AXPIOSPlatformElement *)v7 setTranslation:v6];

  return v7;
}

+ (id)platformElementWithTranslationObject:(id)a3
{
  v4 = a3;
  v5 = +[AXPTranslator_iOS sharedInstance];
  v6 = [v5 iosPlatformElementFromTranslation:v4];

  v7 = [a1 platformElementWithTranslationObject:v4 rootParent:v6];

  return v7;
}

@end