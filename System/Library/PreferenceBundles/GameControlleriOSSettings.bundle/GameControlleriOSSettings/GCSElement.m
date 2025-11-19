@interface GCSElement
- (id)initWithElement:(id)a3;
@end

@implementation GCSElement

- (id)initWithElement:(id)a3
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
      self = -[GCSElement initWithName:nameLocalizationKey:sfSymbolsName:remappingKey:kind:](self, "initWithName:nameLocalizationKey:sfSymbolsName:remappingKey:kind:", v8, v9, v10, [v4 remappingKey], v7);

      v5 = self;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

@end