@interface MTPodcastCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (void)prepareForReuse;
@end

@implementation MTPodcastCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MTPodcastCollectionViewCell" isKindOfClass:@"UICollectionReusableView"];
  [v3 validateClass:@"UICollectionReusableView" hasInstanceMethod:@"prepareForReuse" withFullSignature:{"v", 0}];
  [v3 validateClass:@"MTDB" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MTDB" hasInstanceMethod:@"mainOrPrivateContext" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MTPodcastCollectionViewCell" hasInstanceMethod:@"podcastUUID" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v15.receiver = self;
  v15.super_class = MTPodcastCollectionViewCellAccessibility;
  v3 = [(MTPodcastCollectionViewCellAccessibility *)&v15 accessibilityLabel];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = __Block_byref_object_copy_;
    v13 = __Block_byref_object_dispose_;
    v14 = 0;
    AXPerformSafeBlock();
    v6 = [v10[5] firstObject];
    v7 = __UIAccessibilitySafeClass();

    v5 = [v7 safeValueForKey:@"title"];

    [(MTPodcastCollectionViewCellAccessibility *)self setAccessibilityLabel:v5];
    _Block_object_dispose(&v9, 8);
  }

  return v5;
}

void __62__MTPodcastCollectionViewCellAccessibility_accessibilityLabel__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x29EDBA0A8];
  v16 = 0;
  v3 = [*(a1 + 32) safeValueForKey:@"podcastUUID"];
  v4 = __UIAccessibilitySafeClass();

  v5 = [v2 predicateWithFormat:@"%K == %@", @"uuid", v4];

  v6 = [objc_alloc(MEMORY[0x29EDB8C50]) initWithEntityName:@"MTPodcast"];
  [v6 setPredicate:v5];
  v15 = 0;
  v7 = [MEMORY[0x29C2E7C00](@"MTDB") safeValueForKey:@"sharedInstance"];
  v8 = [v7 safeValueForKey:@"mainOrPrivateContext"];
  v9 = __UIAccessibilitySafeClass();

  v14 = 0;
  v10 = [v9 executeFetchRequest:v6 error:&v14];
  v11 = v14;
  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v10;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = MTPodcastCollectionViewCellAccessibility;
  [(MTPodcastCollectionViewCellAccessibility *)&v3 prepareForReuse];
  [(MTPodcastCollectionViewCellAccessibility *)self setAccessibilityLabel:0];
}

@end