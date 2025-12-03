@interface NSString
+ (id)crl_JSONStringFromString:(id)string;
+ (id)crl_localizedDisplayNameWithPersonNameComponents:(id)components;
+ (id)crl_redactedStringWithFormat:(id)format arguments:(char *)arguments;
+ (id)crl_regexStringForSearchString:(id)string options:(unint64_t)options;
+ (id)crl_stringByBase64EncodingBytes:(const char *)bytes length:(unint64_t)length breakLines:(BOOL)lines;
+ (id)crl_stringByHexEncodingData:(id)data;
+ (id)crl_stringByIndentingString:(id)string times:(unint64_t)times;
+ (id)crl_stringWithFormat:(id)format arguments:(char *)arguments;
+ (id)crl_stringWithHexFromBytes:(const char *)bytes length:(unint64_t)length;
+ (id)crl_stringWithItemProviderData:(id)data typeIdentifier:(id)identifier error:(id *)error;
+ (id)crl_stringWithUUID;
+ (id)crl_unRedactedStringWithFormat:(id)format arguments:(char *)arguments;
+ (id)crlwp_stringForValue:(unsigned int)value withListNumberFormat:(unint64_t)format includeFormatting:(BOOL)formatting;
+ (id)crlwp_stringForValue:(unsigned int)value withPageNumberFormat:(int)format;
+ (id)crlwpax_descriptionForParagraphAlignment:(int64_t)alignment;
+ (id)crlwpax_descriptionForVerticalAlignment:(int64_t)alignment;
+ (unint64_t)crlwp_numberForString:(id)string withListNumberFormat:(unint64_t)format;
+ (unint64_t)crlwp_numberForString:(id)string withPageNumberFormat:(int)format;
- (BOOL)crl_conformsToAnyUTI:(id)i;
- (BOOL)crl_conformsToUTI:(id)i;
- (BOOL)crl_containsOnlyCharactersFromSet:(id)set;
- (BOOL)crl_isCJKString;
- (BOOL)crl_isChildOfPath:(id)path;
- (BOOL)crl_isDescendantOfPath:(id)path;
- (BOOL)crl_isEqualToString:(id)string;
- (BOOL)crl_pathConformsToUTI:(id)i;
- (BOOL)crl_pathExtensionConformsToUTI:(id)i;
- (BOOL)crlwp_NSDetectorMatchStringIsStrictPhoneNumber;
- (BOOL)crlwp_containsIdeographs;
- (BOOL)crlwp_isAllWhitespaceInRange:(_NSRange)range;
- (BOOL)crlwp_isHyphenationAtCharacterIndex:(unint64_t)index;
- (BOOL)crlwp_isLowerCaseFromIndex:(unint64_t)index;
- (NSString)crl_UTIFilenameExtension;
- (NSString)crl_normalizedFilenameExtension;
- (NSString)crl_pathUTI;
- (NSString)crl_stringByEscapingForSpotlightSearch;
- (_NSRange)crl_range;
- (_NSRange)crl_rangeOfString:(id)string options:(unint64_t)options updatingSearchRange:(_NSRange *)range;
- (_NSRange)crl_rangeOfString:(id)string searchOptions:(unint64_t)options updatingSearchRange:(_NSRange *)range;
- (_NSRange)crlwp_rangeOfCharactersFromSet:(id)set index:(unint64_t)index;
- (_NSRange)crlwp_rangeOfWordAtCharacterIndex:(unint64_t)index range:(_NSRange)range includePreviousWord:(BOOL)word;
- (_NSRange)crlwp_rangeOfWordAtCharacterIndex:(unint64_t)index range:(_NSRange)range includePreviousWord:(BOOL)word includeHyphenation:(BOOL)hyphenation;
- (id)crl_attributedStringAllowingHyphenationWithAlignment:(int64_t)alignment color:(id)color;
- (id)crl_displayNameFromFilenameDeletingPathExtension:(BOOL)extension;
- (id)crl_encodeStringBase64;
- (id)crl_escapeForIcuRegex;
- (id)crl_escapeXML;
- (id)crl_filenameFromDisplayNameWithExtension:(id)extension characterLimit:(unint64_t)limit;
- (id)crl_filenameTruncatedToCharacterLimit:(unint64_t)limit;
- (id)crl_firstKey;
- (id)crl_initRedactedWithFormat:(id)format arguments:(char *)arguments;
- (id)crl_initUnRedactedWithFormat:(id)format arguments:(char *)arguments;
- (id)crl_initialsWithLimit:(unint64_t)limit;
- (id)crl_keyPathByAppendingKey:(id)key;
- (id)crl_keyPathByPrependingKey:(id)key;
- (id)crl_keyPathByRemovingFirstKey;
- (id)crl_keyPathByRemovingLastKey;
- (id)crl_lastKey;
- (id)crl_middleTruncateToLength:(unint64_t)length;
- (id)crl_nameByConvertingFirstNameToInitials;
- (id)crl_parseBaseTitleWithLocalizedCopyString:(id)string firstCopyFormatString:(id)formatString generalCopyFormatString:(id)copyFormatString outNumber:(unint64_t *)number;
- (id)crl_pathExceptPrivate;
- (id)crl_regexForTitleParsingWithLocalizedCopyString:(id)string isFirstCopyFormatString:(BOOL)formatString;
- (id)crl_setOfContainedWordsIncludingPunctuationAndSymbols:(BOOL)symbols;
- (id)crl_stringByAppendingSeparator:(id)separator format:(id)format;
- (id)crl_stringByApplyingSubstitutions:(id)substitutions;
- (id)crl_stringByCapitalizingToMatchString:(id)string range:(_NSRange)range searchOptions:(unint64_t)options;
- (id)crl_stringByDeletingPathExtensionIfEqualTo:(id)to;
- (id)crl_stringByExpandingTableFormatting;
- (id)crl_stringByFixingBrokenSurrogatePairs;
- (id)crl_stringByIncrementingCounterAfterDuplicateTitleModifierWithLocalizedCopyString:(id)string firstCopyFormatString:(id)formatString generalCopyFormatString:(id)copyFormatString numberFormatter:(id)formatter uniquenessTest:(id)test;
- (id)crl_stringByIncrementingCounterAfterDuplicateTitleModifierWithUniquenessTest:(id)test;
- (id)crl_stringByMakingFirstCharacterLowercase;
- (id)crl_stringByMakingFirstCharacterUppercase;
- (id)crl_stringByRemovingCharactersInSet:(id)set options:(unsigned int)options;
- (id)crl_stringByReplacingInstancesOfCharactersInSet:(id)set withString:(id)string;
- (id)crl_stringByReplacingOccurrencesOfString:(id)string withString:(id)withString searchOptions:(unint64_t)options range:(_NSRange)range replacementCount:(unint64_t *)count;
- (id)crl_stringByTrimmingCharactersInSetFromFront:(id)front;
- (id)crl_stringByUniquingPathInsideDirectory:(id)directory withFormat:(id)format;
- (id)crl_stringQuotedIfContainsCharacterSet:(id)set;
- (id)crl_stringTrimByLimitingFirstCharacterToSet:(id)set;
- (id)crl_stringWithNormalizedHyphens;
- (id)crl_stringWithNormalizedHyphensAndQuotationMarks;
- (id)crl_stringWithNormalizedQuotationMarks;
- (id)crl_stringWithPathRelativeTo:(id)to;
- (id)crl_stringWithPathRelativeTo:(id)to allowBacktracking:(BOOL)backtracking;
- (id)crl_stringWithRealpath;
- (id)crl_stringWithTrimmedWhitespace;
- (id)crl_stringWithoutAttachmentCharacters;
- (id)crl_stringWithoutBidiControls;
- (id)crl_substringWithComposedCharacterSequencesToFileSystemLength:(unint64_t)length;
- (id)crl_substringWithComposedCharacterSequencesTruncatedToLength:(unint64_t)length;
- (id)crl_tolerantStringByAppendingPathExtension:(id)extension;
- (id)crl_uncommentedAddress;
- (id)crl_uncommentedAddressRespectingGroups;
- (id)crl_unescapeXML;
- (id)crl_writeToFileUsingName:(id)name error:(id *)error;
- (id)crlwp_replaceOccurrencesOfCharactersInSet:(id)set minimumConsecutiveLength:(unint64_t)length replaceString:(id)string;
- (id)crlwp_stringByNormalizingParagraphBreaks;
- (id)crlwp_stringWithAddedIsolatesBasedOn:(int64_t)on;
- (id)crlwp_stringWithUnambiguousNeutralEnding;
- (id)crlwp_stringWithoutControlCharacters;
- (int)crlwp_contentsScript;
- (int)crlwp_contentsScriptInRange:(_NSRange)range;
- (unint64_t)crl_countInstancesOfString:(id)string options:(unint64_t)options;
- (unint64_t)crl_numberOfKeysInKeyPath;
- (unint64_t)crlwp_findIndexOfCharacter:(unsigned __int16)character range:(_NSRange)range;
- (unsigned)crlwp_utf32CharacterAtIndex:(unint64_t)index;
- (unsigned)crlwp_utf32CharacterAtIndex:(unint64_t)index planeClassification:(int64_t *)classification;
- (void)crl_appendJSONStringToString:(id)string;
- (void)crl_enumerateRangesOfCharactersInSet:(id)set usingBlock:(id)block;
@end

@implementation NSString

- (id)crl_stringWithNormalizedHyphensAndQuotationMarks
{
  crl_stringWithNormalizedHyphens = [(NSString *)self crl_stringWithNormalizedHyphens];
  crl_stringWithNormalizedQuotationMarks = [crl_stringWithNormalizedHyphens crl_stringWithNormalizedQuotationMarks];

  return crl_stringWithNormalizedQuotationMarks;
}

- (id)crl_stringWithNormalizedHyphens
{
  if (qword_101A34F00 != -1)
  {
    sub_10007FF6C();
  }

  v3 = qword_101A34F08;

  return [(NSString *)self crl_stringByReplacingInstancesOfCharactersInSet:v3 withString:@"-"];
}

- (id)crl_stringWithNormalizedQuotationMarks
{
  if (qword_101A34F10 != -1)
  {
    sub_1000811A0();
  }

  v3 = qword_101A34F18;

  return [(NSString *)self crl_stringByReplacingInstancesOfCharactersInSet:v3 withString:@"'"];
}

- (BOOL)crl_conformsToUTI:(id)i
{
  iCopy = i;
  v5 = +[CRLIngestionTypes nativeTypes];
  v6 = [v5 containsObject:iCopy];

  if (v6)
  {
    v7 = [(NSString *)self isEqualToString:iCopy];
  }

  else
  {
    v8 = [UTType typeWithIdentifier:self];
    if (v8 && (+[CRLIngestionTypes unsupportedImageTypes](CRLIngestionTypes, "unsupportedImageTypes"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 containsObject:iCopy], v9, (v10 & 1) == 0))
    {
      v11 = [UTType typeWithIdentifier:iCopy];
      if (v11)
      {
        v12 = v11;
        v7 = [v8 conformsToType:v11];
      }

      else
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10132D9D4();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10132D9E8();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10132DA7C();
        }

        v13 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130EFC0(v13);
        }

        v12 = [NSString stringWithUTF8String:"[NSString(CRLUTIUtilities) crl_conformsToUTI:]"];
        v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLUTIUtilities.m"];
        [CRLAssertionHandler handleFailureInFunction:v12 file:v14 lineNumber:61 isFatal:0 description:"Could not instantiate UTType for %@", iCopy];

        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)crl_conformsToAnyUTI:(id)i
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  iCopy = i;
  v5 = [iCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(iCopy);
        }

        if ([(NSString *)self crl_conformsToUTI:*(*(&v11 + 1) + 8 * i), v11])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [iCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (NSString)crl_UTIFilenameExtension
{
  v3 = [UTType typeWithIdentifier:self];
  if (!v3)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10132DAA4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10132DAB8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10132DB4C();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v4);
    }

    v5 = [NSString stringWithUTF8String:"[NSString(CRLUTIUtilities) crl_UTIFilenameExtension]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLUTIUtilities.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:79 isFatal:0 description:"Failed to create UTType for %@", self];
  }

  preferredFilenameExtension = [v3 preferredFilenameExtension];

  return preferredFilenameExtension;
}

- (NSString)crl_pathUTI
{
  pathExtension = [(NSString *)self pathExtension];
  if (!pathExtension)
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  if (![(NSString *)self isAbsolutePath])
  {
    v8 = UTTagClassFilenameExtension;
    goto LABEL_11;
  }

  v12 = 1;
  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:self isDirectory:&v12];
  if (v12)
  {
    v6 = UTTypeDirectory;
  }

  else
  {
    v6 = UTTypeData;
  }

  if (!v5)
  {
    v6 = UTTypeDirectory;
  }

  v7 = v6;

  v8 = UTTagClassFilenameExtension;
  v9 = [UTType typeWithTag:pathExtension tagClass:UTTagClassFilenameExtension conformingToType:v7];

  if ([v9 isDynamic])
  {

LABEL_11:
    v9 = [UTType typeWithTag:pathExtension tagClass:v8 conformingToType:0];
    if (![v9 isDynamic])
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (!v9)
  {
    goto LABEL_11;
  }

LABEL_14:
  identifier = [v9 identifier];

  return identifier;
}

- (NSString)crl_normalizedFilenameExtension
{
  crl_pathUTI = [(NSString *)self crl_pathUTI];
  crl_UTIFilenameExtension = [crl_pathUTI crl_UTIFilenameExtension];

  return crl_UTIFilenameExtension;
}

- (BOOL)crl_pathConformsToUTI:(id)i
{
  iCopy = i;
  pathExtension = [(NSString *)self pathExtension];
  v6 = [pathExtension crl_pathExtensionConformsToUTI:iCopy];

  return v6;
}

- (BOOL)crl_pathExtensionConformsToUTI:(id)i
{
  iCopy = i;
  [UTType typesWithTag:iCopy tagClass:UTTagClassFilenameExtension conformingToType:0];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if (([v8 isDynamic] & 1) == 0)
        {
          identifier = [v8 identifier];
          v10 = [identifier crl_conformsToUTI:iCopy];

          if (v10)
          {
            LOBYTE(v5) = 1;
            goto LABEL_12;
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v5;
}

- (id)crlwp_stringByNormalizingParagraphBreaks
{
  selfCopy = self;
  v3 = [(__CFString *)selfCopy length];
  v31 = selfCopy;
  v34 = 0;
  v35 = v3;
  CharactersPtr = CFStringGetCharactersPtr(selfCopy);
  if (CharactersPtr)
  {
    CStringPtr = 0;
  }

  else
  {
    CStringPtr = CFStringGetCStringPtr(selfCopy, 0x600u);
  }

  v33 = CStringPtr;
  v36 = 0;
  v37 = 0;
  if (v3 >= 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 64;
    while (1)
    {
      if (v9 >= 4)
      {
        v11 = 4;
      }

      else
      {
        v11 = v9;
      }

      if (v9 >= 3)
      {
        v12 = 3;
      }

      else
      {
        v12 = v9;
      }

      v13 = v35;
      if (v35 <= v9)
      {
        goto LABEL_48;
      }

      if (CharactersPtr)
      {
        break;
      }

      if (!v33)
      {
        if (v37 <= v9 || v6 > v9)
        {
          v21 = -v11;
          v22 = v11 + v5;
          v23 = v10 - v11;
          v24 = v9 + v21;
          v25 = v24 + 64;
          if (v24 + 64 >= v35)
          {
            v25 = v35;
          }

          v36 = v24;
          v37 = v25;
          if (v35 >= v23)
          {
            v13 = v23;
          }

          v39.location = v24 + v34;
          v39.length = v13 + v22;
          CFStringGetCharacters(v31, v39, buffer);
          v6 = v36;
        }

        v14 = &buffer[-v6];
        goto LABEL_15;
      }

      v15 = v33[v34 + v9];
LABEL_18:
      if (v15 == 8233)
      {
        goto LABEL_25;
      }

      if (v15 == 13)
      {
        v16 = v9 + 1;
        if (v9 + 1 >= v3 || (v17 = v35, v35 <= v16))
        {
LABEL_25:
          v20 = 1;
          if (!v8)
          {
            goto LABEL_42;
          }
        }

        else
        {
          if (CharactersPtr)
          {
            v18 = &CharactersPtr[v34];
            goto LABEL_24;
          }

          if (v33)
          {
            v19 = v33[v34 + 1 + v9];
          }

          else
          {
            if (v37 <= v16 || v6 > v16)
            {
              v27 = v9 - v12 + 64;
              if (v27 >= v35)
              {
                v27 = v35;
              }

              v36 = v9 - v12;
              v37 = v27;
              if (v35 >= v10 - v12)
              {
                v17 = v10 - v12;
              }

              v40.location = v9 - v12 + v34;
              v40.length = v17 + v12 + v5;
              CFStringGetCharacters(v31, v40, buffer);
              v6 = v36;
            }

            v18 = &buffer[-v6];
LABEL_24:
            v19 = v18[v9 + 1];
          }

          if (v19 == 10)
          {
            v20 = 2;
          }

          else
          {
            v20 = 1;
          }

          if (!v8)
          {
LABEL_42:
            v8 = [(__CFString *)selfCopy mutableCopyWithZone:0];

            selfCopy = v8;
            if (!v7)
            {
              goto LABEL_43;
            }

            goto LABEL_44;
          }
        }

        if (!v7)
        {
LABEL_43:
          v29 = 10;
          v7 = [[NSString alloc] initWithCharacters:&v29 length:1];
        }

LABEL_44:
        [(__CFString *)v8 replaceCharactersInRange:v9 withString:v20, v7];
        v3 = [(__CFString *)selfCopy length];
        v31 = selfCopy;
        v34 = 0;
        v35 = v3;
        CharactersPtr = CFStringGetCharactersPtr(selfCopy);
        if (CharactersPtr)
        {
          v26 = 0;
        }

        else
        {
          v26 = CFStringGetCStringPtr(selfCopy, 0x600u);
        }

        v6 = 0;
        v33 = v26;
        v36 = 0;
        v37 = 0;
      }

LABEL_48:
      ++v9;
      --v5;
      ++v10;
      if (v9 >= v3)
      {

        goto LABEL_58;
      }
    }

    v14 = &CharactersPtr[v34];
LABEL_15:
    v15 = v14[v9];
    goto LABEL_18;
  }

LABEL_58:

  return selfCopy;
}

- (unint64_t)crlwp_findIndexOfCharacter:(unsigned __int16)character range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  characterCopy = character;
  v35.length = [(NSString *)self length];
  v33.location = location;
  v33.length = length;
  v35.location = 0;
  v8 = NSIntersectionRange(v33, v35);
  if (v8.length)
  {
    v9 = v8.location;
    theString = self;
    v30 = v8;
    CharactersPtr = CFStringGetCharactersPtr(self);
    v10 = CharactersPtr ? 0 : CFStringGetCStringPtr(self, 0x600u);
    v31 = 0;
    v32 = 0;
    v29 = v10;
    if (v8.length >= 1)
    {
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 64;
      do
      {
        if (v13 >= 4)
        {
          v15 = 4;
        }

        else
        {
          v15 = v13;
        }

        v16 = v30.length;
        if (v30.length <= v13)
        {
          v18 = 0;
        }

        else
        {
          if (CharactersPtr)
          {
            v17 = &CharactersPtr[v30.location];
          }

          else
          {
            if (v29)
            {
              v18 = v29[v30.location + v13];
              goto LABEL_15;
            }

            if (v32 <= v13 || v12 > v13)
            {
              v20 = -v15;
              v21 = v15 + v11;
              v22 = v14 - v15;
              v23 = v13 + v20;
              v24 = v23 + 64;
              if (v23 + 64 >= v30.length)
              {
                v24 = v30.length;
              }

              v31 = v23;
              v32 = v24;
              if (v30.length >= v22)
              {
                v16 = v22;
              }

              v34.location = v23 + v30.location;
              v34.length = v16 + v21;
              CFStringGetCharacters(theString, v34, buffer);
              v12 = v31;
            }

            v17 = &buffer[-v12];
          }

          v18 = v17[v13];
        }

LABEL_15:
        if (characterCopy == v18)
        {
          return v9;
        }

        ++v13;
        ++v9;
        --v11;
        ++v14;
      }

      while (v8.length != v13);
    }
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

- (_NSRange)crlwp_rangeOfCharactersFromSet:(id)set index:(unint64_t)index
{
  setCopy = set;
  v7 = [(NSString *)self length];
  index = [(NSString *)self rangeOfCharacterFromSet:setCopy options:0 range:index, v7 - index];
  v10 = v8;
  if (v8)
  {
    v11 = index + 1;
    if (index + 1 < v7)
    {
      v12 = v8 + v7 + ~index;
      while ([setCopy characterIsMember:{-[NSString characterAtIndex:](self, "characterAtIndex:", v11)}])
      {
        ++v10;
        if (v7 == ++v11)
        {
          v10 = v12;
          break;
        }
      }
    }
  }

  v13 = index;
  v14 = v10;
  result.length = v14;
  result.location = v13;
  return result;
}

- (_NSRange)crlwp_rangeOfWordAtCharacterIndex:(unint64_t)index range:(_NSRange)range includePreviousWord:(BOOL)word
{
  v5 = [(NSString *)self crlwp_rangeOfWordAtCharacterIndex:index range:range.location includePreviousWord:range.length includeHyphenation:word, 0];
  result.length = v6;
  result.location = v5;
  return result;
}

- (_NSRange)crlwp_rangeOfWordAtCharacterIndex:(unint64_t)index range:(_NSRange)range includePreviousWord:(BOOL)word includeHyphenation:(BOOL)hyphenation
{
  hyphenationCopy = hyphenation;
  wordCopy = word;
  length = range.length;
  location = range.location;
  v12 = 0x7FFFFFFFFFFFFFFFLL;
  v13 = 0;
  v14 = [(NSString *)self length];
  v15 = location + length;
  if (index < location || index - location >= length)
  {
    v16 = v15 == index;
    if (v14 < v15)
    {
LABEL_6:
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101335B68();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101335B7C();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101335C04();
      }

      v17 = off_1019EDA68;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_101335C2C();
      }

      v18 = [NSString stringWithUTF8String:"[NSString(CRLWPAdditions) crlwp_rangeOfWordAtCharacterIndex:range:includePreviousWord:includeHyphenation:]"];
      v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/NSString+CRLWPAdditions.mm"];
      [CRLAssertionHandler handleFailureInFunction:v18 file:v19 lineNumber:968 isFatal:0 description:"Specified range is out of range of string"];

      if (v16)
      {
        goto LABEL_59;
      }

LABEL_23:
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101335C70();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101335C98();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101335D20();
      }

      v22 = off_1019EDA68;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_101335C2C();
      }

      v23 = [NSString stringWithUTF8String:"[NSString(CRLWPAdditions) crlwp_rangeOfWordAtCharacterIndex:range:includePreviousWord:includeHyphenation:]"];
      v24 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/NSString+CRLWPAdditions.mm"];
      [CRLAssertionHandler handleFailureInFunction:v23 file:v24 lineNumber:969 isFatal:0 description:"Character index out of range"];

      goto LABEL_59;
    }

    if (v15 != index)
    {
      goto LABEL_23;
    }
  }

  else if (v14 < v15)
  {
    v16 = 1;
    goto LABEL_6;
  }

  if (![(NSString *)self length])
  {
    v12 = 0;
    v13 = 0;
  }

  if (CFStringGetLength(self) <= index)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    CharacterAtIndex = CFStringGetCharacterAtIndex(self, index);
    LOBYTE(v21) = 0;
    if (CharacterAtIndex && v15 > index)
    {
      v21 = sub_10027E3D4(CharacterAtIndex) ^ 1;
    }
  }

  if (wordCopy && index > location)
  {
    v25 = CFStringGetCharacterAtIndex(self, index - 1);
    v26 = sub_10027E3D4(v25);
    LOBYTE(v21) = v26 ^ 1 | v21;
    if (!v26)
    {
      --index;
    }
  }

  if ((v21 & 1) != 0 && length)
  {
    v41.location = location;
    v41.length = length;
    v27 = CFStringTokenizerCreate(0, self, v41, 4uLL, 0);
    v28 = v27;
    if (v27)
    {
      v29 = CFStringTokenizerGoToTokenAtIndex(v27, index);
      v30 = 0;
      v31 = -1;
      if (v29 && (v29 & 0x10) == 0)
      {
        CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v28);
        v31 = CurrentTokenRange.location;
        v30 = CurrentTokenRange.length;
      }
    }

    else
    {
      v30 = 0;
      v31 = -1;
    }

    if (v31 != -1 && v30 != 0)
    {
      v12 = v31;
      v13 = v30;
    }

    if (v31 != -1 && v30 != 0 && hyphenationCopy)
    {
      if ((CFStringTokenizerAdvanceToNextToken(v28) & 0x10) != 0 && (v33 = CFStringTokenizerGetCurrentTokenRange(v28), v33.length == 1))
      {
        v34 = v33.location;
        v12 = v31;
        v13 = v30;
        do
        {
          if (![(NSString *)self crlwp_isHyphenationAtCharacterIndex:v34])
          {
            break;
          }

          if (CFStringTokenizerAdvanceToNextToken(v28) != 1)
          {
            break;
          }

          v42 = CFStringTokenizerGetCurrentTokenRange(v28);
          v39.location = v12;
          v39.length = v13;
          v35 = NSUnionRange(v39, v42);
          v12 = v35.location;
          v13 = v35.length;
          if ((CFStringTokenizerAdvanceToNextToken(v28) & 0x10) == 0)
          {
            break;
          }

          v36 = CFStringTokenizerGetCurrentTokenRange(v28);
          v34 = v36.location;
        }

        while (v36.length == 1);
      }

      else
      {
        v12 = v31;
        v13 = v30;
      }
    }

    if (v28)
    {
      CFRelease(v28);
    }
  }

LABEL_59:
  v37 = v12;
  v38 = v13;
  result.length = v38;
  result.location = v37;
  return result;
}

- (BOOL)crlwp_isHyphenationAtCharacterIndex:(unint64_t)index
{
  v3 = [(NSString *)self characterAtIndex:index];
  result = 1;
  if (v3 > 8207)
  {
    v5 = v3 - 8208;
    if (v5 > 0x17 || ((1 << v5) & 0x800003) == 0)
    {
      return 0;
    }
  }

  else if (v3 != 45 && v3 != 173 && v3 != 183)
  {
    return 0;
  }

  return result;
}

- (BOOL)crlwp_isAllWhitespaceInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v33.length = [(NSString *)self length];
  v31.location = location;
  v31.length = length;
  v33.location = 0;
  v6 = NSIntersectionRange(v31, v33);
  if (v6.length)
  {
    theString = self;
    v28 = v6;
    CharactersPtr = CFStringGetCharactersPtr(self);
    if (CharactersPtr)
    {
      CStringPtr = 0;
    }

    else
    {
      CStringPtr = CFStringGetCStringPtr(self, 0x600u);
    }

    v29 = 0;
    v30 = 0;
    v27 = CStringPtr;
    if (v6.length >= 1)
    {
      v9 = 0;
      v8 = 0;
      v10 = 0;
      v11 = 64;
      while (1)
      {
        if (v10 >= 4)
        {
          v12 = 4;
        }

        else
        {
          v12 = v10;
        }

        v13 = v28.length;
        if (v28.length <= v10)
        {
          v15 = 0;
        }

        else
        {
          if (CharactersPtr)
          {
            v14 = &CharactersPtr[v28.location];
LABEL_14:
            v15 = v14[v10];
            goto LABEL_16;
          }

          if (!v27)
          {
            v16 = v29;
            if (v30 <= v10 || v29 > v10)
            {
              v18 = -v12;
              v19 = v12 + v9;
              v20 = v11 - v12;
              v21 = v10 + v18;
              v22 = v21 + 64;
              if (v21 + 64 >= v28.length)
              {
                v22 = v28.length;
              }

              v29 = v21;
              v30 = v22;
              if (v28.length >= v20)
              {
                v13 = v20;
              }

              v32.location = v21 + v28.location;
              v32.length = v13 + v19;
              CFStringGetCharacters(theString, v32, buffer);
              v16 = v29;
            }

            v14 = &buffer[-v16];
            goto LABEL_14;
          }

          v15 = v27[v28.location + v10];
        }

LABEL_16:
        if (sub_10027E3D4(v15))
        {
          v8 = ++v10 >= v6.length;
          --v9;
          ++v11;
          if (v6.length != v10)
          {
            continue;
          }
        }

        return v8;
      }
    }

    return 1;
  }

  else
  {
    return 0;
  }
}

- (id)crlwp_replaceOccurrencesOfCharactersInSet:(id)set minimumConsecutiveLength:(unint64_t)length replaceString:(id)string
{
  setCopy = set;
  stringCopy = string;
  v52 = setCopy;
  if (!stringCopy)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101335D48();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101335D5C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101335E08();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_101335C2C();
    }

    v10 = [NSString stringWithUTF8String:"[NSString(CRLWPAdditions) crlwp_replaceOccurrencesOfCharactersInSet:minimumConsecutiveLength:replaceString:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/NSString+CRLWPAdditions.mm"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:1065 isFatal:0 description:"invalid nil value for '%{public}s'", "replaceString"];
  }

  v61 = 0;
  v62 = 0;
  v63 = 0;
  v12 = [(NSString *)self length];
  theString = self;
  range.location = 0;
  range.length = v12;
  CharactersPtr = CFStringGetCharactersPtr(self);
  if (CharactersPtr)
  {
    CStringPtr = 0;
  }

  else
  {
    CStringPtr = CFStringGetCStringPtr(self, 0x600u);
  }

  v59 = 0;
  length = 0;
  v57 = CStringPtr;
  if (v12 && range.length >= 1)
  {
    if (CharactersPtr)
    {
      v14 = CharactersPtr[range.location];
    }

    else if (CStringPtr)
    {
      v14 = CStringPtr[range.location];
    }

    else
    {
      if (range.length >= 0x40uLL)
      {
        v48.length = 64;
      }

      else
      {
        v48.length = range.length;
      }

      length = v48.length;
      v48.location = range.location;
      CFStringGetCharacters(theString, v48, buffer);
      v14 = buffer[-v59];
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = CFCharacterSetIsCharacterMember(setCopy, v14) != 0;
  v16 = v12 - 2;
  if (v12 < 2 || range.length < 2)
  {
    v17 = 0;
  }

  else if (CharactersPtr)
  {
    v17 = CharactersPtr[range.location + 1];
  }

  else if (v57)
  {
    v17 = v57[range.location + 1];
  }

  else
  {
    if (length < 2 || (v49 = v59, v59 >= 2))
    {
      if (range.length >= 0x40uLL)
      {
        v50.length = 64;
      }

      else
      {
        v50.length = range.length;
      }

      v59 = 0;
      length = v50.length;
      v50.location = range.location;
      CFStringGetCharacters(theString, v50, buffer);
      v49 = v59;
    }

    v17 = buffer[1 - v49];
  }

  IsCharacterMember = CFCharacterSetIsCharacterMember(setCopy, v17);
  selfCopy = self;
  if (v12)
  {
    v19 = 0;
    v20 = IsCharacterMember != 0;
    v21 = 0x7FFFFFFFFFFFFFFFLL;
    v22 = 2;
    while (1)
    {
      v23 = v22 - 2;
      if (v15)
      {
        if (v23 < v21)
        {
          v21 = v22 - 2;
        }

        ++v19;
        if (!v20)
        {
          if (v19 >= length)
          {
            v24 = v62;
            if (v62 >= v63)
            {
              v26 = v61;
              v27 = v62 - v61;
              v28 = (v62 - v61) >> 4;
              v29 = v28 + 1;
              if ((v28 + 1) >> 60)
              {
                sub_1000C1D48();
              }

              v30 = v63 - v61;
              if ((v63 - v61) >> 3 > v29)
              {
                v29 = v30 >> 3;
              }

              v31 = v30 >= 0x7FFFFFFFFFFFFFF0;
              v32 = 0xFFFFFFFFFFFFFFFLL;
              if (!v31)
              {
                v32 = v29;
              }

              if (v32)
              {
                sub_1000DB4D8(&v61, v32);
              }

              v33 = (v62 - v61) >> 4;
              v34 = (16 * v28);
              *v34 = v21;
              v34[1] = v19;
              v25 = 16 * v28 + 16;
              v35 = &v34[-2 * v33];
              memcpy(v35, v26, v27);
              v36 = v61;
              v61 = v35;
              v62 = v25;
              v63 = 0;
              if (v36)
              {
                operator delete(v36);
              }

              setCopy = v52;
            }

            else
            {
              *v62 = v21;
              *(v24 + 1) = v19;
              v25 = (v24 + 16);
            }

            v19 = 0;
            v62 = v25;
          }

          else
          {
            v19 = 0;
          }

          v21 = 0x7FFFFFFFFFFFFFFFLL;
        }
      }

      if (v23 < v16)
      {
        break;
      }

      v40 = 0;
LABEL_55:
      ++v22;
      v15 = v20;
      v20 = v40;
      if (!--v12)
      {
        goto LABEL_67;
      }
    }

    if (v22 < 0 || (v37 = range.length, range.length <= v22))
    {
      v39 = 0;
    }

    else
    {
      if (CharactersPtr)
      {
        v38 = &CharactersPtr[range.location];
      }

      else
      {
        if (v57)
        {
          v39 = v57[range.location + v22];
          goto LABEL_54;
        }

        if (length <= v22 || (v41 = v59, v59 > v22))
        {
          v42 = v22 - 4;
          if (v22 < 4)
          {
            v42 = 0;
          }

          if ((v42 + 64) < range.length)
          {
            v37 = v42 + 64;
          }

          v59 = v42;
          length = v37;
          v65.length = v37 - v42;
          v65.location = range.location + v42;
          CFStringGetCharacters(theString, v65, buffer);
          v41 = v59;
        }

        v38 = &buffer[-v41];
      }

      v39 = v38[v22];
    }

LABEL_54:
    v40 = CFCharacterSetIsCharacterMember(setCopy, v39) != 0;
    goto LABEL_55;
  }

LABEL_67:
  if (v62 == v61)
  {
    v43 = selfCopy;
  }

  else
  {
    v43 = [(NSString *)selfCopy mutableCopy];
    for (i = v62; i != v61; i -= 16)
    {
      v45 = *(i - 2);
      v46 = *(i - 1);
      [(NSString *)v43 replaceCharactersInRange:v45 withString:v46, stringCopy];
    }
  }

  if (v61)
  {
    v62 = v61;
    operator delete(v61);
  }

  return v43;
}

+ (unint64_t)crlwp_numberForString:(id)string withListNumberFormat:(unint64_t)format
{
  stringCopy = string;
  if ([stringCopy length])
  {
    v6 = +[NSCharacterSet whitespaceCharacterSet];
    v7 = [stringCopy stringByTrimmingCharactersInSet:v6];

    if (!qword_101A34870)
    {
      v8 = objc_alloc_init(NSMutableCharacterSet);
      v9 = [NSString stringWithCharacters:L".()" length:3];
      [v8 addCharactersInString:v9];

      v10 = qword_101A34870;
      qword_101A34870 = v8;
    }

    if (format >= 3)
    {
      v11 = [v7 crl_stringByRemovingCharactersInSet:qword_101A34870];

      v7 = v11;
    }

    if ([v7 length] >= 0x65)
    {
      v12 = [v7 substringWithRange:{0, 100}];

      v7 = v12;
    }

    if (format > 0xE)
    {
      goto LABEL_14;
    }

    if (((1 << format) & 0x1C0) != 0)
    {
      v13 = sub_10021B5C4(v7);
      goto LABEL_20;
    }

    if (((1 << format) & 0xE00) != 0)
    {
      v13 = sub_10021B60C(v7);
      goto LABEL_20;
    }

    if (((1 << format) & 0x7000) != 0)
    {
      v13 = sub_10021B6FC(v7);
    }

    else
    {
LABEL_14:
      if (format - 3 < 3)
      {
        v13 = sub_10021B4A0(v7);
      }

      else
      {
        if (format > 2)
        {
          +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_101335E30();
          }

          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_101335E44();
          }

          if (qword_101AD5A10 != -1)
          {
            sub_101335ED8();
          }

          v16 = off_1019EDA68;
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            +[CRLAssertionHandler packedBacktraceString];
            objc_claimAutoreleasedReturnValue();
            sub_101335C2C();
          }

          v17 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[NSString(CRLWPAdditions) crlwp_numberForString:withListNumberFormat:]");
          v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/NSString+CRLWPAdditions.mm"];
          [CRLAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:1184 isFatal:0 description:"Label format (%lu) not recognized.", format];

          v14 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_21;
        }

        v13 = sub_10021B394(v7);
      }
    }

LABEL_20:
    v14 = v13;
LABEL_21:

    goto LABEL_22;
  }

  v14 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_22:

  return v14;
}

+ (unint64_t)crlwp_numberForString:(id)string withPageNumberFormat:(int)format
{
  v4 = *&format;
  stringCopy = string;
  if ([stringCopy length])
  {
    v6 = +[NSCharacterSet whitespaceCharacterSet];
    v7 = [stringCopy stringByTrimmingCharactersInSet:v6];

    if ([v7 length] >= 0x65)
    {
      v8 = [v7 substringWithRange:{0, 100}];

      v7 = v8;
    }

    if (v4 <= 1)
    {
      if (!v4)
      {
        v9 = sub_10021B394(v7);
        goto LABEL_16;
      }

      if (v4 == 1)
      {
        v9 = sub_10021B4A0(v7);
        goto LABEL_16;
      }
    }

    else
    {
      switch(v4)
      {
        case 2:
          v9 = sub_10021B5C4(v7);
          goto LABEL_16;
        case 3:
          v9 = sub_10021B60C(v7);
          goto LABEL_16;
        case 4:
          v9 = sub_10021B6FC(v7);
LABEL_16:
          v10 = v9;
LABEL_17:

          goto LABEL_18;
      }
    }

    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101335F00();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101335F14();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101335FBC();
    }

    v12 = off_1019EDA68;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_101335C2C();
    }

    v13 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[NSString(CRLWPAdditions) crlwp_numberForString:withPageNumberFormat:]");
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/NSString+CRLWPAdditions.mm"];
    [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:1225 isFatal:0 description:"Number format (%d) not recognized.", v4];

    v10 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_17;
  }

  v10 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_18:

  return v10;
}

+ (id)crlwp_stringForValue:(unsigned int)value withListNumberFormat:(unint64_t)format includeFormatting:(BOOL)formatting
{
  switch(format)
  {
    case 0uLL:
      v7 = sub_10021CEBC(value);
      v8 = [NSString stringWithFormat:@"%@.", v7];
      goto LABEL_70;
    case 1uLL:
      v7 = sub_10021CEBC(value);
      v8 = [NSString stringWithFormat:@"(%@)", v7];
      goto LABEL_70;
    case 2uLL:
      v7 = sub_10021CEBC(value);
      v8 = [NSString stringWithFormat:@"%@"], v7);
      goto LABEL_70;
    case 3uLL:
      v7 = sub_10021D084(value);
      v8 = [NSString stringWithFormat:@"%@.", v7];
      goto LABEL_70;
    case 4uLL:
      v7 = sub_10021D084(value);
      v8 = [NSString stringWithFormat:@"(%@)", v7];
      goto LABEL_70;
    case 5uLL:
      v7 = sub_10021D084(value);
      v8 = [NSString stringWithFormat:@"%@"], v7);
      goto LABEL_70;
    case 6uLL:
      v7 = sub_10021D2AC(value);
      v8 = [NSString stringWithFormat:@"%@.", v7];
      goto LABEL_70;
    case 7uLL:
      v7 = sub_10021D2AC(value);
      v8 = [NSString stringWithFormat:@"(%@)", v7];
      goto LABEL_70;
    case 8uLL:
      v7 = sub_10021D2AC(value);
      v8 = [NSString stringWithFormat:@"%@"], v7);
      goto LABEL_70;
    case 9uLL:
      v10 = sub_10021FFCC(value, aAbcdefghijklmn_0, 0x1AuLL);
      v11 = [NSString stringWithFormat:@"%@.", v10];
      goto LABEL_73;
    case 0xAuLL:
      v10 = sub_10021FFCC(value, aAbcdefghijklmn_0, 0x1AuLL);
      v11 = [NSString stringWithFormat:@"(%@)", v10];
      goto LABEL_73;
    case 0xBuLL:
      v10 = sub_10021FFCC(value, aAbcdefghijklmn_0, 0x1AuLL);
      v11 = [NSString stringWithFormat:@"%@"], v10);
      goto LABEL_73;
    case 0xCuLL:
      v7 = sub_10021D308(value);
      v8 = [NSString stringWithFormat:@"%@.", v7];
      goto LABEL_70;
    case 0xDuLL:
      v7 = sub_10021D308(value);
      v8 = [NSString stringWithFormat:@"(%@)", v7];
      goto LABEL_70;
    case 0xEuLL:
      v7 = sub_10021D308(value);
      v8 = [NSString stringWithFormat:@"%@"], v7);
      goto LABEL_70;
    case 0xFuLL:
      v7 = sub_10021D420(*&value, 0);
      v8 = [NSString stringWithFormat:@"%@.", v7];
      goto LABEL_70;
    case 0x10uLL:
      v7 = sub_10021D420(*&value, 0);
      v8 = [NSString stringWithFormat:@"(%@)", v7];
      goto LABEL_70;
    case 0x11uLL:
      v7 = sub_10021D420(*&value, 0);
      v8 = [NSString stringWithFormat:@"%@"], v7);
      goto LABEL_70;
    case 0x12uLL:
      v10 = sub_100220A44(value, &unk_101463304, 0x2EuLL, 0);
      v11 = [NSString stringWithFormat:@"%@.", v10];
      goto LABEL_73;
    case 0x13uLL:
      v10 = sub_100220A44(value, &unk_101463304, 0x2EuLL, 0);
      v11 = [NSString stringWithFormat:@"(%@)", v10];
      goto LABEL_73;
    case 0x14uLL:
      v10 = sub_100220A44(value, &unk_101463304, 0x2EuLL, 0);
      v11 = [NSString stringWithFormat:@"%@"], v10);
      goto LABEL_73;
    case 0x15uLL:
      v10 = sub_100220A44(value, &unk_101463304, 0x2EuLL, 1);
      v11 = [NSString stringWithFormat:@"%@.", v10];
      goto LABEL_73;
    case 0x16uLL:
      v10 = sub_100220A44(value, &unk_101463304, 0x2EuLL, 1);
      v11 = [NSString stringWithFormat:@"(%@)", v10];
      goto LABEL_73;
    case 0x17uLL:
      v10 = sub_100220A44(value, &unk_101463304, 0x2EuLL, 1);
      v11 = [NSString stringWithFormat:@"%@"], v10);
      goto LABEL_73;
    case 0x18uLL:
      v10 = sub_100220A44(value, &unk_101463360, 0x2FuLL, 0);
      v11 = [NSString stringWithFormat:@"%@.", v10];
      goto LABEL_73;
    case 0x19uLL:
      v10 = sub_100220A44(value, &unk_101463360, 0x2FuLL, 0);
      v11 = [NSString stringWithFormat:@"(%@)", v10];
      goto LABEL_73;
    case 0x1AuLL:
      v10 = sub_100220A44(value, &unk_101463360, 0x2FuLL, 0);
      v11 = [NSString stringWithFormat:@"%@"], v10);
      goto LABEL_73;
    case 0x1BuLL:
      v10 = sub_100220A44(value, &unk_101463360, 0x2FuLL, 1);
      v11 = [NSString stringWithFormat:@"%@.", v10];
      goto LABEL_73;
    case 0x1CuLL:
      v10 = sub_100220A44(value, &unk_101463360, 0x2FuLL, 1);
      v11 = [NSString stringWithFormat:@"(%@)", v10];
      goto LABEL_73;
    case 0x1DuLL:
      v10 = sub_100220A44(value, &unk_101463360, 0x2FuLL, 1);
      v11 = [NSString stringWithFormat:@"%@"], v10);
      goto LABEL_73;
    case 0x1EuLL:
      v7 = sub_10021D420(*&value, 1u);
      v8 = [NSString stringWithFormat:@"%@.", v7];
      goto LABEL_70;
    case 0x1FuLL:
      v7 = sub_10021D420(*&value, 1u);
      v8 = [NSString stringWithFormat:@"(%@)", v7];
      goto LABEL_70;
    case 0x20uLL:
      v7 = sub_10021D420(*&value, 1u);
      v8 = [NSString stringWithFormat:@"%@"], v7);
      goto LABEL_70;
    case 0x21uLL:
      v7 = sub_10021D420(*&value, 2u);
      v8 = [NSString stringWithFormat:@"%@.", v7];
      goto LABEL_70;
    case 0x22uLL:
      v7 = sub_10021D420(*&value, 2u);
      v8 = [NSString stringWithFormat:@"(%@)", v7];
      goto LABEL_70;
    case 0x23uLL:
      v7 = sub_10021D420(*&value, 2u);
      v8 = [NSString stringWithFormat:@"%@"], v7);
      goto LABEL_70;
    case 0x24uLL:
      v7 = sub_10021D420(*&value, 3u);
      v8 = [NSString stringWithFormat:@"%@.", v7];
      goto LABEL_70;
    case 0x25uLL:
      v7 = sub_10021D420(*&value, 3u);
      v8 = [NSString stringWithFormat:@"(%@)", v7];
      goto LABEL_70;
    case 0x26uLL:
      v7 = sub_10021D420(*&value, 3u);
      v8 = [NSString stringWithFormat:@"%@"], v7);
      goto LABEL_70;
    case 0x27uLL:
      v7 = sub_10021D420(*&value, 4u);
      v8 = [NSString stringWithFormat:@"%@.", v7];
      goto LABEL_70;
    case 0x28uLL:
      v7 = sub_10021D420(*&value, 4u);
      v8 = [NSString stringWithFormat:@"(%@)", v7];
      goto LABEL_70;
    case 0x29uLL:
      v7 = sub_10021D420(*&value, 4u);
      v8 = [NSString stringWithFormat:@"%@"], v7);
      goto LABEL_70;
    case 0x2AuLL:
      v7 = sub_10021D420(*&value, 5u);
      v8 = [NSString stringWithFormat:@"%@.", v7];
      goto LABEL_70;
    case 0x2BuLL:
      v7 = sub_10021D420(*&value, 5u);
      v8 = [NSString stringWithFormat:@"(%@)", v7];
      goto LABEL_70;
    case 0x2CuLL:
      v7 = sub_10021D420(*&value, 5u);
      v8 = [NSString stringWithFormat:@"%@"], v7);
      goto LABEL_70;
    case 0x2DuLL:
      v10 = sub_100220A44(value, &unk_1014633BE, 0xEuLL, 0);
      v11 = [NSString stringWithFormat:@"%@.", v10];
      goto LABEL_73;
    case 0x2EuLL:
      v10 = sub_100220A44(value, &unk_1014633BE, 0xEuLL, 0);
      v11 = [NSString stringWithFormat:@"(%@)", v10];
      goto LABEL_73;
    case 0x2FuLL:
      v10 = sub_100220A44(value, &unk_1014633BE, 0xEuLL, 0);
      v11 = [NSString stringWithFormat:@"%@"], v10);
      goto LABEL_73;
    case 0x30uLL:
      v7 = sub_10021D6FC(value);
      v8 = [NSString stringWithFormat:@"%@", v7];
      goto LABEL_70;
    case 0x31uLL:
      v7 = sub_10021D918(value, @"ar");
      v8 = [NSString stringWithFormat:@"%@.", v7];
      goto LABEL_70;
    case 0x32uLL:
      v7 = sub_10021D918(value, @"ar");
      v8 = [NSString stringWithFormat:@"(%@)", v7];
      goto LABEL_70;
    case 0x33uLL:
      v7 = sub_10021D918(value, @"ar");
      v8 = [NSString stringWithFormat:@"%@"], v7);
      goto LABEL_70;
    case 0x34uLL:
      v10 = sub_10021FFCC(value, &unk_1014633FA, 0x1CuLL);
      v11 = [NSString stringWithFormat:@"%@.", v10];
      goto LABEL_73;
    case 0x35uLL:
      v10 = sub_10021FFCC(value, &unk_1014633FA, 0x1CuLL);
      v11 = [NSString stringWithFormat:@"(%@)", v10];
      goto LABEL_73;
    case 0x36uLL:
      v10 = sub_10021FFCC(value, &unk_1014633FA, 0x1CuLL);
      v11 = [NSString stringWithFormat:@"%@"], v10);
      goto LABEL_73;
    case 0x37uLL:
      v7 = sub_10021DB84(value);
      v8 = [NSString stringWithFormat:@"%@.", v7];
      goto LABEL_70;
    case 0x38uLL:
      v7 = sub_10021DB84(value);
      v8 = [NSString stringWithFormat:@"(%@)", v7];
      goto LABEL_70;
    case 0x39uLL:
      v7 = sub_10021DB84(value);
      v8 = [NSString stringWithFormat:@"%@"], v7);
      goto LABEL_70;
    case 0x3AuLL:
      v10 = sub_10021FFCC(value, &unk_101463470, 0x16uLL);
      v11 = [NSString stringWithFormat:@"%@.", v10];
      goto LABEL_73;
    case 0x3BuLL:
      v10 = sub_10021FFCC(value, &unk_101463470, 0x16uLL);
      v11 = [NSString stringWithFormat:@"(%@)", v10];
      goto LABEL_73;
    case 0x3CuLL:
      v10 = sub_10021FFCC(value, &unk_101463470, 0x16uLL);
      v11 = [NSString stringWithFormat:@"%@"], v10);
LABEL_73:
      v12 = v11;

      if (!formatting)
      {
        goto LABEL_74;
      }

      goto LABEL_77;
    case 0x3DuLL:
      v7 = sub_10021DEEC(value);
      v8 = [NSString stringWithFormat:@"%@", v7];
      goto LABEL_70;
    case 0x3EuLL:
      v7 = sub_10021DEEC(value);
      v8 = [NSString stringWithFormat:@"%@.", v7];
      goto LABEL_70;
    case 0x3FuLL:
      v7 = sub_10021DEEC(value);
      v8 = [NSString stringWithFormat:@"(%@)", v7];
      goto LABEL_70;
    case 0x40uLL:
      v7 = sub_10021DEEC(value);
      v8 = [NSString stringWithFormat:@"%@"], v7);
LABEL_70:
      v12 = v8;

      if (formatting)
      {
        goto LABEL_77;
      }

      goto LABEL_74;
    case 0x42uLL:
      v9 = sub_10021D370(value);
      goto LABEL_61;
    case 0x43uLL:
      v9 = sub_10021D2AC(value);
LABEL_61:
      v12 = v9;
      if (formatting)
      {
        goto LABEL_77;
      }

      goto LABEL_74;
    default:
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101335FE4();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101335FF8();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10133608C();
      }

      v15 = off_1019EDA68;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_101335C2C();
      }

      v16 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[NSString(CRLWPAdditions) crlwp_stringForValue:withListNumberFormat:includeFormatting:]");
      v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/NSString+CRLWPAdditions.mm"];
      [CRLAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:1443 isFatal:0 description:"Label format (%lu) invalid for numeric list.", format];

      v12 = &stru_1018BCA28;
      if (formatting)
      {
        goto LABEL_77;
      }

LABEL_74:
      if (qword_101A34880 != -1)
      {
        sub_1013360B4();
      }

      v13 = [(__CFString *)v12 crl_stringByRemovingCharactersInSet:qword_101A34878];

      v12 = v13;
LABEL_77:

      return v12;
  }
}

- (BOOL)crlwp_NSDetectorMatchStringIsStrictPhoneNumber
{
  v3 = +[NSCharacterSet letterCharacterSet];
  v4 = [(NSString *)self rangeOfCharacterFromSet:v3];

  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    return 1;
  }

  v5 = +[NSCharacterSet punctuationCharacterSet];
  v6 = [(NSString *)self rangeOfCharacterFromSet:v5];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL || [(NSString *)self length]&& !u_charDigitValue([(NSString *)self crlwp_utf32CharacterAtIndex:0]))
  {
    return 1;
  }

  v7 = +[NSCharacterSet whitespaceCharacterSet];
  v8 = [(NSString *)self componentsSeparatedByCharactersInSet:v7];

  if ([v8 count] < 2)
  {
    v15 = 0;
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = 0;
      v12 = *v18;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v17 + 1) + 8 * i);
          if ([v14 length] > 3)
          {
            v15 = 1;
            goto LABEL_22;
          }

          if ([v14 length] <= 2)
          {
            v15 = 1;
            if (v11)
            {
              goto LABEL_22;
            }

            v11 = 1;
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v15 = 0;
LABEL_22:
  }

  return v15;
}

- (int)crlwp_contentsScript
{
  v3 = [(NSString *)self length];

  return [(NSString *)self crlwp_contentsScriptInRange:0, v3];
}

- (int)crlwp_contentsScriptInRange:(_NSRange)range
{
  if (!range.length)
  {
    return 0;
  }

  length = range.length;
  location = range.location;
  if (range.location >= [(NSString *)self length])
  {
    return 0;
  }

  v6 = [(NSString *)self characterAtIndex:location];
  v7 = v6;
  v8 = 1;
  if (length != 1 && (v6 & 0xFC00) == 0xD800)
  {
    v9 = [(NSString *)self characterAtIndex:location + 1];
    v8 = (v9 & 0xFC00) == 0xDC00 ? 2 : 1;
    if ((v9 & 0xFC00) == 0xDC00)
    {
      v7 = v9 + (v7 << 10) - 56613888;
    }
  }

  v10 = sub_10027DB34(v7);
  if (v10 && length > v8)
  {
    theString = self;
    v31 = v8 + location;
    v32 = length - v8;
    CharactersPtr = CFStringGetCharactersPtr(self);
    if (CharactersPtr)
    {
      CStringPtr = 0;
    }

    else
    {
      CStringPtr = CFStringGetCStringPtr(self, 0x600u);
    }

    v13 = 0;
    v33 = 0;
    v34 = 0;
    v30 = CStringPtr;
    while (1)
    {
      v14 = v32;
      if (v32 <= v13)
      {
        break;
      }

      if (CharactersPtr)
      {
        v15 = CharactersPtr[v31 + v13];
      }

      else if (v30)
      {
        v15 = v30[v31 + v13];
      }

      else
      {
        v16 = v33;
        if (v34 <= v13 || v33 > v13)
        {
          v18 = v13 - 4;
          if (v13 < 4)
          {
            v18 = 0;
          }

          if (v18 + 64 < v32)
          {
            v14 = v18 + 64;
          }

          v33 = v18;
          v34 = v14;
          v35.length = v14 - v18;
          v35.location = v31 + v18;
          CFStringGetCharacters(theString, v35, buffer);
          v16 = v33;
        }

        v15 = buffer[v13 - v16];
      }

      v19 = v15;
      if (!v15)
      {
        break;
      }

      v20 = v13 + 1;
      if (v15 >> 10 == 54)
      {
        v21 = v32;
        if (v32 > v20)
        {
          if (CharactersPtr)
          {
            v22 = CharactersPtr[v31 + v20];
          }

          else if (v30)
          {
            v22 = v30[v31 + v20];
          }

          else
          {
            if (v34 <= v20 || (v23 = v33, v33 > v20))
            {
              v24 = v13 - 3;
              if (v13 < 3)
              {
                v24 = 0;
              }

              if (v24 + 64 < v32)
              {
                v21 = v24 + 64;
              }

              v33 = v24;
              v34 = v21;
              v36.length = v21 - v24;
              v36.location = v31 + v24;
              CFStringGetCharacters(theString, v36, buffer);
              v23 = v33;
            }

            v22 = buffer[v20 - v23];
          }

          v25 = v22 >> 10;
          v26 = (v19 << 10) - 56613888 + v22;
          if (v25 == 55)
          {
            v20 = v13 + 2;
          }

          else
          {
            v20 = v13 + 1;
          }

          if (v25 == 55)
          {
            v19 = v26;
          }
        }
      }

      v13 = v20;
      if (sub_10027DB34(v19) != v10)
      {
        return 1;
      }
    }
  }

  return v10;
}

+ (id)crlwp_stringForValue:(unsigned int)value withPageNumberFormat:(int)format
{
  v4 = 0;
  if (format > 2)
  {
    switch(format)
    {
      case 3:
        v4 = sub_10021FFCC(value, aAbcdefghijklmn_0, 0x1AuLL);
        break;
      case 4:
        v4 = sub_10021D308(value);
        break;
      case 5:
        v4 = sub_10021D918(value, @"ar");
        break;
    }
  }

  else if (format)
  {
    if (format == 1)
    {
      v4 = sub_10021D084(value);
    }

    else if (format == 2)
    {
      v4 = sub_10021D2AC(value);
    }
  }

  else
  {
    v4 = sub_10021CEBC(value);
  }

  return v4;
}

- (unsigned)crlwp_utf32CharacterAtIndex:(unint64_t)index
{
  v5 = [(NSString *)self length];
  if (v5 <= index)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101336788();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10133679C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101336824();
    }

    v11 = off_1019EDA68;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_101335C2C();
    }

    v12 = [NSString stringWithUTF8String:"[NSString(CRLWPAdditions) crlwp_utf32CharacterAtIndex:]"];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/NSString+CRLWPAdditions.mm"];
    [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:1640 isFatal:0 description:"index out of bounds"];

    return 0;
  }

  else
  {
    v6 = v5;
    v7 = [(NSString *)self characterAtIndex:index];
    if ((v7 & 0xFC00) == 0xDC00)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101336910();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101336924();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013369AC();
      }

      v8 = off_1019EDA68;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_101335C2C();
      }

      v9 = [NSString stringWithUTF8String:"[NSString(CRLWPAdditions) crlwp_utf32CharacterAtIndex:]"];
      v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/NSString+CRLWPAdditions.mm"];
      [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:1644 isFatal:0 description:"index inside surrogate pair"];
    }

    else if (index + 1 < v6 && (v7 & 0xFC00) == 0xD800)
    {
      v15 = [(NSString *)self characterAtIndex:?];
      if ((v15 & 0xFC00) == 0xDC00)
      {
        return v15 + (v7 << 10) - 56613888;
      }

      else
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10133684C();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_101336860();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_1013368E8();
        }

        v16 = off_1019EDA68;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          +[CRLAssertionHandler packedBacktraceString];
          objc_claimAutoreleasedReturnValue();
          sub_101335C2C();
        }

        v17 = [NSString stringWithUTF8String:"[NSString(CRLWPAdditions) crlwp_utf32CharacterAtIndex:]"];
        v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/NSString+CRLWPAdditions.mm"];
        [CRLAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:1648 isFatal:0 description:"invalid surrogate pair"];
      }
    }
  }

  return v7;
}

- (unsigned)crlwp_utf32CharacterAtIndex:(unint64_t)index planeClassification:(int64_t *)classification
{
  v7 = [(NSString *)self length];
  v8 = [(NSString *)self characterAtIndex:index];
  if ((v8 & 0xFC00) == 0xD800)
  {
    if (classification)
    {
      *classification = 1;
    }

    if (v7 - 1 == index)
    {
      v11 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101336A10();
      }

      v12 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        *buf = 67110402;
        v32 = v11;
        v33 = 2082;
        v34 = "[NSString(CRLWPAdditions) crlwp_utf32CharacterAtIndex:planeClassification:]";
        v35 = 2082;
        v36 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/NSString+CRLWPAdditions.mm";
        v37 = 1024;
        v38 = 1717;
        v39 = 1024;
        v40 = v8;
        v41 = 2048;
        indexCopy3 = index;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Invalid surrogate pair (single code point=0x%x, index=%lu)", buf, 0x32u);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101336A24();
      }

      v13 = off_1019EDA68;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_101335C2C();
      }

      v14 = [NSString stringWithUTF8String:"[NSString(CRLWPAdditions) crlwp_utf32CharacterAtIndex:planeClassification:]"];
      v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/NSString+CRLWPAdditions.mm"];
      [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:1717 isFatal:0 description:"Invalid surrogate pair (single code point=0x%x, index=%lu)", v8, index];
    }

    else
    {
      v16 = [(NSString *)self characterAtIndex:index + 1];
      if ((v16 & 0xFC00) == 0xDC00)
      {
        v10 = v16 + (v8 << 10);
        goto LABEL_24;
      }

      v25 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013369D4();
      }

      v26 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        *buf = 67110402;
        v32 = v25;
        v33 = 2082;
        v34 = "[NSString(CRLWPAdditions) crlwp_utf32CharacterAtIndex:planeClassification:]";
        v35 = 2082;
        v36 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/NSString+CRLWPAdditions.mm";
        v37 = 1024;
        v38 = 1725;
        v39 = 1024;
        v40 = v8;
        v41 = 2048;
        indexCopy3 = index;
        _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Invalid surrogate pair (single code point=0x%x, index=%lu)", buf, 0x32u);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013369E8();
      }

      v27 = off_1019EDA68;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_101335C2C();
      }

      v28 = [NSString stringWithUTF8String:"[NSString(CRLWPAdditions) crlwp_utf32CharacterAtIndex:planeClassification:]"];
      v29 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/NSString+CRLWPAdditions.mm"];
      [CRLAssertionHandler handleFailureInFunction:v28 file:v29 lineNumber:1725 isFatal:0 description:"Invalid surrogate pair (single code point=0x%x, index=%lu)", v8, index];
    }
  }

  else if ((v8 & 0xFC00) == 0xDC00)
  {
    if (classification)
    {
      *classification = 2;
    }

    if (index)
    {
      v9 = [(NSString *)self characterAtIndex:index - 1];
      if ((v9 & 0xFC00) == 0xD800)
      {
        v10 = v8 + (v9 << 10);
LABEL_24:
        LODWORD(v8) = v10 - 56613888;
        return v8;
      }

      v20 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101336A4C();
      }

      v21 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        *buf = 67110402;
        v32 = v20;
        v33 = 2082;
        v34 = "[NSString(CRLWPAdditions) crlwp_utf32CharacterAtIndex:planeClassification:]";
        v35 = 2082;
        v36 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/NSString+CRLWPAdditions.mm";
        v37 = 1024;
        v38 = 1706;
        v39 = 1024;
        v40 = v8;
        v41 = 2048;
        indexCopy3 = index;
        _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Invalid surrogate pair (single code point=0x%x, index=%lu)", buf, 0x32u);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101336A60();
      }

      v22 = off_1019EDA68;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_101335C2C();
      }

      v23 = [NSString stringWithUTF8String:"[NSString(CRLWPAdditions) crlwp_utf32CharacterAtIndex:planeClassification:]"];
      v24 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/NSString+CRLWPAdditions.mm"];
      [CRLAssertionHandler handleFailureInFunction:v23 file:v24 lineNumber:1706 isFatal:0 description:"Invalid surrogate pair (single code point=0x%x, index=%lu)", v8, index];
    }

    else
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101336A88();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101336A9C();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101336B44();
      }

      v17 = off_1019EDA68;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_101335C2C();
      }

      v18 = [NSString stringWithUTF8String:"[NSString(CRLWPAdditions) crlwp_utf32CharacterAtIndex:planeClassification:]"];
      v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/NSString+CRLWPAdditions.mm"];
      [CRLAssertionHandler handleFailureInFunction:v18 file:v19 lineNumber:1698 isFatal:0 description:"Invalid surrogate pair (single code point=0x%x, index=%lu)", v8, 0];
    }
  }

  else if (classification)
  {
    *classification = 0;
  }

  return v8;
}

- (BOOL)crlwp_containsIdeographs
{
  theString = self;
  v24 = 0;
  v25 = [(NSString *)self length];
  CharactersPtr = CFStringGetCharactersPtr(theString);
  CStringPtr = 0;
  v22 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(self, 0x600u);
  }

  v5 = 0;
  v26 = 0;
  v27 = 0;
  v23 = CStringPtr;
  while (1)
  {
    v6 = v25;
    if (v25 <= v5)
    {
      break;
    }

    if (v22)
    {
      v7 = v22[v24 + v5];
    }

    else if (v23)
    {
      v7 = v23[v24 + v5];
    }

    else
    {
      v8 = v26;
      if (v27 <= v5 || v26 > v5)
      {
        v10 = v5 - 4;
        if (v5 < 4)
        {
          v10 = 0;
        }

        if (v10 + 64 < v25)
        {
          v6 = v10 + 64;
        }

        v26 = v10;
        v27 = v6;
        v28.length = v6 - v10;
        v28.location = v24 + v10;
        CFStringGetCharacters(theString, v28, buffer);
        v8 = v26;
      }

      v7 = buffer[v5 - v8];
    }

    v11 = v7;
    if (!v7)
    {
      break;
    }

    v12 = v5 + 1;
    if (v7 >> 10 == 54)
    {
      v13 = v25;
      if (v25 > v12)
      {
        if (v22)
        {
          v14 = v22[v24 + v12];
        }

        else if (v23)
        {
          v14 = v23[v24 + v12];
        }

        else
        {
          if (v27 <= v12 || (v15 = v26, v26 > v12))
          {
            v16 = v5 - 3;
            if (v5 < 3)
            {
              v16 = 0;
            }

            if (v16 + 64 < v25)
            {
              v13 = v16 + 64;
            }

            v26 = v16;
            v27 = v13;
            v29.length = v13 - v16;
            v29.location = v24 + v16;
            CFStringGetCharacters(theString, v29, buffer);
            v15 = v26;
          }

          v14 = buffer[v12 - v15];
        }

        v17 = v14 >> 10;
        v18 = (v11 << 10) + v14 - 56613888;
        if (v17 == 55)
        {
          v12 = v5 + 2;
        }

        else
        {
          v12 = v5 + 1;
        }

        if (v17 == 55)
        {
          v11 = v18;
        }
      }
    }

    v5 = v12;
    if (sub_10027DB34(v11) == 6)
    {
      return 1;
    }
  }

  return 0;
}

- (BOOL)crlwp_isLowerCaseFromIndex:(unint64_t)index
{
  v5 = [(NSString *)self length];
  v6 = v5 - index;
  if (v5 <= index)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101336B6C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101336B80();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101336C08();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_101335C2C();
    }

    v10 = [NSString stringWithUTF8String:"[NSString(CRLWPAdditions) crlwp_isLowerCaseFromIndex:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/NSString+CRLWPAdditions.mm"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:1767 isFatal:0 description:"index is out of bounds"];

    return 1;
  }

  else
  {
    v7 = +[NSCharacterSet uppercaseLetterCharacterSet];
    v8 = [(NSString *)self rangeOfCharacterFromSet:v7 options:2 range:index, v6]== 0x7FFFFFFFFFFFFFFFLL;
  }

  return v8;
}

- (id)crlwp_stringWithAddedIsolatesBasedOn:(int64_t)on
{
  if ([(NSString *)self length]>= 2 && (on == -1 || sub_100281084(self) != on))
  {
    v5 = [NSString stringWithFormat:@"⁨%@⁩", self];
  }

  else
  {
    v5 = [(NSString *)self copy];
  }

  return v5;
}

- (id)crlwp_stringWithUnambiguousNeutralEnding
{
  v3 = [(NSString *)self length];
  v4 = v3 - 1;
  if (v3 <= 1 || (v5 = v3, v6 = sub_100281084(self), v6 == -1) || (v7 = v6, v8 = [(NSString *)self crlwp_utf32CharacterAtIndex:v4 planeClassification:0], v8 >= 0x10000) && v5 == 2 || sub_100281034(v8) != 6)
  {
    v10 = [(NSString *)self copy];
  }

  else
  {
    if (v7)
    {
      v9 = @"\u200F";
    }

    else
    {
      v9 = @"\u200E";
    }

    v10 = [(NSString *)self stringByAppendingString:v9];
  }

  return v10;
}

- (id)crlwp_stringWithoutControlCharacters
{
  v2 = [(NSString *)self mutableCopy];
  v3 = +[NSCharacterSet controlCharacterSet];
  while (1)
  {
    v5 = [v2 rangeOfCharacterFromSet:v3];
    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    [v2 deleteCharactersInRange:{v5, v4}];
  }

  v6 = [v2 copy];

  return v6;
}

+ (id)crl_regexStringForSearchString:(id)string options:(unint64_t)options
{
  optionsCopy = options;
  stringCopy = string;
  v6 = +[NSCharacterSet characterSetWithCharactersInString:](NSCharacterSet, "characterSetWithCharactersInString:", @"*?+[(){}^$|\\./");
  v7 = [NSCharacterSet characterSetWithCharactersInString:@"“”"];
  v8 = [NSCharacterSet characterSetWithCharactersInString:@"'‘’"];
  v9 = +[NSMutableString string];
  if ([stringCopy length])
  {
    for (i = 0; i < [stringCopy length]; ++i)
    {
      v11 = [stringCopy characterAtIndex:i];
      if ([v6 characterIsMember:v11])
      {
        [v9 appendFormat:@"\\%C", v11];
      }

      else
      {
        if ((optionsCopy & 0x10) != 0)
        {
          if ([v7 characterIsMember:v11])
          {
            v12 = v9;
            v13 = @"[“”]";
LABEL_11:
            [v12 appendFormat:v13, v29];
            continue;
          }

          if ([v8 characterIsMember:v11])
          {
            v12 = v9;
            v13 = @"['‘’]";
            goto LABEL_11;
          }
        }

        [v9 appendFormat:@"%C", v11];
      }
    }
  }

  if ((optionsCopy & 8) != 0)
  {
    v14 = [NSRegularExpression regularExpressionWithPattern:@"\\b" options:0 error:0];
    if (v14)
    {
      crl_range = [stringCopy crl_range];
      v17 = [v14 matchesInString:stringCopy options:0 range:{crl_range, v16}];
      if ([v17 count])
      {
        v18 = [v17 objectAtIndex:0];
        range = [v18 range];
        v21 = range | v20;

        if (!v21)
        {
          v22 = [NSMutableString stringWithFormat:@"\\b%@", v9];

          v9 = v22;
        }
      }

      if ([v17 count])
      {
        lastObject = [v17 lastObject];
        range2 = [lastObject range];
        v30 = v25;
        v26 = [stringCopy length];

        if (range2 == v26 && !v30)
        {
          v27 = [NSMutableString stringWithFormat:@"%@\\b", v9];

          v9 = v27;
        }
      }
    }
  }

  return v9;
}

- (_NSRange)crl_rangeOfString:(id)string searchOptions:(unint64_t)options updatingSearchRange:(_NSRange *)range
{
  v8 = options & 1;
  stringCopy = string;
  if ((options & 4) != 0)
  {
    v11 = [(NSString *)self crl_rangeOfString:stringCopy options:v8 | 4 updatingSearchRange:range];
    v13 = v14;
  }

  else
  {
    v10 = [objc_opt_class() crl_regexStringForSearchString:stringCopy options:options];

    v11 = [(NSString *)self crl_rangeOfString:v10 options:v8 | 0x400 updatingSearchRange:range];
    v13 = v12;
    stringCopy = v10;
  }

  v15 = v11;
  v16 = v13;
  result.length = v16;
  result.location = v15;
  return result;
}

- (id)crl_stringByCapitalizingToMatchString:(id)string range:(_NSRange)range searchOptions:(unint64_t)options
{
  optionsCopy = options;
  length = range.length;
  location = range.location;
  stringCopy = string;
  selfCopy = self;
  v11 = [(NSString *)selfCopy length];
  if ((optionsCopy & 1) != 0 && v11 >= 2 && length >= 2)
  {
    v12 = +[NSCharacterSet lowercaseLetterCharacterSet];
    v13 = +[NSCharacterSet uppercaseLetterCharacterSet];
    v14 = [(NSString *)selfCopy characterAtIndex:0];
    v15 = [stringCopy characterAtIndex:location];
    if ([v12 characterIsMember:v14] && objc_msgSend(v13, "characterIsMember:", v15))
    {
      v16 = [(NSString *)selfCopy substringWithRange:0, 1];
      capitalizedString = [v16 capitalizedString];

      if ([capitalizedString length])
      {
        v18 = [(NSString *)selfCopy mutableCopy];
        [v18 replaceCharactersInRange:0 withString:{1, capitalizedString}];

        selfCopy = v18;
      }
    }
  }

  return selfCopy;
}

- (id)crl_stringByReplacingOccurrencesOfString:(id)string withString:(id)withString searchOptions:(unint64_t)options range:(_NSRange)range replacementCount:(unint64_t *)count
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  withStringCopy = withString;
  selfCopy = self;
  v29 = location;
  v30 = length;
  v27 = selfCopy;
  if (length)
  {
    v15 = 0;
    v16 = 0;
    v17 = selfCopy;
    do
    {
      v18 = [(NSString *)v17 crl_rangeOfString:stringCopy searchOptions:options updatingSearchRange:&v29, v27];
      if (v18 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v20 = v18;
        v21 = v19;
        if (!v16)
        {
          v16 = [(NSString *)v17 mutableCopy];

          v17 = v16;
        }

        v22 = [withStringCopy crl_stringByCapitalizingToMatchString:v17 range:v20 searchOptions:{v21, options}];
        [(NSString *)v16 replaceCharactersInRange:v20 withString:v21, v22];
        ++v15;
        v23 = [withStringCopy length];
        v29 += &v23[-v21];
      }
    }

    while (v30);
  }

  else
  {
    v16 = 0;
    v15 = 0;
    v17 = selfCopy;
  }

  if (count)
  {
    *count = v15;
  }

  if (v16)
  {
    v24 = v16;
  }

  else
  {
    v24 = v27;
  }

  v25 = v24;

  return v25;
}

- (id)crl_filenameFromDisplayNameWithExtension:(id)extension characterLimit:(unint64_t)limit
{
  extensionCopy = extension;
  v7 = [(NSString *)self stringByReplacingOccurrencesOfString:@"/" withString:@":"];
  v8 = [v7 crl_tolerantStringByAppendingPathExtension:extensionCopy];

  v9 = [v8 crl_filenameTruncatedToCharacterLimit:limit];

  return v9;
}

- (id)crl_filenameTruncatedToCharacterLimit:(unint64_t)limit
{
  selfCopy = self;
  if (strlen([(NSString *)selfCopy fileSystemRepresentation]) > limit)
  {
    stringByDeletingPathExtension = [(NSString *)selfCopy stringByDeletingPathExtension];
    v6 = [stringByDeletingPathExtension length];
    v7 = [(NSString *)selfCopy substringFromIndex:v6];
    v8 = v6 - 1;
    do
    {
      v9 = [stringByDeletingPathExtension rangeOfComposedCharacterSequencesForRange:{0, v8}];
      v11 = [stringByDeletingPathExtension substringWithRange:{v9, v10}];
      v12 = [v11 stringByAppendingString:v7];

      if (!v8)
      {
        break;
      }

      --v8;
      stringByDeletingPathExtension = v12;
    }

    while (strlen([v12 fileSystemRepresentation]) > limit);
    v13 = +[NSCharacterSet whitespaceCharacterSet];
    v14 = [v12 stringByTrimmingCharactersInSet:v13];

    selfCopy = v14;
  }

  return selfCopy;
}

- (id)crl_displayNameFromFilenameDeletingPathExtension:(BOOL)extension
{
  if (extension)
  {
    selfCopy = [(NSString *)self stringByDeletingPathExtension];
  }

  else
  {
    selfCopy = self;
  }

  v4 = selfCopy;
  v5 = [(NSString *)selfCopy stringByReplacingOccurrencesOfString:@":" withString:@"/"];

  return v5;
}

- (id)crl_initialsWithLimit:(unint64_t)limit
{
  if ([(NSString *)self canBeConvertedToEncoding:5])
  {
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x2020000000;
    v16[3] = 0;
    v5 = +[NSMutableString string];
    v6 = +[NSCharacterSet punctuationCharacterSet];
    v7 = [(NSString *)self crl_stringByRemovingCharactersInSet:v6];

    v8 = [v7 length];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100420358;
    v12[3] = &unk_1018615D8;
    v9 = v5;
    v13 = v9;
    v14 = v16;
    limitCopy = limit;
    [v7 enumerateSubstringsInRange:0 options:v8 usingBlock:{1027, v12}];
    uppercaseString = [v9 uppercaseString];

    _Block_object_dispose(v16, 8);
  }

  else
  {
    uppercaseString = 0;
  }

  return uppercaseString;
}

- (id)crl_nameByConvertingFirstNameToInitials
{
  if ([(NSString *)self canBeConvertedToEncoding:5])
  {
    v3 = +[NSMutableString string];
    v4 = [(NSString *)self length];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1004204D8;
    v8[3] = &unk_101861600;
    v5 = v3;
    v9 = v5;
    selfCopy = self;
    [(NSString *)self enumerateSubstringsInRange:0 options:v4 usingBlock:1027, v8];
    selfCopy2 = v5;
  }

  else
  {
    selfCopy2 = self;
  }

  return selfCopy2;
}

- (NSString)crl_stringByEscapingForSpotlightSearch
{
  decomposedStringWithCanonicalMapping = [(NSString *)self decomposedStringWithCanonicalMapping];
  v3 = +[NSCharacterSet whitespaceCharacterSet];
  v4 = [decomposedStringWithCanonicalMapping stringByTrimmingCharactersInSet:v3];
  v5 = [v4 mutableCopy];

  [v5 replaceOccurrencesOfString:@"\ withString:@"\\\ options:0 range:{0, objc_msgSend(v5, "length")}];
  [v5 replaceOccurrencesOfString:@" withString:@"\ options:0 range:{0, objc_msgSend(v5, "length")}];
  [v5 replaceOccurrencesOfString:@"'" withString:@"\\'" options:0 range:{0, objc_msgSend(v5, "length")}];
  [v5 replaceOccurrencesOfString:@"*" withString:@"\\*" options:0 range:{0, objc_msgSend(v5, "length")}];

  return v5;
}

+ (id)crl_stringWithUUID
{
  v2 = CFUUIDCreate(0);
  if (v2)
  {
    v3 = v2;
    v4 = CFUUIDCreateString(0, v2);
    CFRelease(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)crl_stringWithFormat:(id)format arguments:(char *)arguments
{
  formatCopy = format;
  v6 = [[NSString alloc] initWithFormat:formatCopy arguments:arguments];

  return v6;
}

+ (id)crl_stringByIndentingString:(id)string times:(unint64_t)times
{
  stringCopy = string;
  v6 = [stringCopy length];
  if (times && v6)
  {
    do
    {
      v7 = [stringCopy stringByReplacingOccurrencesOfString:@"\n" withString:@"\n  "];

      if ([v7 hasSuffix:@"\n  "])
      {
        v8 = [v7 substringToIndex:{objc_msgSend(v7, "length") - 2}];

        v7 = v8;
      }

      stringCopy = [@"  " stringByAppendingString:v7];

      --times;
    }

    while (times);
  }

  v9 = stringCopy;

  return stringCopy;
}

- (id)crl_pathExceptPrivate
{
  if ([(NSString *)self rangeOfString:@"/private"])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [(NSString *)self substringFromIndex:v3];
  }

  return selfCopy;
}

- (id)crl_stringByExpandingTableFormatting
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(NSString *)self componentsSeparatedByString:@"$"];
  v5 = +[NSMutableArray array];
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v65 objects:v70 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v66;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v66 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [*(*(&v65 + 1) + 8 * i) componentsSeparatedByString:@"|"];
        [v5 addObject:v12];
        v13 = [v12 count];
        if (v9 <= v13)
        {
          v9 = v13;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v65 objects:v70 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  lastObject = [v5 lastObject];
  if ([lastObject count] == 1)
  {
    lastObject2 = [v5 lastObject];
    v16 = [lastObject2 objectAtIndexedSubscript:0];
    v17 = [v16 length];

    if (!v17)
    {
      [v5 removeLastObject];
    }
  }

  else
  {
  }

  if (v9)
  {
    v51 = v6;
    v52 = v3;
    v18 = malloc_type_calloc(8uLL, v9, 0xAF3A5CA8uLL);
    v60 = malloc_type_calloc(8uLL, [v5 count], 0xA79BA8DDuLL);
    v55 = v5;
    if ([v5 count])
    {
      v19 = 0;
      v20 = 0;
      do
      {
        v53 = v20;
        [v5 objectAtIndexedSubscript:v19];
        v58 = v56 = v19;
        v21 = 0;
        v22 = 0;
        do
        {
          v23 = &stru_1018BCA28;
          if ([v58 count] > v21)
          {
            v23 = [v58 objectAtIndexedSubscript:v21];
          }

          v24 = [(__CFString *)v23 componentsSeparatedByString:@"\n"];
          v25 = v60[v19];
          v26 = [v24 count];
          if (v25 <= v26)
          {
            v27 = v26;
          }

          else
          {
            v27 = v25;
          }

          v60[v19] = v27;
          v61 = 0u;
          v62 = 0u;
          v63 = 0u;
          v64 = 0u;
          v28 = v24;
          v29 = [v28 countByEnumeratingWithState:&v61 objects:v69 count:16];
          if (v29)
          {
            v30 = v29;
            v31 = *v62;
            do
            {
              for (j = 0; j != v30; j = j + 1)
              {
                if (*v62 != v31)
                {
                  objc_enumerationMutation(v28);
                }

                v33 = v18[v21];
                v34 = [*(*(&v61 + 1) + 8 * j) length];
                if (v33 <= v34)
                {
                  v35 = v34;
                }

                else
                {
                  v35 = v33;
                }

                v18[v21] = v35;
              }

              v30 = [v28 countByEnumeratingWithState:&v61 objects:v69 count:16];
            }

            while (v30);
          }

          v21 = ++v22;
          v19 = v56;
        }

        while (v9 > v22);

        v19 = (v53 + 1);
        v5 = v55;
        v36 = [v55 count];
        v20 = v53 + 1;
      }

      while (v36 > v19);
    }

    v9 = objc_alloc_init(NSMutableString);
    if ([v5 count])
    {
      v37 = 0;
      v38 = 0;
      do
      {
        v54 = v38;
        v39 = [v5 objectAtIndexedSubscript:v37];
        if (v60[v37])
        {
          v40 = 0;
          v41 = 0;
          v57 = v37;
          do
          {
            v59 = v41;
            if ([v39 count])
            {
              v42 = 0;
              v43 = 1;
              do
              {
                v44 = &stru_1018BCA28;
                if ([v39 count] > v42)
                {
                  v44 = [v39 objectAtIndexedSubscript:v42];
                }

                v45 = [(__CFString *)v44 componentsSeparatedByString:@"\n"];
                v46 = &stru_1018BCA28;
                if ([v45 count] > v40)
                {
                  v46 = [v45 objectAtIndexedSubscript:v40];
                }

                v47 = [(__CFString *)v46 stringByPaddingToLength:v18[v42] + 1 withString:@" " startingAtIndex:0];
                [v9 appendString:v47];

                v42 = v43;
              }

              while ([v39 count] > v43++);
            }

            [v9 appendString:@"\n"];
            v40 = (v59 + 1);
            v41 = v59 + 1;
          }

          while (v60[v57] > v40);
        }

        v37 = (v54 + 1);
        v5 = v55;
        v49 = [v55 count];
        v38 = v54 + 1;
      }

      while (v49 > v37);
    }

    free(v60);
    free(v18);
    v6 = v51;
    v3 = v52;
  }

  objc_autoreleasePoolPop(v3);

  return v9;
}

- (id)crl_stringQuotedIfContainsCharacterSet:(id)set
{
  selfCopy = self;
  if ([(NSString *)selfCopy rangeOfCharacterFromSet:set]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [(NSString *)selfCopy mutableCopy];
    [v5 replaceOccurrencesOfString:@" withString:@" options:0 range:{0, -[NSString length](selfCopy, "length")}];
    [v5 appendString:@""];
    [v5 insertString:@"" atIndex:0];

    selfCopy = v5;
  }

  return selfCopy;
}

- (id)crl_stringByAppendingSeparator:(id)separator format:(id)format
{
  separatorCopy = separator;
  v7 = [NSString crl_stringWithFormat:format arguments:&v11];
  if ([(NSString *)self length])
  {
    v8 = [(NSString *)self stringByAppendingFormat:@"%@%@", separatorCopy, v7];

    v7 = v8;
  }

  return v7;
}

- (id)crl_stringByUniquingPathInsideDirectory:(id)directory withFormat:(id)format
{
  directoryCopy = directory;
  formatCopy = format;
  if (!directoryCopy)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136FDB0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136FDC4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136FE5C();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v8);
    }

    v9 = [NSString stringWithUTF8String:"[NSString(CRLAdditions) crl_stringByUniquingPathInsideDirectory:withFormat:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/NSString_CRLAdditions.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:279 isFatal:0 description:"invalid nil value for '%{public}s'", "directoryPath"];
  }

  selfCopy = self;
  v12 = +[NSFileManager defaultManager];
  v13 = [directoryCopy stringByAppendingPathComponent:selfCopy];
  v14 = [v12 fileExistsAtPath:v13];

  if (v14)
  {
    context = objc_autoreleasePoolPush();
    pathExtension = [(NSString *)selfCopy pathExtension];
    if (pathExtension)
    {
      v16 = pathExtension;
      if ([(__CFString *)pathExtension length])
      {
        v17 = [@"." stringByAppendingString:v16];

        v16 = v17;
      }
    }

    else
    {
      v16 = &stru_1018BCA28;
    }

    stringByDeletingPathExtension = [(NSString *)selfCopy stringByDeletingPathExtension];
    v19 = 2;
    do
    {
      v20 = selfCopy;
      v21 = (v19 + 1);
      selfCopy = [NSString stringWithFormat:formatCopy, stringByDeletingPathExtension, v19, v16];

      v22 = [directoryCopy stringByAppendingPathComponent:selfCopy];
      v23 = [v12 fileExistsAtPath:v22];

      v19 = v21;
    }

    while ((v23 & 1) != 0);

    objc_autoreleasePoolPop(context);
  }

  return selfCopy;
}

- (id)crl_stringByFixingBrokenSurrogatePairs
{
  selfCopy = self;
  v3 = [(__CFString *)selfCopy length];
  theString = selfCopy;
  v31 = 0;
  v32 = v3;
  CharactersPtr = CFStringGetCharactersPtr(selfCopy);
  CStringPtr = 0;
  v29 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(selfCopy, 0x600u);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v33 = 0;
  v34 = 0;
  v30 = CStringPtr;
  if (v3 >= 1)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      if ((v8 & 0x8000000000000000) == 0)
      {
        v9 = v32;
        if (v32 > v8)
        {
          if (v29)
          {
            v10 = v29[v31 + v8];
          }

          else if (v30)
          {
            v10 = v30[v31 + v8];
          }

          else
          {
            if (v34 <= v8 || v6 > v8)
            {
              v11 = v8 - 4;
              if (v8 < 4)
              {
                v11 = 0;
              }

              if (v11 + 64 < v32)
              {
                v9 = v11 + 64;
              }

              v33 = v11;
              v34 = v9;
              v36.length = v9 - v11;
              v36.location = v31 + v11;
              CFStringGetCharacters(theString, v36, &v20);
              v6 = v33;
            }

            v10 = *(&v20 + v8 - v6);
          }

          v12 = v10 & 0xFC00;
          if (v12 == 56320)
          {
LABEL_37:
            if (!v7)
            {
              v7 = [(__CFString *)selfCopy mutableCopyWithZone:0, v20, v21, v22, v23, v24, v25, v26, v27];

              selfCopy = v7;
            }

            [(__CFString *)v7 replaceCharactersInRange:v8 withString:1, @"\uFFFD", v20, v21, v22, v23, v24, v25, v26, v27];
            v3 = [(__CFString *)selfCopy length];
            theString = selfCopy;
            v31 = 0;
            v32 = v3;
            v17 = CFStringGetCharactersPtr(selfCopy);
            v18 = 0;
            v29 = v17;
            if (!v17)
            {
              v18 = CFStringGetCStringPtr(selfCopy, 0x600u);
            }

            v6 = 0;
            v30 = v18;
            v33 = 0;
            v34 = 0;
            goto LABEL_42;
          }

          if (v12 == 55296)
          {
            v13 = v8 + 1;
            if (v8 + 1 >= v3)
            {
              goto LABEL_37;
            }

            v14 = v32;
            if (v32 <= v13)
            {
              goto LABEL_37;
            }

            if (v29)
            {
              v15 = v29[v31 + v13];
            }

            else if (v30)
            {
              v15 = v30[v31 + v13];
            }

            else
            {
              if (v34 <= v13 || v6 > v13)
              {
                v16 = v8 - 3;
                if (v8 < 3)
                {
                  v16 = 0;
                }

                if (v16 + 64 < v32)
                {
                  v14 = v16 + 64;
                }

                v33 = v16;
                v34 = v14;
                v37.length = v14 - v16;
                v37.location = v31 + v16;
                CFStringGetCharacters(theString, v37, &v20);
                v6 = v33;
              }

              v15 = *(&v20 + v13 - v6);
            }

            if (v15 >> 10 != 55)
            {
              goto LABEL_37;
            }

            ++v8;
          }
        }
      }

LABEL_42:
      if (++v8 >= v3)
      {

        break;
      }
    }
  }

  return selfCopy;
}

- (id)crl_stringByRemovingCharactersInSet:(id)set options:(unsigned int)options
{
  setCopy = set;
  if (setCopy)
  {
    selfCopy = self;
    if ([(NSString *)selfCopy rangeOfCharacterFromSet:setCopy]== 0x7FFFFFFFFFFFFFFFLL)
    {
      selfCopy2 = selfCopy;
    }

    else
    {
      selfCopy2 = +[NSMutableString string];
      v12 = [(NSString *)selfCopy length];
      if (v12)
      {
        v13 = v12;
        v14 = 0;
        v15 = options & 0xFFFFFFFB;
        v16 = v12;
        do
        {
          v17 = [(NSString *)selfCopy rangeOfCharacterFromSet:setCopy options:v15 range:v14, v16];
          if (v17 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v19 = 0;
          }

          else
          {
            v19 = v18;
          }

          if (v17 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v20 = v13;
          }

          else
          {
            v20 = v17;
          }

          v21 = [(NSString *)selfCopy substringWithRange:v14, v20 - v14];
          [(NSString *)selfCopy2 appendString:v21];

          v14 = &v20[v19];
          v16 = v13 - &v20[v19];
        }

        while (v13 != &v20[v19]);
      }
    }
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136FE84();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136FE98();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136FF30();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v9);
    }

    v10 = [NSString stringWithUTF8String:"[NSString(CRLAdditions) crl_stringByRemovingCharactersInSet:options:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/NSString_CRLAdditions.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:353 isFatal:0 description:"invalid nil value for '%{public}s'", "charSet"];

    selfCopy2 = self;
  }

  return selfCopy2;
}

- (id)crl_stringByReplacingInstancesOfCharactersInSet:(id)set withString:(id)string
{
  setCopy = set;
  stringCopy = string;
  if ([(NSString *)self rangeOfCharacterFromSet:setCopy options:2]== 0x7FFFFFFFFFFFFFFFLL)
  {
    selfCopy = self;
  }

  else
  {
    v9 = [NSMutableString stringWithCapacity:[(NSString *)self length]];
    v10 = [NSScanner scannerWithString:self];
    [v10 setCharactersToBeSkipped:0];
    if (([v10 isAtEnd] & 1) == 0)
    {
      v11 = 0;
      while (1)
      {
        v17 = v11;
        v12 = [v10 scanUpToCharactersFromSet:setCopy intoString:&v17];
        v13 = v17;

        if (v12)
        {
          [v9 appendString:v13];
        }

        if ([v10 isAtEnd])
        {
          break;
        }

        v16 = v13;
        [v10 scanCharactersFromSet:setCopy intoString:&v16];
        v11 = v16;

        for (i = [v11 length]; i; --i)
        {
          [v9 appendString:stringCopy];
        }

        if ([v10 isAtEnd])
        {
          goto LABEL_13;
        }
      }

      v11 = v13;
LABEL_13:
    }

    selfCopy = [NSString stringWithString:v9];
  }

  return selfCopy;
}

- (unint64_t)crl_countInstancesOfString:(id)string options:(unint64_t)options
{
  stringCopy = string;
  v7 = [(NSString *)self length];
  v8 = [stringCopy length];
  v9 = [(NSString *)self rangeOfString:stringCopy options:options range:0, v7];
  v10 = 0;
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = 0;
    v10 = 0;
    do
    {
      ++v10;
      v12 = &v8[v9];
      v7 = &v11[v7 - &v8[v9]];
      v9 = [(NSString *)self rangeOfString:stringCopy options:options range:&v8[v9], v7];
      v11 = v12;
    }

    while (v9 != 0x7FFFFFFFFFFFFFFFLL);
  }

  return v10;
}

- (id)crl_escapeForIcuRegex
{
  if (qword_101A34EE8 != -1)
  {
    sub_10136FF58();
  }

  selfCopy = self;
  v4 = [(NSString *)selfCopy length];
  *&v13 = [(NSString *)selfCopy rangeOfCharacterFromSet:qword_101A34EE0];
  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = selfCopy;
  }

  else
  {
    v6 = [NSMutableString alloc];
    v7 = [(NSString *)selfCopy substringToIndex:v13];
    v5 = [v6 initWithString:v7];

    if (v4 != v13)
    {
      do
      {
        [(NSString *)v5 appendFormat:@"\\%C", [(NSString *)selfCopy characterAtIndex:v13]];
        *&v13 = v13 + 1;
        *(&v13 + 1) = &v4[-v13];
        v8 = v13;
        if (v4 != v13)
        {
          *&v12 = [(NSString *)selfCopy rangeOfCharacterFromSet:qword_101A34EE0 options:0 range:v13];
          *(&v12 + 1) = v9;
          v13 = v12;
          if (v12 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v13 = v4;
          }

          if (v13 != v8)
          {
            v10 = [(NSString *)selfCopy substringWithRange:v8, v13 - v8];
            [(NSString *)v5 appendString:v10];
          }
        }
      }

      while (*(&v13 + 1));
    }
  }

  return v5;
}

- (BOOL)crl_isDescendantOfPath:(id)path
{
  pathCopy = path;
  pathComponents = [(NSString *)self pathComponents];
  pathComponents2 = [pathCopy pathComponents];
  v7 = [pathComponents2 count];
  if (v7)
  {
    do
    {
      v8 = v7 - 1;
      v9 = [pathComponents2 objectAtIndexedSubscript:v7 - 1];
      v10 = [v9 isEqualToString:@"/"];

      if (!v10)
      {
        break;
      }

      --v7;
    }

    while (v8);
  }

  v11 = [pathComponents count];
  v12 = v7 <= v11;
  if (v7 - 1 < v11)
  {
    v13 = 0;
    v14 = 1;
    do
    {
      v15 = [pathComponents objectAtIndexedSubscript:v13];
      v16 = [pathComponents2 objectAtIndexedSubscript:v13];
      v12 = [v15 isEqualToString:v16];

      if (v7 <= v14)
      {
        break;
      }

      v13 = v14++;
    }

    while ((v12 & 1) != 0);
  }

  return v12;
}

- (BOOL)crl_isChildOfPath:(id)path
{
  pathCopy = path;
  pathComponents = [(NSString *)self pathComponents];
  v6 = [pathComponents mutableCopy];

  pathComponents2 = [pathCopy pathComponents];
  v8 = [pathComponents2 mutableCopy];

  if ([v6 count] >= 2)
  {
    do
    {
      lastObject = [v6 lastObject];
      v10 = [lastObject isEqualToString:@"/"];

      if (!v10)
      {
        break;
      }

      [v6 removeObjectAtIndex:{objc_msgSend(v6, "count") - 1}];
    }

    while ([v6 count] > 1);
  }

  if ([v8 count] >= 2)
  {
    do
    {
      lastObject2 = [v8 lastObject];
      v12 = [lastObject2 isEqualToString:@"/"];

      if (!v12)
      {
        break;
      }

      [v8 removeObjectAtIndex:{objc_msgSend(v8, "count") - 1}];
    }

    while ([v8 count] > 1);
  }

  v13 = [v8 count] + 1;
  v14 = [v6 count];
  v15 = v13 == v14;
  v16 = [v8 count];
  if (v16 && v13 == v14)
  {
    v17 = v16;
    v18 = 0;
    v19 = 1;
    do
    {
      v20 = [v6 objectAtIndexedSubscript:v18];
      v21 = [v8 objectAtIndexedSubscript:v18];
      v15 = [v20 isEqualToString:v21];

      if (v17 <= v19)
      {
        break;
      }

      v18 = v19++;
    }

    while ((v15 & 1) != 0);
  }

  return v15;
}

- (id)crl_stringWithRealpath
{
  v2 = realpath_DARWIN_EXTSN([(NSString *)self fileSystemRepresentation], 0);
  if (v2)
  {
    v3 = v2;
    v4 = [NSString stringWithCString:v2 encoding:4];
    free(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)crl_stringWithTrimmedWhitespace
{
  v3 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v4 = [(NSString *)self componentsSeparatedByCharactersInSet:v3];
  v5 = [v4 componentsJoinedByString:@" "];

  v6 = [v5 stringByTrimmingCharactersInSet:v3];

  return v6;
}

- (id)crl_substringWithComposedCharacterSequencesTruncatedToLength:(unint64_t)length
{
  if ([(NSString *)self length]<= length)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [(NSString *)self substringToIndex:[(NSString *)self rangeOfComposedCharacterSequenceAtIndex:length]];
  }

  return selfCopy;
}

- (id)crl_substringWithComposedCharacterSequencesToFileSystemLength:(unint64_t)length
{
  v5 = [(NSString *)self length];
  v6 = 0;
  if (v5)
  {
    v7 = 0;
    do
    {
      v8 = [(NSString *)self rangeOfComposedCharacterSequenceAtIndex:v6];
      v10 = v9;
      v11 = [(NSString *)self substringWithRange:v8, v9];
      fileSystemRepresentation = [v11 fileSystemRepresentation];

      v7 += strlen(fileSystemRepresentation);
      if (v7 > length)
      {
        break;
      }

      v6 += v10;
    }

    while (v6 < v5);
  }

  if (v6 == v5)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [(NSString *)self substringToIndex:v6];
  }

  return selfCopy;
}

- (id)crl_stringWithPathRelativeTo:(id)to
{
  toCopy = to;
  if (toCopy)
  {
    v5 = objc_autoreleasePoolPush();
    stringByStandardizingPath = [(NSString *)self stringByStandardizingPath];
    pathComponents = [stringByStandardizingPath pathComponents];

    stringByStandardizingPath2 = [toCopy stringByStandardizingPath];
    pathComponents2 = [stringByStandardizingPath2 pathComponents];

    v10 = [pathComponents count];
    v11 = [pathComponents2 count];
    if (v10 < v11)
    {
      goto LABEL_10;
    }

    v12 = v11;
    if (!v11)
    {
      goto LABEL_8;
    }

    v22 = v5;
    v13 = 0;
    v14 = 1;
    do
    {
      v15 = [pathComponents2 objectAtIndexedSubscript:v13];
      v16 = [pathComponents objectAtIndexedSubscript:v13];
      v17 = [v15 isEqualToString:v16];

      if ((v17 & 1) == 0)
      {
        break;
      }

      v13 = v14;
    }

    while (v12 > v14++);
    v5 = v22;
    if (v12 != v13)
    {
LABEL_10:
      v19 = 0;
    }

    else
    {
LABEL_8:
      if (v10 == v12)
      {
        v19 = &stru_1018BCA28;
      }

      else
      {
        v20 = [pathComponents subarrayWithRange:{v12, &v10[-v12]}];
        v19 = [NSString pathWithComponents:v20];
      }
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)crl_stringWithPathRelativeTo:(id)to allowBacktracking:(BOOL)backtracking
{
  toCopy = to;
  if (backtracking)
  {
    stringByStandardizingPath = [(NSString *)self stringByStandardizingPath];
    pathComponents = [stringByStandardizingPath pathComponents];

    stringByStandardizingPath2 = [toCopy stringByStandardizingPath];
    pathComponents2 = [stringByStandardizingPath2 pathComponents];

    v11 = [pathComponents count];
    v12 = [pathComponents2 count];
    v13 = v12;
    if (v12 >= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      v15 = 0;
      v16 = 0;
      do
      {
        v17 = [pathComponents2 objectAtIndexedSubscript:v15];
        v18 = [pathComponents objectAtIndexedSubscript:v15];
        v19 = [v17 isEqualToString:v18];

        if (!v19)
        {
          break;
        }

        v15 = ++v16;
      }

      while (v14 > v16);
    }

    else
    {
      v16 = 0;
    }

    v21 = v13 - v16;
    if (v13 <= v16)
    {
      v23 = &stru_1018BCA28;
    }

    else
    {
      v22 = &stru_1018BCA28;
      do
      {
        v23 = [(__CFString *)v22 stringByAppendingPathComponent:@".."];

        v22 = v23;
        --v21;
      }

      while (v21);
    }

    if (v16 >= v11)
    {
      v20 = v23;
    }

    else
    {
      do
      {
        v24 = [pathComponents objectAtIndexedSubscript:v16];
        v20 = [(__CFString *)v23 stringByAppendingPathComponent:v24];

        ++v16;
        v23 = v20;
      }

      while (v11 != v16);
    }
  }

  else
  {
    v20 = [(NSString *)self crl_stringWithPathRelativeTo:toCopy];
  }

  return v20;
}

- (id)crl_stringByTrimmingCharactersInSetFromFront:(id)front
{
  p_isa = self;
  v5 = [(NSString *)p_isa rangeOfCharacterFromSet:front options:8];
  v7 = v6;
  if (v6 == [(NSString *)p_isa length])
  {
    v8 = &stru_1018BCA28;
  }

  else
  {
    if (v5)
    {
      goto LABEL_6;
    }

    v8 = [(NSString *)p_isa substringFromIndex:v7];
  }

  p_isa = &v8->isa;
LABEL_6:

  return p_isa;
}

+ (id)crl_stringWithHexFromBytes:(const char *)bytes length:(unint64_t)length
{
  lengthCopy = length;
  v6 = 2 * length;
  v7 = malloc_type_malloc(2 * length, 0x100004077774924uLL);
  if (lengthCopy)
  {
    v8 = v7;
    do
    {
      v9 = *bytes++;
      *v8 = a0123456789abcd[v9 >> 4];
      v8[1] = a0123456789abcd[v9 & 0xF];
      v8 += 2;
      --lengthCopy;
    }

    while (lengthCopy);
  }

  v10 = [[NSString alloc] initWithBytesNoCopy:v7 length:v6 encoding:1 freeWhenDone:1];

  return v10;
}

+ (id)crl_stringByBase64EncodingBytes:(const char *)bytes length:(unint64_t)length breakLines:(BOOL)lines
{
  linesCopy = lines;
  lengthCopy = length;
  v8 = [NSMutableString stringWithCapacity:4 * length / 3];
  if (lengthCopy < 3)
  {
    v12 = 0;
  }

  else
  {
    v9 = bytes + 2;
    v16 = 3 * ((lengthCopy - 3) / 3) + 3;
    v10 = -4;
    v11 = 4;
    do
    {
      [v8 appendFormat:@"%c%c%c%c", aAbcdefghijklmn[*(v9 - 2) >> 2], aAbcdefghijklmn[(((*(v9 - 1) << 8) | (*(v9 - 2) << 16)) >> 12) & 0x3F], aAbcdefghijklmn[((*v9 | (*(v9 - 1) << 8)) >> 6) & 0x3F], aAbcdefghijklmn[*v9 & 0x3F]];
      if (linesCopy && !(v10 + 76 * (v11 / 0x4C)))
      {
        [v8 appendString:@"\n"];
      }

      v9 += 3;
      v10 -= 4;
      v11 += 4;
      lengthCopy -= 3;
    }

    while (lengthCopy > 2);
    v12 = v16;
  }

  if (lengthCopy == 1)
  {
    [v8 appendFormat:@"%c%c==", aAbcdefghijklmn[bytes[v12] >> 2], aAbcdefghijklmn[16 * (bytes[v12] & 3)], v15];
  }

  else if (lengthCopy == 2)
  {
    v13 = &bytes[v12];
    [v8 appendFormat:@"%c%c%c=", aAbcdefghijklmn[*v13 >> 2], aAbcdefghijklmn[((((v13[1] & 0xF0) << 8) | (*v13 << 16)) >> 12) & 0x3F], aAbcdefghijklmn[4 * (v13[1] & 0xF)]];
  }

  return v8;
}

- (id)crl_encodeStringBase64
{
  uTF8String = [(NSString *)self UTF8String];
  v3 = strlen(uTF8String);

  return [NSString crl_stringByBase64EncodingBytes:uTF8String length:v3];
}

- (id)crl_stringByMakingFirstCharacterLowercase
{
  selfCopy = self;
  if ([(NSString *)selfCopy length])
  {
    v3 = [(NSString *)selfCopy substringToIndex:1];
    lowercaseString = [v3 lowercaseString];
    if (([v3 isEqualToString:lowercaseString] & 1) == 0)
    {
      v5 = [(NSString *)selfCopy substringFromIndex:1];
      v6 = [lowercaseString stringByAppendingString:v5];

      selfCopy = v6;
    }
  }

  return selfCopy;
}

- (id)crl_stringByMakingFirstCharacterUppercase
{
  v3 = [(NSString *)self mutableCopy];
  if ([v3 length])
  {
    v4 = [(NSString *)self substringToIndex:1];
    uppercaseString = [v4 uppercaseString];
    [v3 replaceCharactersInRange:0 withString:{1, uppercaseString}];
  }

  return v3;
}

- (id)crl_stringTrimByLimitingFirstCharacterToSet:(id)set
{
  setCopy = set;
  selfCopy = self;
  if ([(NSString *)selfCopy length])
  {
    v6 = [(NSString *)selfCopy characterAtIndex:0];
    if ([(NSString *)selfCopy length])
    {
      while (([setCopy characterIsMember:v6] & 1) == 0)
      {
        v7 = [(NSString *)selfCopy substringFromIndex:1];

        if ([v7 length])
        {
          v6 = [v7 characterAtIndex:0];
        }

        selfCopy = v7;
        if (![v7 length])
        {
          goto LABEL_9;
        }
      }
    }
  }

  v7 = selfCopy;
LABEL_9:

  return v7;
}

- (id)crl_escapeXML
{
  v2 = [(NSString *)self mutableCopy];
  [v2 replaceOccurrencesOfString:@"&" withString:@"&amp;" options:0 range:{0, objc_msgSend(v2, "length")}];
  [v2 replaceOccurrencesOfString:@"<" withString:@"&lt;" options:0 range:{0, objc_msgSend(v2, "length")}];
  [v2 replaceOccurrencesOfString:@">" withString:@"&gt;" options:0 range:{0, objc_msgSend(v2, "length")}];

  return v2;
}

- (id)crl_unescapeXML
{
  v2 = [(NSString *)self mutableCopy];
  [v2 replaceOccurrencesOfString:@"&amp;" withString:@"&" options:0 range:{0, objc_msgSend(v2, "length")}];
  [v2 replaceOccurrencesOfString:@"&lt;" withString:@"<" options:0 range:{0, objc_msgSend(v2, "length")}];
  [v2 replaceOccurrencesOfString:@"&gt;" withString:@">" options:0 range:{0, objc_msgSend(v2, "length")}];

  return v2;
}

- (BOOL)crl_containsOnlyCharactersFromSet:(id)set
{
  invertedSet = [set invertedSet];
  v5 = [(NSString *)self rangeOfCharacterFromSet:invertedSet];

  return v5 == 0x7FFFFFFFFFFFFFFFLL;
}

- (id)crl_stringByDeletingPathExtensionIfEqualTo:(id)to
{
  toCopy = to;
  pathExtension = [(NSString *)self pathExtension];
  v6 = [pathExtension isEqualToString:toCopy];

  if (v6)
  {
    selfCopy = [(NSString *)self stringByDeletingPathExtension];
  }

  else
  {
    selfCopy = self;
  }

  v8 = selfCopy;

  return v8;
}

- (id)crl_tolerantStringByAppendingPathExtension:(id)extension
{
  extensionCopy = extension;
  if (-[NSString isEqualToString:](self, "isEqualToString:", &stru_1018BCA28) || [extensionCopy isEqualToString:&stru_1018BCA28])
  {
    selfCopy = self;
LABEL_4:
    v6 = selfCopy;
    goto LABEL_5;
  }

  if ([(NSString *)self isEqualToString:@"\\\\""])
  {
    v8 = [@"\\"" stringByAppendingPathExtension:extensionCopy];
    v9 = [@"\\"" stringByAppendingString:v8];
  }

  else
  {
    if (![(NSString *)self length]|| [(NSString *)self characterAtIndex:0]!= 126)
    {
      selfCopy = [(NSString *)self stringByAppendingPathExtension:extensionCopy];
      goto LABEL_4;
    }

    v10 = [@"X" stringByAppendingString:self];
    v8 = [v10 stringByAppendingPathExtension:extensionCopy];

    v9 = [v8 substringFromIndex:1];
  }

  v6 = v9;

LABEL_5:

  return v6;
}

+ (id)crl_stringByHexEncodingData:(id)data
{
  dataCopy = data;
  v4 = +[NSMutableString string];
  bytes = [dataCopy bytes];
  v6 = [dataCopy length];
  if (v6)
  {
    v7 = v6;
    do
    {
      v8 = *bytes++;
      [v4 appendFormat:@"%02x", v8];
      --v7;
    }

    while (v7);
  }

  v9 = [v4 copy];

  return v9;
}

- (_NSRange)crl_rangeOfString:(id)string options:(unint64_t)options updatingSearchRange:(_NSRange *)range
{
  stringCopy = string;
  v9 = stringCopy;
  if (range)
  {
    location = range->location;
    length = range->length;
    v12 = [(NSString *)self rangeOfString:stringCopy options:options range:range->location, length];
    v14 = v12;
    v15 = v13;
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      *range = xmmword_101464828;
    }

    else if ((options & 4) != 0)
    {
      range->location = location;
      range->length = v12 - location;
    }

    else
    {
      range->location = v12 + v13;
      range->length = length + location - (v12 + v13);
    }
  }

  else
  {
    v14 = -[NSString rangeOfString:options:range:](self, "rangeOfString:options:range:", stringCopy, options, 0, [stringCopy length]);
    v15 = v16;
  }

  v17 = v14;
  v18 = v15;
  result.length = v18;
  result.location = v17;
  return result;
}

- (_NSRange)crl_range
{
  v2 = [(NSString *)self length];
  v3 = 0;
  result.length = v2;
  result.location = v3;
  return result;
}

- (void)crl_enumerateRangesOfCharactersInSet:(id)set usingBlock:(id)block
{
  setCopy = set;
  blockCopy = block;
  v8 = [[NSScanner alloc] initWithString:self];
  [v8 setCaseSensitive:1];
  [v8 setCharactersToBeSkipped:0];
  if (([v8 isAtEnd] & 1) == 0)
  {
    do
    {
      scanLocation = [v8 scanLocation];
      if ([v8 scanCharactersFromSet:setCopy intoString:0])
      {
        scanLocation2 = [v8 scanLocation];
        v11 = 0;
        blockCopy[2](blockCopy, scanLocation, scanLocation2 - scanLocation, &v11);
        if (v11)
        {
          break;
        }
      }

      if (([v8 isAtEnd] & 1) == 0)
      {
        [v8 scanUpToCharactersFromSet:setCopy intoString:0];
      }
    }

    while (![v8 isAtEnd]);
  }
}

- (id)crl_setOfContainedWordsIncludingPunctuationAndSymbols:(BOOL)symbols
{
  symbolsCopy = symbols;
  v30 = +[NSMutableSet set];
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_100423678;
  v37[3] = &unk_101861700;
  v35 = symbolsCopy;
  v38 = symbolsCopy;
  v5 = objc_retainBlock(v37);
  v36 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v6 = [(NSString *)self length];
  v7 = CFLocaleCopyCurrent();
  v40.location = 0;
  v31 = v6;
  v40.length = v6;
  v8 = CFStringTokenizerCreate(kCFAllocatorDefault, self, v40, 4uLL, v7);
  CFRelease(v7);
  v9 = CFStringTokenizerGoToTokenAtIndex(v8, 0);
  LODWORD(v10) = v9;
  if (!v9)
  {
    (v5[2])(v5, v8);
  }

  CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v8);
  if (CurrentTokenRange.location != -1)
  {
    location = CurrentTokenRange.location;
    length = CurrentTokenRange.length;
    v14 = 0;
    v15 = CurrentTokenRange.length;
    selfCopy = self;
    do
    {
      if (location >= v14)
      {
        v16 = v14;
      }

      else
      {
        v16 = location;
      }

      v32 = v16;
      v33 = length;
      v17 = (v5[2])(v5, v8);
      v18 = CFStringTokenizerGetCurrentTokenRange(v8);
      v19 = v18.location;
      length = v18.length;
      if (v35)
      {
        while (1)
        {
          v20 = v10;
          v10 = v17;
          if (((v20 | v17) & 0x20) != 0)
          {
            if ((v17 & 0x10) == 0)
            {
              goto LABEL_20;
            }
          }

          else if ((v17 & 0x10) != 0 && length == 1)
          {
            if ([v36 characterIsMember:{-[NSString characterAtIndex:](self, "characterAtIndex:", v19)}])
            {
              v28 = 1;
              goto LABEL_21;
            }
          }

          else if (!v17 || (v17 & 0x10) != 0)
          {
            goto LABEL_20;
          }

          v17 = (v5[2])(v5, v8);
          v21 = CFStringTokenizerGetCurrentTokenRange(v8);
          v19 = v21.location;
          length = v21.length;
        }
      }

      v10 = v17;
LABEL_20:
      v28 = length;
LABEL_21:
      v22 = location + v15;
      if (location + v15 <= v31)
      {
        v22 = v31;
      }

      if (v19 > v31 || v10 == 0)
      {
        v14 = v22;
      }

      else
      {
        v14 = v19;
      }

      if (v35)
      {
        v24 = v32;
      }

      else
      {
        v24 = location;
      }

      if (v35)
      {
        v25 = v14 - v32;
      }

      else
      {
        v25 = v33;
      }

      v26 = [(NSString *)selfCopy substringWithRange:v24, v25, v30];
      v27 = [v26 stringByTrimmingCharactersInSet:v36];

      if ([v27 length])
      {
        [v30 addObject:v27];
      }

      location = v19;
      v15 = v28;
      self = selfCopy;
    }

    while (v19 != -1);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v30;
}

- (id)crl_stringWithoutAttachmentCharacters
{
  if (qword_101A34EF8 != -1)
  {
    sub_101370040();
  }

  v3 = qword_101A34EF0;

  return [(NSString *)self stringByReplacingOccurrencesOfString:v3 withString:&stru_1018BCA28];
}

- (id)crl_middleTruncateToLength:(unint64_t)length
{
  selfCopy = self;
  if ([(NSString *)selfCopy length]<= length)
  {
    v5 = selfCopy;
  }

  else
  {
    v5 = [(NSString *)selfCopy mutableCopy];
    do
    {
      [(NSString *)v5 replaceCharactersInRange:([(NSString *)v5 length]>> 1) - 1 withString:3, @"…"];
    }

    while ([(NSString *)v5 length]> length);
  }

  return v5;
}

- (BOOL)crl_isEqualToString:(id)string
{
  if (string)
  {
    return [(NSString *)self isEqualToString:?];
  }

  else
  {
    return 0;
  }
}

- (id)crl_stringWithoutBidiControls
{
  v3 = [NSCharacterSet characterSetWithCharactersInString:@"\u200E\u200F\u202A\u202B\u202C\u202D\u202E⁦⁧⁨⁩"];
  v4 = [(NSString *)self crl_stringByReplacingInstancesOfCharactersInSet:v3 withString:&stru_1018BCA28];

  return v4;
}

- (id)crl_stringByIncrementingCounterAfterDuplicateTitleModifierWithUniquenessTest:(id)test
{
  testCopy = test;
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"copy" value:0 table:0];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"%1$@ %2$@" value:0 table:0];

  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"%1$@ %2$@ %3$@" value:0 table:0];

  v11 = objc_alloc_init(NSNumberFormatter);
  v12 = [(NSString *)self crl_stringByIncrementingCounterAfterDuplicateTitleModifierWithLocalizedCopyString:v6 firstCopyFormatString:v8 generalCopyFormatString:v10 numberFormatter:v11 uniquenessTest:testCopy];

  return v12;
}

- (id)crl_stringByIncrementingCounterAfterDuplicateTitleModifierWithLocalizedCopyString:(id)string firstCopyFormatString:(id)formatString generalCopyFormatString:(id)copyFormatString numberFormatter:(id)formatter uniquenessTest:(id)test
{
  stringCopy = string;
  formatStringCopy = formatString;
  copyFormatStringCopy = copyFormatString;
  formatterCopy = formatter;
  testCopy = test;
  v33 = 0;
  v17 = formatStringCopy;
  v18 = [(NSString *)self crl_parseBaseTitleWithLocalizedCopyString:stringCopy firstCopyFormatString:formatStringCopy generalCopyFormatString:copyFormatStringCopy outNumber:&v33];
  v19 = v18;
  if (v18)
  {
    v34[0] = @"%1$@";
    v34[1] = @"%2$@";
    v31 = v18;
    v32 = stringCopy;
    v35[0] = v18;
    v35[1] = stringCopy;
    v20 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:2];
    v21 = [v20 mutableCopy];

    for (i = [(NSString *)self copy]; [(NSString *)self isEqualToString:i]|| (testCopy[2](testCopy, i) & 1) == 0; i = v29)
    {
      v23 = v33;
      v24 = ++v33;
      if (v23)
      {
        v25 = copyFormatStringCopy;
      }

      else
      {
        v25 = v17;
      }

      v26 = v25;
      v27 = [NSNumber numberWithUnsignedInteger:v24];
      v28 = [formatterCopy stringFromNumber:v27];
      [v21 setObject:v28 forKeyedSubscript:@"%3$@"];

      v29 = [v26 crl_stringByApplyingSubstitutions:v21];
    }

    v19 = v31;
    stringCopy = v32;
  }

  else
  {
    i = [(NSString *)self copy];
  }

  return i;
}

- (id)crl_regexForTitleParsingWithLocalizedCopyString:(id)string isFirstCopyFormatString:(BOOL)formatString
{
  formatStringCopy = formatString;
  stringCopy = string;
  if ([(NSString *)self crl_countInstancesOfString:@"%1$@" options:0]== 1 && [(NSString *)self crl_countInstancesOfString:@"%2$@" options:0]== 1 && (formatStringCopy || [(NSString *)self crl_countInstancesOfString:@"%3$@" options:0]== 1))
  {
    v7 = [NSRegularExpression escapedPatternForString:self];
    v8 = [NSRegularExpression escapedPatternForString:@"%1$@"];
    v18[0] = v8;
    v19[0] = @"(.*)";
    v9 = [NSRegularExpression escapedPatternForString:@"%2$@"];
    v18[1] = v9;
    v19[1] = stringCopy;
    v10 = [NSRegularExpression escapedPatternForString:@"%3$@"];
    v18[2] = v10;
    v19[2] = @"(\\d+)";
    v11 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:3];

    v12 = [v7 crl_stringByApplyingSubstitutions:v11];
    v13 = [NSRegularExpression regularExpressionWithPattern:v12 options:0 error:0];
  }

  else
  {
    v14 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101370054();
    }

    v15 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      *buf = 67110402;
      v21 = v14;
      v22 = 2082;
      v23 = "[NSString(CRLAdditions) crl_regexForTitleParsingWithLocalizedCopyString:isFirstCopyFormatString:]";
      v24 = 2082;
      v25 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/NSString_CRLAdditions.m";
      v26 = 1024;
      v27 = 1148;
      v28 = 2114;
      selfCopy = self;
      v30 = 1024;
      v31 = formatStringCopy;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Invalid format string: %{public}@, isFirstCopyFormatString: %d", buf, 0x32u);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101370068();
    }

    v16 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v16);
    }

    v7 = [NSString stringWithUTF8String:"[NSString(CRLAdditions) crl_regexForTitleParsingWithLocalizedCopyString:isFirstCopyFormatString:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/NSString_CRLAdditions.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v11 lineNumber:1148 isFatal:0 description:"Invalid format string: %{public}@, isFirstCopyFormatString: %d", self, formatStringCopy];
    v13 = 0;
  }

  return v13;
}

- (id)crl_parseBaseTitleWithLocalizedCopyString:(id)string firstCopyFormatString:(id)formatString generalCopyFormatString:(id)copyFormatString outNumber:(unint64_t *)number
{
  stringCopy = string;
  formatStringCopy = formatString;
  copyFormatStringCopy = copyFormatString;
  v13 = [copyFormatStringCopy crl_regexForTitleParsingWithLocalizedCopyString:stringCopy isFirstCopyFormatString:0];
  if (!v13)
  {
    selfCopy2 = self;
    goto LABEL_23;
  }

  v14 = [v13 firstMatchInString:self options:0 range:{0, -[NSString length](self, "length")}];
  if (v14)
  {
    v15 = [copyFormatStringCopy rangeOfString:@"%1$@"];
    v16 = [copyFormatStringCopy rangeOfString:@"%3$@"];
    if (v15 < v16)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    if (v15 >= v16)
    {
      v18 = 1;
    }

    else
    {
      v18 = 2;
    }

    v19 = [v14 rangeAtIndex:v17];
    selfCopy2 = [(NSString *)self substringWithRange:v19, v20];
    v22 = [v14 rangeAtIndex:v18];
    v24 = [(NSString *)self substringWithRange:v22, v23];
    integerValue = [v24 integerValue];
    goto LABEL_20;
  }

  v26 = [formatStringCopy crl_regexForTitleParsingWithLocalizedCopyString:stringCopy isFirstCopyFormatString:1];
  if (v26)
  {
    v24 = v26;
    v32 = [v26 firstMatchInString:self options:0 range:{0, -[NSString length](self, "length")}];
    if (v32)
    {
      v27 = [formatStringCopy rangeOfString:@"%1$@"];
      integerValue = 1;
      if (v27 < [formatStringCopy rangeOfString:@"%3$@"])
      {
        v28 = 1;
      }

      else
      {
        v28 = 2;
      }

      v29 = [v32 rangeAtIndex:v28];
      selfCopy2 = [(NSString *)self substringWithRange:v29, v30];
    }

    else
    {
      selfCopy2 = [(NSString *)self copy];
      integerValue = 0;
    }

LABEL_20:
    if (number)
    {
      *number = integerValue;
    }

    goto LABEL_22;
  }

  selfCopy2 = self;
LABEL_22:

LABEL_23:

  return selfCopy2;
}

- (id)crl_stringByApplyingSubstitutions:(id)substitutions
{
  substitutionsCopy = substitutions;
  v5 = [(NSString *)self mutableCopy];
  v6 = objc_opt_new();
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1004243FC;
  v25[3] = &unk_1018617C8;
  v25[4] = v5;
  v25[5] = v6;
  [substitutionsCopy enumerateKeysAndObjectsUsingBlock:v25];
  allKeys = [v6 allKeys];
  v8 = [allKeys sortedArrayUsingComparator:&stru_101861808];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        v15 = [v6 objectForKeyedSubscript:{v14, v21}];
        rangeValue = [v14 rangeValue];
        if (v15)
        {
          v18 = rangeValue == 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v18 = 1;
        }

        if (!v18)
        {
          [v5 replaceCharactersInRange:rangeValue withString:{v17, v15}];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v11);
  }

  v19 = [v5 copy];

  return v19;
}

+ (id)crl_JSONStringFromString:(id)string
{
  if (string)
  {
    stringCopy = string;
    v4 = +[NSMutableString string];
    [stringCopy crl_appendJSONStringToString:v4];
  }

  else
  {
    v4 = @"null";
  }

  return v4;
}

- (void)crl_appendJSONStringToString:(id)string
{
  stringCopy = string;
  if (qword_101A34F28 != -1)
  {
    sub_101370090();
  }

  [stringCopy appendString:@""];
  if ([(NSString *)self rangeOfCharacterFromSet:qword_101A34F20]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [(NSString *)self length];
    v6 = malloc_type_malloc(2 * v5, 0x1000040BDFB0063uLL);
    [(NSString *)self getCharacters:v6];
    if (!v5)
    {
LABEL_35:
      free(v6);
      goto LABEL_36;
    }

    v7 = v6;
    while (1)
    {
      v9 = *v7++;
      v8 = v9;
      v13 = v9;
      if (v9 <= 12)
      {
        if (v8 > 9)
        {
          if (v8 == 10)
          {
            v10 = stringCopy;
            v11 = @"\\n";
          }

          else
          {
            if (v8 != 12)
            {
              goto LABEL_31;
            }

            v10 = stringCopy;
            v11 = @"\\f";
          }
        }

        else if (v8 == 8)
        {
          v10 = stringCopy;
          v11 = @"\\b";
        }

        else
        {
          if (v8 != 9)
          {
            goto LABEL_31;
          }

          v10 = stringCopy;
          v11 = @"\\t";
        }
      }

      else if (v8 <= 91)
      {
        if (v8 == 13)
        {
          v10 = stringCopy;
          v11 = @"\\r";
        }

        else
        {
          if (v8 != 34)
          {
LABEL_31:
            if (v8 < 0x20)
            {
              [NSString stringWithFormat:@"\\u%.4x", v8];
            }

            else
            {
              [NSString stringWithCharacters:&v13 length:1];
            }
            v12 = ;
            [stringCopy appendString:v12];

            goto LABEL_29;
          }

          v10 = stringCopy;
          v11 = @"\\"";
        }
      }

      else
      {
        switch(v8)
        {
          case 0x5C:
            v10 = stringCopy;
            v11 = @"\\\\"";
            break;
          case 0x2028:
            v10 = stringCopy;
            v11 = @"\\u2028";
            break;
          case 0x2029:
            v10 = stringCopy;
            v11 = @"\\u2029";
            break;
          default:
            goto LABEL_31;
        }
      }

      [v10 appendString:v11];
LABEL_29:
      if (!--v5)
      {
        goto LABEL_35;
      }
    }
  }

  [stringCopy appendString:self];
LABEL_36:
  [stringCopy appendString:@""];
}

+ (id)crl_stringWithItemProviderData:(id)data typeIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v8 = [NSString objectWithItemProviderData:data typeIdentifier:identifierCopy error:error];
  if (!v8)
  {
    v9 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013700A4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013700B8(identifierCopy, v9);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101370170();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v10);
    }

    v11 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[NSString(CRLAdditions) crl_stringWithItemProviderData:typeIdentifier:error:]");
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/NSString_CRLAdditions.m"];
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:1342 isFatal:0 description:"Unable to make a string out of data with UTI %@", identifierCopy];
  }

  return v8;
}

- (id)crl_uncommentedAddress
{
  v3 = [(NSString *)self length];
  v4 = NSZoneMalloc(0, 2 * v3 + 2);
  v5 = v4;
  v6 = v4;
  if (v3)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v19 = 0;
    v20 = 1;
    v6 = v4;
    do
    {
      v10 = [(NSString *)self characterAtIndex:v7];
      v11 = v10;
      if (v10 == 92)
      {
        if (v7 + 1 >= v3)
        {
          if ((v9 & 1) == 0)
          {
            if (v8 < 1)
            {
              goto LABEL_18;
            }

LABEL_15:
            v9 = 0;
            v8 -= v10 == 41;
            goto LABEL_24;
          }

LABEL_10:
          *v6 = v10;
          v6 += 2;
          v9 &= v10 != 34;
          goto LABEL_24;
        }

        *v6 = 92;
        *(v6 + 1) = [(NSString *)self characterAtIndex:v7 + 1];
        v6 += 4;
        ++v7;
      }

      else
      {
        if (v9)
        {
          goto LABEL_10;
        }

        if (v10 == 40)
        {
          v9 = 0;
          ++v8;
        }

        else
        {
          if (v8 > 0)
          {
            goto LABEL_15;
          }

          if (v10 != 60)
          {
            if ((v19 & (v10 == 62)) != 0)
            {
              break;
            }

            if (v10 > 0x7F)
            {
              if (__maskrune(v10, 0x4000uLL))
              {
LABEL_19:
                v9 = 0;
                if ((v20 & 1) == 0)
                {
                  *v6 = 32;
                  v6 += 2;
                }

                v20 = 1;
                goto LABEL_24;
              }
            }

            else
            {
LABEL_18:
              if ((_DefaultRuneLocale.__runetype[v10] & 0x4000) != 0)
              {
                goto LABEL_19;
              }
            }

            v20 = 0;
            *v6 = v11;
            v6 += 2;
            v9 |= v11 == 34;
            goto LABEL_24;
          }

          v9 = 0;
          v19 = 1;
          v6 = v5;
        }
      }

LABEL_24:
      ++v7;
    }

    while (v7 < v3);
  }

  v12 = v6 - v5;
  do
  {
    v13 = v6;
    v14 = v12;
    if (v6 <= v5)
    {
      break;
    }

    v6 -= 2;
    v15 = *(v13 - 1);
    v16 = v15 > 0x7F ? __maskrune(v15, 0x4000uLL) : _DefaultRuneLocale.__runetype[v15] & 0x4000;
    v12 = v14 - 2;
  }

  while (v16);
  *v13 = 0;
  v17 = [[NSString alloc] initWithCharacters:v5 length:v14 >> 1];
  NSZoneFree(0, v5);

  return v17;
}

- (id)crl_uncommentedAddressRespectingGroups
{
  v3 = [(NSString *)self rangeOfString:@"@"];
  v4 = [(NSString *)self rangeOfString:@"<"];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL && v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [(NSString *)self crl_uncommentedAddress];
  }

  return selfCopy;
}

- (BOOL)crl_isCJKString
{
  if (![(NSString *)self length])
  {
    return 0;
  }

  v3 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v4 = [(NSString *)self stringByTrimmingCharactersInSet:v3];

  v5 = [v4 length];
  if (!v5)
  {

    return 0;
  }

  v6 = v5;
  __chkstk_darwin(v5);
  v8 = (&v16 - ((v7 + 17) & 0xFFFFFFFFFFFFFFF0));
  [v4 getCharacters:v8 range:{0, v6}];
  v9 = 0;
  v10 = 1;
  v11 = v6;
  do
  {
    v13 = *v8++;
    v12 = v13;
    v14 = vdup_n_s16(v13);
    if ((vmaxv_u16(vorr_s8(vcgt_u16(0x56D019B6015000E0, vadd_s16(v14, 0xB200CC00CFC0D100)), vceq_s16(vand_s8(v14, 0xFFF0FFC0FF80FF00), 0x319030002E801100))) & 1) == 0 && ((v12 + 21504) >> 2) >= 0xAE9u && (v12 + 1792) >= 0x200u && (v12 + 464) >= 0x20u && (v12 & 0xFFE0) != 0x31A0 && (v12 & 0xFE00) != 0x3200)
    {
      break;
    }

    v9 = v10++ >= v6;
    --v11;
  }

  while (v11);

  return v9;
}

+ (id)crl_localizedDisplayNameWithPersonNameComponents:(id)components
{
  componentsCopy = components;
  if (!componentsCopy)
  {
    v4 = 0;
    goto LABEL_20;
  }

  v4 = [NSPersonNameComponentsFormatter localizedStringFromPersonNameComponents:componentsCopy style:0 options:0];
  if (v4)
  {
    goto LABEL_20;
  }

  if (qword_101AD5A08 != -1)
  {
    sub_101370198();
  }

  v5 = off_1019EDA60;
  if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
  {
    sub_1013701AC(v5);
  }

  givenName = [componentsCopy givenName];
  v7 = [givenName length];
  familyName = [componentsCopy familyName];
  v9 = [familyName length];
  if (v7 && v9)
  {
    if (([givenName crl_isCJKString] & 1) != 0 || objc_msgSend(familyName, "crl_isCJKString"))
    {
      v10 = [familyName stringByAppendingString:givenName];
    }

    else
    {
      v10 = [NSString stringWithFormat:@"%@ %@", givenName, familyName];
    }
  }

  else if (v7)
  {
    v10 = givenName;
  }

  else
  {
    if (!v9)
    {
      v4 = 0;
      goto LABEL_19;
    }

    v10 = familyName;
  }

  v4 = v10;
LABEL_19:

LABEL_20:

  return v4;
}

- (id)crl_keyPathByRemovingLastKey
{
  v3 = [(NSString *)self rangeOfString:@"." options:6];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = &stru_1018BCA28;
  }

  else
  {
    v4 = [(NSString *)self substringToIndex:v3];
  }

  return v4;
}

- (id)crl_keyPathByRemovingFirstKey
{
  v3 = [(NSString *)self rangeOfString:@"." options:2];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = &stru_1018BCA28;
  }

  else
  {
    v4 = [(NSString *)self substringFromIndex:v3 + 1];
  }

  return v4;
}

- (id)crl_keyPathByPrependingKey:(id)key
{
  keyCopy = key;
  if ([(NSString *)self length])
  {
    if ([keyCopy length])
    {
      v5 = [NSString stringWithFormat:@"%@.%@", keyCopy, self];
      goto LABEL_7;
    }

    selfCopy = self;
  }

  else
  {
    selfCopy = keyCopy;
  }

  v5 = [NSString stringWithString:selfCopy];
LABEL_7:
  v7 = v5;

  return v7;
}

- (id)crl_keyPathByAppendingKey:(id)key
{
  keyCopy = key;
  if ([(NSString *)self length])
  {
    if ([keyCopy length])
    {
      keyCopy = [NSString stringWithFormat:@"%@.%@", self, keyCopy];
      goto LABEL_7;
    }

    selfCopy = self;
  }

  else
  {
    selfCopy = keyCopy;
  }

  keyCopy = [NSString stringWithString:selfCopy];
LABEL_7:
  v7 = keyCopy;

  return v7;
}

- (id)crl_firstKey
{
  selfCopy = self;
  v3 = [(NSString *)selfCopy rangeOfString:@"." options:2];
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [(NSString *)selfCopy substringToIndex:v3];

    selfCopy = v4;
  }

  return selfCopy;
}

- (id)crl_lastKey
{
  selfCopy = self;
  v3 = [(NSString *)selfCopy rangeOfString:@"." options:6];
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [(NSString *)selfCopy substringFromIndex:v3 + 1];

    selfCopy = v4;
  }

  return selfCopy;
}

- (unint64_t)crl_numberOfKeysInKeyPath
{
  v3 = [(NSString *)self length];
  v4 = 0;
  v5 = 0;
  v6 = v3;
  do
  {
    v7 = [(NSString *)self rangeOfString:@"." options:2 range:v4, v6];
    ++v5;
    v4 = &v7[v8];
    v6 = v3 - &v7[v8];
  }

  while (&v7[v8] != 0x7FFFFFFFFFFFFFFFLL);
  return v5;
}

- (id)crl_initRedactedWithFormat:(id)format arguments:(char *)arguments
{
  v5 = [format mutableCopy];
  [v5 replaceOccurrencesOfString:@"%s" withString:@"<REDACT %s REDACT>" options:0 range:{0, objc_msgSend(v5, "length")}];
  [v5 replaceOccurrencesOfString:@"%@" withString:@"<REDACT %@ REDACT>" options:0 range:{0, objc_msgSend(v5, "length")}];
  [v5 replaceOccurrencesOfString:@"%{public}" withString:@"%" options:0 range:{0, objc_msgSend(v5, "length")}];
  v6 = [[NSString alloc] initWithFormat:v5 arguments:arguments];
  if (qword_101A34F38 != -1)
  {
    sub_1013701F0();
  }

  v7 = [qword_101A34F30 stringByReplacingMatchesInString:v6 options:0 range:0 withTemplate:{objc_msgSend(v6, "length"), @"<redacted>"}];

  return v7;
}

- (id)crl_initUnRedactedWithFormat:(id)format arguments:(char *)arguments
{
  v5 = [format mutableCopy];
  [v5 replaceOccurrencesOfString:@"%{public}" withString:@"%" options:0 range:{0, objc_msgSend(v5, "length")}];
  v6 = [(NSString *)self initWithFormat:v5 arguments:arguments];

  return v6;
}

+ (id)crl_redactedStringWithFormat:(id)format arguments:(char *)arguments
{
  formatCopy = format;
  v6 = [[NSString alloc] crl_initRedactedWithFormat:formatCopy arguments:arguments];

  return v6;
}

+ (id)crl_unRedactedStringWithFormat:(id)format arguments:(char *)arguments
{
  formatCopy = format;
  v6 = [[NSString alloc] crl_initUnRedactedWithFormat:formatCopy arguments:arguments];

  return v6;
}

+ (id)crlwpax_descriptionForVerticalAlignment:(int64_t)alignment
{
  if (alignment > 3)
  {
    v5 = 0;
  }

  else
  {
    v3 = *(&off_10186B800 + alignment);
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:v3 value:0 table:0];
  }

  return v5;
}

+ (id)crlwpax_descriptionForParagraphAlignment:(int64_t)alignment
{
  if (alignment > 4)
  {
    v5 = 0;
  }

  else
  {
    v3 = *(&off_10186B820 + alignment);
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:v3 value:0 table:0];
  }

  return v5;
}

- (id)crl_attributedStringAllowingHyphenationWithAlignment:(int64_t)alignment color:(id)color
{
  colorCopy = color;
  v7 = objc_alloc_init(NSMutableParagraphStyle);
  LODWORD(v8) = 1036831949;
  [v7 setHyphenationFactor:v8];
  [v7 setAlignment:alignment];
  [v7 setLineBreakMode:4];
  v9 = [NSAttributedString alloc];
  v13[0] = NSParagraphStyleAttributeName;
  v13[1] = NSForegroundColorAttributeName;
  v14[0] = v7;
  v14[1] = colorCopy;
  v10 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];

  v11 = [v9 initWithString:self attributes:v10];

  return v11;
}

- (id)crl_writeToFileUsingName:(id)name error:(id *)error
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  selfCopy = self;
  sub_100F16C1C(v9, v11, v8);

  URL._bridgeToObjectiveC()(v13);
  v15 = v14;
  (*(v6 + 8))(v8, v5);

  return v15;
}

@end