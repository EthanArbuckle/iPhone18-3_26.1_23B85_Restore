@interface WFFocusModeContentItem
+ (id)localizedPluralTypeDescriptionWithContext:(id)a3;
+ (id)localizedTypeDescriptionWithContext:(id)a3;
+ (id)outputTypes;
+ (id)ownedTypes;
+ (id)propertyBuilders;
+ (id)stringConversionBehavior;
- (BOOL)getListSubtitle:(id)a3;
- (BOOL)getListThumbnail:(id)a3 forSize:(CGSize)a4;
- (id)focusMode;
- (id)generateObjectRepresentationForClass:(Class)a3 options:(id)a4 error:(id *)a5;
@end

@implementation WFFocusModeContentItem

+ (id)localizedPluralTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Focuses", @"Focuses");
  v5 = [v3 localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Focus", @"Focus");
  v5 = [v3 localize:v4];

  return v5;
}

+ (id)outputTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [MEMORY[0x277CFC490] typeWithClass:objc_opt_class()];
  v4 = [MEMORY[0x277CFC490] typeWithClass:objc_opt_class()];
  v5 = [v2 orderedSetWithObjects:{v3, v4, 0}];

  return v5;
}

+ (id)ownedTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [MEMORY[0x277CFC490] typeWithClass:objc_opt_class()];
  v4 = [v2 orderedSetWithObject:v3];

  return v4;
}

+ (id)stringConversionBehavior
{
  v2 = MEMORY[0x277CFC310];
  v3 = [a1 propertyForName:@"Name"];
  v4 = [v2 accessingProperty:v3];

  return v4;
}

+ (id)propertyBuilders
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CFC338];
  v3 = WFLocalizedContentPropertyNameMarker(@"Icon");
  v4 = [v2 keyPath:@"focusMode.symbolImage" name:v3 class:objc_opt_class()];
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)getListSubtitle:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = WFLocalizedString(@"Focus");
    (*(a3 + 2))(v4, v5);
  }

  return 1;
}

- (BOOL)getListThumbnail:(id)a3 forSize:(CGSize)a4
{
  if (a3)
  {
    v6 = a3;
    v7 = [(WFFocusModeContentItem *)self focusMode];
    v8 = [v7 symbolImage];
    (*(a3 + 2))(v6, v8, 0);
  }

  return 1;
}

- (id)generateObjectRepresentationForClass:(Class)a3 options:(id)a4 error:(id *)a5
{
  if (objc_opt_class() == a3)
  {
    v8 = MEMORY[0x277CFC488];
    v9 = [(WFFocusModeContentItem *)self focusMode];
    v10 = [v9 displayName];
  }

  else
  {
    if (objc_opt_class() != a3)
    {
      v7 = 0;
      goto LABEL_7;
    }

    v8 = MEMORY[0x277CFC488];
    v9 = [(WFFocusModeContentItem *)self focusMode];
    v10 = [v9 symbolImage];
  }

  v11 = v10;
  v7 = [v8 object:v10];

LABEL_7:

  return v7;
}

- (id)focusMode
{
  v2 = [(WFFocusModeContentItem *)self objectForClass:objc_opt_class()];
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

@end