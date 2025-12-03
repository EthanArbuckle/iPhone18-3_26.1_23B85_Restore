@interface NTKExtragalacticDigitDescription
- (NTKExtragalacticDigitDescription)init;
- (id)glyphsForStyle:(unint64_t)style;
- (void)addGlyph:(id)glyph ofStyle:(unint64_t)style;
@end

@implementation NTKExtragalacticDigitDescription

- (NTKExtragalacticDigitDescription)init
{
  v6.receiver = self;
  v6.super_class = NTKExtragalacticDigitDescription;
  v2 = [(NTKExtragalacticDigitDescription *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    allGlyphs = v2->_allGlyphs;
    v2->_allGlyphs = dictionary;
  }

  return v2;
}

- (void)addGlyph:(id)glyph ofStyle:(unint64_t)style
{
  glyphCopy = glyph;
  allGlyphs = self->_allGlyphs;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:style];
  array = [(NSMutableDictionary *)allGlyphs objectForKeyedSubscript:v7];

  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
  }

  [array addObject:glyphCopy];
  v9 = self->_allGlyphs;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:style];
  [(NSMutableDictionary *)v9 setObject:array forKeyedSubscript:v10];
}

- (id)glyphsForStyle:(unint64_t)style
{
  allGlyphs = self->_allGlyphs;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:style];
  v5 = [(NSMutableDictionary *)allGlyphs objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = [v5 copy];
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  return v6;
}

@end