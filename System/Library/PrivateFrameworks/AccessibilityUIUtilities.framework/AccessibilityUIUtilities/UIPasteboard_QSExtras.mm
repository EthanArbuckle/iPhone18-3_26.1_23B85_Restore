@interface UIPasteboard_QSExtras
+ (BOOL)_accessibilityUseQuickSpeakPasteBoard;
+ (id)_accessibilityQuickSpeakPasteboard;
+ (id)generalPasteboard;
+ (id)pasteboardWithName:(id)name create:(BOOL)create;
+ (id)pasteboardWithUniqueName;
+ (void)_accessibilitySetUseQuickSpeakPasteBoard:(BOOL)board;
- (BOOL)_accessibilityShouldSwapReceiverWithQuickSpeakPasteboard;
- (BOOL)containsPasteboardTypes:(id)types;
- (BOOL)containsPasteboardTypes:(id)types inItemSet:(id)set;
- (id)URL;
- (id)URLs;
- (id)color;
- (id)colors;
- (id)dataForPasteboardType:(id)type;
- (id)dataForPasteboardType:(id)type inItemSet:(id)set;
- (id)image;
- (id)images;
- (id)itemSetWithPasteboardTypes:(id)types;
- (id)items;
- (id)pasteboardTypes;
- (id)pasteboardTypesForItemSet:(id)set;
- (id)string;
- (id)strings;
- (id)valueForPasteboardType:(id)type;
- (id)valuesForPasteboardType:(id)type inItemSet:(id)set;
- (int64_t)changeCount;
- (int64_t)numberOfItems;
- (void)addItems:(id)items;
- (void)setData:(id)data forPasteboardType:(id)type;
- (void)setItems:(id)items;
- (void)setStrings:(id)strings;
- (void)setValue:(id)value forPasteboardType:(id)type;
@end

@implementation UIPasteboard_QSExtras

+ (id)generalPasteboard
{
  if ((objc_opt_respondsToSelector() & 1) != 0 && [self _accessibilityUseQuickSpeakPasteBoard])
  {
    _accessibilityQuickSpeakPasteboard = [self _accessibilityQuickSpeakPasteboard];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = &OBJC_METACLASS___UIPasteboard_QSExtras;
    _accessibilityQuickSpeakPasteboard = objc_msgSendSuper2(&v5, sel_generalPasteboard);
  }

  return _accessibilityQuickSpeakPasteboard;
}

+ (id)pasteboardWithName:(id)name create:(BOOL)create
{
  createCopy = create;
  nameCopy = name;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [self _accessibilityUseQuickSpeakPasteBoard])
  {
    _accessibilityQuickSpeakPasteboard = [self _accessibilityQuickSpeakPasteboard];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = &OBJC_METACLASS___UIPasteboard_QSExtras;
    _accessibilityQuickSpeakPasteboard = objc_msgSendSuper2(&v10, sel_pasteboardWithName_create_, nameCopy, createCopy);
  }

  v8 = _accessibilityQuickSpeakPasteboard;

  return v8;
}

+ (id)pasteboardWithUniqueName
{
  if ((objc_opt_respondsToSelector() & 1) != 0 && [self _accessibilityUseQuickSpeakPasteBoard])
  {
    _accessibilityQuickSpeakPasteboard = [self _accessibilityQuickSpeakPasteboard];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = &OBJC_METACLASS___UIPasteboard_QSExtras;
    _accessibilityQuickSpeakPasteboard = objc_msgSendSuper2(&v5, sel_pasteboardWithUniqueName);
  }

  return _accessibilityQuickSpeakPasteboard;
}

- (int64_t)changeCount
{
  if ([(UIPasteboard_QSExtras *)self _accessibilityShouldSwapReceiverWithQuickSpeakPasteboard])
  {
    _accessibilityQuickSpeakPasteboard = [objc_opt_class() _accessibilityQuickSpeakPasteboard];
    changeCount = [_accessibilityQuickSpeakPasteboard changeCount];

    return changeCount;
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
    _accessibilityQuickSpeakPasteboard = [objc_opt_class() _accessibilityQuickSpeakPasteboard];
    pasteboardTypes = [_accessibilityQuickSpeakPasteboard pasteboardTypes];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UIPasteboard_QSExtras;
    pasteboardTypes = [(UIPasteboard_QSExtras *)&v6 pasteboardTypes];
  }

  return pasteboardTypes;
}

- (BOOL)containsPasteboardTypes:(id)types
{
  typesCopy = types;
  if ([(UIPasteboard_QSExtras *)self _accessibilityShouldSwapReceiverWithQuickSpeakPasteboard])
  {
    _accessibilityQuickSpeakPasteboard = [objc_opt_class() _accessibilityQuickSpeakPasteboard];
    v6 = [_accessibilityQuickSpeakPasteboard containsPasteboardTypes:typesCopy];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UIPasteboard_QSExtras;
    v6 = [(UIPasteboard_QSExtras *)&v8 containsPasteboardTypes:typesCopy];
  }

  return v6;
}

- (id)dataForPasteboardType:(id)type
{
  typeCopy = type;
  if ([(UIPasteboard_QSExtras *)self _accessibilityShouldSwapReceiverWithQuickSpeakPasteboard])
  {
    _accessibilityQuickSpeakPasteboard = [objc_opt_class() _accessibilityQuickSpeakPasteboard];
    v6 = [_accessibilityQuickSpeakPasteboard dataForPasteboardType:typeCopy];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UIPasteboard_QSExtras;
    v6 = [(UIPasteboard_QSExtras *)&v8 dataForPasteboardType:typeCopy];
  }

  return v6;
}

- (id)valueForPasteboardType:(id)type
{
  typeCopy = type;
  if ([(UIPasteboard_QSExtras *)self _accessibilityShouldSwapReceiverWithQuickSpeakPasteboard])
  {
    _accessibilityQuickSpeakPasteboard = [objc_opt_class() _accessibilityQuickSpeakPasteboard];
    v6 = [_accessibilityQuickSpeakPasteboard valueForPasteboardType:typeCopy];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UIPasteboard_QSExtras;
    v6 = [(UIPasteboard_QSExtras *)&v8 valueForPasteboardType:typeCopy];
  }

  return v6;
}

- (void)setValue:(id)value forPasteboardType:(id)type
{
  valueCopy = value;
  typeCopy = type;
  if ([(UIPasteboard_QSExtras *)self _accessibilityShouldSwapReceiverWithQuickSpeakPasteboard])
  {
    _accessibilityQuickSpeakPasteboard = [objc_opt_class() _accessibilityQuickSpeakPasteboard];
    [_accessibilityQuickSpeakPasteboard setValue:valueCopy forPasteboardType:typeCopy];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = UIPasteboard_QSExtras;
    [(UIPasteboard_QSExtras *)&v9 setValue:valueCopy forPasteboardType:typeCopy];
  }
}

- (void)setData:(id)data forPasteboardType:(id)type
{
  dataCopy = data;
  typeCopy = type;
  if ([(UIPasteboard_QSExtras *)self _accessibilityShouldSwapReceiverWithQuickSpeakPasteboard])
  {
    _accessibilityQuickSpeakPasteboard = [objc_opt_class() _accessibilityQuickSpeakPasteboard];
    [_accessibilityQuickSpeakPasteboard setData:dataCopy forPasteboardType:typeCopy];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = UIPasteboard_QSExtras;
    [(UIPasteboard_QSExtras *)&v9 setData:dataCopy forPasteboardType:typeCopy];
  }
}

- (int64_t)numberOfItems
{
  if ([(UIPasteboard_QSExtras *)self _accessibilityShouldSwapReceiverWithQuickSpeakPasteboard])
  {
    _accessibilityQuickSpeakPasteboard = [objc_opt_class() _accessibilityQuickSpeakPasteboard];
    numberOfItems = [_accessibilityQuickSpeakPasteboard numberOfItems];

    return numberOfItems;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UIPasteboard_QSExtras;
    return [(UIPasteboard_QSExtras *)&v6 numberOfItems];
  }
}

- (id)pasteboardTypesForItemSet:(id)set
{
  setCopy = set;
  if ([(UIPasteboard_QSExtras *)self _accessibilityShouldSwapReceiverWithQuickSpeakPasteboard])
  {
    _accessibilityQuickSpeakPasteboard = [objc_opt_class() _accessibilityQuickSpeakPasteboard];
    v6 = [_accessibilityQuickSpeakPasteboard pasteboardTypesForItemSet:setCopy];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UIPasteboard_QSExtras;
    v6 = [(UIPasteboard_QSExtras *)&v8 pasteboardTypesForItemSet:setCopy];
  }

  return v6;
}

- (void)setStrings:(id)strings
{
  stringsCopy = strings;
  if ([(UIPasteboard_QSExtras *)self _accessibilityShouldSwapReceiverWithQuickSpeakPasteboard])
  {
    _accessibilityQuickSpeakPasteboard = [objc_opt_class() _accessibilityQuickSpeakPasteboard];
    [_accessibilityQuickSpeakPasteboard setStrings:stringsCopy];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UIPasteboard_QSExtras;
    [(UIPasteboard_QSExtras *)&v6 setStrings:stringsCopy];
  }
}

- (BOOL)containsPasteboardTypes:(id)types inItemSet:(id)set
{
  typesCopy = types;
  setCopy = set;
  if ([(UIPasteboard_QSExtras *)self _accessibilityShouldSwapReceiverWithQuickSpeakPasteboard])
  {
    _accessibilityQuickSpeakPasteboard = [objc_opt_class() _accessibilityQuickSpeakPasteboard];
    v9 = [_accessibilityQuickSpeakPasteboard containsPasteboardTypes:typesCopy inItemSet:setCopy];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = UIPasteboard_QSExtras;
    v9 = [(UIPasteboard_QSExtras *)&v11 containsPasteboardTypes:typesCopy inItemSet:setCopy];
  }

  return v9;
}

- (id)itemSetWithPasteboardTypes:(id)types
{
  typesCopy = types;
  if ([(UIPasteboard_QSExtras *)self _accessibilityShouldSwapReceiverWithQuickSpeakPasteboard])
  {
    _accessibilityQuickSpeakPasteboard = [objc_opt_class() _accessibilityQuickSpeakPasteboard];
    v6 = [_accessibilityQuickSpeakPasteboard itemSetWithPasteboardTypes:typesCopy];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UIPasteboard_QSExtras;
    v6 = [(UIPasteboard_QSExtras *)&v8 itemSetWithPasteboardTypes:typesCopy];
  }

  return v6;
}

- (id)valuesForPasteboardType:(id)type inItemSet:(id)set
{
  typeCopy = type;
  setCopy = set;
  if ([(UIPasteboard_QSExtras *)self _accessibilityShouldSwapReceiverWithQuickSpeakPasteboard])
  {
    _accessibilityQuickSpeakPasteboard = [objc_opt_class() _accessibilityQuickSpeakPasteboard];
    v9 = [_accessibilityQuickSpeakPasteboard valuesForPasteboardType:typeCopy inItemSet:setCopy];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = UIPasteboard_QSExtras;
    v9 = [(UIPasteboard_QSExtras *)&v11 valuesForPasteboardType:typeCopy inItemSet:setCopy];
  }

  return v9;
}

- (id)dataForPasteboardType:(id)type inItemSet:(id)set
{
  typeCopy = type;
  setCopy = set;
  if ([(UIPasteboard_QSExtras *)self _accessibilityShouldSwapReceiverWithQuickSpeakPasteboard])
  {
    _accessibilityQuickSpeakPasteboard = [objc_opt_class() _accessibilityQuickSpeakPasteboard];
    v9 = [_accessibilityQuickSpeakPasteboard dataForPasteboardType:typeCopy inItemSet:setCopy];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = UIPasteboard_QSExtras;
    v9 = [(UIPasteboard_QSExtras *)&v11 dataForPasteboardType:typeCopy inItemSet:setCopy];
  }

  return v9;
}

- (id)items
{
  if ([(UIPasteboard_QSExtras *)self _accessibilityShouldSwapReceiverWithQuickSpeakPasteboard])
  {
    _accessibilityQuickSpeakPasteboard = [objc_opt_class() _accessibilityQuickSpeakPasteboard];
    items = [_accessibilityQuickSpeakPasteboard items];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UIPasteboard_QSExtras;
    items = [(UIPasteboard_QSExtras *)&v6 items];
  }

  return items;
}

- (void)setItems:(id)items
{
  itemsCopy = items;
  if ([(UIPasteboard_QSExtras *)self _accessibilityShouldSwapReceiverWithQuickSpeakPasteboard])
  {
    _accessibilityQuickSpeakPasteboard = [objc_opt_class() _accessibilityQuickSpeakPasteboard];
    [_accessibilityQuickSpeakPasteboard setItems:itemsCopy];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UIPasteboard_QSExtras;
    [(UIPasteboard_QSExtras *)&v6 setItems:itemsCopy];
  }
}

- (void)addItems:(id)items
{
  itemsCopy = items;
  if ([(UIPasteboard_QSExtras *)self _accessibilityShouldSwapReceiverWithQuickSpeakPasteboard])
  {
    _accessibilityQuickSpeakPasteboard = [objc_opt_class() _accessibilityQuickSpeakPasteboard];
    [_accessibilityQuickSpeakPasteboard addItems:itemsCopy];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UIPasteboard_QSExtras;
    [(UIPasteboard_QSExtras *)&v6 addItems:itemsCopy];
  }
}

- (id)string
{
  if ([(UIPasteboard_QSExtras *)self _accessibilityShouldSwapReceiverWithQuickSpeakPasteboard])
  {
    _accessibilityQuickSpeakPasteboard = [objc_opt_class() _accessibilityQuickSpeakPasteboard];
    string = [_accessibilityQuickSpeakPasteboard string];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UIPasteboard_QSExtras;
    string = [(UIPasteboard_QSExtras *)&v6 string];
  }

  return string;
}

- (id)strings
{
  if ([(UIPasteboard_QSExtras *)self _accessibilityShouldSwapReceiverWithQuickSpeakPasteboard])
  {
    _accessibilityQuickSpeakPasteboard = [objc_opt_class() _accessibilityQuickSpeakPasteboard];
    strings = [_accessibilityQuickSpeakPasteboard strings];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UIPasteboard_QSExtras;
    strings = [(UIPasteboard_QSExtras *)&v6 strings];
  }

  return strings;
}

- (id)URL
{
  if ([(UIPasteboard_QSExtras *)self _accessibilityShouldSwapReceiverWithQuickSpeakPasteboard])
  {
    _accessibilityQuickSpeakPasteboard = [objc_opt_class() _accessibilityQuickSpeakPasteboard];
    v4 = [_accessibilityQuickSpeakPasteboard URL];
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
    _accessibilityQuickSpeakPasteboard = [objc_opt_class() _accessibilityQuickSpeakPasteboard];
    uRLs = [_accessibilityQuickSpeakPasteboard URLs];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UIPasteboard_QSExtras;
    uRLs = [(UIPasteboard_QSExtras *)&v6 URLs];
  }

  return uRLs;
}

- (id)image
{
  if ([(UIPasteboard_QSExtras *)self _accessibilityShouldSwapReceiverWithQuickSpeakPasteboard])
  {
    _accessibilityQuickSpeakPasteboard = [objc_opt_class() _accessibilityQuickSpeakPasteboard];
    image = [_accessibilityQuickSpeakPasteboard image];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UIPasteboard_QSExtras;
    image = [(UIPasteboard_QSExtras *)&v6 image];
  }

  return image;
}

- (id)images
{
  if ([(UIPasteboard_QSExtras *)self _accessibilityShouldSwapReceiverWithQuickSpeakPasteboard])
  {
    _accessibilityQuickSpeakPasteboard = [objc_opt_class() _accessibilityQuickSpeakPasteboard];
    images = [_accessibilityQuickSpeakPasteboard images];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UIPasteboard_QSExtras;
    images = [(UIPasteboard_QSExtras *)&v6 images];
  }

  return images;
}

- (id)color
{
  if ([(UIPasteboard_QSExtras *)self _accessibilityShouldSwapReceiverWithQuickSpeakPasteboard])
  {
    _accessibilityQuickSpeakPasteboard = [objc_opt_class() _accessibilityQuickSpeakPasteboard];
    color = [_accessibilityQuickSpeakPasteboard color];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UIPasteboard_QSExtras;
    color = [(UIPasteboard_QSExtras *)&v6 color];
  }

  return color;
}

- (id)colors
{
  if ([(UIPasteboard_QSExtras *)self _accessibilityShouldSwapReceiverWithQuickSpeakPasteboard])
  {
    _accessibilityQuickSpeakPasteboard = [objc_opt_class() _accessibilityQuickSpeakPasteboard];
    colors = [_accessibilityQuickSpeakPasteboard colors];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UIPasteboard_QSExtras;
    colors = [(UIPasteboard_QSExtras *)&v6 colors];
  }

  return colors;
}

+ (BOOL)_accessibilityUseQuickSpeakPasteBoard
{
  v2 = objc_getAssociatedObject(self, &QuickSpeakUsePBFlagStorageKey);
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

+ (void)_accessibilitySetUseQuickSpeakPasteBoard:(BOOL)board
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  objc_setAssociatedObject(self, &QuickSpeakUsePBFlagStorageKey, v5, 1);

  if (!board)
  {

    objc_setAssociatedObject(self, &QuickSpeakPasteboardStorageKey, 0, 1);
  }
}

+ (id)_accessibilityQuickSpeakPasteboard
{
  v3 = objc_getAssociatedObject(self, &QuickSpeakPasteboardStorageKey);
  if (!v3)
  {
    v5.receiver = self;
    v5.super_class = &OBJC_METACLASS___UIPasteboard_QSExtras;
    v3 = objc_msgSendSuper2(&v5, sel_pasteboardWithName_create_, @"QuickSpeakPasteboard", 1);
    objc_setAssociatedObject(self, &QuickSpeakPasteboardStorageKey, v3, 1);
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