@interface GCSElement
- (id)initWithElement:(id)element;
@end

@implementation GCSElement

- (id)initWithElement:(id)element
{
  elementCopy = element;
  selfCopy = [elementCopy unmappedNameLocalizationKey];
  if (selfCopy)
  {
    unmappedSfSymbolsName = [elementCopy unmappedSfSymbolsName];

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

      primaryAlias = [elementCopy primaryAlias];
      unmappedNameLocalizationKey = [elementCopy unmappedNameLocalizationKey];
      unmappedSfSymbolsName2 = [elementCopy unmappedSfSymbolsName];
      self = -[GCSElement initWithName:nameLocalizationKey:sfSymbolsName:remappingKey:kind:](self, "initWithName:nameLocalizationKey:sfSymbolsName:remappingKey:kind:", primaryAlias, unmappedNameLocalizationKey, unmappedSfSymbolsName2, [elementCopy remappingKey], v7);

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