@interface UIActionAccessibility__SpringBoardHome__UIKit
- (id)accessibilityLabel;
- (void)accessibilityLabel;
@end

@implementation UIActionAccessibility__SpringBoardHome__UIKit

- (id)accessibilityLabel
{
  LOBYTE(v25) = 0;
  v3 = __UIAccessibilitySafeClass();
  v4 = [v3 identifier];
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v5 = getkSBHIconChangeWidgetSizeToSmallApplicationShortcutItemTypeSymbolLoc_ptr;
  v33 = getkSBHIconChangeWidgetSizeToSmallApplicationShortcutItemTypeSymbolLoc_ptr;
  if (!getkSBHIconChangeWidgetSizeToSmallApplicationShortcutItemTypeSymbolLoc_ptr)
  {
    v25 = MEMORY[0x29EDCA5F8];
    v26 = 3221225472;
    v27 = __getkSBHIconChangeWidgetSizeToSmallApplicationShortcutItemTypeSymbolLoc_block_invoke;
    v28 = &unk_29F3001E0;
    v29 = &v30;
    v6 = SpringBoardHomeLibrary();
    v31[3] = dlsym(v6, "kSBHIconChangeWidgetSizeToSmallApplicationShortcutItemType");
    getkSBHIconChangeWidgetSizeToSmallApplicationShortcutItemTypeSymbolLoc_ptr = *(v29[1] + 24);
    v5 = v31[3];
  }

  _Block_object_dispose(&v30, 8);
  if (!v5)
  {
    [UIActionAccessibility__SpringBoardHome__UIKit accessibilityLabel];
  }

  v7 = [v4 isEqualToString:*v5];

  if (v7)
  {
    v8 = @"small.widget.size";
LABEL_21:
    v21 = accessibilityLocalizedString(v8);
    goto LABEL_22;
  }

  v9 = [v3 identifier];
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v10 = getkSBHIconChangeWidgetSizeToMediumApplicationShortcutItemTypeSymbolLoc_ptr;
  v33 = getkSBHIconChangeWidgetSizeToMediumApplicationShortcutItemTypeSymbolLoc_ptr;
  if (!getkSBHIconChangeWidgetSizeToMediumApplicationShortcutItemTypeSymbolLoc_ptr)
  {
    v25 = MEMORY[0x29EDCA5F8];
    v26 = 3221225472;
    v27 = __getkSBHIconChangeWidgetSizeToMediumApplicationShortcutItemTypeSymbolLoc_block_invoke;
    v28 = &unk_29F3001E0;
    v29 = &v30;
    v11 = SpringBoardHomeLibrary();
    v31[3] = dlsym(v11, "kSBHIconChangeWidgetSizeToMediumApplicationShortcutItemType");
    getkSBHIconChangeWidgetSizeToMediumApplicationShortcutItemTypeSymbolLoc_ptr = *(v29[1] + 24);
    v10 = v31[3];
  }

  _Block_object_dispose(&v30, 8);
  if (!v10)
  {
    [UIActionAccessibility__SpringBoardHome__UIKit accessibilityLabel];
  }

  v12 = [v9 isEqualToString:*v10];

  if (v12)
  {
    v8 = @"medium.widget.size";
    goto LABEL_21;
  }

  v13 = [v3 identifier];
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v14 = getkSBHIconChangeWidgetSizeToLargeApplicationShortcutItemTypeSymbolLoc_ptr;
  v33 = getkSBHIconChangeWidgetSizeToLargeApplicationShortcutItemTypeSymbolLoc_ptr;
  if (!getkSBHIconChangeWidgetSizeToLargeApplicationShortcutItemTypeSymbolLoc_ptr)
  {
    v25 = MEMORY[0x29EDCA5F8];
    v26 = 3221225472;
    v27 = __getkSBHIconChangeWidgetSizeToLargeApplicationShortcutItemTypeSymbolLoc_block_invoke;
    v28 = &unk_29F3001E0;
    v29 = &v30;
    v15 = SpringBoardHomeLibrary();
    v31[3] = dlsym(v15, "kSBHIconChangeWidgetSizeToLargeApplicationShortcutItemType");
    getkSBHIconChangeWidgetSizeToLargeApplicationShortcutItemTypeSymbolLoc_ptr = *(v29[1] + 24);
    v14 = v31[3];
  }

  _Block_object_dispose(&v30, 8);
  if (!v14)
  {
    [UIActionAccessibility__SpringBoardHome__UIKit accessibilityLabel];
  }

  v16 = [v13 isEqualToString:*v14];

  if (v16)
  {
    v8 = @"large.widget.size";
    goto LABEL_21;
  }

  v17 = [v3 identifier];
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v18 = getkSBHIconChangeWidgetToAppIconApplicationShortcutItemTypeSymbolLoc_ptr;
  v33 = getkSBHIconChangeWidgetToAppIconApplicationShortcutItemTypeSymbolLoc_ptr;
  if (!getkSBHIconChangeWidgetToAppIconApplicationShortcutItemTypeSymbolLoc_ptr)
  {
    v25 = MEMORY[0x29EDCA5F8];
    v26 = 3221225472;
    v27 = __getkSBHIconChangeWidgetToAppIconApplicationShortcutItemTypeSymbolLoc_block_invoke;
    v28 = &unk_29F3001E0;
    v29 = &v30;
    v19 = SpringBoardHomeLibrary();
    v31[3] = dlsym(v19, "kSBHIconChangeWidgetToAppIconApplicationShortcutItemType");
    getkSBHIconChangeWidgetToAppIconApplicationShortcutItemTypeSymbolLoc_ptr = *(v29[1] + 24);
    v18 = v31[3];
  }

  _Block_object_dispose(&v30, 8);
  if (!v18)
  {
    [UIActionAccessibility__SpringBoardHome__UIKit accessibilityLabel];
  }

  v20 = [v17 isEqualToString:*v18];

  if (v20)
  {
    v8 = @"app.icon.size";
    goto LABEL_21;
  }

  v24.receiver = self;
  v24.super_class = UIActionAccessibility__SpringBoardHome__UIKit;
  v21 = [(UIActionAccessibility__SpringBoardHome__UIKit *)&v24 accessibilityLabel];
LABEL_22:
  v22 = v21;

  return v22;
}

- (void)accessibilityLabel
{
  v0 = [MEMORY[0x29EDB9F28] currentHandler];
  v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"NSString *getkSBHIconChangeWidgetSizeToSmallApplicationShortcutItemType(void)"];
  [v0 handleFailureInFunction:v1 file:@"UIActionAccessibility.m" lineNumber:19 description:{@"%s", dlerror()}];

  __break(1u);
}

@end