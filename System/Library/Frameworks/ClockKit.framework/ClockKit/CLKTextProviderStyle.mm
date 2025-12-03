@interface CLKTextProviderStyle
+ (id)otherAttributesWithParagraphStyle:(id)style kerning:(double)kerning;
+ (id)styleWithFont:(id)font smallCapsBaseFont:(id)baseFont uppercase:(BOOL)uppercase otherAttributes:(id)attributes minimumScaleFactor:(double)factor shouldEmbedTintColor:(BOOL)color;
+ (id)styleWithFont:(id)font smallCapsBaseFont:(id)baseFont uppercase:(BOOL)uppercase otherAttributes:(id)attributes minimumScaleFactor:(double)factor shouldEmbedTintColor:(BOOL)color shouldStyleForTritium:(BOOL)tritium;
- (BOOL)isEqual:(id)equal;
- (CLKFont)monospacedDigitsFont;
- (CLKFont)smallCapsBaseFont;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation CLKTextProviderStyle

+ (id)styleWithFont:(id)font smallCapsBaseFont:(id)baseFont uppercase:(BOOL)uppercase otherAttributes:(id)attributes minimumScaleFactor:(double)factor shouldEmbedTintColor:(BOOL)color shouldStyleForTritium:(BOOL)tritium
{
  tritiumCopy = tritium;
  v10 = [self styleWithFont:font smallCapsBaseFont:baseFont uppercase:uppercase otherAttributes:attributes minimumScaleFactor:color shouldEmbedTintColor:factor];
  [v10 setShouldStyleForTritium:tritiumCopy];

  return v10;
}

+ (id)styleWithFont:(id)font smallCapsBaseFont:(id)baseFont uppercase:(BOOL)uppercase otherAttributes:(id)attributes minimumScaleFactor:(double)factor shouldEmbedTintColor:(BOOL)color
{
  colorCopy = color;
  uppercaseCopy = uppercase;
  attributesCopy = attributes;
  baseFontCopy = baseFont;
  fontCopy = font;
  v16 = objc_opt_new();
  [v16 setFont:fontCopy];

  [v16 setSmallCapsBaseFont:baseFontCopy];
  [v16 setUppercase:uppercaseCopy];
  [v16 setOtherAttributes:attributesCopy];

  [v16 setMinimumScaleFactor:factor];
  [v16 setShouldEmbedTintColors:colorCopy];

  return v16;
}

+ (id)otherAttributesWithParagraphStyle:(id)style kerning:(double)kerning
{
  styleCopy = style;
  v6 = objc_opt_new();
  [v6 setObject:styleCopy forKeyedSubscript:*MEMORY[0x277D74118]];

  kerningCopy = -kerning;
  if (kerning >= 0.0)
  {
    kerningCopy = kerning;
  }

  if (kerningCopy > 0.00000011920929)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:kerning];
    [v6 setObject:v8 forKeyedSubscript:*MEMORY[0x277D740D0]];
  }

  return v6;
}

- (CLKFont)smallCapsBaseFont
{
  smallCapsBaseFont = self->_smallCapsBaseFont;
  if (!smallCapsBaseFont)
  {
    smallCapsBaseFont = self->_font;
  }

  return smallCapsBaseFont;
}

- (CLKFont)monospacedDigitsFont
{
  monospacedDigitsFont = self->_monospacedDigitsFont;
  if (!monospacedDigitsFont)
  {
    monospacedDigitsFont = self->_font;
  }

  return monospacedDigitsFont;
}

- (unint64_t)hash
{
  v3 = [(CLKFont *)self->_font hash];
  v4 = [(CLKFont *)self->_smallCapsBaseFont hash]^ v3;
  v5 = v4 ^ [(NSDictionary *)self->_otherAttributes hash];
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_minimumScaleFactor];
  v7 = v5 ^ [v6 hash];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_shouldEmbedTintColors];
  v9 = [v8 hash] ^ (self->_uppercase + self->_shouldStyleForTritium);

  return v7 ^ v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_10;
  }

  if (equalCopy == self)
  {
    v5 = 1;
    goto LABEL_11;
  }

  if ([(CLKFont *)equalCopy->_font isEqual:self->_font]&& CLKEqualObjects(equalCopy->_smallCapsBaseFont, self->_smallCapsBaseFont) && equalCopy->_shouldStyleForTritium == self->_shouldStyleForTritium && equalCopy->_uppercase == self->_uppercase && CLKEqualObjects(equalCopy->_otherAttributes, self->_otherAttributes) && CLKFloatEqualsFloat(equalCopy->_minimumScaleFactor, self->_minimumScaleFactor))
  {
    v5 = equalCopy->_shouldEmbedTintColors == self->_shouldEmbedTintColors;
  }

  else
  {
LABEL_10:
    v5 = 0;
  }

LABEL_11:

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[CLKTextProviderStyle allocWithZone:?]];
  v5 = [(CLKFont *)self->_font copy];
  font = v4->_font;
  v4->_font = v5;

  v7 = [(CLKFont *)self->_smallCapsBaseFont copy];
  smallCapsBaseFont = v4->_smallCapsBaseFont;
  v4->_smallCapsBaseFont = v7;

  v4->_uppercase = self->_uppercase;
  v9 = [(NSDictionary *)self->_otherAttributes copy];
  otherAttributes = v4->_otherAttributes;
  v4->_otherAttributes = v9;

  v4->_minimumScaleFactor = self->_minimumScaleFactor;
  v4->_shouldEmbedTintColors = self->_shouldEmbedTintColors;
  v4->_shouldStyleForTritium = self->_shouldStyleForTritium;
  return v4;
}

@end