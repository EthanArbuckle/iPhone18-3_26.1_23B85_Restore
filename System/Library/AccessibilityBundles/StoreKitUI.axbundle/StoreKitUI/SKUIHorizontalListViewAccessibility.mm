@interface SKUIHorizontalListViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)setImage:(id)image forArtworkRequest:(id)request context:(id)context;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context;
@end

@implementation SKUIHorizontalListViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SKUIHorizontalListView" hasInstanceMethod:@"setImage: forArtworkRequest: context:" withFullSignature:{"B", "@", "@", "@", 0}];
  [validationsCopy validateClass:@"SKUIHorizontalListView" hasInstanceMethod:@"reloadWithViewElement: width: context:" withFullSignature:{"v", "@", "d", "@", 0}];
  [validationsCopy validateClass:@"SKUIHorizontalListView" hasInstanceVariable:@"_imageViewToImageResourceCacheKey" withType:"NSMapTable"];
}

- (BOOL)setImage:(id)image forArtworkRequest:(id)request context:(id)context
{
  v8.receiver = self;
  v8.super_class = SKUIHorizontalListViewAccessibility;
  v6 = [(SKUIHorizontalListViewAccessibility *)&v8 setImage:image forArtworkRequest:request context:context];
  [(SKUIHorizontalListViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
  return v6;
}

- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context
{
  v6.receiver = self;
  v6.super_class = SKUIHorizontalListViewAccessibility;
  [(SKUIHorizontalListViewAccessibility *)&v6 reloadWithViewElement:element width:context context:width];
  [(SKUIHorizontalListViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v25 = *MEMORY[0x29EDCA608];
  v23.receiver = self;
  v23.super_class = SKUIHorizontalListViewAccessibility;
  [(SKUIHorizontalListViewAccessibility *)&v23 _accessibilityLoadAccessibilityInformation];
  v22 = 0;
  objc_opt_class();
  v3 = [(SKUIHorizontalListViewAccessibility *)self safeValueForKey:@"_imageViewToImageResourceCacheKey"];
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

        absoluteString = [v12 absoluteString];
        v14 = [absoluteString containsString:@"itunes-mastered"];
        v15 = @"itunes-mastered";
        if ((v14 & 1) != 0 || (v16 = [absoluteString containsString:@"parental-advisory"], v15 = @"parental.advisory", v16))
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