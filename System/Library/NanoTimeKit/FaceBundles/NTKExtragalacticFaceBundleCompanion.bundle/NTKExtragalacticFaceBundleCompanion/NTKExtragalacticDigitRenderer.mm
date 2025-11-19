@interface NTKExtragalacticDigitRenderer
- (NTKExtragalacticDigitRenderer)initWithDevice:(id)a3;
- (id)loadDrawInfoForDigit:(id)a3 inStyle:(unint64_t)a4;
@end

@implementation NTKExtragalacticDigitRenderer

- (NTKExtragalacticDigitRenderer)initWithDevice:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = NTKExtragalacticDigitRenderer;
  v6 = [(NTKExtragalacticDigitRenderer *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
    v8 = [NTKExtragalacticFontLoader extragalacticFontForDevice:v7->_device];
    font = v7->_font;
    v7->_font = v8;

    v7->_ascent = CTFontGetAscent(v7->_font);
    v7->_descent = CTFontGetDescent(v7->_font);
    v7->_capHeight = CTFontGetCapHeight(v7->_font);
  }

  return v7;
}

- (id)loadDrawInfoForDigit:(id)a3 inStyle:(unint64_t)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = a3;
  font = self->_font;
  v9 = *MEMORY[0x277CBF3A8];
  v8 = *(MEMORY[0x277CBF3A8] + 8);
  v10 = [MEMORY[0x277CBEB38] dictionary];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = [v6 glyphsForStyle:a4];
  v11 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v38;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v38 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v37 + 1) + 8 * i);
        v16 = [v15 name];
        GlyphWithName = CTFontGetGlyphWithName(font, v16);

        glyphs = GlyphWithName;
        PathForGlyph = CTFontCreatePathForGlyph(font, GlyphWithName, 0);
        if (PathForGlyph)
        {
          v19 = PathForGlyph;
          BoundingRectsForGlyphs = CTFontGetBoundingRectsForGlyphs(font, kCTFontOrientationDefault, &glyphs, 0, 1);
          x = BoundingRectsForGlyphs.origin.x;
          y = BoundingRectsForGlyphs.origin.y;
          width = BoundingRectsForGlyphs.size.width;
          height = BoundingRectsForGlyphs.size.height;
          AdvancesForGlyphs = CTFontGetAdvancesForGlyphs(font, kCTFontOrientationDefault, &glyphs, 0, 1);
          capHeight = self->_capHeight;
          v33[0] = 0x3FF0000000000000;
          v33[1] = 0;
          v33[2] = 0;
          v34 = xmmword_23BE560F0;
          v35 = capHeight;
          v26 = [MEMORY[0x277D75208] bezierPathWithCGPath:{MEMORY[0x23EEBF150](v19, v33)}];
          v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v15, "color")}];
          [v10 setObject:v26 forKeyedSubscript:v27];

          v45.origin.x = x;
          v45.origin.y = y;
          v45.size.width = width;
          v45.size.height = height;
          v28 = fmax(AdvancesForGlyphs, CGRectGetMaxX(v45));
          v46.origin.x = x;
          v46.origin.y = y;
          v46.size.width = width;
          v46.size.height = height;
          v9 = fmax(v9, v28 - fmin(CGRectGetMinX(v46), 0.0));
          v8 = fmax(v8, self->_ascent - self->_descent);
        }
      }

      v12 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v12);
  }

  v29 = [NTKExtragalacticDigitDrawInfo drawInfoWithUnifiedSize:v10 paths:v9, v8];

  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

@end