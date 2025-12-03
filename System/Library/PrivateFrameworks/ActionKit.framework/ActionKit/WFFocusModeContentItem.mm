@interface WFFocusModeContentItem
+ (id)localizedPluralTypeDescriptionWithContext:(id)context;
+ (id)localizedTypeDescriptionWithContext:(id)context;
+ (id)outputTypes;
+ (id)ownedTypes;
+ (id)propertyBuilders;
+ (id)stringConversionBehavior;
- (BOOL)getListSubtitle:(id)subtitle;
- (BOOL)getListThumbnail:(id)thumbnail forSize:(CGSize)size;
- (id)focusMode;
- (id)generateObjectRepresentationForClass:(Class)class options:(id)options error:(id *)error;
@end

@implementation WFFocusModeContentItem

+ (id)localizedPluralTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Focuses", @"Focuses");
  v5 = [contextCopy localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Focus", @"Focus");
  v5 = [contextCopy localize:v4];

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
  v3 = [self propertyForName:@"Name"];
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

- (BOOL)getListSubtitle:(id)subtitle
{
  if (subtitle)
  {
    subtitleCopy = subtitle;
    v5 = WFLocalizedString(@"Focus");
    (*(subtitle + 2))(subtitleCopy, v5);
  }

  return 1;
}

- (BOOL)getListThumbnail:(id)thumbnail forSize:(CGSize)size
{
  if (thumbnail)
  {
    thumbnailCopy = thumbnail;
    focusMode = [(WFFocusModeContentItem *)self focusMode];
    symbolImage = [focusMode symbolImage];
    (*(thumbnail + 2))(thumbnailCopy, symbolImage, 0);
  }

  return 1;
}

- (id)generateObjectRepresentationForClass:(Class)class options:(id)options error:(id *)error
{
  if (objc_opt_class() == class)
  {
    v8 = MEMORY[0x277CFC488];
    focusMode = [(WFFocusModeContentItem *)self focusMode];
    displayName = [focusMode displayName];
  }

  else
  {
    if (objc_opt_class() != class)
    {
      v7 = 0;
      goto LABEL_7;
    }

    v8 = MEMORY[0x277CFC488];
    focusMode = [(WFFocusModeContentItem *)self focusMode];
    displayName = [focusMode symbolImage];
  }

  v11 = displayName;
  v7 = [v8 object:displayName];

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