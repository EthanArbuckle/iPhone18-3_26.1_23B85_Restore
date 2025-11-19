@interface GCSElement(GameController)
- (void)initWithElement:()GameController;
@end

@implementation GCSElement(GameController)

- (void)initWithElement:()GameController
{
  v4 = a3;
  v5 = [v4 unmappedNameLocalizationKey];
  if (v5)
  {
    v6 = [v4 unmappedSfSymbolsName];

    if (v6)
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

      v8 = [v4 primaryAlias];
      v9 = [v4 unmappedNameLocalizationKey];
      v10 = [v4 unmappedSfSymbolsName];
      a1 = [a1 initWithName:v8 nameLocalizationKey:v9 sfSymbolsName:v10 remappingKey:objc_msgSend(v4 kind:{"remappingKey"), v7}];

      v5 = a1;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

@end