@interface TUIWPBox
+ (id)textModelBuilderWithFontSpec:(id)a3 style:(unint64_t)a4 color:(id)a5 alignment:(int64_t)a6 writingDirection:(int64_t)a7 language:(id)a8 shouldHyphenate:(BOOL)a9 service:(id)a10;
- (NSAttributedString)placeholderString;
- (NSString)blendMode;
- (NSString)string;
- (TUIWPBox)init;
- (TUIWPBox)initWithTextModel:(id)a3;
- (unint64_t)maxLines;
- (void)setAllowHangingPunctuation:(BOOL)a3;
- (void)setAllowShrinkToFit:(BOOL)a3;
- (void)setHideEllipses:(BOOL)a3;
- (void)setMaxLines:(unint64_t)a3;
@end

@implementation TUIWPBox

+ (id)textModelBuilderWithFontSpec:(id)a3 style:(unint64_t)a4 color:(id)a5 alignment:(int64_t)a6 writingDirection:(int64_t)a7 language:(id)a8 shouldHyphenate:(BOOL)a9 service:(id)a10
{
  v15 = a3;
  v16 = a5;
  v17 = a8;
  v18 = a10;
  LOBYTE(v21) = a9;
  v19 = [[TUIWPBuilder alloc] initWithFontSpec:v15 style:a4 color:v16 alignment:a6 writingDirection:a7 language:v17 shouldHyphenate:v21 service:v18];

  return v19;
}

- (TUIWPBox)initWithTextModel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TUIWPBox;
  v6 = [(TUIBox *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->super.super._storage._data = TUIWPBoxStorageDataset | 1;
    objc_storeStrong(&v6->_wpStorage, a3);
    [(TUIBox *)v7 setAXElement:1];
  }

  return v7;
}

- (TUIWPBox)init
{
  v5.receiver = self;
  v5.super_class = TUIWPBox;
  v2 = [(TUIBox *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->super.super._storage._data = TUIWPBoxStorageDataset | 1;
    [(TUIBox *)v2 setAXElement:1];
  }

  return v3;
}

- (NSString)string
{
  if (self->_wpStorage)
  {
    v2 = [(TUIWPStorage *)self->_wpStorage string];
    v3 = [v2 copy];
  }

  else
  {
    v2 = [(TUIWPBox *)self placeholderString];
    v4 = [v2 string];
    v3 = [v4 copy];
  }

  return v3;
}

- (void)setMaxLines:(unint64_t)a3
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0x7FFFFFFF;
  }

  else
  {
    v4 = a3;
  }

  if (!v4)
  {
    v6 = TUI::Util::PartialStruct::Storage::dataForKey(&self->super.super._storage, 0xDu);
    if (!v6)
    {
      return;
    }

    DataForKey = v6;
    TUI::Util::PartialStruct::Storage::markAsDefault(&self->super.super._storage._data, 0xDu);
    goto LABEL_9;
  }

  DataForKey = TUI::Util::PartialStruct::Storage::allocateDataForKey(&self->super.super._storage, 0xDu, 4uLL, 1);
  if (DataForKey)
  {
LABEL_9:
    *DataForKey = v4;
  }
}

- (unint64_t)maxLines
{
  result = TUI::Util::PartialStruct::Storage::dataForKey(&self->super.super._storage, 0xDu);
  if (result)
  {
    if (*result == 0x7FFFFFFF)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      return *result;
    }
  }

  return result;
}

- (void)setAllowHangingPunctuation:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(&self->super.super._flags + 2) = *(&self->super.super._flags + 2) & 0xFFBF | v3;
}

- (void)setAllowShrinkToFit:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *(&self->super.super._flags + 2) = *(&self->super.super._flags + 2) & 0xFF7F | v3;
}

- (void)setHideEllipses:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *(&self->super.super._flags + 2) = *(&self->super.super._flags + 2) & 0xFEFF | v3;
}

- (NSString)blendMode
{
  ObjectForKey = TUI::Util::PartialStruct::Storage::getObjectForKey(&self->super.super._storage, 1u);

  return ObjectForKey;
}

- (NSAttributedString)placeholderString
{
  ObjectForKey = TUI::Util::PartialStruct::Storage::getObjectForKey(&self->super.super._storage, 0x24u);

  return ObjectForKey;
}

@end