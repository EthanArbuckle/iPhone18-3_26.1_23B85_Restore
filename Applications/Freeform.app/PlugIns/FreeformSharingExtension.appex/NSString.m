@interface NSString
+ (id)crl_JSONStringFromString:(id)a3;
+ (id)crl_localizedDisplayNameWithPersonNameComponents:(id)a3;
+ (id)crl_redactedStringWithFormat:(id)a3 arguments:(char *)a4;
+ (id)crl_stringByBase64EncodingBytes:(const char *)a3 length:(unint64_t)a4 breakLines:(BOOL)a5;
+ (id)crl_stringByHexEncodingData:(id)a3;
+ (id)crl_stringByIndentingString:(id)a3 times:(unint64_t)a4;
+ (id)crl_stringWithFormat:(id)a3 arguments:(char *)a4;
+ (id)crl_stringWithHexFromBytes:(const char *)a3 length:(unint64_t)a4;
+ (id)crl_stringWithItemProviderData:(id)a3 typeIdentifier:(id)a4 error:(id *)a5;
+ (id)crl_stringWithUUID;
+ (id)crl_unRedactedStringWithFormat:(id)a3 arguments:(char *)a4;
- (BOOL)crl_containsOnlyCharactersFromSet:(id)a3;
- (BOOL)crl_isCJKString;
- (BOOL)crl_isChildOfPath:(id)a3;
- (BOOL)crl_isDescendantOfPath:(id)a3;
- (BOOL)crl_isEqualToString:(id)a3;
- (NSString)crl_stringByEscapingForSpotlightSearch;
- (_NSRange)crl_range;
- (_NSRange)crl_rangeOfString:(id)a3 options:(unint64_t)a4 updatingSearchRange:(_NSRange *)a5;
- (id)crl_displayNameFromFilenameDeletingPathExtension:(BOOL)a3;
- (id)crl_encodeStringBase64;
- (id)crl_escapeForIcuRegex;
- (id)crl_escapeXML;
- (id)crl_filenameFromDisplayNameWithExtension:(id)a3 characterLimit:(unint64_t)a4;
- (id)crl_filenameTruncatedToCharacterLimit:(unint64_t)a3;
- (id)crl_firstKey;
- (id)crl_initRedactedWithFormat:(id)a3 arguments:(char *)a4;
- (id)crl_initUnRedactedWithFormat:(id)a3 arguments:(char *)a4;
- (id)crl_initialsWithLimit:(unint64_t)a3;
- (id)crl_keyPathByAppendingKey:(id)a3;
- (id)crl_keyPathByPrependingKey:(id)a3;
- (id)crl_keyPathByRemovingFirstKey;
- (id)crl_keyPathByRemovingLastKey;
- (id)crl_lastKey;
- (id)crl_middleTruncateToLength:(unint64_t)a3;
- (id)crl_nameByConvertingFirstNameToInitials;
- (id)crl_parseBaseTitleWithLocalizedCopyString:(id)a3 firstCopyFormatString:(id)a4 generalCopyFormatString:(id)a5 outNumber:(unint64_t *)a6;
- (id)crl_pathExceptPrivate;
- (id)crl_regexForTitleParsingWithLocalizedCopyString:(id)a3 isFirstCopyFormatString:(BOOL)a4;
- (id)crl_setOfContainedWordsIncludingPunctuationAndSymbols:(BOOL)a3;
- (id)crl_stringByAppendingSeparator:(id)a3 format:(id)a4;
- (id)crl_stringByApplyingSubstitutions:(id)a3;
- (id)crl_stringByDeletingPathExtensionIfEqualTo:(id)a3;
- (id)crl_stringByExpandingTableFormatting;
- (id)crl_stringByFixingBrokenSurrogatePairs;
- (id)crl_stringByIncrementingCounterAfterDuplicateTitleModifierWithLocalizedCopyString:(id)a3 firstCopyFormatString:(id)a4 generalCopyFormatString:(id)a5 numberFormatter:(id)a6 uniquenessTest:(id)a7;
- (id)crl_stringByIncrementingCounterAfterDuplicateTitleModifierWithUniquenessTest:(id)a3;
- (id)crl_stringByMakingFirstCharacterLowercase;
- (id)crl_stringByMakingFirstCharacterUppercase;
- (id)crl_stringByRemovingCharactersInSet:(id)a3 options:(unsigned int)a4;
- (id)crl_stringByReplacingInstancesOfCharactersInSet:(id)a3 withString:(id)a4;
- (id)crl_stringByTrimmingCharactersInSetFromFront:(id)a3;
- (id)crl_stringByUniquingPathInsideDirectory:(id)a3 withFormat:(id)a4;
- (id)crl_stringQuotedIfContainsCharacterSet:(id)a3;
- (id)crl_stringTrimByLimitingFirstCharacterToSet:(id)a3;
- (id)crl_stringWithNormalizedHyphens;
- (id)crl_stringWithNormalizedHyphensAndQuotationMarks;
- (id)crl_stringWithNormalizedQuotationMarks;
- (id)crl_stringWithPathRelativeTo:(id)a3;
- (id)crl_stringWithPathRelativeTo:(id)a3 allowBacktracking:(BOOL)a4;
- (id)crl_stringWithRealpath;
- (id)crl_stringWithTrimmedWhitespace;
- (id)crl_stringWithoutAttachmentCharacters;
- (id)crl_stringWithoutBidiControls;
- (id)crl_substringWithComposedCharacterSequencesToFileSystemLength:(unint64_t)a3;
- (id)crl_substringWithComposedCharacterSequencesTruncatedToLength:(unint64_t)a3;
- (id)crl_tolerantStringByAppendingPathExtension:(id)a3;
- (id)crl_uncommentedAddress;
- (id)crl_uncommentedAddressRespectingGroups;
- (id)crl_unescapeXML;
- (unint64_t)crl_countInstancesOfString:(id)a3 options:(unint64_t)a4;
- (unint64_t)crl_numberOfKeysInKeyPath;
- (void)crl_appendJSONStringToString:(id)a3;
- (void)crl_enumerateRangesOfCharactersInSet:(id)a3 usingBlock:(id)a4;
@end

@implementation NSString

- (id)crl_filenameFromDisplayNameWithExtension:(id)a3 characterLimit:(unint64_t)a4
{
  v6 = a3;
  v7 = [(NSString *)self stringByReplacingOccurrencesOfString:@"/" withString:@":"];
  v8 = [v7 crl_tolerantStringByAppendingPathExtension:v6];

  v9 = [v8 crl_filenameTruncatedToCharacterLimit:a4];

  return v9;
}

- (id)crl_filenameTruncatedToCharacterLimit:(unint64_t)a3
{
  v4 = self;
  if (strlen([(NSString *)v4 fileSystemRepresentation]) > a3)
  {
    v5 = [(NSString *)v4 stringByDeletingPathExtension];
    v6 = [v5 length];
    v7 = [(NSString *)v4 substringFromIndex:v6];
    v8 = v6 - 1;
    do
    {
      v9 = [v5 rangeOfComposedCharacterSequencesForRange:{0, v8}];
      v11 = [v5 substringWithRange:{v9, v10}];
      v12 = [v11 stringByAppendingString:v7];

      if (!v8)
      {
        break;
      }

      --v8;
      v5 = v12;
    }

    while (strlen([v12 fileSystemRepresentation]) > a3);
    v13 = +[NSCharacterSet whitespaceCharacterSet];
    v14 = [v12 stringByTrimmingCharactersInSet:v13];

    v4 = v14;
  }

  return v4;
}

- (id)crl_displayNameFromFilenameDeletingPathExtension:(BOOL)a3
{
  if (a3)
  {
    v3 = [(NSString *)self stringByDeletingPathExtension];
  }

  else
  {
    v3 = self;
  }

  v4 = v3;
  v5 = [(NSString *)v3 stringByReplacingOccurrencesOfString:@":" withString:@"/"];

  return v5;
}

- (id)crl_initialsWithLimit:(unint64_t)a3
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
    v12[2] = sub_100003AD0;
    v12[3] = &unk_1000A5EC8;
    v9 = v5;
    v13 = v9;
    v14 = v16;
    v15 = a3;
    [v7 enumerateSubstringsInRange:0 options:v8 usingBlock:{1027, v12}];
    v10 = [v9 uppercaseString];

    _Block_object_dispose(v16, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)crl_nameByConvertingFirstNameToInitials
{
  if ([(NSString *)self canBeConvertedToEncoding:5])
  {
    v3 = +[NSMutableString string];
    v4 = [(NSString *)self length];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100003C50;
    v8[3] = &unk_1000A5EF0;
    v5 = v3;
    v9 = v5;
    v10 = self;
    [(NSString *)self enumerateSubstringsInRange:0 options:v4 usingBlock:1027, v8];
    v6 = v5;
  }

  else
  {
    v6 = self;
  }

  return v6;
}

- (NSString)crl_stringByEscapingForSpotlightSearch
{
  v2 = [(NSString *)self decomposedStringWithCanonicalMapping];
  v3 = +[NSCharacterSet whitespaceCharacterSet];
  v4 = [v2 stringByTrimmingCharactersInSet:v3];
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

+ (id)crl_stringWithFormat:(id)a3 arguments:(char *)a4
{
  v5 = a3;
  v6 = [[NSString alloc] initWithFormat:v5 arguments:a4];

  return v6;
}

+ (id)crl_stringByIndentingString:(id)a3 times:(unint64_t)a4
{
  v5 = a3;
  v6 = [v5 length];
  if (a4 && v6)
  {
    do
    {
      v7 = [v5 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n  "];

      if ([v7 hasSuffix:@"\n  "])
      {
        v8 = [v7 substringToIndex:{objc_msgSend(v7, "length") - 2}];

        v7 = v8;
      }

      v5 = [@"  " stringByAppendingString:v7];

      --a4;
    }

    while (a4);
  }

  v9 = v5;

  return v5;
}

- (id)crl_pathExceptPrivate
{
  if ([(NSString *)self rangeOfString:@"/private"])
  {
    v4 = self;
  }

  else
  {
    v4 = [(NSString *)self substringFromIndex:v3];
  }

  return v4;
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

  v14 = [v5 lastObject];
  if ([v14 count] == 1)
  {
    v15 = [v5 lastObject];
    v16 = [v15 objectAtIndexedSubscript:0];
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
          v23 = &stru_1000A9FE0;
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
                v44 = &stru_1000A9FE0;
                if ([v39 count] > v42)
                {
                  v44 = [v39 objectAtIndexedSubscript:v42];
                }

                v45 = [(__CFString *)v44 componentsSeparatedByString:@"\n"];
                v46 = &stru_1000A9FE0;
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

- (id)crl_stringQuotedIfContainsCharacterSet:(id)a3
{
  v4 = self;
  if ([(NSString *)v4 rangeOfCharacterFromSet:a3]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [(NSString *)v4 mutableCopy];
    [v5 replaceOccurrencesOfString:@" withString:@" options:0 range:{0, -[NSString length](v4, "length")}];
    [v5 appendString:@""];
    [v5 insertString:@"" atIndex:0];

    v4 = v5;
  }

  return v4;
}

- (id)crl_stringByAppendingSeparator:(id)a3 format:(id)a4
{
  v6 = a3;
  v7 = [NSString crl_stringWithFormat:a4 arguments:&v11];
  if ([(NSString *)self length])
  {
    v8 = [(NSString *)self stringByAppendingFormat:@"%@%@", v6, v7];

    v7 = v8;
  }

  return v7;
}

- (id)crl_stringByUniquingPathInsideDirectory:(id)a3 withFormat:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (CRLAssertCat_init_token != -1)
    {
      sub_10007BB9C();
    }

    if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10007BBB0();
    }

    if (CRLAssertCat_init_token != -1)
    {
      sub_10007BC48();
    }

    v8 = CRLAssertCat_log_t;
    if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10007BC70(v8);
    }

    v9 = [NSString stringWithUTF8String:"[NSString(CRLAdditions) crl_stringByUniquingPathInsideDirectory:withFormat:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/NSString_CRLAdditions.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:279 isFatal:0 description:"invalid nil value for '%{public}s'", "directoryPath"];
  }

  v11 = self;
  v12 = +[NSFileManager defaultManager];
  v13 = [v6 stringByAppendingPathComponent:v11];
  v14 = [v12 fileExistsAtPath:v13];

  if (v14)
  {
    context = objc_autoreleasePoolPush();
    v15 = [(NSString *)v11 pathExtension];
    if (v15)
    {
      v16 = v15;
      if ([(__CFString *)v15 length])
      {
        v17 = [@"." stringByAppendingString:v16];

        v16 = v17;
      }
    }

    else
    {
      v16 = &stru_1000A9FE0;
    }

    v18 = [(NSString *)v11 stringByDeletingPathExtension];
    v19 = 2;
    do
    {
      v20 = v11;
      v21 = (v19 + 1);
      v11 = [NSString stringWithFormat:v7, v18, v19, v16];

      v22 = [v6 stringByAppendingPathComponent:v11];
      v23 = [v12 fileExistsAtPath:v22];

      v19 = v21;
    }

    while ((v23 & 1) != 0);

    objc_autoreleasePoolPop(context);
  }

  return v11;
}

- (id)crl_stringByFixingBrokenSurrogatePairs
{
  v2 = self;
  v3 = [(__CFString *)v2 length];
  theString = v2;
  v31 = 0;
  v32 = v3;
  CharactersPtr = CFStringGetCharactersPtr(v2);
  CStringPtr = 0;
  v29 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(v2, 0x600u);
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
              v7 = [(__CFString *)v2 mutableCopyWithZone:0, v20, v21, v22, v23, v24, v25, v26, v27];

              v2 = v7;
            }

            [(__CFString *)v7 replaceCharactersInRange:v8 withString:1, @"\uFFFD", v20, v21, v22, v23, v24, v25, v26, v27];
            v3 = [(__CFString *)v2 length];
            theString = v2;
            v31 = 0;
            v32 = v3;
            v17 = CFStringGetCharactersPtr(v2);
            v18 = 0;
            v29 = v17;
            if (!v17)
            {
              v18 = CFStringGetCStringPtr(v2, 0x600u);
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

  return v2;
}

- (id)crl_stringByRemovingCharactersInSet:(id)a3 options:(unsigned int)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = self;
    if ([(NSString *)v7 rangeOfCharacterFromSet:v6]== 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = v7;
    }

    else
    {
      v8 = +[NSMutableString string];
      v12 = [(NSString *)v7 length];
      if (v12)
      {
        v13 = v12;
        v14 = 0;
        v15 = a4 & 0xFFFFFFFB;
        v16 = v12;
        do
        {
          v17 = [(NSString *)v7 rangeOfCharacterFromSet:v6 options:v15 range:v14, v16];
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

          v21 = [(NSString *)v7 substringWithRange:v14, v20 - v14];
          [(NSString *)v8 appendString:v21];

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
    if (CRLAssertCat_init_token != -1)
    {
      sub_10007BD10();
    }

    if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10007BD24();
    }

    if (CRLAssertCat_init_token != -1)
    {
      sub_10007BDBC();
    }

    v9 = CRLAssertCat_log_t;
    if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10007BC70(v9);
    }

    v10 = [NSString stringWithUTF8String:"[NSString(CRLAdditions) crl_stringByRemovingCharactersInSet:options:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/NSString_CRLAdditions.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:353 isFatal:0 description:"invalid nil value for '%{public}s'", "charSet"];

    v8 = self;
  }

  return v8;
}

- (id)crl_stringByReplacingInstancesOfCharactersInSet:(id)a3 withString:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(NSString *)self rangeOfCharacterFromSet:v6 options:2]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = self;
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
        v12 = [v10 scanUpToCharactersFromSet:v6 intoString:&v17];
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
        [v10 scanCharactersFromSet:v6 intoString:&v16];
        v11 = v16;

        for (i = [v11 length]; i; --i)
        {
          [v9 appendString:v7];
        }

        if ([v10 isAtEnd])
        {
          goto LABEL_13;
        }
      }

      v11 = v13;
LABEL_13:
    }

    v8 = [NSString stringWithString:v9];
  }

  return v8;
}

- (unint64_t)crl_countInstancesOfString:(id)a3 options:(unint64_t)a4
{
  v6 = a3;
  v7 = [(NSString *)self length];
  v8 = [v6 length];
  v9 = [(NSString *)self rangeOfString:v6 options:a4 range:0, v7];
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
      v9 = [(NSString *)self rangeOfString:v6 options:a4 range:&v8[v9], v7];
      v11 = v12;
    }

    while (v9 != 0x7FFFFFFFFFFFFFFFLL);
  }

  return v10;
}

- (id)crl_escapeForIcuRegex
{
  if (qword_1000B4AF8 != -1)
  {
    sub_10007BDE4();
  }

  v3 = self;
  v4 = [(NSString *)v3 length];
  *&v13 = [(NSString *)v3 rangeOfCharacterFromSet:qword_1000B4AF0];
  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v3;
  }

  else
  {
    v6 = [NSMutableString alloc];
    v7 = [(NSString *)v3 substringToIndex:v13];
    v5 = [v6 initWithString:v7];

    if (v4 != v13)
    {
      do
      {
        [(NSString *)v5 appendFormat:@"\\%C", [(NSString *)v3 characterAtIndex:v13]];
        *&v13 = v13 + 1;
        *(&v13 + 1) = &v4[-v13];
        v8 = v13;
        if (v4 != v13)
        {
          *&v12 = [(NSString *)v3 rangeOfCharacterFromSet:qword_1000B4AF0 options:0 range:v13];
          *(&v12 + 1) = v9;
          v13 = v12;
          if (v12 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v13 = v4;
          }

          if (v13 != v8)
          {
            v10 = [(NSString *)v3 substringWithRange:v8, v13 - v8];
            [(NSString *)v5 appendString:v10];
          }
        }
      }

      while (*(&v13 + 1));
    }
  }

  return v5;
}

- (BOOL)crl_isDescendantOfPath:(id)a3
{
  v4 = a3;
  v5 = [(NSString *)self pathComponents];
  v6 = [v4 pathComponents];
  v7 = [v6 count];
  if (v7)
  {
    do
    {
      v8 = v7 - 1;
      v9 = [v6 objectAtIndexedSubscript:v7 - 1];
      v10 = [v9 isEqualToString:@"/"];

      if (!v10)
      {
        break;
      }

      --v7;
    }

    while (v8);
  }

  v11 = [v5 count];
  v12 = v7 <= v11;
  if (v7 - 1 < v11)
  {
    v13 = 0;
    v14 = 1;
    do
    {
      v15 = [v5 objectAtIndexedSubscript:v13];
      v16 = [v6 objectAtIndexedSubscript:v13];
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

- (BOOL)crl_isChildOfPath:(id)a3
{
  v4 = a3;
  v5 = [(NSString *)self pathComponents];
  v6 = [v5 mutableCopy];

  v7 = [v4 pathComponents];
  v8 = [v7 mutableCopy];

  if ([v6 count] >= 2)
  {
    do
    {
      v9 = [v6 lastObject];
      v10 = [v9 isEqualToString:@"/"];

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
      v11 = [v8 lastObject];
      v12 = [v11 isEqualToString:@"/"];

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

- (id)crl_substringWithComposedCharacterSequencesTruncatedToLength:(unint64_t)a3
{
  if ([(NSString *)self length]<= a3)
  {
    v5 = self;
  }

  else
  {
    v5 = [(NSString *)self substringToIndex:[(NSString *)self rangeOfComposedCharacterSequenceAtIndex:a3]];
  }

  return v5;
}

- (id)crl_substringWithComposedCharacterSequencesToFileSystemLength:(unint64_t)a3
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
      v12 = [v11 fileSystemRepresentation];

      v7 += strlen(v12);
      if (v7 > a3)
      {
        break;
      }

      v6 += v10;
    }

    while (v6 < v5);
  }

  if (v6 == v5)
  {
    v13 = self;
  }

  else
  {
    v13 = [(NSString *)self substringToIndex:v6];
  }

  return v13;
}

- (id)crl_stringWithPathRelativeTo:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [(NSString *)self stringByStandardizingPath];
    v7 = [v6 pathComponents];

    v8 = [v4 stringByStandardizingPath];
    v9 = [v8 pathComponents];

    v10 = [v7 count];
    v11 = [v9 count];
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
      v15 = [v9 objectAtIndexedSubscript:v13];
      v16 = [v7 objectAtIndexedSubscript:v13];
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
        v19 = &stru_1000A9FE0;
      }

      else
      {
        v20 = [v7 subarrayWithRange:{v12, &v10[-v12]}];
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

- (id)crl_stringWithPathRelativeTo:(id)a3 allowBacktracking:(BOOL)a4
{
  v6 = a3;
  if (a4)
  {
    v7 = [(NSString *)self stringByStandardizingPath];
    v8 = [v7 pathComponents];

    v9 = [v6 stringByStandardizingPath];
    v10 = [v9 pathComponents];

    v11 = [v8 count];
    v12 = [v10 count];
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
        v17 = [v10 objectAtIndexedSubscript:v15];
        v18 = [v8 objectAtIndexedSubscript:v15];
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
      v23 = &stru_1000A9FE0;
    }

    else
    {
      v22 = &stru_1000A9FE0;
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
        v24 = [v8 objectAtIndexedSubscript:v16];
        v20 = [(__CFString *)v23 stringByAppendingPathComponent:v24];

        ++v16;
        v23 = v20;
      }

      while (v11 != v16);
    }
  }

  else
  {
    v20 = [(NSString *)self crl_stringWithPathRelativeTo:v6];
  }

  return v20;
}

- (id)crl_stringByTrimmingCharactersInSetFromFront:(id)a3
{
  p_isa = self;
  v5 = [(NSString *)p_isa rangeOfCharacterFromSet:a3 options:8];
  v7 = v6;
  if (v6 == [(NSString *)p_isa length])
  {
    v8 = &stru_1000A9FE0;
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

+ (id)crl_stringWithHexFromBytes:(const char *)a3 length:(unint64_t)a4
{
  v4 = a4;
  v6 = 2 * a4;
  v7 = malloc_type_malloc(2 * a4, 0x100004077774924uLL);
  if (v4)
  {
    v8 = v7;
    do
    {
      v9 = *a3++;
      *v8 = a0123456789abcd[v9 >> 4];
      v8[1] = a0123456789abcd[v9 & 0xF];
      v8 += 2;
      --v4;
    }

    while (v4);
  }

  v10 = [[NSString alloc] initWithBytesNoCopy:v7 length:v6 encoding:1 freeWhenDone:1];

  return v10;
}

+ (id)crl_stringByBase64EncodingBytes:(const char *)a3 length:(unint64_t)a4 breakLines:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = [NSMutableString stringWithCapacity:4 * a4 / 3];
  if (v6 < 3)
  {
    v12 = 0;
  }

  else
  {
    v9 = a3 + 2;
    v16 = 3 * ((v6 - 3) / 3) + 3;
    v10 = -4;
    v11 = 4;
    do
    {
      [v8 appendFormat:@"%c%c%c%c", aAbcdefghijklmn[*(v9 - 2) >> 2], aAbcdefghijklmn[(((*(v9 - 1) << 8) | (*(v9 - 2) << 16)) >> 12) & 0x3F], aAbcdefghijklmn[((*v9 | (*(v9 - 1) << 8)) >> 6) & 0x3F], aAbcdefghijklmn[*v9 & 0x3F]];
      if (v5 && !(v10 + 76 * (v11 / 0x4C)))
      {
        [v8 appendString:@"\n"];
      }

      v9 += 3;
      v10 -= 4;
      v11 += 4;
      v6 -= 3;
    }

    while (v6 > 2);
    v12 = v16;
  }

  if (v6 == 1)
  {
    [v8 appendFormat:@"%c%c==", aAbcdefghijklmn[a3[v12] >> 2], aAbcdefghijklmn[16 * (a3[v12] & 3)], v15];
  }

  else if (v6 == 2)
  {
    v13 = &a3[v12];
    [v8 appendFormat:@"%c%c%c=", aAbcdefghijklmn[*v13 >> 2], aAbcdefghijklmn[((((v13[1] & 0xF0) << 8) | (*v13 << 16)) >> 12) & 0x3F], aAbcdefghijklmn[4 * (v13[1] & 0xF)]];
  }

  return v8;
}

- (id)crl_encodeStringBase64
{
  v2 = [(NSString *)self UTF8String];
  v3 = strlen(v2);

  return [NSString crl_stringByBase64EncodingBytes:v2 length:v3];
}

- (id)crl_stringByMakingFirstCharacterLowercase
{
  v2 = self;
  if ([(NSString *)v2 length])
  {
    v3 = [(NSString *)v2 substringToIndex:1];
    v4 = [v3 lowercaseString];
    if (([v3 isEqualToString:v4] & 1) == 0)
    {
      v5 = [(NSString *)v2 substringFromIndex:1];
      v6 = [v4 stringByAppendingString:v5];

      v2 = v6;
    }
  }

  return v2;
}

- (id)crl_stringByMakingFirstCharacterUppercase
{
  v3 = [(NSString *)self mutableCopy];
  if ([v3 length])
  {
    v4 = [(NSString *)self substringToIndex:1];
    v5 = [v4 uppercaseString];
    [v3 replaceCharactersInRange:0 withString:{1, v5}];
  }

  return v3;
}

- (id)crl_stringTrimByLimitingFirstCharacterToSet:(id)a3
{
  v4 = a3;
  v5 = self;
  if ([(NSString *)v5 length])
  {
    v6 = [(NSString *)v5 characterAtIndex:0];
    if ([(NSString *)v5 length])
    {
      while (([v4 characterIsMember:v6] & 1) == 0)
      {
        v7 = [(NSString *)v5 substringFromIndex:1];

        if ([v7 length])
        {
          v6 = [v7 characterAtIndex:0];
        }

        v5 = v7;
        if (![v7 length])
        {
          goto LABEL_9;
        }
      }
    }
  }

  v7 = v5;
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

- (BOOL)crl_containsOnlyCharactersFromSet:(id)a3
{
  v4 = [a3 invertedSet];
  v5 = [(NSString *)self rangeOfCharacterFromSet:v4];

  return v5 == 0x7FFFFFFFFFFFFFFFLL;
}

- (id)crl_stringByDeletingPathExtensionIfEqualTo:(id)a3
{
  v4 = a3;
  v5 = [(NSString *)self pathExtension];
  v6 = [v5 isEqualToString:v4];

  if (v6)
  {
    v7 = [(NSString *)self stringByDeletingPathExtension];
  }

  else
  {
    v7 = self;
  }

  v8 = v7;

  return v8;
}

- (id)crl_tolerantStringByAppendingPathExtension:(id)a3
{
  v4 = a3;
  if (-[NSString isEqualToString:](self, "isEqualToString:", &stru_1000A9FE0) || [v4 isEqualToString:&stru_1000A9FE0])
  {
    v5 = self;
LABEL_4:
    v6 = v5;
    goto LABEL_5;
  }

  if ([(NSString *)self isEqualToString:@"\\\\""])
  {
    v8 = [@"\\"" stringByAppendingPathExtension:v4];
    v9 = [@"\\"" stringByAppendingString:v8];
  }

  else
  {
    if (![(NSString *)self length]|| [(NSString *)self characterAtIndex:0]!= 126)
    {
      v5 = [(NSString *)self stringByAppendingPathExtension:v4];
      goto LABEL_4;
    }

    v10 = [@"X" stringByAppendingString:self];
    v8 = [v10 stringByAppendingPathExtension:v4];

    v9 = [v8 substringFromIndex:1];
  }

  v6 = v9;

LABEL_5:

  return v6;
}

+ (id)crl_stringByHexEncodingData:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableString string];
  v5 = [v3 bytes];
  v6 = [v3 length];
  if (v6)
  {
    v7 = v6;
    do
    {
      v8 = *v5++;
      [v4 appendFormat:@"%02x", v8];
      --v7;
    }

    while (v7);
  }

  v9 = [v4 copy];

  return v9;
}

- (_NSRange)crl_rangeOfString:(id)a3 options:(unint64_t)a4 updatingSearchRange:(_NSRange *)a5
{
  v8 = a3;
  v9 = v8;
  if (a5)
  {
    location = a5->location;
    length = a5->length;
    v12 = [(NSString *)self rangeOfString:v8 options:a4 range:a5->location, length];
    v14 = v12;
    v15 = v13;
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      *a5 = NSInvalidRange;
    }

    else if ((a4 & 4) != 0)
    {
      a5->location = location;
      a5->length = v12 - location;
    }

    else
    {
      a5->location = v12 + v13;
      a5->length = length + location - (v12 + v13);
    }
  }

  else
  {
    v14 = -[NSString rangeOfString:options:range:](self, "rangeOfString:options:range:", v8, a4, 0, [v8 length]);
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

- (void)crl_enumerateRangesOfCharactersInSet:(id)a3 usingBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[NSScanner alloc] initWithString:self];
  [v8 setCaseSensitive:1];
  [v8 setCharactersToBeSkipped:0];
  if (([v8 isAtEnd] & 1) == 0)
  {
    do
    {
      v9 = [v8 scanLocation];
      if ([v8 scanCharactersFromSet:v6 intoString:0])
      {
        v10 = [v8 scanLocation];
        v11 = 0;
        v7[2](v7, v9, v10 - v9, &v11);
        if (v11)
        {
          break;
        }
      }

      if (([v8 isAtEnd] & 1) == 0)
      {
        [v8 scanUpToCharactersFromSet:v6 intoString:0];
      }
    }

    while (![v8 isAtEnd]);
  }
}

- (id)crl_setOfContainedWordsIncludingPunctuationAndSymbols:(BOOL)a3
{
  v3 = a3;
  v30 = +[NSMutableSet set];
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_100006DF0;
  v37[3] = &unk_1000A5FF0;
  v35 = v3;
  v38 = v3;
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
    v34 = self;
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

      v26 = [(NSString *)v34 substringWithRange:v24, v25, v30];
      v27 = [v26 stringByTrimmingCharactersInSet:v36];

      if ([v27 length])
      {
        [v30 addObject:v27];
      }

      location = v19;
      v15 = v28;
      self = v34;
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
  if (qword_1000B4B08 != -1)
  {
    sub_10007BECC();
  }

  v3 = qword_1000B4B00;

  return [(NSString *)self stringByReplacingOccurrencesOfString:v3 withString:&stru_1000A9FE0];
}

- (id)crl_middleTruncateToLength:(unint64_t)a3
{
  v4 = self;
  if ([(NSString *)v4 length]<= a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = [(NSString *)v4 mutableCopy];
    do
    {
      [(NSString *)v5 replaceCharactersInRange:([(NSString *)v5 length]>> 1) - 1 withString:3, @"…"];
    }

    while ([(NSString *)v5 length]> a3);
  }

  return v5;
}

- (BOOL)crl_isEqualToString:(id)a3
{
  if (a3)
  {
    return [(NSString *)self isEqualToString:?];
  }

  else
  {
    return 0;
  }
}

- (id)crl_stringWithNormalizedHyphensAndQuotationMarks
{
  v2 = [(NSString *)self crl_stringWithNormalizedHyphens];
  v3 = [v2 crl_stringWithNormalizedQuotationMarks];

  return v3;
}

- (id)crl_stringWithNormalizedHyphens
{
  if (qword_1000B4B10 != -1)
  {
    sub_10007BEE0();
  }

  v3 = qword_1000B4B18;

  return [(NSString *)self crl_stringByReplacingInstancesOfCharactersInSet:v3 withString:@"-"];
}

- (id)crl_stringWithNormalizedQuotationMarks
{
  if (qword_1000B4B20 != -1)
  {
    sub_10007BEF4();
  }

  v3 = qword_1000B4B28;

  return [(NSString *)self crl_stringByReplacingInstancesOfCharactersInSet:v3 withString:@"'"];
}

- (id)crl_stringWithoutBidiControls
{
  v3 = [NSCharacterSet characterSetWithCharactersInString:@"\u200E\u200F\u202A\u202B\u202C\u202D\u202E⁦⁧⁨⁩"];
  v4 = [(NSString *)self crl_stringByReplacingInstancesOfCharactersInSet:v3 withString:&stru_1000A9FE0];

  return v4;
}

- (id)crl_stringByIncrementingCounterAfterDuplicateTitleModifierWithUniquenessTest:(id)a3
{
  v4 = a3;
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"copy" value:0 table:0];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"%1$@ %2$@" value:0 table:0];

  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"%1$@ %2$@ %3$@" value:0 table:0];

  v11 = objc_alloc_init(NSNumberFormatter);
  v12 = [(NSString *)self crl_stringByIncrementingCounterAfterDuplicateTitleModifierWithLocalizedCopyString:v6 firstCopyFormatString:v8 generalCopyFormatString:v10 numberFormatter:v11 uniquenessTest:v4];

  return v12;
}

- (id)crl_stringByIncrementingCounterAfterDuplicateTitleModifierWithLocalizedCopyString:(id)a3 firstCopyFormatString:(id)a4 generalCopyFormatString:(id)a5 numberFormatter:(id)a6 uniquenessTest:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v33 = 0;
  v17 = v13;
  v18 = [(NSString *)self crl_parseBaseTitleWithLocalizedCopyString:v12 firstCopyFormatString:v13 generalCopyFormatString:v14 outNumber:&v33];
  v19 = v18;
  if (v18)
  {
    v34[0] = @"%1$@";
    v34[1] = @"%2$@";
    v31 = v18;
    v32 = v12;
    v35[0] = v18;
    v35[1] = v12;
    v20 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:2];
    v21 = [v20 mutableCopy];

    for (i = [(NSString *)self copy]; [(NSString *)self isEqualToString:i]|| (v16[2](v16, i) & 1) == 0; i = v29)
    {
      v23 = v33;
      v24 = ++v33;
      if (v23)
      {
        v25 = v14;
      }

      else
      {
        v25 = v17;
      }

      v26 = v25;
      v27 = [NSNumber numberWithUnsignedInteger:v24];
      v28 = [v15 stringFromNumber:v27];
      [v21 setObject:v28 forKeyedSubscript:@"%3$@"];

      v29 = [v26 crl_stringByApplyingSubstitutions:v21];
    }

    v19 = v31;
    v12 = v32;
  }

  else
  {
    i = [(NSString *)self copy];
  }

  return i;
}

- (id)crl_regexForTitleParsingWithLocalizedCopyString:(id)a3 isFirstCopyFormatString:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([(NSString *)self crl_countInstancesOfString:@"%1$@" options:0]== 1 && [(NSString *)self crl_countInstancesOfString:@"%2$@" options:0]== 1 && (v4 || [(NSString *)self crl_countInstancesOfString:@"%3$@" options:0]== 1))
  {
    v7 = [NSRegularExpression escapedPatternForString:self];
    v8 = [NSRegularExpression escapedPatternForString:@"%1$@"];
    v18[0] = v8;
    v19[0] = @"(.*)";
    v9 = [NSRegularExpression escapedPatternForString:@"%2$@"];
    v18[1] = v9;
    v19[1] = v6;
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
    if (CRLAssertCat_init_token != -1)
    {
      sub_10007BF08();
    }

    v15 = CRLAssertCat_log_t;
    if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
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
      v29 = self;
      v30 = 1024;
      v31 = v4;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Invalid format string: %{public}@, isFirstCopyFormatString: %d", buf, 0x32u);
    }

    if (CRLAssertCat_init_token != -1)
    {
      sub_10007BF1C();
    }

    v16 = CRLAssertCat_log_t;
    if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10007BC70(v16);
    }

    v7 = [NSString stringWithUTF8String:"[NSString(CRLAdditions) crl_regexForTitleParsingWithLocalizedCopyString:isFirstCopyFormatString:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/NSString_CRLAdditions.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v11 lineNumber:1148 isFatal:0 description:"Invalid format string: %{public}@, isFirstCopyFormatString: %d", self, v4];
    v13 = 0;
  }

  return v13;
}

- (id)crl_parseBaseTitleWithLocalizedCopyString:(id)a3 firstCopyFormatString:(id)a4 generalCopyFormatString:(id)a5 outNumber:(unint64_t *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v12 crl_regexForTitleParsingWithLocalizedCopyString:v10 isFirstCopyFormatString:0];
  if (!v13)
  {
    v21 = self;
    goto LABEL_23;
  }

  v14 = [v13 firstMatchInString:self options:0 range:{0, -[NSString length](self, "length")}];
  if (v14)
  {
    v15 = [v12 rangeOfString:@"%1$@"];
    v16 = [v12 rangeOfString:@"%3$@"];
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
    v21 = [(NSString *)self substringWithRange:v19, v20];
    v22 = [v14 rangeAtIndex:v18];
    v24 = [(NSString *)self substringWithRange:v22, v23];
    v25 = [v24 integerValue];
    goto LABEL_20;
  }

  v26 = [v11 crl_regexForTitleParsingWithLocalizedCopyString:v10 isFirstCopyFormatString:1];
  if (v26)
  {
    v24 = v26;
    v32 = [v26 firstMatchInString:self options:0 range:{0, -[NSString length](self, "length")}];
    if (v32)
    {
      v27 = [v11 rangeOfString:@"%1$@"];
      v25 = 1;
      if (v27 < [v11 rangeOfString:@"%3$@"])
      {
        v28 = 1;
      }

      else
      {
        v28 = 2;
      }

      v29 = [v32 rangeAtIndex:v28];
      v21 = [(NSString *)self substringWithRange:v29, v30];
    }

    else
    {
      v21 = [(NSString *)self copy];
      v25 = 0;
    }

LABEL_20:
    if (a6)
    {
      *a6 = v25;
    }

    goto LABEL_22;
  }

  v21 = self;
LABEL_22:

LABEL_23:

  return v21;
}

- (id)crl_stringByApplyingSubstitutions:(id)a3
{
  v4 = a3;
  v5 = [(NSString *)self mutableCopy];
  v6 = objc_opt_new();
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100007D08;
  v25[3] = &unk_1000A60B8;
  v25[4] = v5;
  v25[5] = v6;
  [v4 enumerateKeysAndObjectsUsingBlock:v25];
  v7 = [v6 allKeys];
  v8 = [v7 sortedArrayUsingComparator:&stru_1000A60F8];

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
        v16 = [v14 rangeValue];
        if (v15)
        {
          v18 = v16 == 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v18 = 1;
        }

        if (!v18)
        {
          [v5 replaceCharactersInRange:v16 withString:{v17, v15}];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v11);
  }

  v19 = [v5 copy];

  return v19;
}

+ (id)crl_JSONStringFromString:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = +[NSMutableString string];
    [v3 crl_appendJSONStringToString:v4];
  }

  else
  {
    v4 = @"null";
  }

  return v4;
}

- (void)crl_appendJSONStringToString:(id)a3
{
  v4 = a3;
  if (qword_1000B4B38 != -1)
  {
    sub_10007BF44();
  }

  [v4 appendString:@""];
  if ([(NSString *)self rangeOfCharacterFromSet:qword_1000B4B30]!= 0x7FFFFFFFFFFFFFFFLL)
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
            v10 = v4;
            v11 = @"\\n";
          }

          else
          {
            if (v8 != 12)
            {
              goto LABEL_31;
            }

            v10 = v4;
            v11 = @"\\f";
          }
        }

        else if (v8 == 8)
        {
          v10 = v4;
          v11 = @"\\b";
        }

        else
        {
          if (v8 != 9)
          {
            goto LABEL_31;
          }

          v10 = v4;
          v11 = @"\\t";
        }
      }

      else if (v8 <= 91)
      {
        if (v8 == 13)
        {
          v10 = v4;
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
            [v4 appendString:v12];

            goto LABEL_29;
          }

          v10 = v4;
          v11 = @"\\"";
        }
      }

      else
      {
        switch(v8)
        {
          case 0x5C:
            v10 = v4;
            v11 = @"\\\\"";
            break;
          case 0x2028:
            v10 = v4;
            v11 = @"\\u2028";
            break;
          case 0x2029:
            v10 = v4;
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

  [v4 appendString:self];
LABEL_36:
  [v4 appendString:@""];
}

+ (id)crl_stringWithItemProviderData:(id)a3 typeIdentifier:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = [NSString objectWithItemProviderData:a3 typeIdentifier:v7 error:a5];
  if (!v8)
  {
    v9 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (CRLAssertCat_init_token != -1)
    {
      sub_10007BF58();
    }

    if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10007BF6C(v7, v9);
    }

    if (CRLAssertCat_init_token != -1)
    {
      sub_10007C024();
    }

    v10 = CRLAssertCat_log_t;
    if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10007BC70(v10);
    }

    v11 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[NSString(CRLAdditions) crl_stringWithItemProviderData:typeIdentifier:error:]");
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/NSString_CRLAdditions.m"];
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:1342 isFatal:0 description:"Unable to make a string out of data with UTI %@", v7];
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
    v6 = self;
  }

  else
  {
    v6 = [(NSString *)self crl_uncommentedAddress];
  }

  return v6;
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
  __chkstk_darwin();
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

+ (id)crl_localizedDisplayNameWithPersonNameComponents:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    v4 = 0;
    goto LABEL_20;
  }

  v4 = [NSPersonNameComponentsFormatter localizedStringFromPersonNameComponents:v3 style:0 options:0];
  if (v4)
  {
    goto LABEL_20;
  }

  if (CRLDefaultCat_init_token != -1)
  {
    sub_10007C04C();
  }

  v5 = CRLDefaultCat_log_t;
  if (os_log_type_enabled(CRLDefaultCat_log_t, OS_LOG_TYPE_ERROR))
  {
    sub_10007C060(v5);
  }

  v6 = [v3 givenName];
  v7 = [v6 length];
  v8 = [v3 familyName];
  v9 = [v8 length];
  if (v7 && v9)
  {
    if (([v6 crl_isCJKString] & 1) != 0 || objc_msgSend(v8, "crl_isCJKString"))
    {
      v10 = [v8 stringByAppendingString:v6];
    }

    else
    {
      v10 = [NSString stringWithFormat:@"%@ %@", v6, v8];
    }
  }

  else if (v7)
  {
    v10 = v6;
  }

  else
  {
    if (!v9)
    {
      v4 = 0;
      goto LABEL_19;
    }

    v10 = v8;
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
    v4 = &stru_1000A9FE0;
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
    v4 = &stru_1000A9FE0;
  }

  else
  {
    v4 = [(NSString *)self substringFromIndex:v3 + 1];
  }

  return v4;
}

- (id)crl_keyPathByPrependingKey:(id)a3
{
  v4 = a3;
  if ([(NSString *)self length])
  {
    if ([v4 length])
    {
      v5 = [NSString stringWithFormat:@"%@.%@", v4, self];
      goto LABEL_7;
    }

    v6 = self;
  }

  else
  {
    v6 = v4;
  }

  v5 = [NSString stringWithString:v6];
LABEL_7:
  v7 = v5;

  return v7;
}

- (id)crl_keyPathByAppendingKey:(id)a3
{
  v4 = a3;
  if ([(NSString *)self length])
  {
    if ([v4 length])
    {
      v5 = [NSString stringWithFormat:@"%@.%@", self, v4];
      goto LABEL_7;
    }

    v6 = self;
  }

  else
  {
    v6 = v4;
  }

  v5 = [NSString stringWithString:v6];
LABEL_7:
  v7 = v5;

  return v7;
}

- (id)crl_firstKey
{
  v2 = self;
  v3 = [(NSString *)v2 rangeOfString:@"." options:2];
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [(NSString *)v2 substringToIndex:v3];

    v2 = v4;
  }

  return v2;
}

- (id)crl_lastKey
{
  v2 = self;
  v3 = [(NSString *)v2 rangeOfString:@"." options:6];
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [(NSString *)v2 substringFromIndex:v3 + 1];

    v2 = v4;
  }

  return v2;
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

- (id)crl_initRedactedWithFormat:(id)a3 arguments:(char *)a4
{
  v5 = [a3 mutableCopy];
  [v5 replaceOccurrencesOfString:@"%s" withString:@"<REDACT %s REDACT>" options:0 range:{0, objc_msgSend(v5, "length")}];
  [v5 replaceOccurrencesOfString:@"%@" withString:@"<REDACT %@ REDACT>" options:0 range:{0, objc_msgSend(v5, "length")}];
  [v5 replaceOccurrencesOfString:@"%{public}" withString:@"%" options:0 range:{0, objc_msgSend(v5, "length")}];
  v6 = [[NSString alloc] initWithFormat:v5 arguments:a4];
  if (qword_1000B4B48 != -1)
  {
    sub_10007C0A4();
  }

  v7 = [qword_1000B4B40 stringByReplacingMatchesInString:v6 options:0 range:0 withTemplate:{objc_msgSend(v6, "length"), @"<redacted>"}];

  return v7;
}

- (id)crl_initUnRedactedWithFormat:(id)a3 arguments:(char *)a4
{
  v5 = [a3 mutableCopy];
  [v5 replaceOccurrencesOfString:@"%{public}" withString:@"%" options:0 range:{0, objc_msgSend(v5, "length")}];
  v6 = [(NSString *)self initWithFormat:v5 arguments:a4];

  return v6;
}

+ (id)crl_redactedStringWithFormat:(id)a3 arguments:(char *)a4
{
  v5 = a3;
  v6 = [[NSString alloc] crl_initRedactedWithFormat:v5 arguments:a4];

  return v6;
}

+ (id)crl_unRedactedStringWithFormat:(id)a3 arguments:(char *)a4
{
  v5 = a3;
  v6 = [[NSString alloc] crl_initUnRedactedWithFormat:v5 arguments:a4];

  return v6;
}

@end