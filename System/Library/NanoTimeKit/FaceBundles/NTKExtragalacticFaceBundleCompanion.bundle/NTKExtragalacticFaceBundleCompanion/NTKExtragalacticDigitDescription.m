@interface NTKExtragalacticDigitDescription
- (NTKExtragalacticDigitDescription)init;
- (id)glyphsForStyle:(unint64_t)a3;
- (void)addGlyph:(id)a3 ofStyle:(unint64_t)a4;
@end

@implementation NTKExtragalacticDigitDescription

- (NTKExtragalacticDigitDescription)init
{
  v6.receiver = self;
  v6.super_class = NTKExtragalacticDigitDescription;
  v2 = [(NTKExtragalacticDigitDescription *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    allGlyphs = v2->_allGlyphs;
    v2->_allGlyphs = v3;
  }

  return v2;
}

- (void)addGlyph:(id)a3 ofStyle:(unint64_t)a4
{
  v11 = a3;
  allGlyphs = self->_allGlyphs;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  v8 = [(NSMutableDictionary *)allGlyphs objectForKeyedSubscript:v7];

  if (!v8)
  {
    v8 = [MEMORY[0x277CBEB18] array];
  }

  [v8 addObject:v11];
  v9 = self->_allGlyphs;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  [(NSMutableDictionary *)v9 setObject:v8 forKeyedSubscript:v10];
}

- (id)glyphsForStyle:(unint64_t)a3
{
  allGlyphs = self->_allGlyphs;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
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