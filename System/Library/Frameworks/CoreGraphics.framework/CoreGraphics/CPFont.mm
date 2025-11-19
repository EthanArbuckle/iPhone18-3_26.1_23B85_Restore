@interface CPFont
- (BOOL)getGlyphs:(unsigned __int16 *)a3 forCodes:(const unsigned __int16 *)a4 count:(unsigned int)a5;
- (CGFont)cgFont;
- (CGRect)fontBBox;
- (CPFont)initWith:(CGPDFDictionary *)a3;
- (double)ascent;
- (double)descent;
- (double)kernBetweenUnicode:(unsigned __int16)a3 andUnicode:(unsigned __int16)a4;
- (id)matchingFontName;
- (void)dealloc;
- (void)dispose;
- (void)finalize;
- (void)getFontName;
- (void)loadEmbeddedFontInfo;
- (void)loadExternalFontInfoFor:(id)a3;
- (void)uniCharsFor:(unint64_t)a3 count:(unint64_t *)a4 toArray:(unsigned __int16 *)a5 maxChars:(unsigned int)a6;
@end

@implementation CPFont

- (void)uniCharsFor:(unint64_t)a3 count:(unint64_t *)a4 toArray:(unsigned __int16 *)a5 maxChars:(unsigned int)a6
{
  *a4 = 0;
  cgPDFFont = self->cgPDFFont;
  if (!cgPDFFont)
  {
    return;
  }

  LODWORD(v8) = a6;
  Encoding = CGPDFFontGetEncoding(cgPDFFont);
  if (!Encoding)
  {
    v16 = CGPDFFontGetToUnicodeCMap(self->cgPDFFont);
    if (!v16)
    {
      return;
    }

    if (a3 < 0x10000)
    {
      v22 = v16;
      v23 = *(*(v16 + 16) + 48);
      if (v23)
      {
        unichars = cmap_bf_set_get_unichars(*(v23 + 16), a3, 0, v17, v18, v19, v20, v21);
        *a4 = unichars;
        if (unichars > v8)
        {
          goto LABEL_17;
        }

        v8 = v8;
        v30 = *(*(v22 + 16) + 48);
        if (v30)
        {
          v31 = cmap_bf_set_get_unichars(*(v30 + 16), a3, a5, v25, v26, v27, v28, v29);
          *a4 = v31;
          if (v31)
          {
            return;
          }

LABEL_16:
          v32 = CGPDFGetUnicharGuessForCID(a3, 0);
          *a4 = v32;
          if (v32 <= v8)
          {
            v33 = CGPDFGetUnicharGuessForCID(a3, a5);
            goto LABEL_19;
          }

LABEL_17:
          v33 = 0;
LABEL_19:
          *a4 = v33;
          return;
        }

LABEL_15:
        *a4 = 0;
        goto LABEL_16;
      }

      *a4 = 0;
    }

    v8 = v8;
    goto LABEL_15;
  }

  UnicodesForIndex = CGPDFEncodingGetUnicodesForIndex(Encoding, a3, a4);
  v14 = *a4;
  if (*a4 - 1 < v8)
  {
    do
    {
      v15 = *UnicodesForIndex++;
      *a5++ = v15;
      --v14;
    }

    while (v14);
  }
}

- (BOOL)getGlyphs:(unsigned __int16 *)a3 forCodes:(const unsigned __int16 *)a4 count:(unsigned int)a5
{
  cgPDFFont = self->cgPDFFont;
  if (cgPDFFont)
  {
    Encoding = CGPDFFontGetEncoding(self->cgPDFFont);
    if (Encoding)
    {
      GlyphVector = CGPDFEncodingGetGlyphVector(Encoding);
      if (a5)
      {
        v12 = a5;
        do
        {
          v13 = *a4++;
          *a3++ = *(GlyphVector + v13);
          --v12;
        }

        while (v12);
      }
    }

    else
    {
      CIDToGlyphMap = CGPDFFontGetCIDToGlyphMap(self->cgPDFFont);
      if (CIDToGlyphMap)
      {
        CGFontIndexMapGetValues(CIDToGlyphMap, a4, a5, a3);
      }

      else
      {
        [(CPFont *)self cgFont];
        cgFont = self->cgFont;
        if (cgFont && (v16 = a5, CGFontGetGlyphsForCIDs(cgFont, a4, a5, a3)))
        {
          if (!CGPDFFontIsEmbedded(self->cgPDFFont))
          {
            v23 = 1;
            v22 = 0;
            if ((CGFontGetGlyphsForCIDs(self->cgFont, &v23, 1, &v22) & 1) == 0)
            {
              v22 = 0;
            }

            if (a5)
            {
              v17 = v22;
              do
              {
                if (!*a4++)
                {
                  *a3 = v17;
                }

                ++a3;
                --v16;
              }

              while (v16);
            }
          }
        }

        else if (a5)
        {
          v19 = a5;
          do
          {
            v20 = *a4++;
            *a3++ = v20;
            --v19;
          }

          while (v19);
        }
      }
    }
  }

  return cgPDFFont != 0;
}

- (double)kernBetweenUnicode:(unsigned __int16)a3 andUnicode:(unsigned __int16)a4
{
  kernDictionary = self->kernDictionary;
  v6 = 0.0;
  if (kernDictionary)
  {
    v7 = a4;
    v8 = a3;
    if (CFDictionaryGetCount(kernDictionary))
    {
      if (self->kernUnitsPerEm != 0.0)
      {
        return CFDictionaryGetValue(self->kernDictionary, (v7 | (v8 << 16))) / self->kernUnitsPerEm;
      }
    }
  }

  return v6;
}

- (double)descent
{
  if (self->isHorizontal)
  {
    return self->descriptor.descent;
  }

  else
  {
    return self->defaultWidth * -0.5;
  }
}

- (double)ascent
{
  if (self->isHorizontal)
  {
    return self->descriptor.ascent;
  }

  else
  {
    return self->defaultWidth * 0.5;
  }
}

- (CGRect)fontBBox
{
  x = self->descriptor.fontBBox.origin.x;
  y = self->descriptor.fontBBox.origin.y;
  width = self->descriptor.fontBBox.size.width;
  height = self->descriptor.fontBBox.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGFont)cgFont
{
  result = self->cgFont;
  if (!result)
  {
    result = self->cgPDFFont;
    if (result)
    {
      result = CGPDFFontGetFont(result);
      self->cgFont = result;
    }
  }

  return result;
}

- (void)dealloc
{
  [(CPFont *)self dispose];

  v3.receiver = self;
  v3.super_class = CPFont;
  [(CPFont *)&v3 dealloc];
}

- (void)finalize
{
  [(CPFont *)self dispose];
  v3.receiver = self;
  v3.super_class = CPFont;
  [(CPFont *)&v3 finalize];
}

- (void)dispose
{
  if (!self->disposed)
  {
    kernDictionary = self->kernDictionary;
    if (kernDictionary)
    {
      CFRelease(kernDictionary);
    }

    cgPDFFont = self->cgPDFFont;
    if (cgPDFFont)
    {
      CFRelease(cgPDFFont);
    }

    self->disposed = 1;
  }
}

- (CPFont)initWith:(CGPDFDictionary *)a3
{
  v6.receiver = self;
  v6.super_class = CPFont;
  v4 = [(CPFont *)&v6 init];
  if (v4)
  {
    v4->cgPDFFont = CGPDFFontCreate(a3);
    [(CPFont *)v4 getFontName];
    [(CPFont *)v4 loadExternalFontInfoFor:v4->fontName];
    [(CPFont *)v4 loadEmbeddedFontInfo];
  }

  return v4;
}

- (void)loadEmbeddedFontInfo
{
  self->isHorizontal = 1;
  self->defaultWidth = 1.0;
  cgPDFFont = self->cgPDFFont;
  if (cgPDFFont)
  {
    v4 = *(cgPDFFont + 7);
    v5 = *(cgPDFFont + 10);
    v6 = fabs(v4);
    v7 = fabs(v5);
    v12 = v4 == 0.0;
    v8 = 0.001;
    if (v12)
    {
      v6 = 0.001;
    }

    if (v5 != 0.0)
    {
      v8 = v7;
    }

    v33 = v6;
    v34 = v8;
    FontDescriptor = CGPDFFontGetFontDescriptor(cgPDFFont);
    if (!FontDescriptor)
    {
      goto LABEL_56;
    }

    v10 = *(FontDescriptor + 40);
    if (v10)
    {
      self->descriptor.flags = v10;
    }

    v11 = *(FontDescriptor + 32);
    if (v11)
    {
      v36 = CGRectNull;
      if (CGPDFDictionaryGetRect(v11, "FontBBox", &v36.origin.x))
      {
        v12 = v36.origin.x == INFINITY || v36.origin.y == INFINITY;
        if (!v12 && v36.size.width != 0.0 && v36.size.height != 0.0)
        {
          v13.f64[0] = v33;
          v13.f64[1] = v34;
          v14 = vmulq_f64(v13, v36.origin);
          v15 = vmulq_f64(v13, v36.size);
          self->descriptor.fontBBox.origin = v14;
          self->descriptor.fontBBox.size = v15;
        }
      }

      value = 0.0;
      if (CGPDFDictionaryGetNumber(v11, "FontWeight", &value) && value != 0.0)
      {
        self->descriptor.fontWeight = (value + -400.0) / dbl_18439CEC0[value < 400.0];
      }

      if (CGPDFDictionaryGetNumber(v11, "ItalicAngle", &value) && value != 0.0)
      {
        self->descriptor.italicAngle = value;
      }

      if (CGPDFDictionaryGetNumber(v11, "Ascent", &value) && value != 0.0)
      {
        self->descriptor.ascent = v34 * value;
      }

      if (CGPDFDictionaryGetNumber(v11, "Descent", &value))
      {
        v16 = value;
        if (value != 0.0)
        {
          if (value > 0.0)
          {
            v16 = -value;
            value = -value;
          }

          self->descriptor.descent = v34 * v16;
        }
      }

      if (CGPDFDictionaryGetNumber(v11, "Leading", &value) && value != 0.0)
      {
        self->descriptor.leading = v34 * value;
      }

      if (CGPDFDictionaryGetNumber(v11, "CapHeight", &value) && value != 0.0)
      {
        self->descriptor.capHeight = v34 * value;
      }

      if (CGPDFDictionaryGetNumber(v11, "XHeight", &value) && value != 0.0)
      {
        self->descriptor.xHeight = v34 * value;
      }

      if (CGPDFDictionaryGetNumber(v11, "StemV", &value) && value != 0.0)
      {
        self->descriptor.stemV = v34 * value;
      }

      if (CGPDFDictionaryGetNumber(v11, "StemH", &value) && value != 0.0)
      {
        self->descriptor.stemH = v33 * value;
      }

      if (CGPDFDictionaryGetNumber(v11, "AvgWidth", &value) && value != 0.0)
      {
        self->descriptor.avgWidth = v33 * value;
      }

      if (CGPDFDictionaryGetNumber(v11, "MaxWidth", &value) && value != 0.0)
      {
        self->descriptor.maxWidth = v33 * value;
      }

      if (CGPDFDictionaryGetNumber(v11, "MissingWidth", &value) && value != 0.0)
      {
        self->descriptor.missingWidth = v33 * value;
      }
    }

    else
    {
LABEL_56:
      FontBBox = CGPDFFontGetFontBBox(self->cgPDFFont);
      v21 = FontBBox == INFINITY || v18 == INFINITY;
      if (!v21 && v19 != 0.0 && v20 != 0.0)
      {
        width = self->descriptor.fontBBox.size.width;
        height = self->descriptor.fontBBox.size.height;
        if (width == 0.0)
        {
          width = 2.39648438;
        }

        if (height == 0.0)
        {
          height = 1.60253906;
        }

        v24 = v33 * v19;
        v25 = v24 / width;
        v26 = v34 * v20;
        v27 = v26 / height;
        self->descriptor.fontBBox.origin.x = v33 * FontBBox;
        self->descriptor.fontBBox.origin.y = v34 * v18;
        self->descriptor.fontBBox.size.width = v24;
        self->descriptor.fontBBox.size.height = v26;
        *&self->descriptor.ascent = vmulq_n_f64(*&self->descriptor.ascent, v27);
        *&self->descriptor.leading = vmulq_n_f64(*&self->descriptor.leading, v27);
        *&self->descriptor.xHeight = vmulq_n_f64(*&self->descriptor.xHeight, v27);
        *&self->descriptor.stemH = vmulq_n_f64(*&self->descriptor.stemH, v25);
        *&self->descriptor.maxWidth = vmulq_n_f64(*&self->descriptor.maxWidth, v25);
      }
    }

    v28 = self->cgPDFFont;
    if (v28 && *(v28 + 50) == 1)
    {
      CMap = CGPDFFontGetCMap(v28);
      v30 = !CMap || *(*(CMap + 16) + 24) == 0;
      self->isHorizontal = v30;
      v31 = self->cgPDFFont;
      if (v31)
      {
        if (*(v31 + 6))
        {
          v32 = *(v31 + 2);
          v36.origin.x = 0.0;
          if (CGPDFDictionaryGetNumber(v32, "DW", &v36.origin.x))
          {
            self->defaultWidth = v33 * fabs(v36.origin.x);
          }
        }
      }
    }
  }

  if (self->descriptor.leading == 0.0)
  {
    self->descriptor.leading = 0.2;
  }

  if (self->descriptor.spaceWidth == 0.0)
  {
    self->descriptor.spaceWidth = 0.277832031;
  }
}

- (void)loadExternalFontInfoFor:(id)a3
{
  fontName = self->fontName;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v5 = getCTFontCreateWithNameSymbolLoc_ptr;
  v59 = getCTFontCreateWithNameSymbolLoc_ptr;
  if (!getCTFontCreateWithNameSymbolLoc_ptr)
  {
    v51 = MEMORY[0x1E69E9820];
    v52 = 3221225472;
    v53 = __getCTFontCreateWithNameSymbolLoc_block_invoke;
    v54 = &unk_1E6E33138;
    v55 = &v56;
    v6 = CoreTextLibrary();
    v57[3] = dlsym(v6, "CTFontCreateWithName");
    getCTFontCreateWithNameSymbolLoc_ptr = *(v55[1] + 24);
    v5 = v57[3];
  }

  _Block_object_dispose(&v56, 8);
  if (!v5)
  {
    goto LABEL_51;
  }

  v7 = v5(fontName, 0, 1.0);
  if (!v7)
  {
    *&self->descriptor.stemH = unk_184563918;
    *&self->descriptor.maxWidth = xmmword_184563928;
    *&self->descriptor.spaceWidth = unk_184563938;
    *&self->descriptor.fontBBox.size.height = unk_1845638D8;
    *&self->descriptor.ascent = xmmword_1845638E8;
    *&self->descriptor.leading = unk_1845638F8;
    *&self->descriptor.xHeight = xmmword_184563908;
    *&self->descriptor.fontStretch = kCPFontDescriptorDefault;
    *&self->descriptor.flags = *algn_1845638B8;
    self->descriptor.underlineThickness = 0.0493164062;
    *&self->descriptor.fontBBox.origin.y = xmmword_1845638C8;
    self->exactMatch = 0;
    return;
  }

  v8 = v7;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v9 = getCTFontGetWeightSymbolLoc_ptr;
  v59 = getCTFontGetWeightSymbolLoc_ptr;
  if (!getCTFontGetWeightSymbolLoc_ptr)
  {
    v51 = MEMORY[0x1E69E9820];
    v52 = 3221225472;
    v53 = __getCTFontGetWeightSymbolLoc_block_invoke;
    v54 = &unk_1E6E33138;
    v55 = &v56;
    v10 = CoreTextLibrary();
    v57[3] = dlsym(v10, "CTFontGetWeight");
    getCTFontGetWeightSymbolLoc_ptr = *(v55[1] + 24);
    v9 = v57[3];
  }

  _Block_object_dispose(&v56, 8);
  if (!v9)
  {
    goto LABEL_51;
  }

  self->descriptor.fontWeight = v9(v8);
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v11 = getCTFontGetBoundingBoxSymbolLoc_ptr;
  v59 = getCTFontGetBoundingBoxSymbolLoc_ptr;
  if (!getCTFontGetBoundingBoxSymbolLoc_ptr)
  {
    v51 = MEMORY[0x1E69E9820];
    v52 = 3221225472;
    v53 = __getCTFontGetBoundingBoxSymbolLoc_block_invoke;
    v54 = &unk_1E6E33138;
    v55 = &v56;
    v12 = CoreTextLibrary();
    v57[3] = dlsym(v12, "CTFontGetBoundingBox");
    getCTFontGetBoundingBoxSymbolLoc_ptr = *(v55[1] + 24);
    v11 = v57[3];
  }

  _Block_object_dispose(&v56, 8);
  if (!v11)
  {
    goto LABEL_51;
  }

  self->descriptor.fontBBox.origin.x = v11(v8);
  self->descriptor.fontBBox.origin.y = v13;
  self->descriptor.fontBBox.size.width = v14;
  self->descriptor.fontBBox.size.height = v15;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v16 = getCTFontGetSlantAngleSymbolLoc_ptr;
  v59 = getCTFontGetSlantAngleSymbolLoc_ptr;
  if (!getCTFontGetSlantAngleSymbolLoc_ptr)
  {
    v51 = MEMORY[0x1E69E9820];
    v52 = 3221225472;
    v53 = __getCTFontGetSlantAngleSymbolLoc_block_invoke;
    v54 = &unk_1E6E33138;
    v55 = &v56;
    v17 = CoreTextLibrary();
    v57[3] = dlsym(v17, "CTFontGetSlantAngle");
    getCTFontGetSlantAngleSymbolLoc_ptr = *(v55[1] + 24);
    v16 = v57[3];
  }

  _Block_object_dispose(&v56, 8);
  if (!v16)
  {
    goto LABEL_51;
  }

  self->descriptor.italicAngle = v16(v8);
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v18 = getCTFontGetAscentSymbolLoc_ptr;
  v59 = getCTFontGetAscentSymbolLoc_ptr;
  if (!getCTFontGetAscentSymbolLoc_ptr)
  {
    v51 = MEMORY[0x1E69E9820];
    v52 = 3221225472;
    v53 = __getCTFontGetAscentSymbolLoc_block_invoke;
    v54 = &unk_1E6E33138;
    v55 = &v56;
    v19 = CoreTextLibrary();
    v57[3] = dlsym(v19, "CTFontGetAscent");
    getCTFontGetAscentSymbolLoc_ptr = *(v55[1] + 24);
    v18 = v57[3];
  }

  _Block_object_dispose(&v56, 8);
  if (!v18)
  {
    goto LABEL_51;
  }

  self->descriptor.ascent = v18(v8);
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v20 = getCTFontGetDescentSymbolLoc_ptr;
  v59 = getCTFontGetDescentSymbolLoc_ptr;
  if (!getCTFontGetDescentSymbolLoc_ptr)
  {
    v51 = MEMORY[0x1E69E9820];
    v52 = 3221225472;
    v53 = __getCTFontGetDescentSymbolLoc_block_invoke;
    v54 = &unk_1E6E33138;
    v55 = &v56;
    v21 = CoreTextLibrary();
    v57[3] = dlsym(v21, "CTFontGetDescent");
    getCTFontGetDescentSymbolLoc_ptr = *(v55[1] + 24);
    v20 = v57[3];
  }

  _Block_object_dispose(&v56, 8);
  if (!v20)
  {
    goto LABEL_51;
  }

  self->descriptor.descent = v20(v8);
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v22 = getCTFontGetLeadingSymbolLoc_ptr;
  v59 = getCTFontGetLeadingSymbolLoc_ptr;
  if (!getCTFontGetLeadingSymbolLoc_ptr)
  {
    v51 = MEMORY[0x1E69E9820];
    v52 = 3221225472;
    v53 = __getCTFontGetLeadingSymbolLoc_block_invoke;
    v54 = &unk_1E6E33138;
    v55 = &v56;
    v23 = CoreTextLibrary();
    v57[3] = dlsym(v23, "CTFontGetLeading");
    getCTFontGetLeadingSymbolLoc_ptr = *(v55[1] + 24);
    v22 = v57[3];
  }

  _Block_object_dispose(&v56, 8);
  if (!v22)
  {
    goto LABEL_51;
  }

  self->descriptor.leading = v22(v8);
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v24 = getCTFontGetCapHeightSymbolLoc_ptr;
  v59 = getCTFontGetCapHeightSymbolLoc_ptr;
  if (!getCTFontGetCapHeightSymbolLoc_ptr)
  {
    v51 = MEMORY[0x1E69E9820];
    v52 = 3221225472;
    v53 = __getCTFontGetCapHeightSymbolLoc_block_invoke;
    v54 = &unk_1E6E33138;
    v55 = &v56;
    v25 = CoreTextLibrary();
    v57[3] = dlsym(v25, "CTFontGetCapHeight");
    getCTFontGetCapHeightSymbolLoc_ptr = *(v55[1] + 24);
    v24 = v57[3];
  }

  _Block_object_dispose(&v56, 8);
  if (!v24)
  {
    goto LABEL_51;
  }

  self->descriptor.capHeight = v24(v8);
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v26 = getCTFontGetXHeightSymbolLoc_ptr;
  v59 = getCTFontGetXHeightSymbolLoc_ptr;
  if (!getCTFontGetXHeightSymbolLoc_ptr)
  {
    v51 = MEMORY[0x1E69E9820];
    v52 = 3221225472;
    v53 = __getCTFontGetXHeightSymbolLoc_block_invoke;
    v54 = &unk_1E6E33138;
    v55 = &v56;
    v27 = CoreTextLibrary();
    v57[3] = dlsym(v27, "CTFontGetXHeight");
    getCTFontGetXHeightSymbolLoc_ptr = *(v55[1] + 24);
    v26 = v57[3];
  }

  _Block_object_dispose(&v56, 8);
  if (!v26)
  {
    goto LABEL_51;
  }

  self->descriptor.xHeight = v26(v8);
  v50 = 0;
  v49 = 32;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v28 = getCTFontGetGlyphsForCharactersSymbolLoc_ptr;
  v59 = getCTFontGetGlyphsForCharactersSymbolLoc_ptr;
  if (!getCTFontGetGlyphsForCharactersSymbolLoc_ptr)
  {
    v51 = MEMORY[0x1E69E9820];
    v52 = 3221225472;
    v53 = __getCTFontGetGlyphsForCharactersSymbolLoc_block_invoke;
    v54 = &unk_1E6E33138;
    v55 = &v56;
    v29 = CoreTextLibrary();
    v57[3] = dlsym(v29, "CTFontGetGlyphsForCharacters");
    getCTFontGetGlyphsForCharactersSymbolLoc_ptr = *(v55[1] + 24);
    v28 = v57[3];
  }

  _Block_object_dispose(&v56, 8);
  if (!v28)
  {
    goto LABEL_51;
  }

  v28(v8, &v49, &v50, 1);
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v30 = getCTFontGetAdvancesForGlyphsSymbolLoc_ptr;
  v59 = getCTFontGetAdvancesForGlyphsSymbolLoc_ptr;
  if (!getCTFontGetAdvancesForGlyphsSymbolLoc_ptr)
  {
    v51 = MEMORY[0x1E69E9820];
    v52 = 3221225472;
    v53 = __getCTFontGetAdvancesForGlyphsSymbolLoc_block_invoke;
    v54 = &unk_1E6E33138;
    v55 = &v56;
    v31 = CoreTextLibrary();
    v32 = dlsym(v31, "CTFontGetAdvancesForGlyphs");
    *(v55[1] + 24) = v32;
    getCTFontGetAdvancesForGlyphsSymbolLoc_ptr = *(v55[1] + 24);
    v30 = v57[3];
  }

  _Block_object_dispose(&v56, 8);
  if (!v30)
  {
    goto LABEL_51;
  }

  self->descriptor.spaceWidth = (v30)(v8, 0, &v50, 0, 1);
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v33 = getCTFontGetUnderlinePositionSymbolLoc_ptr;
  v59 = getCTFontGetUnderlinePositionSymbolLoc_ptr;
  if (!getCTFontGetUnderlinePositionSymbolLoc_ptr)
  {
    v51 = MEMORY[0x1E69E9820];
    v52 = 3221225472;
    v53 = __getCTFontGetUnderlinePositionSymbolLoc_block_invoke;
    v54 = &unk_1E6E33138;
    v55 = &v56;
    v34 = CoreTextLibrary();
    v35 = dlsym(v34, "CTFontGetUnderlinePosition");
    *(v55[1] + 24) = v35;
    getCTFontGetUnderlinePositionSymbolLoc_ptr = *(v55[1] + 24);
    v33 = v57[3];
  }

  _Block_object_dispose(&v56, 8);
  if (!v33)
  {
    goto LABEL_51;
  }

  self->descriptor.underlinePosition = v33(v8);
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v36 = getCTFontGetUnderlineThicknessSymbolLoc_ptr;
  v59 = getCTFontGetUnderlineThicknessSymbolLoc_ptr;
  if (!getCTFontGetUnderlineThicknessSymbolLoc_ptr)
  {
    v51 = MEMORY[0x1E69E9820];
    v52 = 3221225472;
    v53 = __getCTFontGetUnderlineThicknessSymbolLoc_block_invoke;
    v54 = &unk_1E6E33138;
    v55 = &v56;
    v37 = CoreTextLibrary();
    v38 = dlsym(v37, "CTFontGetUnderlineThickness");
    *(v55[1] + 24) = v38;
    getCTFontGetUnderlineThicknessSymbolLoc_ptr = *(v55[1] + 24);
    v36 = v57[3];
  }

  _Block_object_dispose(&v56, 8);
  if (!v36)
  {
    goto LABEL_51;
  }

  self->descriptor.underlineThickness = v36(v8);
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v39 = getCTFontGetUnitsPerEmSymbolLoc_ptr;
  v59 = getCTFontGetUnitsPerEmSymbolLoc_ptr;
  if (!getCTFontGetUnitsPerEmSymbolLoc_ptr)
  {
    v51 = MEMORY[0x1E69E9820];
    v52 = 3221225472;
    v53 = __getCTFontGetUnitsPerEmSymbolLoc_block_invoke;
    v54 = &unk_1E6E33138;
    v55 = &v56;
    v40 = CoreTextLibrary();
    v41 = dlsym(v40, "CTFontGetUnitsPerEm");
    *(v55[1] + 24) = v41;
    getCTFontGetUnitsPerEmSymbolLoc_ptr = *(v55[1] + 24);
    v39 = v57[3];
  }

  _Block_object_dispose(&v56, 8);
  if (!v39)
  {
    goto LABEL_51;
  }

  self->kernUnitsPerEm = v39(v8);
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v42 = getCTFontCopyTableSymbolLoc_ptr;
  v59 = getCTFontCopyTableSymbolLoc_ptr;
  if (!getCTFontCopyTableSymbolLoc_ptr)
  {
    v51 = MEMORY[0x1E69E9820];
    v52 = 3221225472;
    v53 = __getCTFontCopyTableSymbolLoc_block_invoke;
    v54 = &unk_1E6E33138;
    v55 = &v56;
    v43 = CoreTextLibrary();
    v44 = dlsym(v43, "CTFontCopyTable");
    *(v55[1] + 24) = v44;
    getCTFontCopyTableSymbolLoc_ptr = *(v55[1] + 24);
    v42 = v57[3];
  }

  _Block_object_dispose(&v56, 8);
  if (!v42)
  {
LABEL_51:
    dlerror();
    v48 = abort_report_np();
    _Block_object_dispose(&v56, 8);
    _Unwind_Resume(v48);
  }

  v45 = v42(v8, 1801810542, 0);
  if (v45)
  {
    v46 = v45;
    v47 = [[CPFontKerning alloc] initWithKernData:v45];
    self->kernDictionary = [(CPFontKerning *)v47 createKernTable];
    [(CPFontKerning *)v47 dispose];

    CFRelease(v46);
  }

  CFRelease(v8);
  self->exactMatch = 1;
}

- (void)getFontName
{
  cgPDFFont = self->cgPDFFont;
  if (cgPDFFont)
  {
    v4 = *(cgPDFFont + 4);
    if (v4)
    {
      if (strlen(*(cgPDFFont + 4)) >= 8 && *(v4 + 6) == 43)
      {
        v5 = 0;
        v6 = MEMORY[0x1E69E9830];
        v7 = 7;
        do
        {
          v8 = *(v4 + v5);
          if ((v8 & 0x80000000) != 0)
          {
            if (!__maskrune(v8, 0x8000uLL))
            {
              goto LABEL_12;
            }
          }

          else if ((*(v6 + 4 * v8 + 60) & 0x8000) == 0)
          {
            goto LABEL_12;
          }

          ++v5;
        }

        while (v5 != 6);
      }

      else
      {
LABEL_12:
        v7 = 0;
      }

      self->fontName = [MEMORY[0x1E696AEC0] stringWithCString:v4 + v7 encoding:1];
      self->exactMatch = 1;
    }
  }

  fontName = self->fontName;
  if (fontName && [(NSString *)fontName length])
  {
    v10 = self->fontName;
  }

  else
  {
    v10 = [(CPFont *)self matchingFontName];
    self->fontName = v10;
    self->exactMatch = 0;
  }

  v11 = v10;
}

- (id)matchingFontName
{
  v3 = [MEMORY[0x1E696AD60] stringWithCapacity:21];
  cgPDFFont = self->cgPDFFont;
  if (cgPDFFont && (FontDescriptor = CGPDFFontGetFontDescriptor(cgPDFFont)) != 0)
  {
    v6 = *(FontDescriptor + 40);
    v7 = *(FontDescriptor + 32);
    if (v7)
    {
      value = 0.0;
      Number = CGPDFDictionaryGetNumber(v7, "FontWeight", &value);
      v9 = value >= 600.0 && Number;
    }

    else
    {
      v9 = 0;
    }

    v10 = (v6 >> 6) & 1;
    v11 = (v6 >> 1) & 1;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    LOBYTE(v6) = 0;
    v11 = 0;
  }

  fontName = self->fontName;
  if (!fontName)
  {
LABEL_19:
    if (v11)
    {
      goto LABEL_20;
    }

LABEL_29:
    if (v6)
    {
      [v3 setString:@"Monaco"];
      return v3;
    }

    v13 = @"Helvetica";
    goto LABEL_32;
  }

  if ((v10 & 1) != 0 || [(NSString *)fontName hasSuffix:@"Italic"]|| [(NSString *)self->fontName hasSuffix:@"Oblique"])
  {
    v10 = 1;
    if (v9)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v10 = 0;
    if (v9)
    {
      goto LABEL_28;
    }
  }

  if (![(NSString *)self->fontName hasSuffix:@"Bold"]&& ![(NSString *)self->fontName hasSuffix:@"BoldItalic"]&& ![(NSString *)self->fontName hasSuffix:@"BoldOblique"])
  {
    v9 = 0;
    goto LABEL_19;
  }

LABEL_28:
  v9 = 1;
  if (!v11)
  {
    goto LABEL_29;
  }

LABEL_20:
  if (v6)
  {
    v13 = @"Courier";
LABEL_32:
    [v3 setString:v13];
    if (v9)
    {
      [v3 appendString:@"-Bold"];
      if (v10)
      {
        v14 = @"Oblique";
        goto LABEL_38;
      }
    }

    else if (v10)
    {
      v14 = @"-Oblique";
      goto LABEL_38;
    }

    return v3;
  }

  [v3 setString:@"Times"];
  if (!v9)
  {
    if (v10)
    {
      v14 = @"-Italic";
    }

    else
    {
      v14 = @"-Roman";
    }

    goto LABEL_38;
  }

  [v3 appendString:@"-Bold"];
  if (v10)
  {
    v14 = @"Italic";
LABEL_38:
    [v3 appendString:v14];
  }

  return v3;
}

@end