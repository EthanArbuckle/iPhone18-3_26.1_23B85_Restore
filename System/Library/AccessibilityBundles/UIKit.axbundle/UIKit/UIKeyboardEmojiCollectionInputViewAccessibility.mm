@interface UIKeyboardEmojiCollectionInputViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (void)willDisplayModalActionView:(id)view withSubTreeKeyView:(id)keyView completion:(id)completion;
@end

@implementation UIKeyboardEmojiCollectionInputViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v6 = location;
  v5 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v4 = "@";
  v3 = @"UIKeyboardEmojiCollectionInputView";
  [location[0] validateClass:"@" hasInstanceMethod:"@" withFullSignature:{"@?", 0}];
  [location[0] validateClass:v3 hasInstanceMethod:@"collectionView: viewForSupplementaryElementOfKind: atIndexPath:" withFullSignature:{v4, v4, v4, 0}];
  objc_storeStrong(v6, v5);
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v14 = 0;
  objc_storeStrong(&v14, kind);
  v13 = 0;
  objc_storeStrong(&v13, path);
  v11.receiver = selfCopy;
  v11.super_class = UIKeyboardEmojiCollectionInputViewAccessibility;
  v12 = [(UIKeyboardEmojiCollectionInputViewAccessibility *)&v11 collectionView:location[0] viewForSupplementaryElementOfKind:v14 atIndexPath:v13];
  v8 = v12;
  v9 = [MEMORY[0x29EDBA070] numberWithInteger:{objc_msgSend(v13, "section")}];
  [v8 _accessibilitySetRetainedValue:? forKey:?];
  MEMORY[0x29EDC9740](v9);
  v10 = MEMORY[0x29EDC9748](v12);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);

  return v10;
}

- (void)willDisplayModalActionView:(id)view withSubTreeKeyView:(id)keyView completion:(id)completion
{
  v25 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v21 = 0;
  objc_storeStrong(&v21, keyView);
  v20 = 0;
  objc_storeStrong(&v20, completion);
  v19.receiver = selfCopy;
  v19.super_class = UIKeyboardEmojiCollectionInputViewAccessibility;
  [(UIKeyboardEmojiCollectionInputViewAccessibility *)&v19 willDisplayModalActionView:location[0] withSubTreeKeyView:v21 completion:v20];
  subviews = [location[0] subviews];
  memset(__b, 0, sizeof(__b));
  v14 = MEMORY[0x29EDC9748](subviews);
  v15 = [v14 countByEnumeratingWithState:__b objects:v24 count:16];
  if (v15)
  {
    v9 = *__b[2];
    v10 = 0;
    v11 = v15;
    while (1)
    {
      v8 = v10;
      if (*__b[2] != v9)
      {
        objc_enumerationMutation(v14);
      }

      v17 = *(__b[1] + 8 * v10);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v17;
        CGSizeMake_0();
        [v7 _accessibilitySetFrameExpansion:{v5, v6}];
      }

      ++v10;
      if (v8 + 1 >= v11)
      {
        v10 = 0;
        v11 = [v14 countByEnumeratingWithState:__b objects:v24 count:16];
        if (!v11)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x29EDC9740](v14);
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  objc_storeStrong(&subviews, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
}

@end