@interface MACFormatter
+ (BOOL)parseMACAddress:(const char *)address intoHexString:(char *)string;
+ (id)macAddressSet;
+ (id)macFormatter;
+ (id)sharedMACFormatter;
- (BOOL)isPartialStringValid:(id *)valid proposedSelectedRange:(_NSRange *)range originalString:(id)string originalSelectedRange:(_NSRange)selectedRange errorDescription:(id *)description;
- (MACFormatter)init;
- (id)possibleSeparators;
- (id)possibleSeparatorsInvertedSet;
- (id)userPreferredSeparator;
- (void)dealloc;
- (void)removeMACAddressSeparatorsFromString:(id)string;
- (void)setPossibleSeparators:(id)separators;
- (void)setPossibleSeparatorsInvertedSet:(id)set;
- (void)setUserPreferredSeparator:(id)separator;
@end

@implementation MACFormatter

+ (id)sharedMACFormatter
{
  result = qword_27E383478;
  if (!qword_27E383478)
  {
    result = objc_alloc_init(MACFormatter);
    qword_27E383478 = result;
  }

  return result;
}

+ (id)macFormatter
{
  v2 = objc_alloc_init(MACFormatter);

  return v2;
}

- (MACFormatter)init
{
  v4 = objc_msgSend_macAddressSet(MACFormatter, a2, v2);
  v18.receiver = self;
  v18.super_class = MACFormatter;
  v6 = [(APFormatter *)&v18 initWithCharacterSet:v4 withMaxLength:17];
  if (v6)
  {
    v7 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x277CCA900], v5, qword_27E383178);
    objc_msgSend_setPossibleSeparators_(v6, v8, v7);
    v11 = objc_msgSend_possibleSeparators(v6, v9, v10);
    v14 = objc_msgSend_invertedSet(v11, v12, v13);
    objc_msgSend_setPossibleSeparatorsInvertedSet_(v6, v15, v14);
    objc_msgSend_setUserPreferredSeparator_(v6, v16, @":");
  }

  return v6;
}

- (void)dealloc
{
  objc_msgSend_setPossibleSeparators_(self, a2, 0);
  objc_msgSend_setPossibleSeparatorsInvertedSet_(self, v3, 0);
  objc_msgSend_setUserPreferredSeparator_(self, v4, 0);
  v5.receiver = self;
  v5.super_class = MACFormatter;
  [(APFormatter *)&v5 dealloc];
}

+ (BOOL)parseMACAddress:(const char *)address intoHexString:(char *)string
{
  if (address)
  {
    v4 = string == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  if (!v4)
  {
    addressCopy = address;
    v8 = strlen(address);
    for (i = 0; v8; --v8)
    {
      v11 = *addressCopy++;
      v10 = v11;
      v12 = v11 - 48;
      v13 = v11 - 97;
      v14 = v11 - 55;
      if ((v11 - 65) >= 6)
      {
        v15 = -1;
      }

      else
      {
        v15 = v14;
      }

      v16 = v10 - 87;
      if (v13 > 5)
      {
        v16 = v15;
      }

      if (v12 <= 9)
      {
        v16 = v12;
      }

      if (v16 >= 0)
      {
        i = 16 * i + v16;
      }
    }

    *string = BYTE5(i);
    string[1] = BYTE4(i);
    string[2] = BYTE3(i);
    string[3] = BYTE2(i);
    string[4] = BYTE1(i);
    string[5] = i;
  }

  return v5;
}

- (void)removeMACAddressSeparatorsFromString:(id)string
{
  v4 = objc_msgSend_scannerWithString_(MEMORY[0x277CCAC80], a2, string);
  v6 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x277CCA900], v5, qword_27E383178);
  v9 = objc_msgSend_invertedSet(v6, v7, v8);
  objc_msgSend_setScanLocation_(v4, v10, 0);
  if (objc_msgSend_scanCharactersFromSet_intoString_(v4, v11, v9, 0))
  {
    v14 = 0;
    do
    {
      if ((objc_msgSend_isAtEnd(v4, v12, v13) & 1) == 0)
      {
        v14 = objc_msgSend_scanLocation(v4, v15, v16);
        objc_msgSend_deleteCharactersInRange_(string, v17, v14, 1);
      }

      v4 = objc_msgSend_scannerWithString_(MEMORY[0x277CCAC80], v15, string);
      v20 = objc_msgSend_length(string, v18, v19);
      v22 = v14;
      if (v14 > v20)
      {
        v22 = objc_msgSend_length(string, v21, v14);
      }

      objc_msgSend_setScanLocation_(v4, v21, v22);
    }

    while (objc_msgSend_scanCharactersFromSet_intoString_(v4, v23, v9, 0) && !objc_msgSend_isAtEnd(v4, v24, v25));
  }
}

- (BOOL)isPartialStringValid:(id *)valid proposedSelectedRange:(_NSRange *)range originalString:(id)string originalSelectedRange:(_NSRange)selectedRange errorDescription:(id *)description
{
  length = selectedRange.length;
  location = selectedRange.location;
  v12 = objc_msgSend_mutableCopy(*valid, a2, valid, range, string, selectedRange.location, selectedRange.length, description);
  v14 = v12;
  v16 = range->location;
  v15 = range->length;
  stringCopy = string;
  if (length <= v15)
  {
    v23 = objc_msgSend_substringWithRange_(v12, v13, location, v16 - location);
    if (objc_msgSend_length(v23, v24, v25) == 1 && objc_msgSend_rangeOfString_(qword_27E383178, v20, v23) != 0x7FFFFFFFFFFFFFFFLL && v20 == 1)
    {
      objc_msgSend_setUserPreferredSeparator_(self, v20, v23);
      v22 = 0;
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v17 = objc_msgSend_substringWithRange_(string, v13, location, length - v15);
  if (objc_msgSend_length(v17, v18, v19) != 1)
  {
LABEL_9:
    v22 = 1;
    goto LABEL_10;
  }

  v22 = objc_msgSend_rangeOfString_(qword_27E383178, v20, v17) == 0x7FFFFFFFFFFFFFFFLL;
LABEL_10:
  maxLength = self->super._maxLength;
  if (maxLength)
  {
    v28 = v16 < maxLength || v22;
    if ((v28 & 1) == 0)
    {
      goto LABEL_52;
    }

    if (objc_msgSend_length(*valid, v20, v21) > self->super._maxLength)
    {
      v29 = objc_msgSend_mutableCopy(*valid, v20, v21);
      objc_msgSend_removeMACAddressSeparatorsFromString_(self, v30, v29);
      if (objc_msgSend_length(v29, v31, v32) >= 0xD)
      {
        goto LABEL_52;
      }
    }
  }

  if (objc_msgSend_characterSet(self, v20, v21, stringCopy))
  {
    v34 = objc_msgSend_scannerWithString_(MEMORY[0x277CCAC80], v20, *valid);
    v36 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x277CCA900], v35, @"\n");
    objc_msgSend_setCharactersToBeSkipped_(v34, v37, v36);
    v40 = objc_msgSend_characterSet(self, v38, v39);
    objc_msgSend_scanCharactersFromSet_intoString_(v34, v41, v40, 0);
    if ((objc_msgSend_isAtEnd(v34, v42, v43) & 1) == 0)
    {
      goto LABEL_52;
    }
  }

  if (objc_msgSend_characterSet(self, v20, v33))
  {
    v45 = *valid;
    v46 = objc_msgSend_invertedCharacterSet(self, v20, v44);
    objc_msgSend_rangeOfCharacterFromSet_(v45, v47, v46);
    if (v20)
    {
      goto LABEL_52;
    }
  }

  v48 = length > v15 || v22;
  if (v48)
  {
    if (length <= 1)
    {
      v49 = objc_msgSend_length(stringCopy, v20, v44);
      if (v49 > objc_msgSend_length(v14, v50, v51) && 0xAAAAAAAAAAAAAAABLL * location - 0x5555555555555555 <= 0x5555555555555555)
      {
        objc_msgSend_deleteCharactersInRange_(v14, v20, location - 1, length);
        --range->location;
        range->length = 0;
      }
    }

    v52 = objc_msgSend_scannerWithString_(MEMORY[0x277CCAC80], v20, v14);
    objc_msgSend_setScanLocation_(v52, v53, 0);
    v56 = objc_msgSend_possibleSeparatorsInvertedSet(self, v54, v55);
    objc_msgSend_scanCharactersFromSet_intoString_(v52, v57, v56, 0);
    do
    {
      if (!objc_msgSend_isAtEnd(v52, v58, v59) || objc_msgSend_hasSuffix_(v14, v60, @" "))
      {
        v16 = objc_msgSend_scanLocation(v52, v60, v61);
        objc_msgSend_deleteCharactersInRange_(v14, v62, v16, 1);
        --range->location;
      }

      v52 = objc_msgSend_scannerWithString_(MEMORY[0x277CCAC80], v60, v14);
      v65 = objc_msgSend_length(v14, v63, v64);
      v67 = v16;
      if (v16 > v65)
      {
        v67 = objc_msgSend_length(v14, v66, v16);
      }

      objc_msgSend_setScanLocation_(v52, v66, v67);
      v70 = objc_msgSend_possibleSeparatorsInvertedSet(self, v68, v69);
      objc_msgSend_scanCharactersFromSet_intoString_(v52, v71, v70, 0);
    }

    while (!objc_msgSend_isAtEnd(v52, v72, v73) || (objc_msgSend_hasSuffix_(v14, v58, @" ") & 1) != 0);
    if (objc_msgSend_length(v14, v58, v59) >= 2)
    {
      v76 = 2;
      do
      {
        if (v76 >= self->super._maxLength)
        {
          break;
        }

        v77 = objc_msgSend_userPreferredSeparator(self, v74, v75);
        objc_msgSend_insertString_atIndex_(v14, v78, v77, v76);
        ++range->location;
        v76 += 3;
      }

      while (v76 <= objc_msgSend_length(v14, v79, v80));
    }

    *valid = v14;
    return 1;
  }

  v81 = v16;
  if (v16 % 3 != 2)
  {
    if (v16 % 3 == 1)
    {
      v81 = v16 + 1;
    }

    else
    {
      v81 = v16 - 1;
    }
  }

  v82 = (v16 + 1) % 3;
  if (v82 == 2)
  {
LABEL_52:
    v84 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v20, stringCopy, stringCopy);
    result = 0;
    *valid = v84;
    range->location = location;
    range->length = length;
    return result;
  }

  if (v82)
  {
    return 1;
  }

  if (v16 == self->super._maxLength - 1)
  {
    objc_msgSend_deleteCharactersInRange_(v14, v20, v16 - 1, 1);
    --range->location;
    range->length = 0;
  }

  objc_msgSend_insertString_atIndex_(v14, v20, @"0", v81 - 2);
  result = 0;
  ++range->location;
  *valid = v14;
  return result;
}

- (void)setPossibleSeparators:(id)separators
{
  possibleSeparators = self->_possibleSeparators;
  if (possibleSeparators != separators)
  {

    self->_possibleSeparators = separators;
  }
}

- (id)possibleSeparators
{
  v2 = self->_possibleSeparators;

  return v2;
}

- (void)setPossibleSeparatorsInvertedSet:(id)set
{
  possibleSeparatorsInvertedSet = self->_possibleSeparatorsInvertedSet;
  if (possibleSeparatorsInvertedSet != set)
  {

    self->_possibleSeparatorsInvertedSet = set;
  }
}

- (id)possibleSeparatorsInvertedSet
{
  v2 = self->_possibleSeparatorsInvertedSet;

  return v2;
}

- (void)setUserPreferredSeparator:(id)separator
{
  userPreferredSeparator = self->_userPreferredSeparator;
  if (userPreferredSeparator != separator)
  {

    self->_userPreferredSeparator = separator;
  }
}

- (id)userPreferredSeparator
{
  v2 = self->_userPreferredSeparator;

  return v2;
}

+ (id)macAddressSet
{
  v2 = objc_alloc_init(MEMORY[0x277CCAB50]);
  objc_msgSend_addCharactersInString_(v2, v3, @"abcdefABCDEF");
  objc_msgSend_addCharactersInString_(v2, v4, qword_27E383178);
  v7 = objc_msgSend_decimalDigitCharacterSet(MEMORY[0x277CCA900], v5, v6);
  objc_msgSend_formUnionWithCharacterSet_(v2, v8, v7);

  return v2;
}

@end