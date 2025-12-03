@interface MPModelForYouRecommendationGroup
+ (id)classesForSecureCoding;
+ (void)__MPModelForYouRecommendationGroupPropertyDecorations__MAPPING_MISSING__;
+ (void)__MPModelForYouRecommendationGroupPropertyDisplaysAsGridCellInCarPlay__MAPPING_MISSING__;
+ (void)__MPModelForYouRecommendationGroupPropertyDisplaysAsTitledSectionWithRowsInCarPlay__MAPPING_MISSING__;
+ (void)__MPModelForYouRecommendationGroupPropertyGroupType__MAPPING_MISSING__;
+ (void)__MPModelForYouRecommendationGroupPropertyHrefURL__MAPPING_MISSING__;
+ (void)__MPModelForYouRecommendationGroupPropertyLastUpdatedDate__MAPPING_MISSING__;
+ (void)__MPModelForYouRecommendationGroupPropertyLoadAdditionalContentURL__MAPPING_MISSING__;
+ (void)__MPModelForYouRecommendationGroupPropertyRefreshURL__MAPPING_MISSING__;
+ (void)__MPModelForYouRecommendationGroupPropertySectionIndex__MAPPING_MISSING__;
+ (void)__MPModelForYouRecommendationGroupPropertySectionedItems__MAPPING_MISSING__;
+ (void)__MPModelForYouRecommendationGroupPropertySubgroups__MAPPING_MISSING__;
+ (void)__MPModelForYouRecommendationGroupPropertyTitle__MAPPING_MISSING__;
+ (void)__MPModelForYouRecommendationGroupPropertyTraits__MAPPING_MISSING__;
- (NSURL)refreshURL;
- (id)itemAtIndex:(int64_t)index;
- (int64_t)numberOfItems;
@end

@implementation MPModelForYouRecommendationGroup

- (id)itemAtIndex:(int64_t)index
{
  v4 = [MEMORY[0x1E696AC88] indexPathForItem:index inSection:{-[MPModelForYouRecommendationGroup sectionIndex](self, "sectionIndex")}];
  sectionedItems = [(MPModelForYouRecommendationGroup *)self sectionedItems];
  v6 = [sectionedItems itemAtIndexPath:v4];

  return v6;
}

- (int64_t)numberOfItems
{
  sectionedItems = [(MPModelForYouRecommendationGroup *)self sectionedItems];
  v4 = [sectionedItems numberOfItemsInSection:{-[MPModelForYouRecommendationGroup sectionIndex](self, "sectionIndex")}];

  return v4;
}

- (NSURL)refreshURL
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = MEMORY[0x1E696AEC0];
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSince1970];
  v7 = [v4 stringWithFormat:@"%lld", llround(v6 * 1000.0)];

  [v3 setObject:v7 forKey:@"time"];
  v8 = [MEMORY[0x1E696AF20] componentsWithURL:self->_refreshURL resolvingAgainstBaseURL:0];
  queryItems = [v8 queryItems];
  v10 = [queryItems mutableCopy];

  if (!v10)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __46__MPModelForYouRecommendationGroup_refreshURL__block_invoke;
  v14[3] = &unk_1E7681A30;
  v15 = v10;
  v11 = v10;
  [v3 enumerateKeysAndObjectsUsingBlock:v14];
  [v8 setQueryItems:v11];
  v12 = [v8 URL];

  return v12;
}

void __46__MPModelForYouRecommendationGroup_refreshURL__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = MEMORY[0x1E696AF60];
  v7 = a3;
  v8 = [[v6 alloc] initWithName:v5 value:v7];

  if (v8)
  {
    v9 = *(a1 + 32);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __46__MPModelForYouRecommendationGroup_refreshURL__block_invoke_2;
    v12[3] = &unk_1E767D028;
    v13 = v5;
    v10 = [v9 indexOfObjectPassingTest:v12];
    v11 = *(a1 + 32);
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [v11 addObject:v8];
    }

    else
    {
      [v11 replaceObjectAtIndex:v10 withObject:v8];
    }
  }
}

uint64_t __46__MPModelForYouRecommendationGroup_refreshURL__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 name];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

+ (void)__MPModelForYouRecommendationGroupPropertyDecorations__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelForYouRecommendationGroup.m" lineNumber:51 description:@"Translator was missing mapping for MPModelForYouRecommendationGroupPropertyDecorations"];
}

+ (void)__MPModelForYouRecommendationGroupPropertyDisplaysAsTitledSectionWithRowsInCarPlay__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelForYouRecommendationGroup.m" lineNumber:50 description:@"Translator was missing mapping for MPModelForYouRecommendationGroupPropertyDisplaysAsTitledSectionWithRowsInCarPlay"];
}

+ (void)__MPModelForYouRecommendationGroupPropertyDisplaysAsGridCellInCarPlay__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelForYouRecommendationGroup.m" lineNumber:49 description:@"Translator was missing mapping for MPModelForYouRecommendationGroupPropertyDisplaysAsGridCellInCarPlay"];
}

+ (void)__MPModelForYouRecommendationGroupPropertyTraits__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelForYouRecommendationGroup.m" lineNumber:48 description:@"Translator was missing mapping for MPModelForYouRecommendationGroupPropertyTraits"];
}

+ (void)__MPModelForYouRecommendationGroupPropertyRefreshURL__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelForYouRecommendationGroup.m" lineNumber:47 description:@"Translator was missing mapping for MPModelForYouRecommendationGroupPropertyRefreshURL"];
}

+ (void)__MPModelForYouRecommendationGroupPropertyHrefURL__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelForYouRecommendationGroup.m" lineNumber:46 description:@"Translator was missing mapping for MPModelForYouRecommendationGroupPropertyHrefURL"];
}

+ (void)__MPModelForYouRecommendationGroupPropertyLoadAdditionalContentURL__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelForYouRecommendationGroup.m" lineNumber:45 description:@"Translator was missing mapping for MPModelForYouRecommendationGroupPropertyLoadAdditionalContentURL"];
}

+ (void)__MPModelForYouRecommendationGroupPropertyTitle__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelForYouRecommendationGroup.m" lineNumber:44 description:@"Translator was missing mapping for MPModelForYouRecommendationGroupPropertyTitle"];
}

+ (void)__MPModelForYouRecommendationGroupPropertySubgroups__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelForYouRecommendationGroup.m" lineNumber:43 description:@"Translator was missing mapping for MPModelForYouRecommendationGroupPropertySubgroups"];
}

+ (void)__MPModelForYouRecommendationGroupPropertySectionIndex__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelForYouRecommendationGroup.m" lineNumber:42 description:@"Translator was missing mapping for MPModelForYouRecommendationGroupPropertySectionIndex"];
}

+ (void)__MPModelForYouRecommendationGroupPropertySectionedItems__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelForYouRecommendationGroup.m" lineNumber:41 description:@"Translator was missing mapping for MPModelForYouRecommendationGroupPropertySectionedItems"];
}

+ (void)__MPModelForYouRecommendationGroupPropertyLastUpdatedDate__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelForYouRecommendationGroup.m" lineNumber:40 description:@"Translator was missing mapping for MPModelForYouRecommendationGroupPropertyLastUpdatedDate"];
}

+ (void)__MPModelForYouRecommendationGroupPropertyGroupType__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelForYouRecommendationGroup.m" lineNumber:39 description:@"Translator was missing mapping for MPModelForYouRecommendationGroupPropertyGroupType"];
}

+ (id)classesForSecureCoding
{
  v4[2] = *MEMORY[0x1E69E9840];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];

  return v2;
}

@end