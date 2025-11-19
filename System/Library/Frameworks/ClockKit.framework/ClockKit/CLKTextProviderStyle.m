@interface CLKTextProviderStyle
+ (id)otherAttributesWithParagraphStyle:(id)a3 kerning:(double)a4;
+ (id)styleWithFont:(id)a3 smallCapsBaseFont:(id)a4 uppercase:(BOOL)a5 otherAttributes:(id)a6 minimumScaleFactor:(double)a7 shouldEmbedTintColor:(BOOL)a8;
+ (id)styleWithFont:(id)a3 smallCapsBaseFont:(id)a4 uppercase:(BOOL)a5 otherAttributes:(id)a6 minimumScaleFactor:(double)a7 shouldEmbedTintColor:(BOOL)a8 shouldStyleForTritium:(BOOL)a9;
- (BOOL)isEqual:(id)a3;
- (CLKFont)monospacedDigitsFont;
- (CLKFont)smallCapsBaseFont;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation CLKTextProviderStyle

+ (id)styleWithFont:(id)a3 smallCapsBaseFont:(id)a4 uppercase:(BOOL)a5 otherAttributes:(id)a6 minimumScaleFactor:(double)a7 shouldEmbedTintColor:(BOOL)a8 shouldStyleForTritium:(BOOL)a9
{
  v9 = a9;
  v10 = [a1 styleWithFont:a3 smallCapsBaseFont:a4 uppercase:a5 otherAttributes:a6 minimumScaleFactor:a8 shouldEmbedTintColor:a7];
  [v10 setShouldStyleForTritium:v9];

  return v10;
}

+ (id)styleWithFont:(id)a3 smallCapsBaseFont:(id)a4 uppercase:(BOOL)a5 otherAttributes:(id)a6 minimumScaleFactor:(double)a7 shouldEmbedTintColor:(BOOL)a8
{
  v8 = a8;
  v10 = a5;
  v13 = a6;
  v14 = a4;
  v15 = a3;
  v16 = objc_opt_new();
  [v16 setFont:v15];

  [v16 setSmallCapsBaseFont:v14];
  [v16 setUppercase:v10];
  [v16 setOtherAttributes:v13];

  [v16 setMinimumScaleFactor:a7];
  [v16 setShouldEmbedTintColors:v8];

  return v16;
}

+ (id)otherAttributesWithParagraphStyle:(id)a3 kerning:(double)a4
{
  v5 = a3;
  v6 = objc_opt_new();
  [v6 setObject:v5 forKeyedSubscript:*MEMORY[0x277D74118]];

  v7 = -a4;
  if (a4 >= 0.0)
  {
    v7 = a4;
  }

  if (v7 > 0.00000011920929)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_10;
  }

  if (v4 == self)
  {
    v5 = 1;
    goto LABEL_11;
  }

  if ([(CLKFont *)v4->_font isEqual:self->_font]&& CLKEqualObjects(v4->_smallCapsBaseFont, self->_smallCapsBaseFont) && v4->_shouldStyleForTritium == self->_shouldStyleForTritium && v4->_uppercase == self->_uppercase && CLKEqualObjects(v4->_otherAttributes, self->_otherAttributes) && CLKFloatEqualsFloat(v4->_minimumScaleFactor, self->_minimumScaleFactor))
  {
    v5 = v4->_shouldEmbedTintColors == self->_shouldEmbedTintColors;
  }

  else
  {
LABEL_10:
    v5 = 0;
  }

LABEL_11:

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
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