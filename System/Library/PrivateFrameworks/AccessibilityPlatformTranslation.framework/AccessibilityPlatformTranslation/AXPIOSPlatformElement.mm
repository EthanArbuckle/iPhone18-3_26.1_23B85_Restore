@interface AXPIOSPlatformElement
+ (id)platformElementWithTranslationObject:(id)object;
+ (id)platformElementWithTranslationObject:(id)object rootParent:(id)parent;
@end

@implementation AXPIOSPlatformElement

+ (id)platformElementWithTranslationObject:(id)object rootParent:(id)parent
{
  parentCopy = parent;
  objectCopy = object;
  v7 = [[AXPIOSPlatformElement alloc] initWithAccessibilityContainer:parentCopy];

  [(AXPIOSPlatformElement *)v7 setTranslation:objectCopy];

  return v7;
}

+ (id)platformElementWithTranslationObject:(id)object
{
  objectCopy = object;
  v5 = +[AXPTranslator_iOS sharedInstance];
  v6 = [v5 iosPlatformElementFromTranslation:objectCopy];

  v7 = [self platformElementWithTranslationObject:objectCopy rootParent:v6];

  return v7;
}

@end