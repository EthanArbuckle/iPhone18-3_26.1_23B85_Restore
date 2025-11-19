@interface VideoCollectionViewCellAccessibility
- (id)_accessibilityContextDescriptors;
@end

@implementation VideoCollectionViewCellAccessibility

- (id)_accessibilityContextDescriptors
{
  v10[1] = *MEMORY[0x29EDCA608];
  v7 = @"category";
  v8 = @"value";
  v9[0] = @"VIDEO";
  v2 = accessibilityAppStoreLocalizedString(@"video.view");
  v9[1] = v2;
  v3 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v9 forKeys:&v7 count:2];
  v10[0] = v3;
  v4 = [MEMORY[0x29EDB8D80] arrayWithObjects:v10 count:{1, v7, v8, v9[0]}];

  v5 = *MEMORY[0x29EDCA608];

  return v4;
}

@end