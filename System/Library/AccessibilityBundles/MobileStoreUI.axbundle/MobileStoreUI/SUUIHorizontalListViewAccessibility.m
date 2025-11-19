@interface SUUIHorizontalListViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)setImage:(id)a3 forArtworkRequest:(id)a4 context:(id)a5;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5;
@end

@implementation SUUIHorizontalListViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SUUIHorizontalListView" hasInstanceMethod:@"setImage: forArtworkRequest: context:" withFullSignature:{"B", "@", "@", "@", 0}];
  [v3 validateClass:@"SUUIHorizontalListView" hasInstanceMethod:@"reloadWithViewElement: width: context:" withFullSignature:{"v", "@", "d", "@", 0}];
  [v3 validateClass:@"SUUIHorizontalListView" hasInstanceVariable:@"_imageViewToImageResourceCacheKey" withType:"NSMapTable"];
}

- (BOOL)setImage:(id)a3 forArtworkRequest:(id)a4 context:(id)a5
{
  v8.receiver = self;
  v8.super_class = SUUIHorizontalListViewAccessibility;
  v6 = [(SUUIHorizontalListViewAccessibility *)&v8 setImage:a3 forArtworkRequest:a4 context:a5];
  [(SUUIHorizontalListViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
  return v6;
}

- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v6.receiver = self;
  v6.super_class = SUUIHorizontalListViewAccessibility;
  [(SUUIHorizontalListViewAccessibility *)&v6 reloadWithViewElement:a3 width:a5 context:a4];
  [(SUUIHorizontalListViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v25 = *MEMORY[0x29EDCA608];
  v23.receiver = self;
  v23.super_class = SUUIHorizontalListViewAccessibility;
  [(SUUIHorizontalListViewAccessibility *)&v23 _accessibilityLoadAccessibilityInformation];
  v22 = 0;
  objc_opt_class();
  v3 = [(SUUIHorizontalListViewAccessibility *)self safeValueForKey:@"_imageViewToImageResourceCacheKey"];
  v4 = __UIAccessibilityCastAsClass();

  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v22 = 0;
        objc_opt_class();
        v11 = [v5 objectForKey:{v10, v18}];
        v12 = __UIAccessibilityCastAsClass();

        if (v22 == 1)
        {
          abort();
        }

        v13 = [v12 absoluteString];
        v14 = [v13 containsString:@"itunes-mastered"];
        v15 = @"itunes-mastered";
        if ((v14 & 1) != 0 || (v16 = [v13 containsString:@"parental-advisory"], v15 = @"parental.advisory", v16))
        {
          [v10 setAccessibilityIdentifier:v15];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v7);
  }

  v17 = *MEMORY[0x29EDCA608];
}

@end