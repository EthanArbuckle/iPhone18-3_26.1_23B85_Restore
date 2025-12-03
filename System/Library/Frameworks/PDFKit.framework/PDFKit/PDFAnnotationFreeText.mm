@interface PDFAnnotationFreeText
- (NSColor)fontColor;
- (NSFont)font;
- (NSTextAlignment)alignment;
- (PDFAnnotationFreeText)initWithAnnotationDictionary:(CGPDFDictionary *)dictionary forPage:(id)page;
- (PDFAnnotationFreeText)initWithCoder:(id)coder;
- (__CFDictionary)commonCreateDictionaryRef;
- (id)copyWithZone:(_NSZone *)zone;
- (void)commonInit;
- (void)drawWithBox:(int64_t)box inContext:(CGContext *)context;
- (void)encodeWithCoder:(id)coder;
- (void)setAlignment:(NSTextAlignment)alignment;
- (void)setFont:(NSFont *)font;
- (void)setFontColor:(NSColor *)color;
@end

@implementation PDFAnnotationFreeText

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = PDFAnnotationFreeText;
  v3 = [(PDFAnnotation *)&v7 copyWithZone:zone];
  if (v3)
  {
    v4 = objc_alloc_init(PDFAnnotationFreeTextPrivateVars);
    v5 = v3[50];
    v3[50] = v4;
  }

  return v3;
}

- (PDFAnnotationFreeText)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy allowsKeyedCoding])
  {
    v10.receiver = self;
    v10.super_class = PDFAnnotationFreeText;
    self = [(PDFAnnotation *)&v10 initWithCoder:coderCopy];
  }

  else
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E696A4C8];
    v8 = NSStringFromSelector(a2);
    [v6 raise:v7 format:{@"%@ - only keyed coders are supported by %@", v8, objc_opt_class()}];
  }

  return self;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = PDFAnnotationFreeText;
  [(PDFAnnotation *)&v3 encodeWithCoder:coder];
}

- (NSFont)font
{
  v4.receiver = self;
  v4.super_class = PDFAnnotationFreeText;
  font = [(PDFAnnotation *)&v4 font];

  return font;
}

- (void)setFont:(NSFont *)font
{
  v3.receiver = self;
  v3.super_class = PDFAnnotationFreeText;
  [(PDFAnnotation *)&v3 setFont:font];
}

- (NSColor)fontColor
{
  v4.receiver = self;
  v4.super_class = PDFAnnotationFreeText;
  fontColor = [(PDFAnnotation *)&v4 fontColor];

  return fontColor;
}

- (void)setFontColor:(NSColor *)color
{
  v3.receiver = self;
  v3.super_class = PDFAnnotationFreeText;
  [(PDFAnnotation *)&v3 setFontColor:color];
}

- (NSTextAlignment)alignment
{
  v2 = [(PDFAnnotation *)self valueForAnnotationKey:@"/Q"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setAlignment:(NSTextAlignment)alignment
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:alignment];
  [(PDFAnnotation *)self setValue:v4 forAnnotationKey:@"/Q"];
}

- (PDFAnnotationFreeText)initWithAnnotationDictionary:(CGPDFDictionary *)dictionary forPage:(id)page
{
  v5.receiver = self;
  v5.super_class = PDFAnnotationFreeText;
  return [(PDFAnnotation *)&v5 initWithAnnotationDictionary:dictionary forPage:page];
}

- (void)commonInit
{
  v5.receiver = self;
  v5.super_class = PDFAnnotationFreeText;
  [(PDFAnnotation *)&v5 commonInit];
  v3 = objc_alloc_init(PDFAnnotationFreeTextPrivateVars);
  private2 = self->_private2;
  self->_private2 = v3;

  [(PDFAnnotation *)self setIsFullyConstructed:0];
  [(PDFAnnotation *)self setType:@"/FreeText"];
  [(PDFAnnotation *)self setIsFullyConstructed:1];
}

- (__CFDictionary)commonCreateDictionaryRef
{
  v3.receiver = self;
  v3.super_class = PDFAnnotationFreeText;
  return [(PDFAnnotation *)&v3 commonCreateDictionaryRef];
}

- (void)drawWithBox:(int64_t)box inContext:(CGContext *)context
{
  v4.receiver = self;
  v4.super_class = PDFAnnotationFreeText;
  [(PDFAnnotation *)&v4 drawWithBox:box inContext:context];
}

@end