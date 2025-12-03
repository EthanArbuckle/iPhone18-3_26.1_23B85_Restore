@interface NSString(_INIntentsImpl)
+ (id)intents_makeFromWidgetPlistableRepresentation:()_INIntentsImpl;
- (id)intents_encodeForPlistRepresentationWithParameters:()_INIntentsImpl;
@end

@implementation NSString(_INIntentsImpl)

- (id)intents_encodeForPlistRepresentationWithParameters:()_INIntentsImpl
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = [self widgetPlistableRepresentationWithParameters:v4 error:0];
  }

  else
  {
    selfCopy = self;
  }

  v6 = selfCopy;

  return v6;
}

+ (id)intents_makeFromWidgetPlistableRepresentation:()_INIntentsImpl
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 copy];
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [INDeferredLocalizedString makeFromWidgetPlistableRepresentation:v3 error:0];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

@end