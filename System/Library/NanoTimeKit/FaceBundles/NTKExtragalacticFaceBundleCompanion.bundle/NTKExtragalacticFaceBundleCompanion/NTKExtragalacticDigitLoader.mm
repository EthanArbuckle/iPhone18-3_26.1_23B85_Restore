@interface NTKExtragalacticDigitLoader
- (NTKExtragalacticDigitLoader)initWithDevice:(id)device;
- (id)_numberFromString:(id)string;
- (id)digitDrawInfoForNumber:(id)number style:(unint64_t)style;
- (unint64_t)_glyphColorFromString:(id)string;
- (unint64_t)_styleFromString:(id)string;
- (void)_loadDigits;
@end

@implementation NTKExtragalacticDigitLoader

- (NTKExtragalacticDigitLoader)initWithDevice:(id)device
{
  deviceCopy = device;
  v13.receiver = self;
  v13.super_class = NTKExtragalacticDigitLoader;
  v5 = [(NTKExtragalacticDigitLoader *)&v13 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:10];
    digits = v5->_digits;
    v5->_digits = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEA78]);
    drawInfoCache = v5->_drawInfoCache;
    v5->_drawInfoCache = v8;

    v10 = [[NTKExtragalacticDigitRenderer alloc] initWithDevice:deviceCopy];
    digitRenderer = v5->_digitRenderer;
    v5->_digitRenderer = v10;

    [(NTKExtragalacticDigitLoader *)v5 _loadDigits];
  }

  return v5;
}

- (void)_loadDigits
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = [&unk_284E9BC30 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v22;
    v6 = 0x277CCA000uLL;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(&unk_284E9BC30);
        }

        v8 = *(*(&v21 + 1) + 8 * i);
        v9 = [v8 componentsSeparatedByString:@"."];
        if ([v9 count] >= 3 && objc_msgSend(v9, "count") < 5)
        {
          v11 = [v9 count];
          v12 = [v9 objectAtIndexedSubscript:0];
          v10 = [(NTKExtragalacticDigitLoader *)self _numberFromString:v12];

          if (v11 == 3)
          {
            v13 = 0;
            v14 = 2;
          }

          else
          {
            v15 = [v9 objectAtIndexedSubscript:1];
            v13 = [(NTKExtragalacticDigitLoader *)self _styleFromString:v15];

            v14 = 3;
          }

          v16 = [v9 objectAtIndexedSubscript:v14];
          v17 = [(NTKExtragalacticDigitLoader *)self _glyphColorFromString:v16];

          v18 = [(NSMutableDictionary *)self->_digits objectForKeyedSubscript:v10];
          if (!v18)
          {
            v18 = objc_alloc_init(NTKExtragalacticDigitDescription);
          }

          v19 = [[NTKExtragalacticGlyphDescription alloc] initWithName:v8 color:v17 style:v13];
          [(NTKExtragalacticDigitDescription *)v18 addGlyph:v19 ofStyle:v13];
          [(NSMutableDictionary *)self->_digits setObject:v18 forKeyedSubscript:v10];

          v6 = 0x277CCA000;
        }

        else
        {
          v10 = [*(v6 + 3240) stringWithFormat:@"Oops, only expecting 3 or 4 components but got %lu", objc_msgSend(v9, "count")];
        }
      }

      v4 = [&unk_284E9BC30 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v4);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (id)digitDrawInfoForNumber:(id)number style:(unint64_t)style
{
  numberCopy = number;
  v7 = [(NSMutableDictionary *)self->_digits objectForKeyedSubscript:numberCopy];
  if (v7)
  {
    v8 = [(NTKExtragalacticDigitLoader *)self _drawInfoKeyForNumber:numberCopy style:style];
    v9 = [(NSCache *)self->_drawInfoCache objectForKey:v8];
    if (!v9)
    {
      v9 = [(NTKExtragalacticDigitRenderer *)self->_digitRenderer loadDrawInfoForDigit:v7 inStyle:style];
      [(NSCache *)self->_drawInfoCache setObject:v9 forKey:v8];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_numberFromString:(id)string
{
  stringCopy = string;
  v4 = &unk_284E9B9F8;
  if (([stringCopy isEqualToString:@"zero"] & 1) == 0)
  {
    if ([stringCopy isEqualToString:@"one"])
    {
      v4 = &unk_284E9BA10;
    }

    else if ([stringCopy isEqualToString:@"two"])
    {
      v4 = &unk_284E9BA28;
    }

    else if ([stringCopy isEqualToString:@"three"])
    {
      v4 = &unk_284E9BA40;
    }

    else if ([stringCopy isEqualToString:@"four"])
    {
      v4 = &unk_284E9BA58;
    }

    else if ([stringCopy isEqualToString:@"five"])
    {
      v4 = &unk_284E9BA70;
    }

    else if ([stringCopy isEqualToString:@"six"])
    {
      v4 = &unk_284E9BA88;
    }

    else if ([stringCopy isEqualToString:@"seven"])
    {
      v4 = &unk_284E9BAA0;
    }

    else if ([stringCopy isEqualToString:@"eight"])
    {
      v4 = &unk_284E9BAB8;
    }

    else if ([stringCopy isEqualToString:@"nine"])
    {
      v4 = &unk_284E9BAD0;
    }
  }

  return v4;
}

- (unint64_t)_styleFromString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"A"])
  {
    v4 = 0;
  }

  else if ([stringCopy isEqualToString:@"B"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"C"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"D"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)_glyphColorFromString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"0"])
  {
    v4 = 0;
  }

  else if ([stringCopy isEqualToString:@"1"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"2"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end