@interface GCSElement(GameController)
- (void)initWithElement:()GameController;
@end

@implementation GCSElement(GameController)

- (void)initWithElement:()GameController
{
  v4 = a3;
  selfCopy = [v4 unmappedNameLocalizationKey];
  if (selfCopy)
  {
    unmappedSfSymbolsName = [v4 unmappedSfSymbolsName];

    if (unmappedSfSymbolsName)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = 1;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = 2;
        }

        else
        {
          v7 = 0;
        }
      }

      primaryAlias = [v4 primaryAlias];
      unmappedNameLocalizationKey = [v4 unmappedNameLocalizationKey];
      unmappedSfSymbolsName2 = [v4 unmappedSfSymbolsName];
      self = [self initWithName:primaryAlias nameLocalizationKey:unmappedNameLocalizationKey sfSymbolsName:unmappedSfSymbolsName2 remappingKey:objc_msgSend(v4 kind:{"remappingKey"), v7}];

      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

@end