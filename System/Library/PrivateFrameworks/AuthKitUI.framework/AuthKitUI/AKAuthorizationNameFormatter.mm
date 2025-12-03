@interface AKAuthorizationNameFormatter
+ (id)validNameCharacterSet;
+ (void)_addSymbolModifiersToCharacterSet:(id)set;
- (BOOL)_isOnlyWhitespace:(id)whitespace;
- (BOOL)getObjectValue:(id *)value forString:(id)string errorDescription:(id *)description;
- (BOOL)isPartialStringValid:(id *)valid proposedSelectedRange:(_NSRange *)range originalString:(id)string originalSelectedRange:(_NSRange)selectedRange errorDescription:(id *)description;
- (id)_cleanNameString:(id)string;
- (id)stringForObjectValue:(id)value;
@end

@implementation AKAuthorizationNameFormatter

+ (id)validNameCharacterSet
{
  selfCopy = self;
  v10 = a2;
  obj = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __53__AKAuthorizationNameFormatter_validNameCharacterSet__block_invoke;
  v8 = &__block_descriptor_40_e5_v8__0l;
  selfCopy2 = self;
  v13 = &validNameCharacterSet_onceToken;
  location = 0;
  objc_storeStrong(&location, &obj);
  if (*v13 != -1)
  {
    dispatch_once(v13, location);
  }

  objc_storeStrong(&location, 0);
  v2 = validNameCharacterSet_sValidNameCharacterSet;

  return v2;
}

void __53__AKAuthorizationNameFormatter_validNameCharacterSet__block_invoke(id *a1)
{
  v10[2] = a1;
  v10[1] = a1;
  v10[0] = [MEMORY[0x277CCAB50] alphanumericCharacterSet];
  v5 = v10[0];
  v6 = [MEMORY[0x277CCA900] punctuationCharacterSet];
  [v5 formUnionWithCharacterSet:?];
  *&v1 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  v7 = v10[0];
  v8 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  [v7 formUnionWithCharacterSet:?];
  *&v2 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  [v10[0] removeCharactersInString:{@"\t", v2}];
  [a1[4] _addSymbolModifiersToCharacterSet:v10[0]];
  v10[4] = 33;
  v10[3] = 94;
  v10[5] = 33;
  v10[6] = 94;
  [v10[0] addCharactersInRange:{33, 94}];
  v3 = [v10[0] copy];
  v4 = validNameCharacterSet_sValidNameCharacterSet;
  validNameCharacterSet_sValidNameCharacterSet = v3;
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(v10, 0);
}

- (id)stringForObjectValue:(id)value
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, value);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [location[0] copy];
  }

  else
  {
    v6 = 0;
  }

  objc_storeStrong(location, 0);
  v3 = v6;

  return v3;
}

- (BOOL)getObjectValue:(id *)value forString:(id)string errorDescription:(id *)description
{
  selfCopy = self;
  v10 = a2;
  valueCopy = value;
  location = 0;
  objc_storeStrong(&location, string);
  if (valueCopy)
  {
    v7 = location;
    v5 = location;
    *valueCopy = v7;
    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  objc_storeStrong(&location, 0);
  return v12 & 1;
}

- (BOOL)isPartialStringValid:(id *)valid proposedSelectedRange:(_NSRange *)range originalString:(id)string originalSelectedRange:(_NSRange)selectedRange errorDescription:(id *)description
{
  selectedRangeCopy = selectedRange;
  selfCopy = self;
  v20 = a2;
  validCopy = valid;
  rangeCopy = range;
  location = 0;
  objc_storeStrong(&location, string);
  v16[1] = description;
  v16[0] = MEMORY[0x277D82BE0](*validCopy);
  if ([v16[0] length] <= 0x20)
  {
    if ([v16[0] length])
    {
      if ([(AKAuthorizationNameFormatter *)selfCopy _isOnlyWhitespace:v16[0]])
      {
        v7 = &stru_28358EF68;
        *validCopy = &stru_28358EF68;
        v25 = 0;
        v24 = 0;
        v26 = 0;
        v27 = 0;
        v14 = 0uLL;
        *rangeCopy = 0uLL;
        v23 = 0;
        v15 = 1;
      }

      else
      {
        v13 = [(AKAuthorizationNameFormatter *)selfCopy _cleanNameString:v16[0]];
        if ([v13 length] <= 0x20)
        {
          if ([v13 isEqualToString:v16[0]])
          {
            v23 = 1;
            v15 = 1;
          }

          else
          {
            if ([v13 length])
            {
              v10 = [v16[0] length];
              v12 = v10 - [v13 length];
              rangeCopy->location -= v12;
              v8 = v13;
              *validCopy = v13;
            }

            v23 = 0;
            v15 = 1;
          }
        }

        else
        {
          v23 = 0;
          v15 = 1;
        }

        objc_storeStrong(&v13, 0);
      }
    }

    else
    {
      v23 = 1;
      v15 = 1;
    }
  }

  else
  {
    v23 = 0;
    v15 = 1;
  }

  objc_storeStrong(v16, 0);
  objc_storeStrong(&location, 0);
  return v23 & 1;
}

- (BOOL)_isOnlyWhitespace:(id)whitespace
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, whitespace);
  whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  invertedSet = [whitespaceCharacterSet invertedSet];
  *&v3 = MEMORY[0x277D82BD8](whitespaceCharacterSet).n128_u64[0];
  v6 = [location[0] rangeOfCharacterFromSet:{invertedSet, v3}];
  objc_storeStrong(&invertedSet, 0);
  objc_storeStrong(location, 0);
  return v6 == 0x7FFFFFFFFFFFFFFFLL;
}

- (id)_cleanNameString:(id)string
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, string);
  whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  invertedSet = [whitespaceCharacterSet invertedSet];
  validNameCharacterSet = [objc_opt_class() validNameCharacterSet];
  invertedSet2 = [validNameCharacterSet invertedSet];
  *&v3 = MEMORY[0x277D82BD8](validNameCharacterSet).n128_u64[0];
  v17 = [location[0] componentsSeparatedByCharactersInSet:{invertedSet2, v3}];
  v22 = [v17 componentsJoinedByString:?];
  MEMORY[0x277D82BD8](v17);
  v21 = MEMORY[0x277D82BE0](&stru_28358EF68);
  v19 = [v22 rangeOfCharacterFromSet:invertedSet options:4];
  v20 = v4;
  if (v19 != 0x7FFFFFFFFFFFFFFFLL)
  {
    location[3] = v19;
    location[4] = v4;
    if (&v4[v19] < [v22 length])
    {
      v18 = [v22 rangeOfComposedCharacterSequenceAtIndex:&v20[v19]];
      v7 = [v22 substringWithRange:{v18, v6}];
      v8 = v21;
      v21 = v7;
      *&v5 = MEMORY[0x277D82BD8](v8).n128_u64[0];
    }
  }

  v9 = [v22 stringByTrimmingCharactersInSet:{whitespaceCharacterSet, v5}];
  v10 = v22;
  v22 = v9;
  *&v11 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  v12 = [v22 stringByAppendingString:{v21, v11}];
  v13 = v22;
  v22 = v12;
  MEMORY[0x277D82BD8](v13);
  v15 = MEMORY[0x277D82BE0](v22);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&invertedSet2, 0);
  objc_storeStrong(&invertedSet, 0);
  objc_storeStrong(&whitespaceCharacterSet, 0);
  objc_storeStrong(location, 0);

  return v15;
}

+ (void)_addSymbolModifiersToCharacterSet:(id)set
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, set);
  location[112] = 94;
  location[111] = 95;
  location[113] = 94;
  location[114] = 95;
  [location[0] addCharactersInRange:{94, 95}];
  location[108] = 96;
  location[107] = 97;
  location[109] = 96;
  location[110] = 97;
  [location[0] addCharactersInRange:{96, 97}];
  location[104] = 168;
  location[103] = 169;
  location[105] = 168;
  location[106] = 169;
  [location[0] addCharactersInRange:{168, 169}];
  location[100] = 175;
  location[99] = 176;
  location[101] = 175;
  location[102] = 176;
  [location[0] addCharactersInRange:{175, 176}];
  location[96] = 180;
  location[95] = 181;
  location[97] = 180;
  location[98] = 181;
  [location[0] addCharactersInRange:{180, 181}];
  location[92] = 184;
  location[91] = 185;
  location[93] = 184;
  location[94] = 185;
  [location[0] addCharactersInRange:{184, 185}];
  location[88] = 706;
  location[87] = 710;
  location[89] = 706;
  location[90] = 710;
  [location[0] addCharactersInRange:{706, 710}];
  location[84] = 722;
  location[83] = 736;
  location[85] = 722;
  location[86] = 736;
  [location[0] addCharactersInRange:{722, 736}];
  location[80] = 741;
  location[79] = 748;
  location[81] = 741;
  location[82] = 748;
  [location[0] addCharactersInRange:{741, 748}];
  location[76] = 749;
  location[75] = 750;
  location[77] = 749;
  location[78] = 750;
  [location[0] addCharactersInRange:{749, 750}];
  location[72] = 751;
  location[71] = 768;
  location[73] = 751;
  location[74] = 768;
  [location[0] addCharactersInRange:{751, 768}];
  location[68] = 885;
  location[67] = 886;
  location[69] = 885;
  location[70] = 886;
  [location[0] addCharactersInRange:{885, 886}];
  location[64] = 900;
  location[63] = 902;
  location[65] = 900;
  location[66] = 902;
  [location[0] addCharactersInRange:{900, 902}];
  location[60] = 8125;
  location[59] = 8126;
  location[61] = 8125;
  location[62] = 8126;
  [location[0] addCharactersInRange:{8125, 8126}];
  location[56] = 8127;
  location[55] = 8130;
  location[57] = 8127;
  location[58] = 8130;
  [location[0] addCharactersInRange:{8127, 8130}];
  location[52] = 8141;
  location[51] = 8144;
  location[53] = 8141;
  location[54] = 8144;
  [location[0] addCharactersInRange:{8141, 8144}];
  location[48] = 8157;
  location[47] = 8160;
  location[49] = 8157;
  location[50] = 8160;
  [location[0] addCharactersInRange:{8157, 8160}];
  location[44] = 8173;
  location[43] = 8176;
  location[45] = 8173;
  location[46] = 8176;
  [location[0] addCharactersInRange:{8173, 8176}];
  location[40] = 8189;
  location[39] = 0x1FFF;
  location[41] = 8189;
  location[42] = 0x1FFF;
  [location[0] addCharactersInRange:{8189, 0x1FFFLL}];
  location[36] = 12443;
  location[35] = 12445;
  location[37] = 12443;
  location[38] = 12445;
  [location[0] addCharactersInRange:{12443, 12445}];
  location[32] = 42752;
  location[31] = 42775;
  location[33] = 42752;
  location[34] = 42775;
  [location[0] addCharactersInRange:{42752, 42775}];
  location[28] = 42784;
  location[27] = 42786;
  location[29] = 42784;
  location[30] = 42786;
  [location[0] addCharactersInRange:{42784, 42786}];
  location[24] = 42889;
  location[23] = 42891;
  location[25] = 42889;
  location[26] = 42891;
  [location[0] addCharactersInRange:{42889, 42891}];
  location[20] = 43867;
  location[19] = 43868;
  location[21] = 43867;
  location[22] = 43868;
  [location[0] addCharactersInRange:{43867, 43868}];
  location[16] = 64434;
  location[15] = 64450;
  location[17] = 64434;
  location[18] = 64450;
  [location[0] addCharactersInRange:{64434, 64450}];
  location[12] = 65342;
  location[11] = 65343;
  location[13] = 65342;
  location[14] = 65343;
  [location[0] addCharactersInRange:{65342, 65343}];
  location[8] = 65344;
  location[7] = 65345;
  location[9] = 65344;
  location[10] = 65345;
  [location[0] addCharactersInRange:{65344, 65345}];
  location[4] = 65507;
  location[3] = 65508;
  location[5] = 65507;
  location[6] = 65508;
  [location[0] addCharactersInRange:{65507, 65508}];
  objc_storeStrong(location, 0);
}

@end