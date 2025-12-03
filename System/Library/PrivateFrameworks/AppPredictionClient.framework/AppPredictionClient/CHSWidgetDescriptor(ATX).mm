@interface CHSWidgetDescriptor(ATX)
- (uint64_t)atx_hasAccessoryWidgetFamiliesOnly;
- (uint64_t)atx_hasHomeScreenWidgetFamilies;
- (uint64_t)atx_hasHomeScreenWidgetFamiliesOnly;
@end

@implementation CHSWidgetDescriptor(ATX)

- (uint64_t)atx_hasHomeScreenWidgetFamilies
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v6 = 0;
  [self supportedFamilies];
  CHSWidgetFamilyMaskEnumerateFamilies();
  v1 = *(v4 + 24);
  _Block_object_dispose(&v3, 8);
  return v1;
}

- (uint64_t)atx_hasHomeScreenWidgetFamiliesOnly
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v6 = 1;
  [self supportedFamilies];
  CHSWidgetFamilyMaskEnumerateFamilies();
  v1 = *(v4 + 24);
  _Block_object_dispose(&v3, 8);
  return v1;
}

- (uint64_t)atx_hasAccessoryWidgetFamiliesOnly
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v6 = 1;
  [self supportedFamilies];
  CHSWidgetFamilyMaskEnumerateFamilies();
  v1 = *(v4 + 24);
  _Block_object_dispose(&v3, 8);
  return v1;
}

@end