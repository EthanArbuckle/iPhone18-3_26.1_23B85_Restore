@interface TUIWPBox
+ (id)textModelBuilderWithFontSpec:(id)spec style:(unint64_t)style color:(id)color alignment:(int64_t)alignment writingDirection:(int64_t)direction language:(id)language shouldHyphenate:(BOOL)hyphenate service:(id)self0;
- (NSAttributedString)placeholderString;
- (NSString)blendMode;
- (NSString)string;
- (TUIWPBox)init;
- (TUIWPBox)initWithTextModel:(id)model;
- (unint64_t)maxLines;
- (void)setAllowHangingPunctuation:(BOOL)punctuation;
- (void)setAllowShrinkToFit:(BOOL)fit;
- (void)setHideEllipses:(BOOL)ellipses;
- (void)setMaxLines:(unint64_t)lines;
@end

@implementation TUIWPBox

+ (id)textModelBuilderWithFontSpec:(id)spec style:(unint64_t)style color:(id)color alignment:(int64_t)alignment writingDirection:(int64_t)direction language:(id)language shouldHyphenate:(BOOL)hyphenate service:(id)self0
{
  specCopy = spec;
  colorCopy = color;
  languageCopy = language;
  serviceCopy = service;
  LOBYTE(v21) = hyphenate;
  v19 = [[TUIWPBuilder alloc] initWithFontSpec:specCopy style:style color:colorCopy alignment:alignment writingDirection:direction language:languageCopy shouldHyphenate:v21 service:serviceCopy];

  return v19;
}

- (TUIWPBox)initWithTextModel:(id)model
{
  modelCopy = model;
  v9.receiver = self;
  v9.super_class = TUIWPBox;
  v6 = [(TUIBox *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->super.super._storage._data = TUIWPBoxStorageDataset | 1;
    objc_storeStrong(&v6->_wpStorage, model);
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
    string = [(TUIWPStorage *)self->_wpStorage string];
    v3 = [string copy];
  }

  else
  {
    string = [(TUIWPBox *)self placeholderString];
    v2String = [string string];
    v3 = [v2String copy];
  }

  return v3;
}

- (void)setMaxLines:(unint64_t)lines
{
  if (lines == 0x7FFFFFFFFFFFFFFFLL)
  {
    linesCopy = 0x7FFFFFFF;
  }

  else
  {
    linesCopy = lines;
  }

  if (!linesCopy)
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
    *DataForKey = linesCopy;
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

- (void)setAllowHangingPunctuation:(BOOL)punctuation
{
  if (punctuation)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(&self->super.super._flags + 2) = *(&self->super.super._flags + 2) & 0xFFBF | v3;
}

- (void)setAllowShrinkToFit:(BOOL)fit
{
  if (fit)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *(&self->super.super._flags + 2) = *(&self->super.super._flags + 2) & 0xFF7F | v3;
}

- (void)setHideEllipses:(BOOL)ellipses
{
  if (ellipses)
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