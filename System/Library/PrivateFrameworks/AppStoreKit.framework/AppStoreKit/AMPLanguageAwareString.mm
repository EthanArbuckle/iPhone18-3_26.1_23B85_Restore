@interface AMPLanguageAwareString
+ (AMPLanguageAwareString)AMPLanguageAwareStringEmpty;
+ (AMPLanguageAwareStringPreprocessor)delegate;
+ (void)setDelegate:(id)delegate;
- (AMPLanguageAwareString)init;
- (AMPLanguageAwareString)initWithAttributedString:(id)string baseParagraphStyle:(id)style keepStatisticsOnLanguageComponents:(BOOL)components;
- (AMPLanguageAwareString)initWithLanguageAwareString:(id)string attributes:(id)attributes keepStatisticsOnLanguageComponents:(BOOL)components;
- (AMPLanguageAwareString)initWithString:(id)string attributes:(id)attributes baseParagraphStyle:(id)style keepStatisticsOnLanguageComponents:(BOOL)components;
- (AMPLanguageAwareString)initWithString:(id)string baseParagraphStyle:(id)style generateAttributedString:(BOOL)attributedString keepStatisticsOnLanguageComponents:(BOOL)components;
- (AMPLanguageAwareString)localizedLowercase;
- (AMPLanguageAwareString)localizedUppercase;
- (AMPLanguageAwareString)newlinesCollapsedToSpace;
- (AMPLanguageAwareString)trimmed;
- (NSArray)numbers;
- (NSAttributedString)attributedString;
- (NSString)string;
- (_NSRange)fullRange;
- (int64_t)baseWritingDirectionForCharacterAtLocation:(int64_t)location;
- (int64_t)length;
- (int64_t)numberOfCharacters;
- (int64_t)writingDirectionOfLine:(int64_t)line maximumLinesShown:(int64_t)shown withWidth:(double)width lineBreakMode:(int64_t)mode cacheLayoutInfo:(BOOL)info;
- (void)setAttributedString:(id)string;
- (void)setFullRange:(_NSRange)range;
- (void)setLength:(int64_t)length;
- (void)setLocalizedLowercase:(id)lowercase;
- (void)setLocalizedUppercase:(id)uppercase;
- (void)setNewlinesCollapsedToSpace:(id)space;
- (void)setNumberOfCharacters:(int64_t)characters;
- (void)setThresholdBaseWritingDirection:(int64_t)direction;
- (void)setTrimmed:(id)trimmed;
- (void)setUtf32Length:(int64_t)length;
@end

@implementation AMPLanguageAwareString

- (NSAttributedString)attributedString
{
  selfCopy = self;
  v3 = sub_1E198D200();

  return v3;
}

- (void)setAttributedString:(id)string
{
  v4 = *(self + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___attributedString);
  *(self + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___attributedString) = string;
  stringCopy = string;
}

- (NSString)string
{

  v2 = sub_1E1AF5DBC();

  return v2;
}

- (AMPLanguageAwareString)localizedLowercase
{
  selfCopy = self;
  v3 = sub_1E198D93C();

  return v3;
}

- (void)setLocalizedLowercase:(id)lowercase
{
  v4 = *(self + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedLowercase);
  *(self + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedLowercase) = lowercase;
  lowercaseCopy = lowercase;
}

- (AMPLanguageAwareString)localizedUppercase
{
  selfCopy = self;
  v3 = sub_1E198DACC();

  return v3;
}

- (void)setLocalizedUppercase:(id)uppercase
{
  v4 = *(self + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedUppercase);
  *(self + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedUppercase) = uppercase;
  uppercaseCopy = uppercase;
}

- (AMPLanguageAwareString)newlinesCollapsedToSpace
{
  selfCopy = self;
  v3 = sub_1E198DCFC();

  return v3;
}

- (void)setNewlinesCollapsedToSpace:(id)space
{
  v4 = *(self + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___newlinesCollapsedToSpace);
  *(self + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___newlinesCollapsedToSpace) = space;
  spaceCopy = space;
}

- (AMPLanguageAwareString)trimmed
{
  selfCopy = self;
  v3 = sub_1E198DF4C();

  return v3;
}

- (void)setTrimmed:(id)trimmed
{
  v4 = *(self + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___trimmed);
  *(self + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___trimmed) = trimmed;
  trimmedCopy = trimmed;
}

- (NSArray)numbers
{
  type metadata accessor for _NSRange(0);

  v2 = sub_1E1AF620C();

  return v2;
}

- (_NSRange)fullRange
{
  selfCopy = self;
  v3 = sub_1E198E328();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (void)setFullRange:(_NSRange)range
{
  v3 = (self + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___fullRange);
  *v3 = range;
  LOBYTE(v3[1].location) = 0;
}

- (int64_t)length
{
  selfCopy = self;
  v3 = sub_1E198E538();

  return v3;
}

- (void)setLength:(int64_t)length
{
  v3 = self + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___utf16Count;
  *v3 = length;
  v3[8] = 0;
}

- (void)setUtf32Length:(int64_t)length
{
  v3 = self + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___utf32Count;
  *v3 = length;
  v3[8] = 0;
}

- (int64_t)numberOfCharacters
{
  selfCopy = self;
  v3 = sub_1E198E760();

  return v3;
}

- (void)setNumberOfCharacters:(int64_t)characters
{
  v3 = self + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___characterCount;
  *v3 = characters;
  v3[8] = 0;
}

+ (AMPLanguageAwareStringPreprocessor)delegate
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

+ (void)setDelegate:(id)delegate
{
  swift_beginAccess();
  qword_1EE1DCDF0 = delegate;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

+ (AMPLanguageAwareString)AMPLanguageAwareStringEmpty
{
  if (qword_1ECEB1638 != -1)
  {
    swift_once();
  }

  v3 = qword_1ECEBBB90;

  return v3;
}

- (AMPLanguageAwareString)initWithAttributedString:(id)string baseParagraphStyle:(id)style keepStatisticsOnLanguageComponents:(BOOL)components
{
  stringCopy = string;
  styleCopy = style;
  v9 = sub_1E1990A0C(stringCopy, style, components);

  return v9;
}

- (AMPLanguageAwareString)initWithString:(id)string attributes:(id)attributes baseParagraphStyle:(id)style keepStatisticsOnLanguageComponents:(BOOL)components
{
  v9 = sub_1E1AF5DFC();
  v11 = v10;
  if (attributes)
  {
    type metadata accessor for Key(0);
    sub_1E16FAC84();
    attributes = sub_1E1AF5C7C();
  }

  styleCopy = style;
  v13 = sub_1E1991948(v9, v11, attributes, style, components);

  return v13;
}

- (AMPLanguageAwareString)initWithString:(id)string baseParagraphStyle:(id)style generateAttributedString:(BOOL)attributedString keepStatisticsOnLanguageComponents:(BOOL)components
{
  if (string)
  {
    attributedStringCopy = attributedString;
    v8 = sub_1E1AF5DFC();
    v10 = v9;
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    v12 = byte_1ECEBBB89;
    v13 = *(ObjectType + 504);
    styleCopy = style;
    v15 = v13(v8, v10, style, attributedStringCopy, v12);
    swift_deallocPartialClassInstance();
  }

  else
  {
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v15;
}

- (AMPLanguageAwareString)initWithLanguageAwareString:(id)string attributes:(id)attributes keepStatisticsOnLanguageComponents:(BOOL)components
{
  attributesCopy = attributes;
  if (attributes)
  {
    type metadata accessor for Key(0);
    sub_1E16FAC84();
    attributesCopy = sub_1E1AF5C7C();
  }

  stringCopy = string;
  v9 = sub_1E1991D5C(stringCopy, attributesCopy, components);

  return v9;
}

- (int64_t)baseWritingDirectionForCharacterAtLocation:(int64_t)location
{
  selfCopy = self;
  v5 = sub_1E198D200();
  v6 = NSAttributedString.baseWritingDirection(forCharacterAt:)(location);
  v8 = v7;

  if (v8)
  {
    return -1;
  }

  else
  {
    return v6;
  }
}

- (void)setThresholdBaseWritingDirection:(int64_t)direction
{
  v3 = self + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___thresholdBaseWritingDirection;
  *v3 = direction;
  v3[8] = 0;
}

- (int64_t)writingDirectionOfLine:(int64_t)line maximumLinesShown:(int64_t)shown withWidth:(double)width lineBreakMode:(int64_t)mode cacheLayoutInfo:(BOOL)info
{
  selfCopy = self;
  sub_1E198FE40(line, shown, mode, info, width);
  v14 = v13;

  return v14;
}

- (AMPLanguageAwareString)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end