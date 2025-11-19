@interface UIPasteboard_QSExtras
+ (BOOL)_accessibilityUseQuickSpeakPasteBoard;
+ (id)_accessibilityQuickSpeakPasteboard;
+ (id)generalPasteboard;
+ (id)pasteboardWithName:(id)a3 create:(BOOL)a4;
+ (id)pasteboardWithUniqueName;
+ (void)_accessibilitySetUseQuickSpeakPasteBoard:(BOOL)a3;
- (BOOL)_accessibilityShouldSwapReceiverWithQuickSpeakPasteboard;
- (BOOL)containsPasteboardTypes:(id)a3;
- (BOOL)containsPasteboardTypes:(id)a3 inItemSet:(id)a4;
- (id)URL;
- (id)URLs;
- (id)color;
- (id)colors;
- (id)dataForPasteboardType:(id)a3;
- (id)dataForPasteboardType:(id)a3 inItemSet:(id)a4;
- (id)image;
- (id)images;
- (id)itemSetWithPasteboardTypes:(id)a3;
- (id)items;
- (id)pasteboardTypes;
- (id)pasteboardTypesForItemSet:(id)a3;
- (id)string;
- (id)strings;
- (id)valueForPasteboardType:(id)a3;
- (id)valuesForPasteboardType:(id)a3 inItemSet:(id)a4;
- (int64_t)changeCount;
- (int64_t)numberOfItems;
- (void)addItems:(id)a3;
- (void)setData:(id)a3 forPasteboardType:(id)a4;
- (void)setItems:(id)a3;
- (void)setStrings:(id)a3;
- (void)setValue:(id)a3 forPasteboardType:(id)a4;
@end

@implementation UIPasteboard_QSExtras

+ (id)generalPasteboard
{
  if ((objc_opt_respondsToSelector() & 1) != 0 && [a1 _accessibilityUseQuickSpeakPasteBoard])
  {
    v3 = [a1 _accessibilityQuickSpeakPasteboard];
  }

  else
  {
    v5.receiver = a1;
    v5.super_class = &OBJC_METACLASS___UIPasteboard_QSExtras;
    v3 = objc_msgSendSuper2(&v5, sel_generalPasteboard);
  }

  return v3;
}

+ (id)pasteboardWithName:(id)a3 create:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [a1 _accessibilityUseQuickSpeakPasteBoard])
  {
    v7 = [a1 _accessibilityQuickSpeakPasteboard];
  }

  else
  {
    v10.receiver = a1;
    v10.super_class = &OBJC_METACLASS___UIPasteboard_QSExtras;
    v7 = objc_msgSendSuper2(&v10, sel_pasteboardWithName_create_, v6, v4);
  }

  v8 = v7;

  return v8;
}

+ (id)pasteboardWithUniqueName
{
  if ((objc_opt_respondsToSelector() & 1) != 0 && [a1 _accessibilityUseQuickSpeakPasteBoard])
  {
    v3 = [a1 _accessibilityQuickSpeakPasteboard];
  }

  else
  {
    v5.receiver = a1;
    v5.super_class = &OBJC_METACLASS___UIPasteboard_QSExtras;
    v3 = objc_msgSendSuper2(&v5, sel_pasteboardWithUniqueName);
  }

  return v3;
}

- (int64_t)changeCount
{
  if ([(UIPasteboard_QSExtras *)self _accessibilityShouldSwapReceiverWithQuickSpeakPasteboard])
  {
    v3 = [objc_opt_class() _accessibilityQuickSpeakPasteboard];
    v4 = [v3 changeCount];

    return v4;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UIPasteboard_QSExtras;
    return [(UIPasteboard_QSExtras *)&v6 changeCount];
  }
}

- (id)pasteboardTypes
{
  if ([(UIPasteboard_QSExtras *)self _accessibilityShouldSwapReceiverWithQuickSpeakPasteboard])
  {
    v3 = [objc_opt_class() _accessibilityQuickSpeakPasteboard];
    v4 = [v3 pasteboardTypes];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UIPasteboard_QSExtras;
    v4 = [(UIPasteboard_QSExtras *)&v6 pasteboardTypes];
  }

  return v4;
}

- (BOOL)containsPasteboardTypes:(id)a3
{
  v4 = a3;
  if ([(UIPasteboard_QSExtras *)self _accessibilityShouldSwapReceiverWithQuickSpeakPasteboard])
  {
    v5 = [objc_opt_class() _accessibilityQuickSpeakPasteboard];
    v6 = [v5 containsPasteboardTypes:v4];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UIPasteboard_QSExtras;
    v6 = [(UIPasteboard_QSExtras *)&v8 containsPasteboardTypes:v4];
  }

  return v6;
}

- (id)dataForPasteboardType:(id)a3
{
  v4 = a3;
  if ([(UIPasteboard_QSExtras *)self _accessibilityShouldSwapReceiverWithQuickSpeakPasteboard])
  {
    v5 = [objc_opt_class() _accessibilityQuickSpeakPasteboard];
    v6 = [v5 dataForPasteboardType:v4];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UIPasteboard_QSExtras;
    v6 = [(UIPasteboard_QSExtras *)&v8 dataForPasteboardType:v4];
  }

  return v6;
}

- (id)valueForPasteboardType:(id)a3
{
  v4 = a3;
  if ([(UIPasteboard_QSExtras *)self _accessibilityShouldSwapReceiverWithQuickSpeakPasteboard])
  {
    v5 = [objc_opt_class() _accessibilityQuickSpeakPasteboard];
    v6 = [v5 valueForPasteboardType:v4];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UIPasteboard_QSExtras;
    v6 = [(UIPasteboard_QSExtras *)&v8 valueForPasteboardType:v4];
  }

  return v6;
}

- (void)setValue:(id)a3 forPasteboardType:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(UIPasteboard_QSExtras *)self _accessibilityShouldSwapReceiverWithQuickSpeakPasteboard])
  {
    v8 = [objc_opt_class() _accessibilityQuickSpeakPasteboard];
    [v8 setValue:v6 forPasteboardType:v7];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = UIPasteboard_QSExtras;
    [(UIPasteboard_QSExtras *)&v9 setValue:v6 forPasteboardType:v7];
  }
}

- (void)setData:(id)a3 forPasteboardType:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(UIPasteboard_QSExtras *)self _accessibilityShouldSwapReceiverWithQuickSpeakPasteboard])
  {
    v8 = [objc_opt_class() _accessibilityQuickSpeakPasteboard];
    [v8 setData:v6 forPasteboardType:v7];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = UIPasteboard_QSExtras;
    [(UIPasteboard_QSExtras *)&v9 setData:v6 forPasteboardType:v7];
  }
}

- (int64_t)numberOfItems
{
  if ([(UIPasteboard_QSExtras *)self _accessibilityShouldSwapReceiverWithQuickSpeakPasteboard])
  {
    v3 = [objc_opt_class() _accessibilityQuickSpeakPasteboard];
    v4 = [v3 numberOfItems];

    return v4;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UIPasteboard_QSExtras;
    return [(UIPasteboard_QSExtras *)&v6 numberOfItems];
  }
}

- (id)pasteboardTypesForItemSet:(id)a3
{
  v4 = a3;
  if ([(UIPasteboard_QSExtras *)self _accessibilityShouldSwapReceiverWithQuickSpeakPasteboard])
  {
    v5 = [objc_opt_class() _accessibilityQuickSpeakPasteboard];
    v6 = [v5 pasteboardTypesForItemSet:v4];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UIPasteboard_QSExtras;
    v6 = [(UIPasteboard_QSExtras *)&v8 pasteboardTypesForItemSet:v4];
  }

  return v6;
}

- (void)setStrings:(id)a3
{
  v4 = a3;
  if ([(UIPasteboard_QSExtras *)self _accessibilityShouldSwapReceiverWithQuickSpeakPasteboard])
  {
    v5 = [objc_opt_class() _accessibilityQuickSpeakPasteboard];
    [v5 setStrings:v4];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UIPasteboard_QSExtras;
    [(UIPasteboard_QSExtras *)&v6 setStrings:v4];
  }
}

- (BOOL)containsPasteboardTypes:(id)a3 inItemSet:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(UIPasteboard_QSExtras *)self _accessibilityShouldSwapReceiverWithQuickSpeakPasteboard])
  {
    v8 = [objc_opt_class() _accessibilityQuickSpeakPasteboard];
    v9 = [v8 containsPasteboardTypes:v6 inItemSet:v7];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = UIPasteboard_QSExtras;
    v9 = [(UIPasteboard_QSExtras *)&v11 containsPasteboardTypes:v6 inItemSet:v7];
  }

  return v9;
}

- (id)itemSetWithPasteboardTypes:(id)a3
{
  v4 = a3;
  if ([(UIPasteboard_QSExtras *)self _accessibilityShouldSwapReceiverWithQuickSpeakPasteboard])
  {
    v5 = [objc_opt_class() _accessibilityQuickSpeakPasteboard];
    v6 = [v5 itemSetWithPasteboardTypes:v4];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UIPasteboard_QSExtras;
    v6 = [(UIPasteboard_QSExtras *)&v8 itemSetWithPasteboardTypes:v4];
  }

  return v6;
}

- (id)valuesForPasteboardType:(id)a3 inItemSet:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(UIPasteboard_QSExtras *)self _accessibilityShouldSwapReceiverWithQuickSpeakPasteboard])
  {
    v8 = [objc_opt_class() _accessibilityQuickSpeakPasteboard];
    v9 = [v8 valuesForPasteboardType:v6 inItemSet:v7];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = UIPasteboard_QSExtras;
    v9 = [(UIPasteboard_QSExtras *)&v11 valuesForPasteboardType:v6 inItemSet:v7];
  }

  return v9;
}

- (id)dataForPasteboardType:(id)a3 inItemSet:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(UIPasteboard_QSExtras *)self _accessibilityShouldSwapReceiverWithQuickSpeakPasteboard])
  {
    v8 = [objc_opt_class() _accessibilityQuickSpeakPasteboard];
    v9 = [v8 dataForPasteboardType:v6 inItemSet:v7];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = UIPasteboard_QSExtras;
    v9 = [(UIPasteboard_QSExtras *)&v11 dataForPasteboardType:v6 inItemSet:v7];
  }

  return v9;
}

- (id)items
{
  if ([(UIPasteboard_QSExtras *)self _accessibilityShouldSwapReceiverWithQuickSpeakPasteboard])
  {
    v3 = [objc_opt_class() _accessibilityQuickSpeakPasteboard];
    v4 = [v3 items];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UIPasteboard_QSExtras;
    v4 = [(UIPasteboard_QSExtras *)&v6 items];
  }

  return v4;
}

- (void)setItems:(id)a3
{
  v4 = a3;
  if ([(UIPasteboard_QSExtras *)self _accessibilityShouldSwapReceiverWithQuickSpeakPasteboard])
  {
    v5 = [objc_opt_class() _accessibilityQuickSpeakPasteboard];
    [v5 setItems:v4];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UIPasteboard_QSExtras;
    [(UIPasteboard_QSExtras *)&v6 setItems:v4];
  }
}

- (void)addItems:(id)a3
{
  v4 = a3;
  if ([(UIPasteboard_QSExtras *)self _accessibilityShouldSwapReceiverWithQuickSpeakPasteboard])
  {
    v5 = [objc_opt_class() _accessibilityQuickSpeakPasteboard];
    [v5 addItems:v4];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UIPasteboard_QSExtras;
    [(UIPasteboard_QSExtras *)&v6 addItems:v4];
  }
}

- (id)string
{
  if ([(UIPasteboard_QSExtras *)self _accessibilityShouldSwapReceiverWithQuickSpeakPasteboard])
  {
    v3 = [objc_opt_class() _accessibilityQuickSpeakPasteboard];
    v4 = [v3 string];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UIPasteboard_QSExtras;
    v4 = [(UIPasteboard_QSExtras *)&v6 string];
  }

  return v4;
}

- (id)strings
{
  if ([(UIPasteboard_QSExtras *)self _accessibilityShouldSwapReceiverWithQuickSpeakPasteboard])
  {
    v3 = [objc_opt_class() _accessibilityQuickSpeakPasteboard];
    v4 = [v3 strings];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UIPasteboard_QSExtras;
    v4 = [(UIPasteboard_QSExtras *)&v6 strings];
  }

  return v4;
}

- (id)URL
{
  if ([(UIPasteboard_QSExtras *)self _accessibilityShouldSwapReceiverWithQuickSpeakPasteboard])
  {
    v3 = [objc_opt_class() _accessibilityQuickSpeakPasteboard];
    v4 = [v3 URL];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UIPasteboard_QSExtras;
    v4 = [(UIPasteboard_QSExtras *)&v6 URL];
  }

  return v4;
}

- (id)URLs
{
  if ([(UIPasteboard_QSExtras *)self _accessibilityShouldSwapReceiverWithQuickSpeakPasteboard])
  {
    v3 = [objc_opt_class() _accessibilityQuickSpeakPasteboard];
    v4 = [v3 URLs];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UIPasteboard_QSExtras;
    v4 = [(UIPasteboard_QSExtras *)&v6 URLs];
  }

  return v4;
}

- (id)image
{
  if ([(UIPasteboard_QSExtras *)self _accessibilityShouldSwapReceiverWithQuickSpeakPasteboard])
  {
    v3 = [objc_opt_class() _accessibilityQuickSpeakPasteboard];
    v4 = [v3 image];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UIPasteboard_QSExtras;
    v4 = [(UIPasteboard_QSExtras *)&v6 image];
  }

  return v4;
}

- (id)images
{
  if ([(UIPasteboard_QSExtras *)self _accessibilityShouldSwapReceiverWithQuickSpeakPasteboard])
  {
    v3 = [objc_opt_class() _accessibilityQuickSpeakPasteboard];
    v4 = [v3 images];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UIPasteboard_QSExtras;
    v4 = [(UIPasteboard_QSExtras *)&v6 images];
  }

  return v4;
}

- (id)color
{
  if ([(UIPasteboard_QSExtras *)self _accessibilityShouldSwapReceiverWithQuickSpeakPasteboard])
  {
    v3 = [objc_opt_class() _accessibilityQuickSpeakPasteboard];
    v4 = [v3 color];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UIPasteboard_QSExtras;
    v4 = [(UIPasteboard_QSExtras *)&v6 color];
  }

  return v4;
}

- (id)colors
{
  if ([(UIPasteboard_QSExtras *)self _accessibilityShouldSwapReceiverWithQuickSpeakPasteboard])
  {
    v3 = [objc_opt_class() _accessibilityQuickSpeakPasteboard];
    v4 = [v3 colors];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UIPasteboard_QSExtras;
    v4 = [(UIPasteboard_QSExtras *)&v6 colors];
  }

  return v4;
}

+ (BOOL)_accessibilityUseQuickSpeakPasteBoard
{
  v2 = objc_getAssociatedObject(a1, &QuickSpeakUsePBFlagStorageKey);
  v3 = [v2 BOOLValue];

  return v3;
}

+ (void)_accessibilitySetUseQuickSpeakPasteBoard:(BOOL)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  objc_setAssociatedObject(a1, &QuickSpeakUsePBFlagStorageKey, v5, 1);

  if (!a3)
  {

    objc_setAssociatedObject(a1, &QuickSpeakPasteboardStorageKey, 0, 1);
  }
}

+ (id)_accessibilityQuickSpeakPasteboard
{
  v3 = objc_getAssociatedObject(a1, &QuickSpeakPasteboardStorageKey);
  if (!v3)
  {
    v5.receiver = a1;
    v5.super_class = &OBJC_METACLASS___UIPasteboard_QSExtras;
    v3 = objc_msgSendSuper2(&v5, sel_pasteboardWithName_create_, @"QuickSpeakPasteboard", 1);
    objc_setAssociatedObject(a1, &QuickSpeakPasteboardStorageKey, v3, 1);
  }

  return v3;
}

- (BOOL)_accessibilityShouldSwapReceiverWithQuickSpeakPasteboard
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  AXPerformSafeBlock();
  v3 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  if (v3 != 1)
  {
    return 0;
  }

  v4 = objc_opt_class();
  v5 = objc_getAssociatedObject(v4, &QuickSpeakPasteboardStorageKey);
  v6 = v5 != self;

  return v6;
}

@end