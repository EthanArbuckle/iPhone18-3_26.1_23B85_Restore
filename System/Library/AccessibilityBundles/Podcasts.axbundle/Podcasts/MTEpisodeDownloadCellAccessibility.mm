@interface MTEpisodeDownloadCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityDeleteAction:(id)action;
- (id)_accessibilitySupplementaryFooterViews;
- (id)_privateAccessibilityCustomActions;
- (id)accessibilityLabel;
@end

@implementation MTEpisodeDownloadCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MTEpisodeDownloadCell" isKindOfClass:@"MTCollectionViewCell"];
  [validationsCopy validateClass:@"MTCollectionViewCell" hasInstanceMethod:@"collectionView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MTCollectionView" isKindOfClass:@"UICollectionView"];
  [validationsCopy validateClass:@"MTGenericCollectionCell" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MTGenericCollectionCell" hasInstanceMethod:@"subtitle" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MTEpisode" hasProperty:@"author" withType:"@"];
  [validationsCopy validateClass:@"MTEpisodeDownloadCell" hasInstanceMethod:@"downloadButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MTCollectionViewCell" hasInstanceMethod:@"deleteButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MTDownloadsCollectionViewController" hasInstanceMethod:@"episodeForDownloadAtIndex:" withFullSignature:{"@", "Q", 0}];
}

- (id)accessibilityLabel
{
  LOBYTE(v17) = 0;
  objc_opt_class();
  v3 = [(MTEpisodeDownloadCellAccessibility *)self safeValueForKey:@"collectionView"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 indexPathForCell:self];
  [v4 safeValueForKey:@"delegate"];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v6 = v22 = 0;
  v7 = v5;
  AXPerformSafeBlock();
  v8 = v18[5];

  _Block_object_dispose(&v17, 8);
  LOBYTE(v17) = 0;
  objc_opt_class();
  v9 = [v8 safeValueForKey:@"author"];
  v10 = __UIAccessibilityCastAsClass();

  if (v17 == 1)
  {
    goto LABEL_8;
  }

  LOBYTE(v17) = 0;
  objc_opt_class();
  v11 = [(MTEpisodeDownloadCellAccessibility *)self safeValueForKey:@"title"];
  v12 = __UIAccessibilityCastAsClass();

  if (v17 == 1 || (LOBYTE(v17) = 0, objc_opt_class(), [(MTEpisodeDownloadCellAccessibility *)self safeValueForKey:@"subtitle"], v13 = objc_claimAutoreleasedReturnValue(), __UIAccessibilityCastAsClass(), v14 = objc_claimAutoreleasedReturnValue(), v13, v17 == 1))
  {
LABEL_8:
    abort();
  }

  v15 = __UIAXStringForVariables();

  return v15;
}

uint64_t __56__MTEpisodeDownloadCellAccessibility_accessibilityLabel__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) episodeForDownloadAtIndex:{objc_msgSend(*(a1 + 40), "row")}];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

- (id)_accessibilitySupplementaryFooterViews
{
  array = [MEMORY[0x29EDB8DE8] array];
  v4 = [(MTEpisodeDownloadCellAccessibility *)self safeValueForKey:@"downloadButton"];
  if (v4)
  {
    [array addObject:v4];
  }

  return array;
}

- (BOOL)accessibilityDeleteAction:(id)action
{
  v3 = [(MTEpisodeDownloadCellAccessibility *)self safeValueForKey:@"deleteButton"];
  [v3 accessibilityActivate];

  return 1;
}

- (id)_privateAccessibilityCustomActions
{
  array = [MEMORY[0x29EDB8DE8] array];
  objc_opt_class();
  v4 = [(MTEpisodeDownloadCellAccessibility *)self safeValueForKey:@"deleteButton"];
  v5 = __UIAccessibilityCastAsClass();

  if (v5 && ([v5 isHidden] & 1) == 0)
  {
    accessibilityLabel = [v5 accessibilityLabel];
    v7 = [objc_alloc(MEMORY[0x29EDC78E0]) initWithName:accessibilityLabel target:self selector:sel_accessibilityDeleteAction_];
    [v7 setSortPriority:*MEMORY[0x29EDC72F8]];
    [array addObject:v7];
  }

  return array;
}

@end