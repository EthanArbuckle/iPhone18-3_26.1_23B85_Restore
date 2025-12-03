@interface NSString
+ (NSArray)readableTypeIdentifiersForItemProvider;
+ (NSArray)writableTypeIdentifiersForItemProvider;
+ (NSString)allocWithZone:(_NSZone *)zone;
+ (NSString)localizedNameOfStringEncoding:(NSStringEncoding)encoding;
+ (NSString)localizedStringWithFormat:(NSString *)format;
+ (NSString)localizedStringWithValidatedFormat:(NSString *)format validFormatSpecifiers:(NSString *)validFormatSpecifiers error:(NSError *)error;
+ (NSString)string;
+ (NSString)stringWithBytes:(const void *)bytes length:(unint64_t)length encoding:(unint64_t)encoding;
+ (NSString)stringWithCString:(const char *)cString encoding:(NSStringEncoding)enc;
+ (NSString)stringWithCharacters:(const unichar *)characters length:(NSUInteger)length;
+ (NSString)stringWithContentsOfFile:(NSString *)path encoding:(NSStringEncoding)enc error:(NSError *)error;
+ (NSString)stringWithContentsOfFile:(NSString *)path usedEncoding:(NSStringEncoding *)enc error:(NSError *)error;
+ (NSString)stringWithContentsOfURL:(NSURL *)url encoding:(NSStringEncoding)enc error:(NSError *)error;
+ (NSString)stringWithContentsOfURL:(NSURL *)url usedEncoding:(NSStringEncoding *)enc error:(NSError *)error;
+ (NSString)stringWithFormat:(NSString *)format;
+ (NSString)stringWithString:(NSString *)string;
+ (NSString)stringWithUTF8String:(const char *)nullTerminatedCString;
+ (NSStringEncoding)defaultCStringEncoding;
+ (NSStringEncoding)stringEncodingForData:(NSData *)data encodingOptions:(NSDictionary *)opts convertedString:(NSString *)string usedLossyConversion:(BOOL *)usedLossyConversion;
+ (const)availableStringEncodings;
+ (id)_newStringFromUTF16InternalData:(id)data typeIdentifier:(id)identifier error:(id *)error;
+ (id)_newZStringWithCharacters:(const unsigned __int16 *)characters length:(unint64_t)length;
+ (id)_newZStringWithString:(id)string;
+ (id)_newZStringWithUTF8String:(const char *)string;
+ (id)_stringWithFormat:(id)format locale:(id)locale options:(id)options arguments:(char *)arguments;
+ (id)_stringWithValidatedFormat:(id)format validFormatSpecifiers:(id)specifiers locale:(id)locale arguments:(char *)arguments error:(id *)error;
+ (id)_web_stringRepresentationForBytes:(int64_t)bytes;
+ (id)objectWithItemProviderData:(id)data typeIdentifier:(id)identifier error:(id *)error;
+ (id)stringWithCString:(const char *)bytes;
+ (id)stringWithCString:(const char *)bytes length:(NSUInteger)length;
+ (id)stringWithContentsOfFile:(NSString *)path;
+ (id)stringWithContentsOfURL:(NSURL *)url;
+ (void)initialize;
- ($2F068FC02377E22BA03580A8162C781E)decimalValue;
- (BOOL)BOOLValue;
- (BOOL)__swiftFillFileSystemRepresentationWithPointer:(char *)pointer maxLength:(int64_t)length;
- (BOOL)_getCString:(char *)string maxLength:(unint64_t)length encoding:(unsigned int)encoding;
- (BOOL)_web_domainMatches:(id)matches;
- (BOOL)_web_hasCountryCodeTLD;
- (BOOL)_web_looksLikeIPAddress;
- (BOOL)canBeConvertedToEncoding:(NSStringEncoding)encoding;
- (BOOL)getBytes:(void *)buffer maxLength:(NSUInteger)maxBufferCount usedLength:(NSUInteger *)usedBufferCount encoding:(NSStringEncoding)encoding options:(NSStringEncodingConversionOptions)options range:(NSRange)range remainingRange:(NSRangePointer)leftover;
- (BOOL)getCString:(char *)buffer maxLength:(NSUInteger)maxBufferCount encoding:(NSStringEncoding)encoding;
- (BOOL)getExternalRepresentation:(id *)representation extendedAttributes:(id *)attributes forWritingToURLOrPath:(id)path usingEncoding:(unint64_t)encoding error:(id *)error;
- (BOOL)getFileSystemRepresentation:(char *)cname maxLength:(NSUInteger)max;
- (BOOL)isAbsolutePath;
- (BOOL)isEqual:(id)equal;
- (BOOL)writeToFile:(NSString *)path atomically:(BOOL)useAuxiliaryFile;
- (BOOL)writeToURL:(NSURL *)url atomically:(BOOL)atomically;
- (NSArray)componentsSeparatedByCharactersInSet:(NSCharacterSet *)separator;
- (NSArray)componentsSeparatedByString:(NSString *)separator;
- (NSArray)linguisticTagsInRange:(NSRange)range scheme:(NSLinguisticTagScheme)scheme options:(NSLinguisticTaggerOptions)options orthography:(NSOrthography *)orthography tokenRanges:(NSArray *)tokenRanges;
- (NSArray)pathComponents;
- (NSArray)stringsByAppendingPaths:(NSArray *)paths;
- (NSArray)writableTypeIdentifiersForItemProvider;
- (NSComparisonResult)caseInsensitiveCompare:(NSString *)string;
- (NSComparisonResult)compare:(NSString *)string;
- (NSComparisonResult)compare:(NSString *)string options:(NSStringCompareOptions)mask;
- (NSComparisonResult)compare:(NSString *)string options:(NSStringCompareOptions)mask range:(NSRange)rangeOfReceiverToCompare;
- (NSComparisonResult)compare:(NSString *)string options:(NSStringCompareOptions)mask range:(NSRange)rangeOfReceiverToCompare locale:(id)locale;
- (NSComparisonResult)localizedCaseInsensitiveCompare:(NSString *)string;
- (NSComparisonResult)localizedCompare:(NSString *)string;
- (NSComparisonResult)localizedStandardCompare:(NSString *)string;
- (NSData)dataUsingEncoding:(NSStringEncoding)encoding allowLossyConversion:(BOOL)lossy;
- (NSDictionary)propertyListFromStringsFileFormat;
- (NSRange)lineRangeForRange:(NSRange)range;
- (NSRange)localizedStandardRangeOfString:(NSString *)str;
- (NSRange)paragraphRangeForRange:(NSRange)range;
- (NSRange)rangeOfCharacterFromSet:(NSCharacterSet *)searchSet;
- (NSRange)rangeOfCharacterFromSet:(NSCharacterSet *)searchSet options:(NSStringCompareOptions)mask;
- (NSRange)rangeOfCharacterFromSet:(NSCharacterSet *)searchSet options:(NSStringCompareOptions)mask range:(NSRange)rangeOfReceiverToSearch;
- (NSRange)rangeOfComposedCharacterSequenceAtIndex:(NSUInteger)index;
- (NSRange)rangeOfComposedCharacterSequencesForRange:(NSRange)range;
- (NSRange)rangeOfString:(NSString *)searchString;
- (NSRange)rangeOfString:(NSString *)searchString options:(NSStringCompareOptions)mask;
- (NSRange)rangeOfString:(NSString *)searchString options:(NSStringCompareOptions)mask range:(NSRange)rangeOfReceiverToSearch;
- (NSRange)rangeOfString:(NSString *)searchString options:(NSStringCompareOptions)mask range:(NSRange)rangeOfReceiverToSearch locale:(NSLocale *)locale;
- (NSString)capitalizedStringWithLocale:(NSLocale *)locale;
- (NSString)commonPrefixWithString:(NSString *)str options:(NSStringCompareOptions)mask;
- (NSString)decomposedStringWithCanonicalMapping;
- (NSString)decomposedStringWithCompatibilityMapping;
- (NSString)initWithCString:(const char *)nullTerminatedCString encoding:(NSStringEncoding)encoding;
- (NSString)initWithCharacters:(const unichar *)characters length:(NSUInteger)length;
- (NSString)initWithCoder:(NSCoder *)coder;
- (NSString)initWithContentsOfFile:(NSString *)path encoding:(NSStringEncoding)enc error:(NSError *)error;
- (NSString)initWithContentsOfFile:(NSString *)path usedEncoding:(NSStringEncoding *)enc error:(NSError *)error;
- (NSString)initWithContentsOfURL:(NSURL *)url encoding:(NSStringEncoding)enc error:(NSError *)error;
- (NSString)initWithContentsOfURL:(NSURL *)url usedEncoding:(NSStringEncoding *)enc error:(NSError *)error;
- (NSString)initWithData:(NSData *)data encoding:(NSStringEncoding)encoding;
- (NSString)initWithData:(id)data usedEncoding:(unint64_t *)encoding;
- (NSString)initWithString:(NSString *)aString;
- (NSString)initWithUTF8String:(const char *)nullTerminatedCString;
- (NSString)lastPathComponent;
- (NSString)localizedCapitalizedString;
- (NSString)localizedLowercaseString;
- (NSString)localizedUppercaseString;
- (NSString)lowercaseStringWithLocale:(NSLocale *)locale;
- (NSString)pathExtension;
- (NSString)precomposedStringWithCanonicalMapping;
- (NSString)precomposedStringWithCompatibilityMapping;
- (NSString)stringByAbbreviatingWithTildeInPath;
- (NSString)stringByAddingPercentEncodingWithAllowedCharacters:(NSCharacterSet *)allowedCharacters;
- (NSString)stringByAddingPercentEscapesUsingEncoding:(NSStringEncoding)enc;
- (NSString)stringByAppendingFormat:(NSString *)format;
- (NSString)stringByAppendingPathComponent:(NSString *)str;
- (NSString)stringByAppendingPathExtension:(NSString *)str;
- (NSString)stringByAppendingString:(NSString *)aString;
- (NSString)stringByApplyingTransform:(NSStringTransform)transform reverse:(BOOL)reverse;
- (NSString)stringByDeletingLastPathComponent;
- (NSString)stringByDeletingPathExtension;
- (NSString)stringByExpandingTildeInPath;
- (NSString)stringByFoldingWithOptions:(NSStringCompareOptions)options locale:(NSLocale *)locale;
- (NSString)stringByPaddingToLength:(NSUInteger)newLength withString:(NSString *)padString startingAtIndex:(NSUInteger)padIndex;
- (NSString)stringByRemovingPercentEncoding;
- (NSString)stringByReplacingCharactersInRange:(NSRange)range withString:(NSString *)replacement;
- (NSString)stringByReplacingOccurrencesOfString:(NSString *)target withString:(NSString *)replacement;
- (NSString)stringByReplacingOccurrencesOfString:(NSString *)target withString:(NSString *)replacement options:(NSStringCompareOptions)options range:(NSRange)searchRange;
- (NSString)stringByReplacingPercentEscapesUsingEncoding:(NSStringEncoding)enc;
- (NSString)stringByTrimmingCharactersInSet:(NSCharacterSet *)set;
- (NSString)substringFromIndex:(NSUInteger)from;
- (NSString)substringToIndex:(NSUInteger)to;
- (NSString)substringWithRange:(NSRange)range;
- (NSString)uppercaseStringWithLocale:(NSLocale *)locale;
- (NSString)variantFittingPresentationWidth:(NSInteger)width;
- (NSStringEncoding)smallestEncoding;
- (NSUInteger)cStringLength;
- (NSUInteger)completePathIntoString:(NSString *)outputName caseSensitive:(BOOL)flag matchesIntoArray:(NSArray *)outputArray filterTypes:(NSArray *)filterTypes;
- (NSUInteger)lengthOfBytesUsingEncoding:(NSStringEncoding)enc;
- (NSUInteger)maximumLengthOfBytesUsingEncoding:(NSStringEncoding)enc;
- (_NSRange)_rangeOfRegularExpressionPattern:(id)pattern options:(unint64_t)options range:(_NSRange)range locale:(id)locale;
- (_NSRange)_web_rangeOfURLHost;
- (_NSRange)_web_rangeOfURLResourceSpecifier_nowarn;
- (_NSRange)_web_rangeOfURLScheme_nowarn;
- (_NSRange)_web_rangeOfURLUserPasswordHostPort;
- (_NSRange)significantText;
- (const)cString;
- (const)fileSystemRepresentation;
- (const)lossyCString;
- (double)doubleValue;
- (float)floatValue;
- (id)__escapeString5991;
- (id)_copyFormatStringWithConfiguration:(id)configuration;
- (id)_createSubstringWithRange:(_NSRange)range;
- (id)_initWithBytesOfUnknownEncoding:(char *)encoding length:(unint64_t)length copy:(BOOL)copy usedEncoding:(unint64_t *)usedEncoding;
- (id)_initWithDataOfUnknownEncoding:(id)encoding;
- (id)_newSubstringWithRange:(_NSRange)range zone:(_NSZone *)zone;
- (id)_stringByReplacingOccurrencesOfRegularExpressionPattern:(id)pattern withTemplate:(id)template options:(unint64_t)options range:(_NSRange)range;
- (id)_stringByResolvingSymlinksInPathUsingCache:(BOOL)cache;
- (id)_stringByStandardizingPathUsingCache:(BOOL)cache;
- (id)_stringRepresentation;
- (id)_urlStringByRemovingResolveFlags;
- (id)_web_HTTPStyleLanguageCode;
- (id)_web_HTTPStyleLanguageCodeWithoutRegion;
- (id)_web_URLFragment;
- (id)_web_characterSetFromContentTypeHeader_nowarn;
- (id)_web_domainFromHost;
- (id)_web_fileNameFromContentDispositionHeader_nowarn;
- (id)_web_filenameByFixingIllegalCharacters;
- (id)_web_fixedCarbonPOSIXPath;
- (id)_web_mimeTypeFromContentTypeHeader_nowarn;
- (id)_web_parseAsKeyValuePairHandleQuotes_nowarn:(BOOL)quotes_nowarn;
- (id)_web_splitAtNonDateCommas_nowarn;
- (id)_web_stringByCollapsingNonPrintingCharacters;
- (id)_web_stringByExpandingTildeInPath;
- (id)_web_stringByReplacingValidPercentEscapes_nowarn;
- (id)_web_stringByTrimmingWhitespace;
- (id)_widthVariants;
- (id)copyWithZone:(_NSZone *)zone;
- (id)displayableString;
- (id)initWithCString:(const char *)bytes;
- (id)initWithCString:(const char *)bytes length:(NSUInteger)length;
- (id)initWithContentsOfFile:(NSString *)path;
- (id)initWithContentsOfURL:(NSURL *)url;
- (id)loadDataWithTypeIdentifier:(id)identifier forItemProviderCompletionHandler:(id)handler;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)propertyList;
- (id)quotedStringRepresentation;
- (id)standardizedURLPath;
- (id)stringByAddingPercentEscapes;
- (id)stringByRemovingPercentEscapes;
- (int)intValue;
- (int64_t)_web_countOfString:(id)string;
- (uint64_t)longLongValue;
- (unsigned)_encodingCantBeStoredInEightBitCFString;
- (unsigned)_fastestEncodingInCFStringEncoding;
- (unsigned)_pathResolveFlags;
- (unsigned)_queryResolveFlags;
- (unsigned)_smallestEncodingInCFStringEncoding;
- (unsigned)_web_extractFourCharCode;
- (void)__graphemeCount;
- (void)_getBlockStart:(unint64_t *)start end:(unint64_t *)end contentsEnd:(unint64_t *)contentsEnd forRange:(_NSRange)range stopAtLineSeparators:(BOOL)separators;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateLinesUsingBlock:(void *)block;
- (void)enumerateLinguisticTagsInRange:(NSRange)range scheme:(NSLinguisticTagScheme)scheme options:(NSLinguisticTaggerOptions)options orthography:(NSOrthography *)orthography usingBlock:(void *)block;
- (void)enumerateSubstringsInRange:(NSRange)range options:(NSStringEnumerationOptions)opts usingBlock:(void *)block;
- (void)getCString:(char *)bytes;
- (void)getCString:(char *)bytes maxLength:(NSUInteger)maxLength;
- (void)getCString:(char *)bytes maxLength:(NSUInteger)maxLength range:(NSRange)aRange remainingRange:(NSRangePointer)leftoverRange;
- (void)getCharacters:(unichar *)buffer;
- (void)getCharacters:(unichar *)buffer range:(NSRange)range;
@end

@implementation NSString

- (unsigned)_encodingCantBeStoredInEightBitCFString
{
  fastestEncoding = [(NSString *)self fastestEncoding];
  v3 = *MEMORY[0x1E695E0A8];
  if (*MEMORY[0x1E695E0A8] == -1)
  {
    v3 = __CFStringComputeEightBitStringEncoding();
  }

  return fastestEncoding != CFStringConvertEncodingToNSStringEncoding(v3);
}

- (id)_stringRepresentation
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(NSString *)self length];
  if (!v3)
  {
    return @"";
  }

  v17 = 0;
  memset(v16, 0, sizeof(v16));
  v15 = v3;
  if (v3 >= 0x20)
  {
    v4 = 32;
  }

  else
  {
    v4 = v3;
  }

  v14 = v4;
  [self getUid("getCharacters:v16 range:{0, v4}")];
  v5 = LOWORD(v16[0]);
  LOWORD(v17) = v16[0];
  v6 = 1;
  while (v6 - 1 < v14)
  {
    v7 = (v5 & 0xFFDF) - 65;
    v8 = v5 - 48;
    v10 = v7 < 0x1A || v8 < 0xA;
    if (v6 >= v14)
    {
      v11 = *(&v15 + 1) + v14;
      if (v15 <= *(&v15 + 1) + v14)
      {
        v6 = v14 + 1;
        v5 = 0xFFFF;
        goto LABEL_22;
      }

      if (v15 - (*(&v15 + 1) + v14) >= 0x20)
      {
        v12 = 32;
      }

      else
      {
        v12 = v15 - (*(&v15 + 1) + v14);
      }

      *(&v15 + 1) += v14;
      v14 = v12;
      [self getUid("getCharacters:v16 range:{v11, v12}")];
      v5 = LOWORD(v16[0]);
      LOWORD(v17) = v16[0];
      v6 = 1;
      if (!v10)
      {
        return [(NSString *)self quotedStringRepresentation];
      }
    }

    else
    {
      v5 = *(v16 + v6++);
LABEL_22:
      LOWORD(v17) = v5;
      if (!v10)
      {
        return [(NSString *)self quotedStringRepresentation];
      }
    }
  }

  return [(NSString *)self copyWithZone:0];
}

- (id)quotedStringRepresentation
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [(NSString *)self length];
  if (!v3)
  {
    return @"";
  }

  v4 = v3;
  if (6 * v3 + 3 <= 0x186A0)
  {
    v5 = 6 * v3 + 3;
  }

  else
  {
    v5 = v3 + 9;
  }

  result = MEMORY[0x1865CD580](0, v5, 0x100004077774924, 0);
  if (result)
  {
    v7 = result;
    *result = 34;
    v26 = 0;
    memset(v25, 0, sizeof(v25));
    selfCopy = self;
    v24 = v4;
    if (v4 >= 0x20)
    {
      v8 = 32;
    }

    else
    {
      v8 = v4;
    }

    v21 = v8;
    [self getUid("getCharacters:v25 range:{0, v8}")];
    v9 = v25[0];
    LOWORD(v26) = v25[0];
    v22 = 1;
    v10 = 1;
    v11 = 1;
    while (1)
    {
      if (v11 > v5 - 8)
      {
        v12 = 6 * (v4 + 1 - v10 - *(&v24 + 1)) + 2;
        if (v5 < v12)
        {
          v12 = v5;
        }

        v5 += v12;
        result = MEMORY[0x1865CFE40](0, v7, v5, 1433970339, 0, 0);
        if (!result)
        {
          return result;
        }

        v7 = result;
        v9 = v26;
      }

      if (v9 > 0xAu)
      {
        if (v9 > 0x21u)
        {
          if (v9 == 92)
          {
            LOBYTE(v9) = 92;
            goto LABEL_34;
          }

          if (v9 == 34)
          {
            LOBYTE(v9) = 34;
            goto LABEL_34;
          }
        }

        else
        {
          if (v9 == 11)
          {
            LOBYTE(v9) = 118;
            goto LABEL_34;
          }

          if (v9 == 12)
          {
            LOBYTE(v9) = 102;
            goto LABEL_34;
          }
        }
      }

      else
      {
        if (v9 > 8u)
        {
          if (v9 == 9)
          {
            LOBYTE(v9) = 116;
          }

          else
          {
            LOBYTE(v9) = 110;
          }

          goto LABEL_34;
        }

        if (v9 == 7)
        {
          LOBYTE(v9) = 97;
          goto LABEL_34;
        }

        if (v9 == 8)
        {
          LOBYTE(v9) = 98;
LABEL_34:
          v13 = v11 + 1;
          v7[v11] = 92;
          v14 = 2;
LABEL_35:
          v11 += v14;
          v7[v13] = v9;
          goto LABEL_36;
        }
      }

      if (v9 >= 0x80u)
      {
        v19 = &v7[v11];
        *v19 = 21852;
        v19[2] = a0123456789abcd[v9 >> 12];
        v19[3] = a0123456789abcd[(v9 >> 8) & 0xF];
        v13 = v11 + 5;
        v19[4] = a0123456789abcd[v9 >> 4];
        LOBYTE(v9) = a0123456789abcd[v9 & 0xF];
        v14 = 6;
        goto LABEL_35;
      }

      if (v9)
      {
        v14 = 1;
        v13 = v11;
        goto LABEL_35;
      }

LABEL_36:
      v16 = v21;
      v15 = v22;
      if (v22 >= v21)
      {
        v17 = *(&v24 + 1) + v21;
        if (v24 > *(&v24 + 1) + v21)
        {
          if (v24 - (*(&v24 + 1) + v21) >= 0x20)
          {
            v18 = 32;
          }

          else
          {
            v18 = v24 - (*(&v24 + 1) + v21);
          }

          *(&v24 + 1) += v21;
          v21 = v18;
          [selfCopy getUid("getCharacters:v25 range:{v17, v18}")];
          v9 = v25[0];
          LOWORD(v26) = v25[0];
          v22 = 1;
          v16 = v18;
          v10 = 1;
          goto LABEL_45;
        }

        v10 = v21 + 1;
        v22 = v21 + 1;
        v9 = -1;
      }

      else
      {
        v10 = ++v22;
        v9 = *(v25 + v15);
      }

      LOWORD(v26) = v9;
LABEL_45:
      if (v10 - 1 >= v16)
      {
        *&v7[v11] = 34;
        v20 = MEMORY[0x1865CFE40](0, v7, v11 + 2, 1448947995, 0, 0);
        return CFStringCreateWithCStringNoCopy(*MEMORY[0x1E695E480], v20, 0x600u, 0);
      }
    }
  }

  return result;
}

- (BOOL)__swiftFillFileSystemRepresentationWithPointer:(char *)pointer maxLength:(int64_t)length
{
  selfCopy = self;
  LOBYTE(length) = NSString.__swiftFillFileSystemRepresentation(pointer:maxLength:)(pointer, length);

  return length & 1;
}

- (unsigned)_fastestEncodingInCFStringEncoding
{
  fastestEncoding = [(NSString *)self fastestEncoding];

  return CFStringConvertNSStringEncodingToEncoding(fastestEncoding);
}

- (NSString)pathExtension
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = [(NSString *)self length];
  v15[0] = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = (v15 - v5);
  v8 = 2 * v7;
  if (v4 > 0x100)
  {
    v6 = malloc_type_malloc(v8, 0x1000040BDFB0063uLL);
  }

  else
  {
    bzero(v15 - v5, v8);
  }

  [(NSString *)self getCharacters:v6 range:0, v3, v15[0]];
  _NSTransmutePathSlashes(v6, v15);
  v9 = v15[0];
  if (v15[0] > 1)
  {
    if (v6[v15[0] - 1] == 47)
    {
      while (v9 > 2)
      {
        v10 = v9 - 1;
        v11 = v6[v9-- - 2];
        if (v11 != 47)
        {
          goto LABEL_11;
        }
      }

      v10 = 1;
    }

    else
    {
      v10 = v15[0];
    }

LABEL_11:
    v15[0] = v10;
    v9 = v10;
  }

  v12 = _NSStartOfPathExtension(v6, v9);
  if (v12 < 1)
  {
    v13 = &stru_1EEEFDF90;
  }

  else
  {
    v13 = [NSPathStore2 pathStoreWithCharacters:&v6[v12 + 1] length:v9 + ~v12];
  }

  if (v3 >= 0x101)
  {
    free(v6);
  }

  return v13;
}

- (const)fileSystemRepresentation
{
  if ([(NSString *)self isEqual:&stru_1EEEFDF90])
  {
    v9 = @"*** [NSString fileSystemRepresentation]: Cannot form file system representation of empty string";
LABEL_12:
    v10 = [NSString stringWithFormat:v9];
    v11 = MEMORY[0x1E695DF30];
    v12 = MEMORY[0x1E695D940];
LABEL_13:
    objc_exception_throw([v11 exceptionWithName:*v12 reason:v10 userInfo:0]);
  }

  MaximumSizeOfFileSystemRepresentation = CFStringGetMaximumSizeOfFileSystemRepresentation(self);
  if (MaximumSizeOfFileSystemRepresentation == -1)
  {
    v9 = @"*** [NSString fileSystemRepresentation]: unable to calculate size of file system representation buffer for string";
    goto LABEL_12;
  }

  v4 = MaximumSizeOfFileSystemRepresentation;
  v5 = malloc_type_malloc(MaximumSizeOfFileSystemRepresentation, 0x100004077774924uLL);
  if (!v5)
  {
    v10 = [NSString stringWithFormat:@"*** [NSString fileSystemRepresentation]: unable to allocate memory for length (%ld)", v4];
    v11 = MEMORY[0x1E695DF30];
    v12 = MEMORY[0x1E695DA18];
    goto LABEL_13;
  }

  v6 = v5;
  if (![(NSString *)self __swiftFillFileSystemRepresentationWithPointer:v5 maxLength:v4])
  {
    free(v6);
    v9 = @"*** [NSString fileSystemRepresentation]: Unable to form file system representation for string";
    goto LABEL_12;
  }

  v7 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v6 length:strlen(v6) + 1];

  return [v7 bytes];
}

- (BOOL)isAbsolutePath
{
  v7 = *MEMORY[0x1E69E9840];
  if ([(NSString *)self length]>= 3)
  {
    [(NSString *)self getCharacters:v6 range:0, 3];
  }

  else
  {
    v3 = [(NSString *)self length];
    [(NSString *)self getCharacters:v6 range:0, v3];
    if (v3 < 1)
    {
      return 0;
    }
  }

  return v6[0] == 126 || v6[0] == 47;
}

- (NSString)lastPathComponent
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = [(NSString *)self length];
  v17[0] = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = (v17 - v5);
  v8 = 2 * v7;
  if (v4 > 0x100)
  {
    v6 = malloc_type_malloc(v8, 0x1000040BDFB0063uLL);
  }

  else
  {
    bzero(v17 - v5, v8);
  }

  [(NSString *)self getCharacters:v6 range:0, v3, v17[0]];
  _NSTransmutePathSlashes(v6, v17);
  v9 = v17[0];
  if (v17[0] < 2)
  {
    v12 = 0;
  }

  else if (v6[v17[0] - 1] == 47)
  {
    while (v9 > 2)
    {
      v10 = v9 - 1;
      v11 = v6[v9-- - 2];
      if (v11 != 47)
      {
        goto LABEL_11;
      }
    }

    v12 = 0;
    v9 = 1;
    v17[0] = 1;
  }

  else
  {
    v10 = v17[0];
LABEL_11:
    v17[0] = v10;
    v13 = v10;
    do
    {
      v12 = v13 - 1;
      if (v13 == 1)
      {
        break;
      }

      v14 = v6[v13-- - 2];
    }

    while (v14 != 47);
    v9 = v10;
  }

  v15 = [NSPathStore2 pathStoreWithCharacters:&v6[v12] length:v9 - v12, v17[0]];
  if (v3 >= 0x101)
  {
    free(v6);
  }

  return v15;
}

+ (NSString)string
{
  v2 = [objc_allocWithZone(self) init];

  return v2;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    if ((__NSDefaultStringEncodingFullyInited & 1) == 0)
    {
      _NSDefaultCStringEncoding();
    }

    v3 = objc_lookUpClass("NSTaggedPointerString");
    if (v3)
    {
      v4 = v3;
      if (dyld_program_sdk_at_least())
      {
        if (getenv("NSStringDisableTagged"))
        {
          return;
        }
      }

      else if (!getenv("NSStringEnableTagged"))
      {
        return;
      }

      class_setSuperclass(v4, self);

      [(objc_class *)v4 _setAsTaggedStringClass];
    }
  }
}

- (NSString)stringByDeletingLastPathComponent
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = [(NSString *)self length];
  v18[0] = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = (v18 - v5);
  v8 = 2 * v7;
  if (v4 > 0x100)
  {
    v6 = malloc_type_malloc(v8, 0x1000040BDFB0063uLL);
  }

  else
  {
    bzero(v18 - v5, v8);
  }

  [(NSString *)self getCharacters:v6 range:0, v3, v18[0]];
  _NSTransmutePathSlashes(v6, v18);
  v9 = v18[0];
  if (v18[0] < 2)
  {
    if (v18[0] == 1)
    {
LABEL_10:
      v12 = *v6 == 47;
      goto LABEL_19;
    }
  }

  else
  {
    if (v6[v18[0] - 1] == 47)
    {
      while (v9 > 2)
      {
        v10 = v9 - 1;
        v11 = v6[v9-- - 2];
        if (v11 != 47)
        {
          goto LABEL_12;
        }
      }

      goto LABEL_10;
    }

    v10 = v18[0];
LABEL_12:
    v13 = v10 - 1;
    v14 = &v6[v10 - 2];
    while (v13)
    {
      v15 = *v14--;
      --v13;
      if (v15 == 47)
      {
        if (v13)
        {
          v12 = v13;
        }

        else
        {
          v12 = 1;
        }

        goto LABEL_19;
      }
    }
  }

  v12 = 0;
LABEL_19:
  v16 = [NSPathStore2 pathStoreWithCharacters:v6 length:v12];
  if (v3 >= 0x101)
  {
    free(v6);
  }

  return v16;
}

- (uint64_t)longLongValue
{
  v4[1] = *MEMORY[0x1E69E9840];
  v3 = 0;
  v4[0] = 0;
  if (_NSScanLongLongFromString(self, +[NSCharacterSet whitespaceCharacterSet], v4, &v3))
  {
    return v4[0];
  }

  else
  {
    return 0;
  }
}

- (BOOL)BOOLValue
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = +[NSCharacterSet whitespaceCharacterSet];
  v4 = [(NSString *)self length];
  v23 = 0u;
  memset(v22, 0, sizeof(v22));
  v19 = 0u;
  selfCopy = self;
  v21 = v4;
  if (v4)
  {
    if (v4 >= 0x20)
    {
      v5 = 32;
    }

    else
    {
      v5 = v4;
    }

    *&v19 = v5;
    [self getUid("getCharacters:v22 + 8 range:{0, v5}")];
    v6 = WORD4(v22[0]);
  }

  else
  {
    v6 = -1;
  }

  *(&v19 + 1) = 1;
  WORD4(v23) = v6;
  if ([(NSCharacterSet *)v3 characterIsMember:v19])
  {
    do
    {
      v7 = v19;
      if (*(&v19 + 1) >= v19)
      {
        v9 = *&v22[0] + v19;
        if (v21 > *&v22[0] + v19)
        {
          if (v21 - (*&v22[0] + v19) >= 0x20)
          {
            v10 = 32;
          }

          else
          {
            v10 = v21 - (*&v22[0] + v19);
          }

          *&v22[0] += v19;
          *&v19 = v10;
          [selfCopy getUid("getCharacters:v22 + 8 range:{v9, v10}")];
          WORD4(v23) = WORD4(v22[0]);
          *(&v19 + 1) = 1;
          continue;
        }

        *(&v19 + 1) = v19 + 1;
        v8 = -1;
      }

      else
      {
        ++*(&v19 + 1);
        v8 = *(v22 + *(&v7 + 1) + 4);
      }

      WORD4(v23) = v8;
    }

    while ([(NSCharacterSet *)v3 characterIsMember:?]);
  }

  v11 = WORD4(v23);
  result = 1;
  if (WORD4(v23) <= 0x58u)
  {
    if (WORD4(v23) == 43 || WORD4(v23) == 45)
    {
      if (*(&v19 + 1) >= v19)
      {
        v14 = *&v22[0] + v19;
        if (v21 <= *&v22[0] + v19)
        {
LABEL_45:
          v11 = 0xFFFF;
          return (v11 - 49) < 9;
        }

        if (v21 - (*&v22[0] + v19) >= 0x20)
        {
          v15 = 32;
        }

        else
        {
          v15 = v21 - (*&v22[0] + v19);
        }

        *&v22[0] += v19;
        *&v19 = v15;
        [selfCopy getUid("getCharacters:v22 + 8 range:{v14, v15}")];
        v11 = WORD4(v22[0]);
        WORD4(v23) = WORD4(v22[0]);
        *(&v19 + 1) = 1;
      }

      else
      {
        v13 = &v19 + 2 * (*(&v19 + 1))++;
        v11 = *(v13 + 20);
        WORD4(v23) = *(v13 + 20);
      }
    }

    else if (WORD4(v23) == 84)
    {
      return result;
    }

LABEL_34:
    if (v11 == 48)
    {
      v16 = *(&v19 + 1);
      do
      {
        if (v16 >= v19)
        {
          v17 = *&v22[0] + v19;
          if (v21 <= *&v22[0] + v19)
          {
            goto LABEL_45;
          }

          if (v21 - (*&v22[0] + v19) >= 0x20)
          {
            v18 = 32;
          }

          else
          {
            v18 = v21 - (*&v22[0] + v19);
          }

          *&v22[0] += v19;
          *&v19 = v18;
          [selfCopy getUid("getCharacters:v22 + 8 range:{v17, v18}")];
          v11 = WORD4(v22[0]);
          WORD4(v23) = WORD4(v22[0]);
          *(&v19 + 1) = 1;
          v16 = 1;
        }

        else
        {
          v11 = *(v22 + v16++ + 4);
          *(&v19 + 1) = v16;
          WORD4(v23) = v11;
        }
      }

      while (v11 == 48);
    }

    return (v11 - 49) < 9;
  }

  if (WORD4(v23) != 89 && WORD4(v23) != 116 && WORD4(v23) != 121)
  {
    goto LABEL_34;
  }

  return result;
}

- (double)doubleValue
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = 0;
  v5[0] = 0.0;
  v2 = _NSScanDoubleFromString(self, +[NSCharacterSet whitespaceCharacterSet], v5, &v4, 0);
  result = v5[0];
  if (!v2)
  {
    return 0.0;
  }

  return result;
}

- (NSString)stringByDeletingPathExtension
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = [(NSString *)self length];
  v16[0] = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = (v16 - v4);
  v7 = 2 * v6;
  if (v8 > 0x100)
  {
    v5 = malloc_type_malloc(v7, 0x1000040BDFB0063uLL);
  }

  else
  {
    bzero(v16 - v4, v7);
  }

  [(NSString *)self getCharacters:v5 range:0, v3, v16[0]];
  _NSTransmutePathSlashes(v5, v16);
  v9 = v16[0];
  if (v16[0] >= 2 && v5[v16[0] - 1] == 47)
  {
    while (v9 > 2)
    {
      v10 = v9 - 1;
      v11 = v5[v9-- - 2];
      if (v11 != 47)
      {
        goto LABEL_10;
      }
    }

    v10 = 1;
  }

  else
  {
    v10 = v16[0];
  }

LABEL_10:
  v12 = _NSStartOfPathExtension(v5, v10);
  if (v12 <= 0)
  {
    v13 = v10;
  }

  else
  {
    v13 = v12;
  }

  v14 = [NSPathStore2 pathStoreWithCharacters:v5 length:v13];
  if (v3 >= 0x101)
  {
    free(v5);
  }

  return v14;
}

- (float)floatValue
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = 0;
  v5[0] = 0.0;
  v2 = _NSScanDoubleFromString(self, +[NSCharacterSet whitespaceCharacterSet], v5, &v4, 0);
  result = v5[0];
  if (!v2)
  {
    return 0.0;
  }

  return result;
}

+ (NSStringEncoding)defaultCStringEncoding
{
  if (__NSDefaultStringEncodingFullyInited == 1)
  {
    return _NSDefaultStringEncoding;
  }

  else
  {
    return _NSDefaultCStringEncoding();
  }
}

- (NSString)stringByRemovingPercentEncoding
{
  v2 = _CFStringCreateByRemovingPercentEncoding();

  return v2;
}

- (NSArray)pathComponents
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = [(NSString *)self length];
  MEMORY[0x1EEE9AC00](v3);
  v5 = (v11 - v4);
  v7 = 2 * v6;
  if (v8 > 0x100)
  {
    v5 = malloc_type_malloc(v7, 0x1000040BDFB0063uLL);
  }

  else
  {
    bzero(v11 - v4, v7);
  }

  [(NSString *)self getCharacters:v5 range:0, v3];
  v9 = _NSPathComponents(v5, v3);
  if (v3 >= 0x101)
  {
    free(v5);
  }

  return v9;
}

- (unsigned)_pathResolveFlags
{
  static String._unconditionallyBridgeFromObjectiveC(_:)(self);
  selfCopy = self;
  *&v4 = String._pathResolveFlags(prefixLength:)(&prefixLength);
  v5 = v4;

  if ((v5 & 0x100000000) != 0)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

- (int)intValue
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = 0;
  v3 = 0;
  if (_NSScanIntFromString(self, +[NSCharacterSet whitespaceCharacterSet], &v4, &v3))
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

- (id)_web_HTTPStyleLanguageCode
{
  v7 = *MEMORY[0x1E69E9840];
  if (CFBundleGetLocalizationInfoForLocalization())
  {
    v3 = CFBundleCopyLocalizationForLocalizationInfo();
    if (v3)
    {
      self = v3;
    }
  }

  v4 = [(NSString *)self lowercaseString:0];
  if ([(NSString *)v4 length]>= 3 && [(NSString *)v4 characterAtIndex:2]== 95)
  {
    v5 = [(NSString *)v4 mutableCopy];
    [v5 replaceCharactersInRange:2 withString:{1, @"-"}];
    return v5;
  }

  return v4;
}

- (NSString)stringByExpandingTildeInPath
{
  v9 = *MEMORY[0x1E69E9840];
  if ([(NSString *)self length]> 1023)
  {
    v3 = 1024;
  }

  else
  {
    v3 = [(NSString *)self length];
  }

  [(NSString *)self getCharacters:v8 range:0, v3];
  _NSExpandTildeInPath(v8, &v7);
  _NSTransmutePathSlashes(v8, &v7);
  v4 = v7;
  if (v7 >= 2 && v8[v7 - 1] == 47)
  {
    do
    {
      if (v4 <= 2)
      {
        break;
      }

      v5 = v8[v4-- - 2];
    }

    while (v5 == 47);
  }

  return [NSPathStore2 pathStoreWithCharacters:v8 length:?];
}

- (NSString)precomposedStringWithCanonicalMapping
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringReplaceAll(Mutable, self);
  CFStringNormalize(Mutable, kCFStringNormalizationFormC);

  return Mutable;
}

- (unsigned)_queryResolveFlags
{
  static String._unconditionallyBridgeFromObjectiveC(_:)(self);
  selfCopy = self;
  Resolve = String._queryResolveFlags()();

  return Resolve;
}

- (NSString)localizedCapitalizedString
{
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];

  return [(NSString *)self capitalizedStringWithLocale:currentLocale];
}

- (BOOL)_web_looksLikeIPAddress
{
  v9 = *MEMORY[0x1E69E9840];
  if (![(NSString *)self length])
  {
    return 0;
  }

  v3 = [(NSString *)self characterAtIndex:0];
  if (v3 != 58 && (v3 > 0xFF || (*(MEMORY[0x1E69E9830] + 4 * v3 + 60) & 0x10000) == 0))
  {
    return 0;
  }

  if ([(NSString *)self isEqualToString:@"."])
  {
    return 0;
  }

  if (![(NSString *)self canBeConvertedToEncoding:1])
  {
    return 0;
  }

  v4 = [(NSString *)self cStringUsingEncoding:1];
  v5 = v4 != 0;
  if (v4)
  {
    v6 = v4;
    if (inet_pton(2, v4, v8) != 1 && inet_pton(30, v6, v8) != 1)
    {
      return 0;
    }
  }

  return v5;
}

+ (NSArray)readableTypeIdentifiersForItemProvider
{
  v3[5] = *MEMORY[0x1E69E9840];
  v3[0] = _MergedGlobals_88[0]();
  v3[1] = off_1ED439878[0]();
  v3[2] = off_1ED439880[0]();
  v3[3] = off_1ED439888[0]();
  v3[4] = off_1ED439890[0]();
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:5];
}

- (NSString)localizedUppercaseString
{
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];

  return [(NSString *)self uppercaseStringWithLocale:currentLocale];
}

- (NSString)precomposedStringWithCompatibilityMapping
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringReplaceAll(Mutable, self);
  CFStringNormalize(Mutable, kCFStringNormalizationFormKC);

  return Mutable;
}

- (id)_urlStringByRemovingResolveFlags
{
  selfCopy = self;
  NSString._urlStringByRemovingResolveFlags()();

  v3 = String._bridgeToObjectiveCImpl()();

  return v3;
}

- (NSString)variantFittingPresentationWidth:(NSInteger)width
{
  selfCopy = self;

  return selfCopy;
}

- (id)_widthVariants
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = self;
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
}

- (id)_createSubstringWithRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (!_createSubstringWithRange__baseImp)
  {
    v7 = objc_opt_class();
    _createSubstringWithRange__baseImp = class_getMethodImplementation(v7, sel_substringWithRange_);
  }

  v8 = objc_opt_class();
  if (_createSubstringWithRange__baseImp == class_getMethodImplementation(v8, sel_substringWithRange_))
  {
    v11 = [(NSString *)self length];
    if (v11 < length || location > v11 - length)
    {
      v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: Range {%lu, %lu} out of bounds; string length %lu", _NSMethodExceptionProem(self, a2), location, length, v11), 0}];
      objc_exception_throw(v13);
    }

    v12 = [(NSString *)self zone];

    return [(NSString *)self _newSubstringWithRange:location zone:length, v12];
  }

  else
  {
    v9 = [(NSString *)self substringWithRange:location, length];

    return v9;
  }
}

- (unsigned)_smallestEncodingInCFStringEncoding
{
  smallestEncoding = [(NSString *)self smallestEncoding];

  return CFStringConvertNSStringEncodingToEncoding(smallestEncoding);
}

- (BOOL)_getCString:(char *)string maxLength:(unint64_t)length encoding:(unsigned int)encoding
{
  v11[1] = *MEMORY[0x1E69E9840];
  v8 = CFStringConvertEncodingToNSStringEncoding(encoding);
  if (v8 == 0xFFFFFFFF)
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    v11[0] = 0;
    v9 = [(NSString *)self getBytes:string maxLength:length filledLength:v11 encoding:v8 allowLossyConversion:0 range:0 remainingRange:[(NSString *)self length], 0];
    if (v9)
    {
      string += v11[0];
      LOBYTE(v9) = 1;
    }
  }

  *string = 0;
  return v9;
}

- ($2F068FC02377E22BA03580A8162C781E)decimalValue
{
  _CFAutoreleasePoolPush();
  v5 = [NSScanner scannerWithString:self];
  *retstr = 0;
  *&retstr->var5[2] = 0;
  *&retstr->var5[6] = 0;
  if (![(NSScanner *)v5 scanDecimal:retstr])
  {
    v6 = +[NSDecimalNumber notANumber];
    if (v6)
    {
      [(NSDecimalNumber *)v6 decimalValue];
    }

    else
    {
      v8 = 0uLL;
      v9 = 0;
    }

    *retstr = v8;
    *&retstr->var5[6] = v9;
  }

  return _CFAutoreleasePoolPop();
}

- (id)__escapeString5991
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = [(NSString *)self length];
  v4 = objc_opt_new();
  if (v3 >= 1)
  {
    for (i = 0; i != v3; ++i)
    {
      v6 = [(NSString *)self characterAtIndex:i];
      chars = 92;
      v11 = v6;
      if ((v6 - 34) <= 0x3B && ((1 << (v6 - 34)) & 0xA00000020000121) != 0)
      {
        p_chars = &chars;
        v8 = 2;
      }

      else
      {
        p_chars = &v11;
        v8 = 1;
      }

      CFStringAppendCharacters(v4, p_chars, v8);
    }
  }

  return v4;
}

- (NSString)stringByAppendingPathComponent:(NSString *)str
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = [(NSString *)str length];
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - v8;
  if (v10 > 0x100)
  {
    v9 = malloc_type_malloc(2 * v7, 0x1000040BDFB0063uLL);
  }

  else
  {
    bzero(&v27 - v8, 2 * v7);
  }

  [(NSString *)str getCharacters:v9 range:0, v6];
  v11 = [(NSString *)self length];
  v28 = v11;
  v12 = v6 + v11 + 1;
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v27 - v14);
  if (v12 > 0x100)
  {
    v15 = malloc_type_malloc(2 * v13, 0x1000040BDFB0063uLL);
  }

  else
  {
    bzero(&v27 - v14, 2 * v13);
  }

  [(NSString *)self getCharacters:v15 range:0, v11];
  if ((_NSAppendPathComponent(v15, &v28, v12, v9, v6) & 1) == 0)
  {
    v19 = _NSMethodExceptionProem(self, a2);
    NSLog(@"%@: cannot append path '%@' to path '%@'", v19, str, self);
    return 0;
  }

  _NSTransmutePathSlashes(v15, &v28);
  v16 = v28;
  if (v28 < 2)
  {
    v20 = 0;
  }

  else
  {
    if (v15[v28 - 1] == 47)
    {
      while (v16 > 2)
      {
        v17 = v16 - 1;
        v18 = v15[v16-- - 2];
        if (v18 != 47)
        {
          goto LABEL_16;
        }
      }

      v20 = 0;
      v16 = 1;
      goto LABEL_26;
    }

    v17 = v28;
LABEL_16:
    if (*v15 == 92)
    {
      v20 = 2 * (v15[1] == 92);
    }

    else
    {
      v20 = 0;
    }

    v16 = v17;
  }

  if (v20 < v16)
  {
LABEL_26:
    if (v15[v20])
    {
      while (v16 - 1 != v20)
      {
        if (!v15[++v20])
        {
          if (v20 >= v16)
          {
            goto LABEL_21;
          }

          goto LABEL_30;
        }
      }

      goto LABEL_21;
    }

LABEL_30:
    v23 = _NSOSLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      v25 = [(NSString *)str length];
      v26 = [(NSString *)self length];
      *buf = 138478595;
      v30 = str;
      v31 = 2048;
      v32 = v25;
      v33 = 2113;
      selfCopy = self;
      v35 = 2048;
      v36 = v26;
      _os_log_fault_impl(&dword_18075C000, v23, OS_LOG_TYPE_FAULT, "Appending path component %{private}@ (length: %lu) to string %{private}@ (length: %lu) resulted in an embedded NUL character", buf, 0x2Au);
    }

    return 0;
  }

LABEL_21:
  v21 = [NSPathStore2 pathStoreWithCharacters:v15 length:?];
  if (v12 >= 0x101)
  {
    free(v15);
  }

  if (v6 >= 0x101)
  {
    free(v9);
  }

  return v21;
}

- (NSString)stringByAppendingPathExtension:(NSString *)str
{
  v25 = *MEMORY[0x1E69E9840];
  if (!str)
  {
    v23 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: nil argument", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v23);
  }

  v6 = [(NSString *)str length];
  v7 = [(NSString *)self length];
  v24 = v7;
  if (v6)
  {
    v8 = v7;
    MEMORY[0x1EEE9AC00](v7);
    v10 = &v24 - v9;
    if (v6 > 0x100)
    {
      v11 = malloc_type_malloc(2 * v6, 0x1000040BDFB0063uLL);
      v10 = v11;
    }

    else
    {
      bzero(v10, 2 * v6);
    }

    v14 = v6 + v8 + 1;
    MEMORY[0x1EEE9AC00](v11);
    v16 = (&v24 - v15);
    v18 = 2 * v17;
    if (v14 > 0x100)
    {
      v16 = malloc_type_malloc(v18, 0x1000040BDFB0063uLL);
    }

    else
    {
      bzero(&v24 - v15, v18);
    }

    [(NSString *)self getCharacters:v16 range:0, v8, v24, v25];
    [(NSString *)str getCharacters:v10 range:0, v6];
    if (_NSAppendPathExtension(v16, &v24, v6 + v8 + 1, v10, v6))
    {
      _NSTransmutePathSlashes(v16, &v24);
      v19 = v24;
      if (v24 >= 2 && v16[v24 - 1] == 47)
      {
        do
        {
          if (v19 <= 2)
          {
            break;
          }

          v20 = v16[v19-- - 2];
        }

        while (v20 == 47);
      }

      v22 = [NSPathStore2 pathStoreWithCharacters:v16 length:?];
    }

    else
    {
      v21 = _NSMethodExceptionProem(self, a2);
      NSLog(@"%@: cannot append extension '%@' to path '%@'", v21, str, self);
      v22 = 0;
    }

    if (v6 >= 0x101)
    {
      free(v10);
    }

    if (v14 >= 0x101)
    {
      free(v16);
    }

    return v22;
  }

  else
  {
    v12 = [(NSString *)self copy];

    return v12;
  }
}

- (NSString)stringByAbbreviatingWithTildeInPath
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = [(NSString *)self length];
  if (v3 > 1023)
  {
    v4 = 1024;
  }

  else
  {
    v3 = [(NSString *)self length];
    v4 = v3;
  }

  v14[0] = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = (v14 - v5);
  v8 = 2 * v7;
  if (v4 > 0x100)
  {
    v6 = malloc_type_malloc(v8, 0x1000040BDFB0063uLL);
  }

  else
  {
    bzero(v14 - v5, v8);
  }

  [(NSString *)self getCharacters:v6 range:0, v4, v14[0]];
  _NSTransmutePathSlashes(v6, v14);
  v9 = v14[0];
  if (v14[0] >= 2)
  {
    if (v6[v14[0] - 1] == 47)
    {
      while (v9 > 2)
      {
        v10 = v9 - 1;
        v11 = v6[v9-- - 2];
        if (v11 != 47)
        {
          goto LABEL_14;
        }
      }

      v10 = 1;
    }

    else
    {
      v10 = v14[0];
    }

LABEL_14:
    v14[0] = v10;
  }

  _NSAbbreviatePathWithTilde(v6, v14);
  v12 = [NSPathStore2 pathStoreWithCharacters:v6 length:v14[0]];
  if (v4 >= 0x101)
  {
    free(v6);
  }

  return v12;
}

- (id)_stringByStandardizingPathUsingCache:(BOOL)cache
{
  cacheCopy = cache;
  v9 = *MEMORY[0x1E69E9840];
  if ([(NSString *)self length]> 1023)
  {
    v5 = 1024;
  }

  else
  {
    v5 = [(NSString *)self length];
  }

  [(NSString *)self getCharacters:v8 range:0, v5];
  _NSExpandTildeInPath(v8, &v7);
  _NSStandardizePathUsingCache(v8, &v7, cacheCopy);
  return [NSPathStore2 pathStoreWithCharacters:v8 length:v7];
}

- (id)_stringByResolvingSymlinksInPathUsingCache:(BOOL)cache
{
  cacheCopy = cache;
  v9 = *MEMORY[0x1E69E9840];
  if ([(NSString *)self length]> 1023)
  {
    v5 = 1024;
  }

  else
  {
    v5 = [(NSString *)self length];
  }

  [(NSString *)self getCharacters:v8 range:0, v5];
  _NSExpandTildeInPath(v8, &v7);
  _NSResolveSymlinksInPathUsingCache(v8, &v7, cacheCopy);
  _NSStandardizePathUsingCache(v8, &v7, cacheCopy);
  return [NSPathStore2 pathStoreWithCharacters:v8 length:v7];
}

- (NSArray)stringsByAppendingPaths:(NSArray *)paths
{
  if (!paths || (_NSIsNSArray() & 1) == 0)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: paths argument is not an array", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v11);
  }

  if ([(NSString *)self isEqual:&stru_1EEEFDF90])
  {
    v6 = [(NSArray *)paths copyWithZone:[(NSString *)self zone]];

    return v6;
  }

  else
  {
    v8 = [(NSArray *)paths count];
    array = [MEMORY[0x1E695DF70] array];
    if (v8 >= 1)
    {
      for (i = 0; i != v8; ++i)
      {
        [(NSArray *)array addObject:[(NSString *)self stringByAppendingPathComponent:[(NSArray *)paths objectAtIndex:i]]];
      }
    }

    return array;
  }
}

- (BOOL)getFileSystemRepresentation:(char *)cname maxLength:(NSUInteger)max
{
  if ([(NSString *)self isEqual:&stru_1EEEFDF90])
  {
    return 0;
  }

  return [(NSString *)self __swiftFillFileSystemRepresentationWithPointer:cname maxLength:max];
}

- (NSUInteger)completePathIntoString:(NSString *)outputName caseSensitive:(BOOL)flag matchesIntoArray:(NSArray *)outputArray filterTypes:(NSArray *)filterTypes
{
  v84 = flag;
  v124 = *MEMORY[0x1E69E9840];
  v83 = +[NSFileManager defaultManager];
  if ([(NSString *)self isEqual:&stru_1EEEFDF90])
  {
    return 0;
  }

  if ([(NSString *)self hasPrefix:@"~"]&& [(NSString *)self rangeOfString:@"/" options:0 range:0, [(NSString *)self length]]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [objc_allocWithZone(MEMORY[0x1E695DFA8]) initWithCapacity:32];
    v11 = [(NSString *)self substringWithRange:1, [(NSString *)self length]- 1];
    v12 = [(NSString *)v11 isEqual:&stru_1EEEFDF90];
    setpwent();
    for (i = getpwent(); i; i = getpwent())
    {
      v14 = [NSString stringWithUTF8String:i->pw_name];
      v15 = v14;
      if (v12 || [(NSString *)v14 hasPrefix:v11])
      {
        [v10 addObject:{objc_msgSend(@"~", "stringByAppendingString:", v15)}];
      }
    }

    endpwent();
    allObjects = [v10 allObjects];

    if (outputName)
    {
      *outputName = _NSFindCommonPrefixInStringArray(allObjects, v84);
    }

    if (outputArray)
    {
      *outputArray = allObjects;
    }

    return [(NSArray *)allObjects count];
  }

  if ([(NSString *)self hasSuffix:@"/"]|| [(NSString *)self hasSuffix:@"\\""])
  {
    lastPathComponent = &stru_1EEEFDF90;
  }

  else
  {
    lastPathComponent = [(NSString *)self lastPathComponent];
    self = [(NSString *)self stringByDeletingLastPathComponent];
  }

  if (v84)
  {
    v18 = [MEMORY[0x1E695DEC8] arrayWithObject:self];
    v19 = 8;
  }

  else
  {
    if ([(NSString *)self isEqual:&stru_1EEEFDF90])
    {
      v20 = [MEMORY[0x1E695DEC8] arrayWithObject:&stru_1EEEFDF90];
      if (!v20)
      {
        return 0;
      }
    }

    else
    {
      v87 = lastPathComponent;
      v77 = filterTypes;
      pathComponents = [(NSString *)self pathComponents];
      v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v119 = 0u;
      v120 = 0u;
      v121 = 0u;
      v122 = 0u;
      obj = pathComponents;
      v24 = [(NSArray *)pathComponents countByEnumeratingWithState:&v119 objects:v123 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v120;
        v81 = *v120;
        do
        {
          v27 = 0;
          v79 = v25;
          do
          {
            if (*v120 != v26)
            {
              objc_enumerationMutation(obj);
            }

            v28 = *(*(&v119 + 1) + 8 * v27);
            if ([v28 isEqual:@"/"])
            {
              [v23 addObject:v28];
            }

            else if ([v23 count])
            {
              v89 = v27;
              v92 = v23;
              v109 = 0u;
              v110 = 0u;
              v107 = 0u;
              v108 = 0u;
              v29 = [v23 countByEnumeratingWithState:&v107 objects:v106 count:16];
              if (v29)
              {
                v30 = v29;
                v94 = *v108;
                do
                {
                  for (j = 0; j != v30; ++j)
                  {
                    if (*v108 != v94)
                    {
                      objc_enumerationMutation(v92);
                    }

                    v32 = *(*(&v107 + 1) + 8 * j);
                    v33 = [(NSFileManager *)v83 contentsOfDirectoryAtPath:v32 error:0];
                    v102 = 0u;
                    v103 = 0u;
                    v104 = 0u;
                    v105 = 0u;
                    v34 = [(NSArray *)v33 countByEnumeratingWithState:&v102 objects:v101 count:16];
                    if (v34)
                    {
                      v35 = v34;
                      v36 = *v103;
                      do
                      {
                        for (k = 0; k != v35; ++k)
                        {
                          if (*v103 != v36)
                          {
                            objc_enumerationMutation(v33);
                          }

                          v38 = *(*(&v102 + 1) + 8 * k);
                          if (![v38 caseInsensitiveCompare:v28])
                          {
                            [v22 addObject:{objc_msgSend(v32, "stringByAppendingPathComponent:", v38)}];
                          }
                        }

                        v35 = [(NSArray *)v33 countByEnumeratingWithState:&v102 objects:v101 count:16];
                      }

                      while (v35);
                    }
                  }

                  v30 = [v92 countByEnumeratingWithState:&v107 objects:v106 count:16];
                }

                while (v30);
              }

              if (![v22 count])
              {

                return 0;
              }

              [v92 removeAllObjects];
              v23 = v22;
              v22 = v92;
              v25 = v79;
              v26 = v81;
              v27 = v89;
            }

            else
            {
              v39 = v23;
              v40 = [(NSFileManager *)v83 contentsOfDirectoryAtPath:[(NSFileManager *)v83 currentDirectoryPath] error:0];
              v115 = 0u;
              v116 = 0u;
              v117 = 0u;
              v118 = 0u;
              v41 = [(NSArray *)v40 countByEnumeratingWithState:&v115 objects:&v111 count:16];
              if (v41)
              {
                v42 = v41;
                v90 = v27;
                v43 = *v116;
                do
                {
                  for (m = 0; m != v42; ++m)
                  {
                    if (*v116 != v43)
                    {
                      objc_enumerationMutation(v40);
                    }

                    v45 = *(*(&v115 + 1) + 8 * m);
                    if (![v45 caseInsensitiveCompare:v28])
                    {
                      [v39 addObject:v45];
                    }
                  }

                  v42 = [(NSArray *)v40 countByEnumeratingWithState:&v115 objects:&v111 count:16];
                }

                while (v42);
                v23 = v39;
                v27 = v90;
                v26 = v81;
              }

              else
              {
                v23 = v39;
              }
            }

            ++v27;
          }

          while (v27 != v25);
          v25 = [(NSArray *)obj countByEnumeratingWithState:&v119 objects:v123 count:16];
        }

        while (v25);
      }

      v20 = v23;
      filterTypes = v77;
      lastPathComponent = v87;
      if (!v20)
      {
        return 0;
      }
    }

    v18 = v20;
    v19 = 9;
  }

  obja = v19;
  array = [MEMORY[0x1E695DF70] array];
  v74 = 0;
  v75 = array;
  while (1)
  {
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v76 = v18;
    v80 = [v18 countByEnumeratingWithState:&v97 objects:v96 count:16];
    if (v80)
    {
      v78 = *v98;
      v88 = lastPathComponent;
      do
      {
        for (n = 0; n != v80; ++n)
        {
          if (*v98 != v78)
          {
            objc_enumerationMutation(v76);
          }

          currentDirectoryPath = *(*(&v97 + 1) + 8 * n);
          v93 = currentDirectoryPath;
          if (![(NSString *)currentDirectoryPath length])
          {
            currentDirectoryPath = [(NSFileManager *)v83 currentDirectoryPath];
          }

          v49 = [(NSFileManager *)v83 contentsOfDirectoryAtPath:currentDirectoryPath error:0];
          if (!v49)
          {
            array2 = [MEMORY[0x1E695DEC8] array];
            goto LABEL_108;
          }

          v50 = v49;
          v82 = n;
          v51 = [(NSArray *)v49 count];
          array3 = [MEMORY[0x1E695DF70] array];
          if (lastPathComponent)
          {
            v52 = [(NSString *)lastPathComponent isEqual:&stru_1EEEFDF90];
            if (!filterTypes)
            {
              goto LABEL_82;
            }
          }

          else
          {
            v52 = 1;
            if (!filterTypes)
            {
LABEL_82:
              v53 = 1;
              goto LABEL_83;
            }
          }

          v53 = [(NSArray *)filterTypes count]== 0;
LABEL_83:
          v95 = v53;
          if (v51 < 1)
          {
            goto LABEL_107;
          }

          v55 = filterTypes;
          for (ii = 0; ii != v51; ++ii)
          {
            v57 = [(NSArray *)v50 objectAtIndex:ii];
            v58 = v57;
            if ((v52 & 1) != 0 || [v57 rangeOfString:v88 options:obja] != 0x7FFFFFFFFFFFFFFFLL)
            {
              pathExtension = [v58 pathExtension];
              if (v95)
              {
                goto LABEL_88;
              }

              v62 = pathExtension;
              if (v84)
              {
                if ([(NSArray *)v55 containsObject:pathExtension])
                {
                  goto LABEL_88;
                }
              }

              else
              {
                v113 = 0u;
                v114 = 0u;
                v111 = 0u;
                v112 = 0u;
                v63 = [(NSArray *)v55 countByEnumeratingWithState:&v111 objects:v123 count:16];
                if (v63)
                {
                  v64 = v63;
                  v65 = *v112;
LABEL_97:
                  v66 = 0;
                  while (1)
                  {
                    if (*v112 != v65)
                    {
                      objc_enumerationMutation(v55);
                    }

                    if (![*(*(&v111 + 1) + 8 * v66) caseInsensitiveCompare:v62])
                    {
                      break;
                    }

                    if (v64 == ++v66)
                    {
                      v64 = [(NSArray *)v55 countByEnumeratingWithState:&v111 objects:v123 count:16];
                      if (v64)
                      {
                        goto LABEL_97;
                      }

                      goto LABEL_103;
                    }
                  }

LABEL_88:
                  v60 = [(NSString *)v93 stringByAppendingPathComponent:v58];
                  v61 = array3;
LABEL_89:
                  [v61 addObject:v60];
                  continue;
                }
              }

LABEL_103:
              if ([v62 isEqual:&stru_1EEEFDF90])
              {
                v106[0] = 0;
                v67 = [(NSString *)v93 stringByAppendingPathComponent:v58];
                if ([(NSFileManager *)v83 fileExistsAtPath:v67 isDirectory:v106])
                {
                  if (v106[0] == 1)
                  {
                    v61 = array3;
                    v60 = v67;
                    goto LABEL_89;
                  }
                }
              }
            }
          }

          filterTypes = v55;
          lastPathComponent = v88;
          array = v75;
LABEL_107:
          n = v82;
          array2 = array3;
LABEL_108:
          [(NSArray *)array addObjectsFromArray:array2];
        }

        v80 = [v76 countByEnumeratingWithState:&v97 objects:v96 count:16];
      }

      while (v80);
    }

    v68 = [(NSArray *)array count];
    v8 = v68;
    v123[0] = 0;
    v69 = v74;
    if (!v74 && !v68)
    {
      return v8;
    }

    if (v68 >= 2)
    {
      break;
    }

    if (v68 != 1 || (v69 = [(NSArray *)array objectAtIndex:0], [(NSFileManager *)v83 fileExistsAtPath:v69 isDirectory:v123]) && (v123[0] & 1) == 0)
    {
      if (outputName)
      {
        *outputName = v69;
      }

      if (outputArray)
      {
        v70 = [MEMORY[0x1E695DEC8] arrayWithObject:v69];
        v71 = outputArray;
        array = v70;
        v8 = 1;
        goto LABEL_124;
      }

      return 1;
    }

    v74 = v69;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObject:v69];
    [(NSArray *)array removeAllObjects];
    lastPathComponent = &stru_1EEEFDF90;
  }

  if (outputName)
  {
    *outputName = _NSFindCommonPrefixInStringArray(array, v84);
  }

  v71 = outputArray;
  if (outputArray)
  {
LABEL_124:
    *v71 = array;
  }

  return v8;
}

+ (id)_newZStringWithCharacters:(const unsigned __int16 *)characters length:(unint64_t)length
{
  v6 = [_NSClStr alloc];

  return [(_NSClStr *)v6 initWithCharacters:characters length:length];
}

+ (id)_newZStringWithString:(id)string
{
  v4 = [_NSClStr alloc];

  return [(_NSClStr *)v4 initWithString:string];
}

+ (id)_newZStringWithUTF8String:(const char *)string
{
  v4 = [_NSClStr alloc];

  return [(_NSClStr *)v4 initWithUTF8String:string];
}

+ (NSStringEncoding)stringEncodingForData:(NSData *)data encodingOptions:(NSDictionary *)opts convertedString:(NSString *)string usedLossyConversion:(BOOL *)usedLossyConversion
{
  v295 = *MEMORY[0x1E69E9840];
  if (!opts)
  {
    v240 = 0;
    v244 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v249 = 0;
    iterations = 0;
    bOOLValue2 = 0;
    bOOLValue = 1;
    v11 = @"\uFFFD";
    goto LABEL_29;
  }

  v10 = [(NSDictionary *)opts objectForKey:@"NSStringEncodingDetectionLossySubstitutionKey"];
  if (v10)
  {
    v11 = v10;
    if ((_NSIsNSString() & 1) == 0)
    {
      v12 = @"[NSString stringEncodingForData:encodingOptions:lossyDone:]: The value for NSStringEncodingDetectionLossySubstitutionKey must be an object of NSString.";
      goto LABEL_475;
    }
  }

  else
  {
    v11 = @"\uFFFD";
  }

  v17 = [(NSDictionary *)opts objectForKey:@"NSStringEncodingDetectionAllowLossyKey"];
  if (v17)
  {
    v18 = v17;
    if ((_NSIsNSNumber() & 1) == 0)
    {
      v12 = @"[NSString stringEncodingForData:encodingOptions:lossyDone:]: The value for NSStringEncodingDetectionAllowLossyKey must be an object of NSNumber.";
      goto LABEL_475;
    }

    bOOLValue = [v18 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  v14 = [(NSDictionary *)opts objectForKey:@"NSStringEncodingDetectionSuggestedEncodingsKey"];
  if (v14)
  {
    if ((_NSIsNSArray() & 1) == 0)
    {
      v12 = @"[NSString stringEncodingForData:encodingOptions:lossyDone:]: The value for NSStringEncodingDetectionSuggestedEncodingsKey must be an object of NSArray.";
      goto LABEL_475;
    }

    v244 = [v14 count];
    v240 = v244 != 0;
  }

  else
  {
    v240 = 0;
    v244 = 0;
  }

  v19 = [(NSDictionary *)opts objectForKey:@"NSStringEncodingDetectionUseOnlySuggestedEncodingsKey"];
  if (!v19)
  {
    goto LABEL_20;
  }

  v20 = v19;
  if ((_NSIsNSNumber() & 1) == 0)
  {
    v12 = @"[NSString stringEncodingForData:encodingOptions:lossyDone:]: The value for NSStringEncodingDetectionUseOnlySuggestedEncodingsKey must be an object of NSNumber.";
    goto LABEL_475;
  }

  if ([v20 BOOLValue])
  {
    v249 = 1;
    if ([v14 count] < 2)
    {
      v13 = 0;
      v15 = 0;
      iterations = 0;
      bOOLValue2 = 0;
      goto LABEL_29;
    }
  }

  else
  {
LABEL_20:
    v249 = 0;
  }

  v21 = [(NSDictionary *)opts objectForKey:@"NSStringEncodingDetectionFromWindowsKey"];
  iterations = v21 != 0;
  if (v21)
  {
    v22 = v21;
    if ((_NSIsNSNumber() & 1) == 0)
    {
      v12 = @"[NSString stringEncodingForData:encodingOptions:lossyDone:]: The value for NSStringEncodingDetectionFromWindowsKey must be an object of NSNumber.";
      goto LABEL_475;
    }

    bOOLValue2 = [v22 BOOLValue];
  }

  else
  {
    bOOLValue2 = 0;
  }

  v15 = [(NSDictionary *)opts objectForKey:@"NSStringEncodingDetectionLikelyLanguageKey"];
  if (v15 && (_NSIsNSString() & 1) == 0)
  {
    v12 = @"[NSString stringEncodingForData:encodingOptions:lossyDone:]: The value for NSStringEncodingDetectionLikelyLanguageKey must be an object of NSString.";
    goto LABEL_475;
  }

  v13 = [(NSDictionary *)opts objectForKey:@"NSStringEncodingDetectionDisallowedEncodingsKey"];
  if (v13 && (_NSIsNSArray() & 1) == 0)
  {
    v12 = @"[NSString stringEncodingForData:encodingOptions:lossyDone:]: The value for NSStringEncodingDetectionDisallowedEncodingsKey must be an object of NSArray.";
LABEL_475:
    v225 = [NSString stringWithFormat:v12];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v225 userInfo:0]);
  }

LABEL_29:
  if (!data)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (![(NSData *)data length])
  {
    if (v240)
    {
      integerValue = [objc_msgSend(v14 objectAtIndex:{0), "integerValue"}];
      if (!string)
      {
LABEL_70:
        if (usedLossyConversion)
        {
          *usedLossyConversion = 0;
        }

        return integerValue;
      }
    }

    else
    {
      integerValue = 4;
      if (!string)
      {
        goto LABEL_70;
      }
    }

    *string = &stru_1EEEFDF90;
    goto LABEL_70;
  }

  if (qword_1ED43FB38 != -1)
  {
    dispatch_once(&qword_1ED43FB38, &__block_literal_global_42);
  }

  v23 = v244;
  if (qword_1ED43FB40 != -1)
  {
    dispatch_once(&qword_1ED43FB40, &__block_literal_global_230_0);
    v23 = v244;
  }

  if (v23 == 1)
  {
    v24 = v249;
  }

  else
  {
    v24 = 0;
  }

  if (v24 == 1)
  {
    v254 = 0;
    integerValue = [objc_msgSend(v14 objectAtIndex:{0), "integerValue"}];
    if (string)
    {
      v26 = [[NSString alloc] initWithData:data encoding:integerValue];
      if (!v26)
      {
        v26 = [NSEncodingDetector detectorForCFStringEncoding:CFStringConvertNSStringEncodingToEncoding(integerValue) allowBackupDetectors:1];
        if (v26)
        {
          v27 = v26;
          bytes = [(NSData *)data bytes];
          v29 = [(NSData *)data length];
          [(NSString *)v27 recognizeString:bytes withDataLength:v29 intoBuffer:0];
          v26 = generateStringWithEncoding(v27, bytes, v29, 0, bOOLValue, v11, &v254);
        }
      }

      *string = v26;
      if (usedLossyConversion)
      {
        *usedLossyConversion = v254;
      }
    }

    return integerValue;
  }

  v232 = v11;
  v233 = usedLossyConversion;
  v247 = [MEMORY[0x1E695DF90] dictionaryWithSharedKeySet:_MergedGlobals_117];
  v242 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v243 = data;
  v234 = string;
  v231 = bOOLValue;
  obj = v14;
  v230 = v15;
  if (v14 && (v293 = 0u, v294 = 0u, v291 = 0u, v292 = 0u, (v30 = [v14 countByEnumeratingWithState:&v291 objects:v290 count:16]) != 0))
  {
    v31 = v30;
    v241 = 0;
    v32 = *v292;
    v33 = v244;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v292 != v32)
        {
          objc_enumerationMutation(v14);
        }

        v35 = *(*(&v291 + 1) + 8 * i);
        integerValue = [v35 integerValue];
        v36 = CFStringConvertNSStringEncodingToEncoding(integerValue);
        v37 = [NSEncodingDetector detectorForCFStringEncoding:v36 allowBackupDetectors:v249];
        if (v37)
        {
          v38 = v37;
          [v247 setObject:v37 forKey:{+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", v36)}];
          *(v38 + 41) = v33--;
          v38[19] = v38[19] * 10.0;
        }

        else if (v244 < 2 || v33 == v244)
        {
          v39 = [[NSString alloc] initWithData:v243 encoding:integerValue];
          if (v39)
          {
            if (v234)
            {
              *v234 = v39;
            }

            if (v233)
            {
              *v233 = 0;
            }

            return integerValue;
          }
        }

        else
        {
          [v242 addObject:v35];
          v241 = 1;
        }
      }

      v31 = [v14 countByEnumeratingWithState:&v291 objects:v290 count:16];
    }

    while (v31);
  }

  else
  {
    v241 = 0;
  }

  if (v249)
  {
    v40 = v232;
    if ([v247 count])
    {
      v41 = 0;
      v42 = v233;
      v43 = v231;
      goto LABEL_94;
    }

    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if ([v13 count])
  {
    v41 = [MEMORY[0x1E695DF90] dictionaryWithSharedKeySet:_MergedGlobals_117];
    v286 = 0u;
    v287 = 0u;
    v288 = 0u;
    v289 = 0u;
    v44 = [v13 countByEnumeratingWithState:&v286 objects:v285 count:16];
    v43 = v231;
    if (v44)
    {
      v45 = v44;
      v46 = *v287;
      v47 = MEMORY[0x1E695E118];
      do
      {
        for (j = 0; j != v45; ++j)
        {
          if (*v287 != v46)
          {
            objc_enumerationMutation(v13);
          }

          [v41 setObject:v47 forKey:{+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", CFStringConvertNSStringEncodingToEncoding(objc_msgSend(*(*(&v286 + 1) + 8 * j), "integerValue")))}];
        }

        v45 = [v13 countByEnumeratingWithState:&v286 objects:v285 count:16];
      }

      while (v45);
    }

    if (bOOLValue2 & 1 | !iterations)
    {
      v40 = v232;
      v42 = v233;
      goto LABEL_94;
    }

    v40 = v232;
    v42 = v233;
    if (v41)
    {
      goto LABEL_90;
    }
  }

  else
  {
    v40 = v232;
    v42 = v233;
    v43 = v231;
    if (bOOLValue2 & 1 | !iterations)
    {
      v41 = 0;
      goto LABEL_94;
    }
  }

  v41 = [MEMORY[0x1E695DF90] dictionaryWithSharedKeySet:_MergedGlobals_117];
LABEL_90:
  v49 = 0;
  v50 = MEMORY[0x1E695E118];
  do
  {
    v51 = [NSNumber numberWithUnsignedInt:windowsEncodings[v49]];
    if (![v247 objectForKey:v51])
    {
      [v41 setObject:v50 forKey:v51];
    }

    ++v49;
  }

  while (v49 != 14);
LABEL_94:
  v254 = 0;
  bytes2 = [(NSData *)v243 bytes];
  v53 = [(NSData *)v243 length];
  v54 = [v247 objectForKey:{+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", 1536)}];
  if (v54)
  {
    v55 = v54;
    if ([v54 recognizeString:bytes2 withDataLength:v53 intoBuffer:0] && !v55[8])
    {
      [v55 softReset];
      if (v234)
      {
        *v234 = -[NSString initWithBytes:length:encoding:]([NSString alloc], "initWithBytes:length:encoding:", bytes2, v53, [v55 nsEncoding]);
        if (v42)
        {
          *v42 = v254;
        }
      }

      return 1;
    }

    [v55 softReset];
  }

  v56 = [NSNumber numberWithUnsignedInt:67109120];
  if (![v41 objectForKey:v56])
  {
    v57 = [v247 objectForKey:{+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", 67109120)}];
    if (v57)
    {
      v58 = 1;
    }

    else
    {
      v58 = v249;
    }

    if ((v58 & 1) == 0)
    {
      v57 = [NSEncodingDetector detectorForCFStringEncoding:67109120 allowBackupDetectors:0];
      [v247 setObject:v57 forKey:v56];
    }

    if (v57)
    {
      if ([v57 recognizeString:bytes2 withDataLength:v53 intoBuffer:0])
      {
        if (*(v57 + 160) == 1)
        {
          if (!v57[8] || *(v57 + 41) && ([v57 bytesRatio], v59 >= 0.99))
          {
            v60 = checkSuggestedEncodings(bytes2, v53, v247);
            if (v60)
            {
              v57 = v60;
            }

            if (generateStringWithEncoding(v57, bytes2, v53, 1, 0, 0, 0))
            {
              if (v234)
              {
                *v234 = generateStringWithEncoding(v57, bytes2, v53, 1, v43, v40, &v254);
                if (v42)
                {
                  *v42 = v254;
                }
              }

              goto LABEL_195;
            }
          }
        }
      }

      [v247 removeObjectForKey:&off_1EEF56E58];
    }
  }

  v61 = [NSNumber numberWithUnsignedInt:134217984];
  if ([v41 objectForKey:v61])
  {
    v62 = 0;
LABEL_119:
    v63 = v247;
    goto LABEL_120;
  }

  v62 = [v247 objectForKey:{+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", 134217984)}];
  if (v62)
  {
    v66 = 1;
  }

  else
  {
    v66 = v249;
  }

  if ((v66 & 1) == 0)
  {
    v62 = [NSEncodingDetector detectorForCFStringEncoding:134217984 allowBackupDetectors:0];
    [v247 setObject:v62 forKey:v61];
  }

  if (!v62)
  {
    goto LABEL_119;
  }

  if ([v62 recognizeString:bytes2 withDataLength:v53 intoBuffer:0] && (objc_msgSend(v62, "bytesRatio"), v67 >= 0.85) && (objc_msgSend(v62, "multiBytesRatio"), v68 > 0.0) && ((*(v62 + 162) & 1) != 0 || !*(v62 + 8) || (objc_msgSend(v62, "multiBytesRatio"), v69 >= 0.7)) || v62[41] && ((*(v62 + 162) & 1) != 0 || (objc_msgSend(v62, "bytesRatio"), v70 >= 0.99) || (objc_msgSend(v62, "multiBytesRatio"), v71 > 0.7)))
  {
    if (v62[41])
    {
      v72 = v244 != v62[41];
    }

    else
    {
      v72 = v240;
    }

    if (!v72)
    {
      if (v234)
      {
        *v234 = generateStringWithEncoding(v62, bytes2, v53, 1, v43, v40, &v254);
        if (v42)
        {
          *v42 = v254;
        }
      }

      return 4;
    }

    goto LABEL_119;
  }

  v63 = v247;
  [v247 removeObjectForKey:&off_1EEF56E70];
  v62 = 0;
LABEL_120:
  v64 = [NSNumber numberWithUnsignedInt:256];
  if ([v41 objectForKey:v64])
  {
    v65 = 0;
  }

  else
  {
    v65 = [v63 objectForKey:{+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", 256)}];
    if (v65)
    {
      v73 = 1;
    }

    else
    {
      v73 = v249;
    }

    if ((v73 & 1) == 0)
    {
      v65 = [NSEncodingDetector detectorForCFStringEncoding:256 allowBackupDetectors:0];
      [v63 setObject:v65 forKey:v64];
    }
  }

  v74 = [NSNumber numberWithUnsignedInt:268435712];
  if ([v41 objectForKey:v74])
  {
    v75 = 0;
  }

  else
  {
    v75 = [v63 objectForKey:{+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", 268435712)}];
    if (v75)
    {
      v76 = 1;
    }

    else
    {
      v76 = v249;
    }

    if ((v76 & 1) == 0)
    {
      v75 = [NSEncodingDetector detectorForCFStringEncoding:268435712 allowBackupDetectors:0];
      [v63 setObject:v75 forKey:v74];
    }
  }

  v77 = [NSNumber numberWithUnsignedInt:335544576, v62];
  if ([v41 objectForKey:v77])
  {
    v78 = 0;
  }

  else
  {
    v78 = [v63 objectForKey:{+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", 335544576)}];
    v79 = v249;
    if (v78)
    {
      v79 = 1;
    }

    if ((v79 & 1) == 0)
    {
      v78 = [NSEncodingDetector detectorForCFStringEncoding:335544576 allowBackupDetectors:0];
      [v63 setObject:v78 forKey:v77];
    }
  }

  v80 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
  v81 = v80;
  if (v65)
  {
    [v80 addObject:v65];
  }

  if (v75)
  {
    [v81 addObject:v75];
  }

  if (v78)
  {
    [v81 addObject:v78];
  }

  v284 = 0u;
  v283 = 0u;
  v282 = 0u;
  v281 = 0u;
  v82 = [v81 countByEnumeratingWithState:&v281 objects:v280 count:16];
  if (!v82)
  {
LABEL_183:
    v279 = 0u;
    v278 = 0u;
    v277 = 0u;
    v276 = 0u;
    v87 = [v81 countByEnumeratingWithState:&v276 objects:v275 count:16];
    if (v87)
    {
      v88 = v87;
      v89 = *v277;
      do
      {
        for (k = 0; k != v88; ++k)
        {
          if (*v277 != v89)
          {
            objc_enumerationMutation(v81);
          }

          [v247 removeObjectForKey:{+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", *(*(*(&v276 + 1) + 8 * k) + 24))}];
        }

        v88 = [v81 countByEnumeratingWithState:&v276 objects:v275 count:16];
      }

      while (v88);
    }

    v245 = bytes2;
    v91 = [NSNumber numberWithUnsignedInt:201326848];
    if ([v41 objectForKey:v91])
    {
      v92 = 0;
    }

    else
    {
      v92 = [v247 objectForKey:{+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", 201326848)}];
      if (v92)
      {
        v94 = 1;
      }

      else
      {
        v94 = v249;
      }

      if ((v94 & 1) == 0)
      {
        v92 = [NSEncodingDetector detectorForCFStringEncoding:201326848 allowBackupDetectors:0];
        [v247 setObject:v92 forKey:v91];
      }
    }

    v95 = [NSNumber numberWithUnsignedInt:402653440];
    if ([v41 objectForKey:v95])
    {
      v96 = 0;
    }

    else
    {
      v96 = [v247 objectForKey:{+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", 402653440)}];
      if (v96)
      {
        v97 = 1;
      }

      else
      {
        v97 = v249;
      }

      if ((v97 & 1) == 0)
      {
        v96 = [NSEncodingDetector detectorForCFStringEncoding:402653440 allowBackupDetectors:0];
        [v247 setObject:v96 forKey:v95];
      }
    }

    v98 = [NSNumber numberWithUnsignedInt:469762304];
    if ([v41 objectForKey:v98])
    {
      v99 = 0;
    }

    else
    {
      v99 = [v247 objectForKey:{+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", 469762304)}];
      if (v99)
      {
        v100 = 1;
      }

      else
      {
        v100 = v249;
      }

      if ((v100 & 1) == 0)
      {
        v99 = [NSEncodingDetector detectorForCFStringEncoding:469762304 allowBackupDetectors:0];
        [v247 setObject:v99 forKey:v98];
      }
    }

    [v81 removeAllObjects];
    if (v92)
    {
      [v81 addObject:v92];
    }

    if (v96)
    {
      [v81 addObject:v96];
    }

    if (v99)
    {
      [v81 addObject:v99];
    }

    v274 = 0u;
    v273 = 0u;
    v272 = 0u;
    v271 = 0u;
    v101 = [v81 countByEnumeratingWithState:&v271 objects:v270 count:16];
    if (v101)
    {
      v102 = v101;
      v103 = *v272;
LABEL_227:
      v104 = 0;
      while (1)
      {
        if (*v272 != v103)
        {
          objc_enumerationMutation(v81);
        }

        v105 = *(*(&v271 + 1) + 8 * v104);
        if ([v105 recognizeString:v245 withDataLength:v53 intoBuffer:0])
        {
          [v105 bytesRatio];
          if (v106 >= 0.85)
          {
            if (v105[162])
            {
              break;
            }

            [v105 bytesRatio];
            if (v107 >= 0.99)
            {
              break;
            }
          }
        }

        if (v102 == ++v104)
        {
          v102 = [v81 countByEnumeratingWithState:&v271 objects:v270 count:16];
          if (!v102)
          {
            goto LABEL_236;
          }

          goto LABEL_227;
        }
      }

      if (v234)
      {
        *v234 = generateStringWithEncoding(v105, v245, v53, 1, v231, v232, &v254);
        if (v233)
        {
          *v233 = v254;
        }
      }

      v93 = v105;
      return [v93 nsEncoding];
    }

LABEL_236:
    v268 = 0u;
    v269 = 0u;
    v266 = 0u;
    v267 = 0u;
    v108 = [v81 countByEnumeratingWithState:&v266 objects:v265 count:16];
    if (v108)
    {
      v109 = v108;
      v110 = *v267;
      do
      {
        for (m = 0; m != v109; ++m)
        {
          if (*v267 != v110)
          {
            objc_enumerationMutation(v81);
          }

          [v247 removeObjectForKey:{+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", *(*(*(&v266 + 1) + 8 * m) + 24))}];
        }

        v109 = [v81 countByEnumeratingWithState:&v266 objects:v265 count:16];
      }

      while (v109);
    }

    iterationsa = malloc_type_malloc(0x30uLL, 0x80040B8603338uLL);
    v112 = 0;
    v113 = 0;
    do
    {
      v114 = codeSchemeEncodings[v112];
      v115 = [NSNumber numberWithUnsignedInt:v114];
      if (![v41 objectForKey:v115])
      {
        v116 = [v247 objectForKey:{+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", v114)}];
        if (v116)
        {
          v117 = 1;
        }

        else
        {
          v117 = v249;
        }

        if ((v117 & 1) == 0)
        {
          v116 = [NSEncodingDetector detectorForCFStringEncoding:v114 allowBackupDetectors:0];
          [v247 setObject:v116 forKey:v115];
        }

        if (v116)
        {
          iterationsa[v113++] = v116;
        }
      }

      ++v112;
    }

    while (v112 != 6);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __113__NSString_NSStringEncodingDetection__stringEncodingForData_encodingOptions_convertedString_usedLossyConversion___block_invoke;
    block[3] = &__block_descriptor_56_e8_v16__0Q8l;
    block[4] = iterationsa;
    block[5] = v245;
    block[6] = v53;
    dispatch_apply(v113, 0, block);
    if (v113)
    {
      v118 = 0;
      v119 = 0;
      v120 = 0.0;
      v121 = -1;
      v122 = 1;
      do
      {
        v123 = iterationsa[v119];
        [v123 confidence];
        if (v123[5])
        {
          v125 = v124;
          [v123 bytesRatio];
          if (v126 >= 0.85 && (v125 > v120 || v125 == v120 && v121 > v123[8]) && v123[15] >= v122)
          {
            v121 = v123[8];
            v120 = v125;
            v122 = v123[15];
            v118 = v123;
          }
        }

        ++v119;
      }

      while (v113 != v119);
      if (v118)
      {
        if (!v234)
        {
LABEL_267:
          if (v233)
          {
            *v233 = v254;
          }

          free(iterationsa);
          v93 = v118;
          return [v93 nsEncoding];
        }

        v127 = generateStringWithEncoding(v118, v245, v53, 1, v231, v232, &v254);
        v128 = iterationsa;
        v129 = 0x1E69EE000;
        if (v127)
        {
          *v234 = v127;
          goto LABEL_267;
        }
      }

      else
      {
        v128 = iterationsa;
        v129 = 0x1E69EE000uLL;
      }

      do
      {
        v132 = *v128++;
        [v247 removeObjectForKey:{objc_msgSend(*(v129 + 1744), "numberWithUnsignedInt:", *(v132 + 24))}];
        --v113;
      }

      while (v113);
    }

    free(iterationsa);
    v228 = malloc_type_malloc(0xD0uLL, 0x80040B8603338uLL);
    v227 = malloc_type_malloc(0x70uLL, 0x80040B8603338uLL);
    v133 = 0;
    v229 = 0;
    do
    {
      v134 = singleByteEncodings[v133];
      v135 = [NSNumber numberWithUnsignedInt:v134];
      if (![v41 objectForKey:v135])
      {
        v136 = [v247 objectForKey:{+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", v134)}];
        if (v136)
        {
          v137 = 1;
        }

        else
        {
          v137 = v249;
        }

        if ((v137 & 1) == 0)
        {
          v136 = [NSEncodingDetector detectorForCFStringEncoding:v134 allowBackupDetectors:0];
          [v247 setObject:v136 forKey:v135];
        }

        if (v136)
        {
          v228[v229++] = v136;
        }
      }

      ++v133;
    }

    while (v133 != 26);
    v138 = 0;
    iterationsb = 0;
    do
    {
      v139 = multiByteEncodings[v138];
      v140 = [NSNumber numberWithUnsignedInt:v139];
      if (![v41 objectForKey:v140])
      {
        v141 = [v247 objectForKey:{+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", v139)}];
        if (v141)
        {
          v142 = 1;
        }

        else
        {
          v142 = v249;
        }

        if ((v142 & 1) == 0)
        {
          v141 = [NSEncodingDetector detectorForCFStringEncoding:v139 allowBackupDetectors:0];
          [v247 setObject:v141 forKey:v140];
        }

        if (v141)
        {
          v227[iterationsb++] = v141;
        }
      }

      ++v138;
    }

    while (v138 != 14);
    if (bOOLValue2)
    {
      for (n = 0; n != 14; ++n)
      {
        v144 = [v247 objectForKey:{+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", windowsEncodings[n])}];
        if (v144)
        {
          *(v144 + 152) = *(v144 + 152) * 5.0;
        }
      }
    }

    v145 = v229;
    if (v230)
    {
      if ([v230 hasPrefix:@"zh"])
      {
        for (ii = 0; ii != 11; ++ii)
        {
          v147 = [v247 objectForKey:{+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", chineseEncodings[ii])}];
          if (v147)
          {
            *(v147 + 152) = *(v147 + 152) * 5.0;
          }
        }
      }

      else if ([v230 hasPrefix:@"ja"])
      {
        for (jj = 0; jj != 6; ++jj)
        {
          v149 = [v247 objectForKey:{+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", japaneseEncodings[jj])}];
          if (v149)
          {
            *(v149 + 152) = *(v149 + 152) * 5.0;
          }
        }
      }

      else if ([v230 hasPrefix:@"ko"])
      {
        for (kk = 0; kk != 3; ++kk)
        {
          v151 = [v247 objectForKey:{+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", koreanEncodings[kk])}];
          if (v151)
          {
            *(v151 + 152) = *(v151 + 152) * 5.0;
          }
        }
      }

      else
      {
        v152 = [&unk_1EEF5A4D0 objectForKey:{objc_msgSend(v230, "substringWithRange:", 0, 2)}];
        v153 = [v152 count];
        if (v153)
        {
          v154 = v153;
          v155 = malloc_type_malloc(4 * v153, 0x100004052888210uLL);
          v261 = 0u;
          v262 = 0u;
          v263 = 0u;
          v264 = 0u;
          v156 = [v152 countByEnumeratingWithState:&v261 objects:v260 count:16];
          if (v156)
          {
            v157 = v156;
            v158 = 0;
            v159 = *v262;
            do
            {
              for (mm = 0; mm != v157; ++mm)
              {
                if (*v262 != v159)
                {
                  objc_enumerationMutation(v152);
                }

                v155[v158++] = [*(*(&v261 + 1) + 8 * mm) integerValue];
              }

              v157 = [v152 countByEnumeratingWithState:&v261 objects:v260 count:16];
            }

            while (v157);
          }

          increaseWeightsOfEncodings(v247, v155, v154);
          free(v155);
          v145 = v229;
        }
      }
    }

    v161 = v227;
    if (obj)
    {
      mergesort(v228, v145, 8uLL, compareTwoDetectors);
      mergesort(v227, iterationsb, 8uLL, compareTwoDetectors);
    }

    v252[0] = MEMORY[0x1E69E9820];
    v252[1] = 3221225472;
    v252[2] = __113__NSString_NSStringEncodingDetection__stringEncodingForData_encodingOptions_convertedString_usedLossyConversion___block_invoke_2;
    v252[3] = &__block_descriptor_56_e8_v16__0Q8l;
    v252[4] = v227;
    v252[5] = v245;
    v252[6] = v53;
    dispatch_apply(iterationsb, 0, v252);
    if (iterationsb)
    {
      v250 = 0;
      v162 = 0;
      v163 = 0.0;
      v164 = -1;
      v165 = iterationsb;
      v166 = -1;
      v167 = 0.0;
      while (1)
      {
        v168 = *v161;
        [*v161 confidence];
        v170 = v169;
        v171 = v168[8];
        [v168 bytesRatio];
        v173 = v172;
        if ((v170 > v167 || (v170 == v167 ? (v174 = v166 >= v171) : (v174 = 0), v174)) && v172 >= 0.85)
        {
          if (v168[8])
          {
            v175 = v170;
            v176 = v171;
            v177 = v168;
          }

          else
          {
            v175 = v170;
            v176 = v171;
            v177 = v168;
            if (!-[NSString initWithBytes:length:encoding:]([NSString alloc], "initWithBytes:length:encoding:", v245, v53, [v168 nsEncoding]))
            {
              v175 = v167;
              v176 = v166;
              v177 = v162;
              goto LABEL_359;
            }
          }
        }

        else
        {
          v175 = v167;
          v176 = v166;
          v177 = v162;
        }

        v178 = v170 / *(v168 + 19);
        if ((v178 > v163 || (v178 == v163 ? (v179 = v164 >= v171) : (v179 = 0), v179)) && v173 >= 0.85)
        {
          if (!v168[8] && !-[NSString initWithBytes:length:encoding:]([NSString alloc], "initWithBytes:length:encoding:", v245, v53, [v168 nsEncoding]))
          {
            goto LABEL_359;
          }
        }

        else
        {
          v178 = v163;
          v171 = v164;
          v168 = v250;
        }

        v163 = v178;
        v164 = v171;
        v250 = v168;
LABEL_359:
        ++v161;
        v162 = v177;
        v166 = v176;
        v167 = v175;
        if (!--v165)
        {
          goto LABEL_364;
        }
      }
    }

    v177 = 0;
    v250 = 0;
    v176 = -1;
    v175 = 0.0;
LABEL_364:
    v248 = v177;
    v251[0] = MEMORY[0x1E69E9820];
    v251[1] = 3221225472;
    v251[2] = __113__NSString_NSStringEncodingDetection__stringEncodingForData_encodingOptions_convertedString_usedLossyConversion___block_invoke_3;
    v251[3] = &__block_descriptor_56_e8_v16__0Q8l;
    v181 = v228;
    v180 = v229;
    v251[4] = v228;
    v251[5] = v245;
    v251[6] = v53;
    dispatch_apply(v229, 0, v251);
    v182 = 0;
    v183 = 1;
    if (v229)
    {
      v184 = 0.0;
      v185 = -1;
      v186 = v234;
      while (1)
      {
        v187 = *v181;
        [*v181 confidence];
        v189 = v188;
        v190 = v187[8];
        [v187 bytesRatio];
        v192 = v191;
        if (v189 > v175 || (v189 == v175 ? (v193 = v176 >= v190) : (v193 = 0), v193))
        {
          if (v191 >= 0.85)
          {
            v194 = v187[8];
            if (*(v187 + 6) == 1536 && v194 / v187[4] > 0.005)
            {
              goto LABEL_393;
            }

            if (v194)
            {
              v183 = 0;
              v175 = v189;
              v176 = v190;
              v248 = v187;
            }

            else
            {
              if (!-[NSString initWithBytes:length:encoding:]([NSString alloc], "initWithBytes:length:encoding:", v245, v53, [v187 nsEncoding]))
              {
                v186 = v234;
                goto LABEL_393;
              }

              v175 = v189;
              v176 = v190;
              v248 = v187;
              v186 = v234;
              v183 = 0;
            }
          }
        }

        v195 = v189 / *(v187 + 19);
        if ((v195 > v184 || (v195 == v184 ? (v196 = v185 >= v190) : (v196 = 0), v196)) && v192 >= 0.85)
        {
          v197 = v187[8];
          if (*(v187 + 6) == 1536 && v197 / v187[4] > 0.005 || !v197 && !generateStringWithEncoding(v187, v245, v53, 1, 0, 0, 0))
          {
            goto LABEL_393;
          }
        }

        else
        {
          v195 = v184;
          v190 = v185;
          v187 = v182;
        }

        v184 = v195;
        v185 = v190;
        v182 = v187;
LABEL_393:
        ++v181;
        if (!--v180)
        {
          goto LABEL_397;
        }
      }
    }

    v186 = v234;
LABEL_397:
    v239 = v182;
    v198 = v183;
    integerValue = v248;
    if (v248)
    {
      nsEncoding = [v248 nsEncoding];
    }

    else
    {
      nsEncoding = 0x7FFFFFFFFFFFFFFFLL;
    }

    v200 = v233;
    v201 = v226;
    if (v175 >= 0.05 || ([obj containsObject:{+[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", nsEncoding)}] & 1) != 0)
    {
      v202 = v250;
    }

    else
    {
      if (v241)
      {
        v258 = 0u;
        v259 = 0u;
        v256 = 0u;
        v257 = 0u;
        v211 = [v242 countByEnumeratingWithState:&v256 objects:v255 count:16];
        if (v211)
        {
          v212 = v211;
          v213 = *v257;
          while (2)
          {
            for (nn = 0; nn != v212; ++nn)
            {
              if (*v257 != v213)
              {
                objc_enumerationMutation(v242);
              }

              v215 = *(*(&v256 + 1) + 8 * nn);
              v216 = -[NSString initWithData:encoding:]([NSString alloc], "initWithData:encoding:", v243, [v215 integerValue]);
              if (v216)
              {
                if (v234)
                {
                  *v234 = v216;
                }

                if (v233)
                {
                  *v233 = 0;
                }

                free(v227);
                free(v228);
                return [v215 integerValue];
              }
            }

            v212 = [v242 countByEnumeratingWithState:&v256 objects:v255 count:16];
            v186 = v234;
            if (v212)
            {
              continue;
            }

            break;
          }
        }
      }

      if (v248)
      {
        v217 = v248[8];
      }

      else
      {
        v217 = -1;
      }

      v218 = v229;
      if (iterationsb)
      {
        v219 = 0;
        v220 = 0.0;
        v201 = v226;
        v221 = v227;
        do
        {
          if (*(*v221 + 19) == 1.0)
          {
            break;
          }

          [*v221 confidence];
          if (v220 < v222 && *(*v221 + 8) <= v217)
          {
            v198 = 1;
            v220 = v222;
            v219 = *v221;
          }

          ++v221;
          --iterationsb;
        }

        while (iterationsb);
      }

      else
      {
        v219 = 0;
        v220 = 0.0;
        v201 = v226;
      }

      if (v229)
      {
        v223 = v228;
        do
        {
          if (*(*v223 + 19) == 1.0)
          {
            break;
          }

          [*v223 confidence];
          if (v220 < v224 && *(*v223 + 8) <= v217)
          {
            v198 = 0;
            v220 = v224;
            v219 = *v223;
          }

          ++v223;
          --v218;
        }

        while (v218);
      }

      integerValue = v248;
      v202 = v250;
      if (v219)
      {
        integerValue = v219;
      }

      v200 = v233;
    }

    if ((v198 & 1) == 0)
    {
      v202 = v239;
    }

    if (integerValue && v202 && integerValue != v202)
    {
      v203 = *(integerValue + 64);
      if (v203 && v203 > *(v202 + 64))
      {
        integerValue = v202;
      }
    }

    else if (!integerValue)
    {
      nsEncoding2 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_414:
      if (v201 != 0 && v240 && nsEncoding2 != [objc_msgSend(obj objectAtIndex:{0), "integerValue"}] || (v201 = integerValue) != 0)
      {
        integerValue = [v201 nsEncoding];
      }

      if (((integerValue == 0) & v231 & v240) == 1)
      {
        if (![obj count])
        {
          goto LABEL_431;
        }

        integerValue = [objc_msgSend(obj objectAtIndex:{0), "integerValue"}];
        v205 = [NSEncodingDetector detectorForCFStringEncoding:CFStringConvertNSStringEncodingToEncoding(integerValue) allowBackupDetectors:1];
        if (v205)
        {
          v206 = v205;
          bytes3 = [(NSData *)v243 bytes];
          v208 = [(NSData *)v243 length];
          [v206 recognizeString:bytes3 withDataLength:v208 intoBuffer:0];
          v209 = generateStringWithEncoding(v206, bytes3, v208, 1, 1, v232, &v254);
          if (v186)
          {
            if (v209)
            {
              *v186 = v209;
            }
          }
        }

        if (!v200)
        {
          goto LABEL_431;
        }

        v210 = 1;
      }

      else
      {
        if (!v186)
        {
          goto LABEL_431;
        }

        if (!integerValue)
        {
          goto LABEL_431;
        }

        *v186 = generateStringWithEncoding(v201, v245, v53, 1, v231, v232, &v254);
        if (!v200)
        {
          goto LABEL_431;
        }

        v210 = v254;
      }

      *v200 = v210;
LABEL_431:
      free(v227);
      free(v228);
      return integerValue;
    }

    nsEncoding2 = [integerValue nsEncoding];
    goto LABEL_414;
  }

  v83 = v82;
  v84 = *v282;
LABEL_172:
  v85 = 0;
  while (1)
  {
    if (*v282 != v84)
    {
      objc_enumerationMutation(v81);
    }

    v57 = *(*(&v281 + 1) + 8 * v85);
    if ([v57 recognizeString:bytes2 withDataLength:v53 intoBuffer:0])
    {
      if (*(v57 + 162) == 1 && v57[9] <= 1uLL)
      {
        break;
      }
    }

LABEL_181:
    if (v83 == ++v85)
    {
      v83 = [v81 countByEnumeratingWithState:&v281 objects:v280 count:16];
      if (!v83)
      {
        goto LABEL_183;
      }

      goto LABEL_172;
    }
  }

  if (!v234)
  {
    goto LABEL_195;
  }

  if (!v57[8])
  {
    v86 = -[NSString initWithBytes:length:encoding:]([NSString alloc], "initWithBytes:length:encoding:", bytes2, v53, [v57 nsEncoding]);
    if ([(NSString *)v86 length])
    {
      goto LABEL_193;
    }

    goto LABEL_181;
  }

  v86 = generateStringWithEncoding(v57, bytes2, v53, 1, v231, v232, &v254);
LABEL_193:
  *v234 = v86;
  if (v233)
  {
    *v233 = v254;
  }

LABEL_195:
  v93 = v57;
  return [v93 nsEncoding];
}

+ (id)_newStringFromUTF16InternalData:(id)data typeIdentifier:(id)identifier error:(id *)error
{
  if (![data length])
  {
    return &stru_1EEEFDF90;
  }

  if ([data length] < 2)
  {
    result = 0;
  }

  else
  {
    result = [objc_msgSend(data subdataWithRange:{0, 2), "bytes"}];
    if (result)
    {
      v14 = *result;
      if (v14 == 65534 || v14 == 65279)
      {
        v15 = [self alloc];
        v16 = 10;
      }

      else
      {
        v15 = [self alloc];
        v16 = 2483028224;
      }

      result = [v15 initWithData:data encoding:v16];
    }
  }

  if (error)
  {
    if (!result)
    {
      v17 = _NSIPCocoaErrorWithCode(4864, 0, 0, @"The string representation of type “%@” contains invalid data.", v9, v10, v11, v12, identifier);
      result = 0;
      *error = v17;
    }
  }

  return result;
}

+ (id)objectWithItemProviderData:(id)data typeIdentifier:(id)identifier error:(id *)error
{
  v26[1] = *MEMORY[0x1E69E9840];
  v26[0] = 0;
  v9 = _MergedGlobals_88[0]();
  if ((off_1ED4398A0[0])(identifier, v9))
  {
    goto LABEL_2;
  }

  v12 = off_1ED439878[0]();
  if ((off_1ED4398A0[0])(identifier, v12))
  {
    v10 = [self alloc];
    v11 = 10;
    goto LABEL_5;
  }

  v21 = off_1ED439880[0]();
  if ((off_1ED4398A0[0])(identifier, v21))
  {
    v13 = [self _newStringFromUTF16InternalData:data typeIdentifier:identifier error:v26];
    goto LABEL_6;
  }

  v22 = off_1ED439888[0]();
  if ((off_1ED4398A0[0])(identifier, v22))
  {
LABEL_2:
    v10 = [self alloc];
    v11 = 4;
LABEL_5:
    v13 = [v10 initWithData:data encoding:v11];
LABEL_6:
    v18 = v13;
    goto LABEL_7;
  }

  v23 = off_1ED439890[0]();
  if ((off_1ED4398A0[0])(identifier, v23))
  {
    v24 = [MEMORY[0x1E695DFF8] objectWithItemProviderData:data typeIdentifier:identifier error:v26];
    if (v26[0])
    {
      v18 = 0;
    }

    else
    {
      v18 = [[self alloc] initWithString:{objc_msgSend(v24, "absoluteString")}];
    }
  }

  else
  {
    v18 = 0;
  }

LABEL_7:
  v19 = v26[0];
  if (!(v18 | v26[0]))
  {
    v19 = _NSIPCocoaErrorWithCode(4864, 0, 0, @"A string could not be instantiated because of an unknown error.", v14, v15, v16, v17, v25);
    v26[0] = v19;
  }

  if (error && v19)
  {
    *error = v19;
  }

  return v18;
}

+ (NSArray)writableTypeIdentifiersForItemProvider
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = _MergedGlobals_88[0]();
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
}

- (NSArray)writableTypeIdentifiersForItemProvider
{
  v8[1] = *MEMORY[0x1E69E9840];
  v8[0] = _MergedGlobals_88[0]();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v4 = [MEMORY[0x1E695DFF8] URLWithString:self];
  if ([objc_msgSend(v4 "scheme")])
  {
    isFileURL = [v4 isFileURL];
    v6 = 4;
    if (isFileURL)
    {
      v6 = 5;
    }

    return [(NSArray *)v3 arrayByAddingObject:_MergedGlobals_88[v6]()];
  }

  return v3;
}

- (id)loadDataWithTypeIdentifier:(id)identifier forItemProviderCompletionHandler:(id)handler
{
  if ([identifier isEqualToString:_MergedGlobals_88[0]()])
  {
    (*(handler + 2))(handler, [(NSString *)self dataUsingEncoding:4], 0);
    return 0;
  }

  if (([identifier isEqualToString:off_1ED439890[0]()] & 1) == 0 && !objc_msgSend(identifier, "isEqualToString:", off_1ED439898[0]()))
  {
    (*(handler + 2))(handler, 0, 0);
    return 0;
  }

  v8 = [MEMORY[0x1E695DFF8] URLWithString:self];

  return [v8 loadDataWithTypeIdentifier:identifier forItemProviderCompletionHandler:handler];
}

+ (NSString)allocWithZone:(_NSZone *)zone
{
  if (__NSStringClass == self)
  {
    return &__placeholder;
  }

  else
  {
    return NSAllocateObject(self, 0, zone);
  }
}

+ (NSString)stringWithString:(NSString *)string
{
  v3 = [objc_allocWithZone(self) initWithString:string];

  return v3;
}

+ (NSString)stringWithCharacters:(const unichar *)characters length:(NSUInteger)length
{
  v4 = [objc_allocWithZone(self) initWithCharacters:characters length:length];

  return v4;
}

+ (id)stringWithCString:(const char *)bytes
{
  if (!bytes)
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: NULL cString", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v5);
  }

  v3 = [objc_allocWithZone(self) initWithCString:bytes];

  return v3;
}

+ (id)stringWithCString:(const char *)bytes length:(NSUInteger)length
{
  v4 = [objc_allocWithZone(self) initWithCString:bytes length:length];

  return v4;
}

+ (NSString)stringWithCString:(const char *)cString encoding:(NSStringEncoding)enc
{
  if (!cString)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: NULL cString", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v6);
  }

  v4 = [objc_allocWithZone(self) initWithBytes:cString length:strlen(cString) encoding:enc];

  return v4;
}

+ (NSString)stringWithUTF8String:(const char *)nullTerminatedCString
{
  if (!nullTerminatedCString)
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: NULL cString", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v5);
  }

  v3 = [objc_allocWithZone(self) initWithBytes:nullTerminatedCString length:strlen(nullTerminatedCString) encoding:4];

  return v3;
}

+ (NSString)stringWithBytes:(const void *)bytes length:(unint64_t)length encoding:(unint64_t)encoding
{
  if (!bytes)
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: NULL cString", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v7);
  }

  v5 = [objc_allocWithZone(self) initWithBytes:bytes length:length encoding:encoding];

  return v5;
}

+ (NSString)localizedStringWithValidatedFormat:(NSString *)format validFormatSpecifiers:(NSString *)validFormatSpecifiers error:(NSError *)error
{
  va_start(va, error);
  v8 = [self alloc];
  return [v8 initWithValidatedFormat:format validFormatSpecifiers:validFormatSpecifiers locale:objc_msgSend(MEMORY[0x1E695DF58] arguments:"currentLocale") error:va, error];
}

+ (NSString)localizedStringWithFormat:(NSString *)format
{
  va_start(va, format);
  v4 = objc_allocWithZone(self);
  return [v4 initWithFormat:format locale:objc_msgSend(MEMORY[0x1E695DF58] arguments:"currentLocale"), va];
}

+ (NSString)stringWithFormat:(NSString *)format
{
  va_start(va, format);
  v3 = [objc_allocWithZone(self) initWithFormat:format locale:0 arguments:va];
  v4 = v3;
  return v3;
}

+ (id)_stringWithFormat:(id)format locale:(id)locale options:(id)options arguments:(char *)arguments
{
  v6 = [[self alloc] _initWithFormat:format locale:locale options:options arguments:arguments];

  return v6;
}

+ (id)_stringWithValidatedFormat:(id)format validFormatSpecifiers:(id)specifiers locale:(id)locale arguments:(char *)arguments error:(id *)error
{
  v7 = [[self alloc] initWithValidatedFormat:format validFormatSpecifiers:specifiers locale:locale arguments:arguments error:error];

  return v7;
}

+ (id)stringWithContentsOfFile:(NSString *)path
{
  v3 = [objc_allocWithZone(self) initWithContentsOfFile:path];

  return v3;
}

+ (id)stringWithContentsOfURL:(NSURL *)url
{
  v3 = [objc_allocWithZone(self) initWithContentsOfURL:url];

  return v3;
}

+ (NSString)stringWithContentsOfURL:(NSURL *)url encoding:(NSStringEncoding)enc error:(NSError *)error
{
  v5 = [objc_allocWithZone(self) initWithContentsOfURL:url encoding:enc error:error];

  return v5;
}

+ (NSString)stringWithContentsOfURL:(NSURL *)url usedEncoding:(NSStringEncoding *)enc error:(NSError *)error
{
  v5 = [objc_allocWithZone(self) initWithContentsOfURL:url usedEncoding:enc error:error];

  return v5;
}

+ (NSString)stringWithContentsOfFile:(NSString *)path encoding:(NSStringEncoding)enc error:(NSError *)error
{
  v5 = [objc_allocWithZone(self) initWithContentsOfFile:path encoding:enc error:error];

  return v5;
}

+ (NSString)stringWithContentsOfFile:(NSString *)path usedEncoding:(NSStringEncoding *)enc error:(NSError *)error
{
  v5 = [objc_allocWithZone(self) initWithContentsOfFile:path usedEncoding:enc error:error];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [NSString allocWithZone:zone];

  return [(NSString *)v4 initWithString:self];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [NSMutableString allocWithZone:zone];

  return [(NSString *)v4 initWithString:self];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v5 = _NSIsNSString();
    if (v5)
    {

      LOBYTE(v5) = [(NSString *)self isEqualToString:equal];
    }
  }

  return v5;
}

- (NSComparisonResult)compare:(NSString *)string options:(NSStringCompareOptions)mask range:(NSRange)rangeOfReceiverToCompare
{
  if (self == string)
  {
    return 0;
  }

  else
  {
    return [NSString compare:"compare:options:range:locale:" options:? range:? locale:?];
  }
}

- (NSComparisonResult)compare:(NSString *)string options:(NSStringCompareOptions)mask range:(NSRange)rangeOfReceiverToCompare locale:(id)locale
{
  if (self == string)
  {
    return 0;
  }

  if (!string)
  {
    return 1;
  }

  length = rangeOfReceiverToCompare.length;
  location = rangeOfReceiverToCompare.location;
  if (locale)
  {
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v13 = locale;
    }

    else
    {
      v13 = 0;
    }

    if ((isKindOfClass & 1) == 0)
    {
      mask |= 0x20uLL;
    }
  }

  else
  {
    v13 = 0;
  }

  v15.location = location;
  v15.length = length;

  return CFStringCompareWithOptionsAndLocale(self, string, v15, ~(8 * mask) & 0x10 | mask, v13);
}

- (NSComparisonResult)compare:(NSString *)string options:(NSStringCompareOptions)mask
{
  if (self == string)
  {
    return 0;
  }

  v8 = [(NSString *)self length];

  return [(NSString *)self compare:string options:mask range:0, v8];
}

- (NSComparisonResult)compare:(NSString *)string
{
  if (self == string)
  {
    return 0;
  }

  v6 = [(NSString *)self length];

  return [(NSString *)self compare:string options:0 range:0, v6];
}

- (NSComparisonResult)caseInsensitiveCompare:(NSString *)string
{
  v5 = [(NSString *)self length];

  return [(NSString *)self compare:string options:1 range:0, v5];
}

- (NSComparisonResult)localizedCompare:(NSString *)string
{
  v5 = [(NSString *)self length];
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];

  return [(NSString *)self compare:string options:0 range:0 locale:v5, currentLocale];
}

- (NSComparisonResult)localizedCaseInsensitiveCompare:(NSString *)string
{
  v5 = [(NSString *)self length];
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];

  return [(NSString *)self compare:string options:1 range:0 locale:v5, currentLocale];
}

- (NSComparisonResult)localizedStandardCompare:(NSString *)string
{
  v5 = [(NSString *)self length];
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];

  return [(NSString *)self compare:string options:833 range:0 locale:v5, currentLocale];
}

- (NSRange)rangeOfComposedCharacterSequenceAtIndex:(NSUInteger)index
{
  if ([(NSString *)self length]<= index)
  {
    index = [NSString stringWithFormat:@"The index %ld is invalid", index];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:index userInfo:0]);
  }

  RangeOfCharacterClusterAtIndex = CFStringGetRangeOfCharacterClusterAtIndex();
  result.length = v5;
  result.location = RangeOfCharacterClusterAtIndex;
  return result;
}

- (NSRange)rangeOfComposedCharacterSequencesForRange:(NSRange)range
{
  length = range.length;
  location = range.location;
  v6 = [(NSString *)self length];
  if (location == v6)
  {
    v7 = location;
  }

  else
  {
    v7 = [(NSString *)self rangeOfComposedCharacterSequenceAtIndex:location];
  }

  if (location + length != v6)
  {
    if (length)
    {
      v8 = location + length - 1;
    }

    else
    {
      v8 = location;
    }

    v9 = [(NSString *)self rangeOfComposedCharacterSequenceAtIndex:v8];
    v6 = v9 + v10;
  }

  v11 = v6 - v7;
  v12 = v7;
  result.length = v11;
  result.location = v12;
  return result;
}

- (NSRange)rangeOfString:(NSString *)searchString options:(NSStringCompareOptions)mask range:(NSRange)rangeOfReceiverToSearch locale:(NSLocale *)locale
{
  length = rangeOfReceiverToSearch.length;
  location = rangeOfReceiverToSearch.location;
  v23 = *MEMORY[0x1E69E9840];
  result.location = 0;
  result.length = 0;
  v13 = [(NSString *)searchString length];
  v14 = [(NSString *)self length];
  if (v14 < length || location > v14 - length)
  {
    if (_CFExecutableLinkedOnOrAfter())
    {
      v19 = [NSString stringWithFormat:@"%@: Range {%lu, %lu} out of bounds; string length %lu", _NSMethodExceptionProem(self, a2), location, length, v14];
      v20 = MEMORY[0x1E695DF30];
      v21 = MEMORY[0x1E695DA20];
LABEL_19:
      objc_exception_throw([v20 exceptionWithName:*v21 reason:v19 userInfo:0]);
    }

    if ((rangeOfString_options_range_locale__warnonce & 1) == 0)
    {
      rangeOfString_options_range_locale__warnonce = 1;
      v15 = _NSMethodExceptionProem(self, a2);
      v25.location = location;
      v25.length = length;
      v16 = NSStringFromRange(v25);
      NSLog(@"*** %@: Invalid range %@; this will become an exception for apps linked on SnowLeopard. Warning shown once per app execution.", v15, v16);
    }
  }

  if (!searchString)
  {
    v19 = [NSString stringWithFormat:@"%@: nil argument", _NSMethodExceptionProem(self, a2)];
    v20 = MEMORY[0x1E695DF30];
    v21 = MEMORY[0x1E695D940];
    goto LABEL_19;
  }

  if ((mask & 0x400) != 0)
  {

    locale = [(NSString *)self _rangeOfRegularExpressionPattern:searchString options:mask range:location locale:length, locale];
  }

  else
  {
    v17 = 0;
    locale = 0x7FFFFFFFFFFFFFFFLL;
    if (length && v13)
    {
      v27.location = location;
      v27.length = length;
      if (CFStringFindWithOptionsAndLocale(self, searchString, v27, ~(8 * mask) & 0x10 | mask, locale, &result))
      {
        locale = result.location;
        v17 = result.length;
      }

      else
      {
        v17 = 0;
        locale = 0x7FFFFFFFFFFFFFFFLL;
      }
    }
  }

  v26.length = v17;
  v26.location = locale;
  return v26;
}

- (NSRange)rangeOfString:(NSString *)searchString options:(NSStringCompareOptions)mask range:(NSRange)rangeOfReceiverToSearch
{
  v5 = [(NSString *)self rangeOfString:searchString options:mask range:rangeOfReceiverToSearch.location locale:rangeOfReceiverToSearch.length, 0];
  result.length = v6;
  result.location = v5;
  return result;
}

- (NSRange)rangeOfString:(NSString *)searchString options:(NSStringCompareOptions)mask
{
  v7 = [(NSString *)self length];

  v8 = [(NSString *)self rangeOfString:searchString options:mask range:0 locale:v7, 0];
  result.length = v9;
  result.location = v8;
  return result;
}

- (NSRange)rangeOfString:(NSString *)searchString
{
  v5 = [(NSString *)self length];

  v6 = [(NSString *)self rangeOfString:searchString options:0 range:0 locale:v5, 0];
  result.length = v7;
  result.location = v6;
  return result;
}

- (NSRange)rangeOfCharacterFromSet:(NSCharacterSet *)searchSet options:(NSStringCompareOptions)mask range:(NSRange)rangeOfReceiverToSearch
{
  length = rangeOfReceiverToSearch.length;
  location = rangeOfReceiverToSearch.location;
  v22 = *MEMORY[0x1E69E9840];
  result.location = 0;
  result.length = 0;
  v11 = [(NSString *)self length];
  if (v11 < length || location > v11 - length)
  {
    if (_CFExecutableLinkedOnOrAfter())
    {
      v18 = [NSString stringWithFormat:@"%@: Range {%lu, %lu} out of bounds; string length %lu", _NSMethodExceptionProem(self, a2), location, length, v11];
      v19 = MEMORY[0x1E695DF30];
      v20 = MEMORY[0x1E695DA20];
LABEL_16:
      objc_exception_throw([v19 exceptionWithName:*v20 reason:v18 userInfo:0]);
    }

    if ((rangeOfCharacterFromSet_options_range__warnonce & 1) == 0)
    {
      rangeOfCharacterFromSet_options_range__warnonce = 1;
      v12 = _NSMethodExceptionProem(self, a2);
      v23.location = location;
      v23.length = length;
      v13 = NSStringFromRange(v23);
      NSLog(@"*** %@: Invalid range %@; this will become an exception for apps linked on SnowLeopard. Warning shown once per app execution.", v12, v13);
    }
  }

  if (!searchSet)
  {
    v18 = [NSString stringWithFormat:@"%@: nil argument", _NSMethodExceptionProem(self, a2)];
    v19 = MEMORY[0x1E695DF30];
    v20 = MEMORY[0x1E695D940];
    goto LABEL_16;
  }

  v25.location = location;
  v25.length = length;
  CharacterFromSet = CFStringFindCharacterFromSet(self, searchSet, v25, mask, &result);
  v15 = CharacterFromSet == 0;
  if (CharacterFromSet)
  {
    v16 = result.location;
  }

  else
  {
    v16 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    v17 = 0;
  }

  else
  {
    v17 = result.length;
  }

  v24.length = v17;
  v24.location = v16;
  return v24;
}

- (NSRange)rangeOfCharacterFromSet:(NSCharacterSet *)searchSet options:(NSStringCompareOptions)mask
{
  v7 = [(NSString *)self length];

  v8 = [(NSString *)self rangeOfCharacterFromSet:searchSet options:mask range:0, v7];
  result.length = v9;
  result.location = v8;
  return result;
}

- (NSRange)rangeOfCharacterFromSet:(NSCharacterSet *)searchSet
{
  v5 = [(NSString *)self length];

  v6 = [(NSString *)self rangeOfCharacterFromSet:searchSet options:0 range:0, v5];
  result.length = v7;
  result.location = v6;
  return result;
}

- (NSArray)componentsSeparatedByString:(NSString *)separator
{
  v5 = [(NSString *)self rangeOfString:separator options:0 range:0, [(NSString *)self length]];
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    v9 = [(NSString *)self length];
    array = [MEMORY[0x1E695DF70] array];
    v11 = [(NSString *)self zone];
    v12 = 0;
    do
    {
      v13 = [(NSString *)self _newSubstringWithRange:v12 zone:v7 - v12, v11];
      [(NSArray *)array addObject:v13];

      v12 = v7 + v8;
      v14 = v9 - (v7 + v8);
      v7 = [(NSString *)self rangeOfString:separator options:0 range:v7 + v8, v14];
      v8 = v15;
    }

    while (v15);
    v16 = [(NSString *)self _newSubstringWithRange:v12 zone:v14, v11];
    [(NSArray *)array addObject:v16];
  }

  else
  {
    v16 = [(NSString *)self copy];
    array = [MEMORY[0x1E695DEC8] arrayWithObject:v16];
  }

  return array;
}

- (NSArray)componentsSeparatedByCharactersInSet:(NSCharacterSet *)separator
{
  v5 = [(NSString *)self rangeOfCharacterFromSet:separator options:0 range:0, [(NSString *)self length]];
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    v9 = [(NSString *)self length];
    array = [MEMORY[0x1E695DF70] array];
    v11 = [(NSString *)self zone];
    v12 = 0;
    do
    {
      v13 = [(NSString *)self _newSubstringWithRange:v12 zone:v7 - v12, v11];
      [(NSArray *)array addObject:v13];

      v12 = v7 + v8;
      v14 = v9 - (v7 + v8);
      v7 = [(NSString *)self rangeOfCharacterFromSet:separator options:0 range:v7 + v8, v14];
      v8 = v15;
    }

    while (v15);
    v16 = [(NSString *)self _newSubstringWithRange:v12 zone:v14, v11];
    [(NSArray *)array addObject:v16];
  }

  else
  {
    v16 = [(NSString *)self copy];
    array = [MEMORY[0x1E695DEC8] arrayWithObject:v16];
  }

  return array;
}

- (NSString)commonPrefixWithString:(NSString *)str options:(NSStringCompareOptions)mask
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = [(NSString *)self length];
  v23 = str;
  v7 = [(NSString *)str length];
  result = &stru_1EEEFDF90;
  if (v6 && v7)
  {
    _fastCharacterContents = [(NSString *)self _fastCharacterContents];
    if (_fastCharacterContents)
    {
      v10 = _fastCharacterContents;
      v21 = 0;
      v11 = v6;
    }

    else if (v6 < 101)
    {
      v11 = 0;
      v21 = 0;
      v10 = &v25;
    }

    else
    {
      v12 = malloc_default_zone();
      v10 = malloc_type_zone_malloc(v12, 2 * v6, 0x409734D7uLL);
      v11 = 0;
      v21 = 1;
    }

    v13 = 0;
    v14 = 0;
    MutableWithExternalCharactersNoCopy = 0;
    if (v6 / 2 >= v7)
    {
      v16 = v7;
    }

    else
    {
      v16 = v6 / 2;
    }

    externalCharactersAllocator = *MEMORY[0x1E695E498];
    if ((mask & 2) != 0)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = [(NSString *)self rangeOfComposedCharacterSequenceAtIndex:v16];
    for (i = v17 + v18; ; i = v16 + 1)
    {
      if (i > v11)
      {
        [(NSString *)self getCharacters:&v10[v11] range:v11, i - v11];
        v11 = i;
      }

      if (MutableWithExternalCharactersNoCopy)
      {
        CFStringSetExternalCharactersNoCopy(MutableWithExternalCharactersNoCopy, v10, i, i);
      }

      else
      {
        MutableWithExternalCharactersNoCopy = CFStringCreateMutableWithExternalCharactersNoCopy(0, v10, i, i, externalCharactersAllocator);
      }

      [(NSString *)v23 rangeOfString:MutableWithExternalCharactersNoCopy options:mask | 8 range:0, v7];
      if (v20)
      {
        v13 = v16 + 1;
      }

      else
      {
        v6 = v16;
      }

      if (v20)
      {
        v14 = i;
      }

      if (v13 >= v6)
      {
        break;
      }

      v16 = (v13 + v6) / 2;
      if ((mask & 2) == 0)
      {
        goto LABEL_12;
      }

LABEL_13:
      ;
    }

    CFRelease(MutableWithExternalCharactersNoCopy);
    if (v21)
    {
      free(v10);
    }

    if (v14)
    {
      return [(NSString *)self substringWithRange:0, v14];
    }

    else
    {
      return &stru_1EEEFDF90;
    }
  }

  return result;
}

- (NSRange)localizedStandardRangeOfString:(NSString *)str
{
  v5 = [(NSString *)self length];
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];

  v7 = [(NSString *)self rangeOfString:str options:129 range:0 locale:v5, currentLocale];
  result.length = v8;
  result.location = v7;
  return result;
}

- (NSString)stringByTrimmingCharactersInSet:(NSCharacterSet *)set
{
  v36 = *MEMORY[0x1E69E9840];
  if (!set)
  {
    v29 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: nil argument", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v29);
  }

  v35 = 0u;
  memset(v34, 0, sizeof(v34));
  v5 = [(NSString *)self length];
  v6 = v5;
  v33 = v5;
  *&v34[0] = 0;
  if (!v5)
  {
    v15 = 0;
    v30 = 0;
    WORD4(v35) = -1;
    goto LABEL_22;
  }

  if (v5 >= 0x20)
  {
    v7 = 32;
  }

  else
  {
    v7 = v5;
  }

  v30 = v7;
  [self getUid("getCharacters:v34 + 8 range:{0, v7}")];
  v8 = WORD4(v34[0]);
  v31 = 1;
  WORD4(v35) = WORD4(v34[0]);
  while (1)
  {
    v9 = [(NSCharacterSet *)set characterIsMember:v8];
    v10 = v31;
    if (!v9)
    {
      break;
    }

    v11 = v30;
    if (v31 >= v30)
    {
      v13 = *&v34[0] + v30;
      if (v33 > *&v34[0] + v30)
      {
        if (v33 - (*&v34[0] + v30) >= 0x20)
        {
          v14 = 32;
        }

        else
        {
          v14 = v33 - (*&v34[0] + v30);
        }

        *&v34[0] += v30;
        v30 = v14;
        [self getUid("getCharacters:v34 + 8 range:{v13, v14}")];
        v8 = WORD4(v34[0]);
        WORD4(v35) = WORD4(v34[0]);
        v31 = 1;
        v11 = v14;
        v12 = 1;
        goto LABEL_17;
      }

      v12 = v30 + 1;
      v31 = v30 + 1;
      v8 = -1;
    }

    else
    {
      v12 = ++v31;
      v8 = *(v34 + v10 + 4);
    }

    WORD4(v35) = v8;
LABEL_17:
    if (v12 - 1 >= v11)
    {
      goto LABEL_21;
    }
  }

  v12 = v31;
LABEL_21:
  v15 = v12 - 1;
LABEL_22:
  v16 = *&v34[0];
  v17 = v15 + *&v34[0];
  if (v15 + *&v34[0] == v6)
  {
    return &stru_1EEEFDF90;
  }

  v19 = v6 - 1;
  if (v17 >= v6 - 1)
  {
    v22 = 1;
  }

  else
  {
    if (*&v34[0] > v19 || v30 + *&v34[0] <= v19)
    {
      if (v19 > 0xF)
      {
        v21 = v33;
        if (v33 - 16 >= v19)
        {
          v20 = v6 - 17;
        }

        else if (v33 >= 0x20)
        {
          v20 = v33 - 32;
        }

        else
        {
          v20 = 0;
        }

        *&v34[0] = v20;
      }

      else
      {
        v20 = 0;
        *&v34[0] = 0;
        v21 = v33;
      }

      v23 = v21 - v20;
      if (v23 >= 0x20)
      {
        v24 = 32;
      }

      else
      {
        v24 = v23;
      }

      [self getUid("getCharacters:v34 + 8 range:{v20, v24}")];
      WORD4(v35) = WORD4(v34[0]);
      v16 = *&v34[0];
    }

    v25 = v19 - v16;
    v32 = v25 + 1;
    WORD4(v35) = *(v34 + v25 + 4);
    if ([(NSCharacterSet *)set characterIsMember:?])
    {
      do
      {
        v26 = v32;
        if (v32 - 1 + *&v34[0] < v17)
        {
          break;
        }

        if (v32 < 2)
        {
          if (*&v34[0])
          {
            v28 = *&v34[0] >= 0x20uLL ? 32 : *&v34[0];
            v32 = v28;
            *&v34[0] -= v28;
            [self getUid("getCharacters:v34 + 8 range:{*&v34[0], v28}")];
            v27 = *(v34 + v28 + 3);
          }

          else
          {
            v32 = 0;
            v27 = -1;
          }
        }

        else
        {
          --v32;
          v27 = *(v34 + v26 + 2);
        }

        WORD4(v35) = v27;
      }

      while ([(NSCharacterSet *)set characterIsMember:?]);
    }

    v22 = *&v34[0] - v17 + v32;
  }

  return [(NSString *)self substringWithRange:v17, v22];
}

- (NSString)stringByPaddingToLength:(NSUInteger)newLength withString:(NSString *)padString startingAtIndex:(NSUInteger)padIndex
{
  v10 = [(NSString *)self length];
  if (v10 < newLength)
  {
    v11 = [(NSString *)padString length];
    if (v11)
    {
      if (v11 > padIndex)
      {
        MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, self);
        CFStringPad(MutableCopy, padString, newLength, padIndex);
        v13 = MutableCopy;
LABEL_7:

        return v13;
      }

      v15 = _NSMethodExceptionProem(self, a2);
      v16 = "out of range padIndex";
    }

    else
    {
      v15 = _NSMethodExceptionProem(self, a2);
      v16 = "nil or empty padString";
    }

    v17 = [NSString stringWithFormat:@"%@: %s", v15, v16];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v17 userInfo:0]);
  }

  if (v10 == newLength)
  {
    v13 = [(NSString *)self copyWithZone:[(NSString *)self zone]];
    goto LABEL_7;
  }

  return [(NSString *)self substringWithRange:0, newLength];
}

- (NSString)stringByReplacingOccurrencesOfString:(NSString *)target withString:(NSString *)replacement options:(NSStringCompareOptions)options range:(NSRange)searchRange
{
  if (!replacement)
  {
    v15 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: nil argument", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v15);
  }

  length = searchRange.length;
  location = searchRange.location;
  if ((options & 0x400) != 0)
  {

    return [NSString _stringByReplacingOccurrencesOfRegularExpressionPattern:"_stringByReplacingOccurrencesOfRegularExpressionPattern:withTemplate:options:range:" withTemplate:? options:? range:?];
  }

  else
  {
    v12 = [(NSString *)self mutableCopy];
    if ([(NSString *)v12 replaceOccurrencesOfString:target withString:replacement options:options range:location, length])
    {
      selfCopy = v12;
    }

    else
    {

      selfCopy = self;
    }

    return selfCopy;
  }
}

- (NSString)stringByReplacingOccurrencesOfString:(NSString *)target withString:(NSString *)replacement
{
  v7 = [(NSString *)self length];

  return [(NSString *)self stringByReplacingOccurrencesOfString:target withString:replacement options:0 range:0, v7];
}

- (NSString)stringByReplacingCharactersInRange:(NSRange)range withString:(NSString *)replacement
{
  if (!replacement)
  {
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: nil argument", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v9);
  }

  length = range.length;
  location = range.location;
  v7 = [(NSString *)self mutableCopy];
  [v7 replaceCharactersInRange:location withString:{length, replacement}];

  return v7;
}

- (void)getCharacters:(unichar *)buffer range:(NSRange)range
{
  if (range.length)
  {
    length = range.length;
    location = range.location;
    do
    {
      *buffer++ = [(NSString *)self characterAtIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)getCharacters:(unichar *)buffer
{
  v5 = [(NSString *)self length];

  [(NSString *)self getCharacters:buffer range:0, v5];
}

- (id)_newSubstringWithRange:(_NSRange)range zone:(_NSZone *)zone
{
  length = range.length;
  location = range.location;
  v8 = [(NSString *)self length];
  if (!length)
  {
    return &stru_1EEEFDF90;
  }

  if (location || length != v8)
  {
    v10 = [(NSString *)self _fastCStringContents:0];
    if (v10)
    {
      v11 = v10;
      v12 = *MEMORY[0x1E695E480];
      v13 = *MEMORY[0x1E695E0A8];
      if (*MEMORY[0x1E695E0A8] == -1)
      {
        v13 = __CFStringComputeEightBitStringEncoding();
      }

      return CFStringCreateWithBytes(v12, &v11[location], length, v13, 0);
    }

    else
    {
      zoneCopy = zone;
      if (!zone)
      {
        zoneCopy = malloc_default_zone();
      }

      v15 = malloc_type_zone_malloc(zoneCopy, 2 * length, 0x409734D7uLL);
      [(NSString *)self getCharacters:v15 range:location, length];
      v16 = [NSString allocWithZone:zone];

      return [(NSString *)v16 initWithCharactersNoCopy:v15 length:length freeWhenDone:1];
    }
  }

  else
  {

    return [(NSString *)self copyWithZone:zone];
  }
}

- (NSString)substringWithRange:(NSRange)range
{
  length = range.length;
  location = range.location;
  v7 = [(NSString *)self length];
  if (v7 < length || location > v7 - length)
  {
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: Range {%lu, %lu} out of bounds; string length %lu", _NSMethodExceptionProem(self, a2), location, length, v7), 0}];
    objc_exception_throw(v10);
  }

  v8 = [(NSString *)self _newSubstringWithRange:location zone:length, [(NSString *)self zone]];

  return v8;
}

- (NSString)substringFromIndex:(NSUInteger)from
{
  v6 = [(NSString *)self length];
  if (v6 < from)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: Index %lu out of bounds; string length %lu", _NSMethodExceptionProem(self, a2), from, v6), 0}];
    objc_exception_throw(v8);
  }

  return [(NSString *)self substringWithRange:from, v6 - from];
}

- (NSString)substringToIndex:(NSUInteger)to
{
  v6 = [(NSString *)self length];
  if (v6 < to)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: Index %lu out of bounds; string length %lu", _NSMethodExceptionProem(self, a2), to, v6), 0}];
    objc_exception_throw(v8);
  }

  return [(NSString *)self substringWithRange:0, to];
}

- (NSString)stringByAppendingString:(NSString *)aString
{
  if (!aString)
  {
    v16 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: nil argument", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v16);
  }

  if ([(NSString *)self length])
  {
    if ([(NSString *)aString length])
    {
      v5 = [(NSString *)self zone];
      v13 = _NSNewStringByAppendingStrings(v5, v6, v7, v8, v9, v10, v11, v12, self, aString);
      goto LABEL_8;
    }

    selfCopy = self;
  }

  else
  {
    selfCopy = aString;
  }

  v13 = [(NSString *)selfCopy copyWithZone:0];
LABEL_8:

  return v13;
}

- (NSString)stringByAppendingFormat:(NSString *)format
{
  va_start(va, format);
  v4 = [(NSString *)&__placeholder initWithFormat:format arguments:va];
  v5 = [(NSString *)self zone];
  v13 = _NSNewStringByAppendingStrings(v5, v6, v7, v8, v9, v10, v11, v12, self, v4);

  return v13;
}

- (NSString)localizedLowercaseString
{
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];

  return [(NSString *)self lowercaseStringWithLocale:currentLocale];
}

- (NSString)uppercaseStringWithLocale:(NSLocale *)locale
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringReplaceAll(Mutable, self);
  CFStringUppercase(Mutable, locale);

  return Mutable;
}

- (NSString)lowercaseStringWithLocale:(NSLocale *)locale
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringReplaceAll(Mutable, self);
  CFStringLowercase(Mutable, locale);

  return Mutable;
}

- (NSString)capitalizedStringWithLocale:(NSLocale *)locale
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringReplaceAll(Mutable, self);
  CFStringCapitalize(Mutable, locale);

  return Mutable;
}

- (NSString)decomposedStringWithCanonicalMapping
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringReplaceAll(Mutable, self);
  CFStringNormalize(Mutable, kCFStringNormalizationFormD);

  return Mutable;
}

- (NSString)decomposedStringWithCompatibilityMapping
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringReplaceAll(Mutable, self);
  CFStringNormalize(Mutable, kCFStringNormalizationFormKD);

  return Mutable;
}

- (NSString)stringByFoldingWithOptions:(NSStringCompareOptions)options locale:(NSLocale *)locale
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringReplaceAll(Mutable, self);
  CFStringFold(Mutable, options, locale);

  return Mutable;
}

- (NSString)stringByApplyingTransform:(NSStringTransform)transform reverse:(BOOL)reverse
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringReplaceAll(Mutable, self);
  if (CFStringTransform(Mutable, 0, transform, reverse))
  {

    return Mutable;
  }

  else
  {

    return 0;
  }
}

- (void)_getBlockStart:(unint64_t *)start end:(unint64_t *)end contentsEnd:(unint64_t *)contentsEnd forRange:(_NSRange)range stopAtLineSeparators:(BOOL)separators
{
  separatorsCopy = separators;
  length = range.length;
  location = range.location;
  v49 = *MEMORY[0x1E69E9840];
  v13 = [(NSString *)self length];
  v48 = 0u;
  memset(v47, 0, sizeof(v47));
  if (v13 < length || location > v13 - length)
  {
    if (_CFExecutableLinkedOnOrAfter())
    {
      v41 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: Range {%lu, %lu} out of bounds; string length %lu", _NSMethodExceptionProem(self, a2), location, length, v13), 0}];
      objc_exception_throw(v41);
    }

    if ((_getBlockStart_end_contentsEnd_forRange_stopAtLineSeparators__warnonce & 1) == 0)
    {
      _getBlockStart_end_contentsEnd_forRange_stopAtLineSeparators__warnonce = 1;
      v14 = _NSMethodExceptionProem(self, a2);
      v50.location = location;
      v50.length = length;
      v15 = NSStringFromRange(v50);
      NSLog(@"*** %@: Invalid range %@; this will become an exception for apps linked on SnowLeopard. Warning shown once per app execution.", v14, v15);
    }
  }

  if (location)
  {
    contentsEndCopy6 = contentsEnd;
    if (start)
    {
      *&v47[0] = location;
      endCopy = end;
      if (v13 <= location)
      {
        v20 = 0;
        WORD4(v48) = -1;
        selfCopy2 = self;
        v18 = location;
      }

      else
      {
        if (v13 - location >= 0x20)
        {
          v17 = 32;
        }

        else
        {
          v17 = v13 - location;
        }

        [self getUid("getCharacters:v47 + 8 range:{location, v17}")];
        v18 = *&v47[0];
        WORD4(v48) = WORD4(v47[0]);
        selfCopy2 = self;
        v20 = WORD4(v47[0]) == 10;
      }

      if (v18 >= 0x20)
      {
        v22 = 32;
      }

      else
      {
        v22 = v18;
      }

      *&v47[0] = v18 - v22;
      [selfCopy2 getUid("getCharacters:v47 + 8 range:{v18 - v22, v22}")];
      v23 = v22;
      v24 = *(v47 + v22 + 3);
      WORD4(v48) = *(v47 + v22 + 3);
      if (v20 && v24 == 13)
      {
        if (v22 < 2)
        {
          v23 = *&v47[0];
          if (*&v47[0])
          {
            if (*&v47[0] >= 0x20uLL)
            {
              v26 = 32;
            }

            else
            {
              v26 = *&v47[0];
            }

            *&v47[0] -= v26;
            [self getUid("getCharacters:v47 + 8 range:{*&v47[0], v26}")];
            v23 = v26;
            LOWORD(v24) = *(v47 + v26 + 3);
          }

          else
          {
            LOWORD(v24) = -1;
          }
        }

        else
        {
          LOWORD(v24) = *(v47 + v22 + 2);
          v23 = v22 - 1;
        }

        WORD4(v48) = v24;
      }

      while (1)
      {
        if (separatorsCopy)
        {
          if ((v24 - 14) >= 0x77u)
          {
            if (v24 > 0x2027u)
            {
              if (v24 - 8232 < 2)
              {
                goto LABEL_59;
              }
            }

            else if (v24 == 10 || v24 == 13 || v24 == 133)
            {
              goto LABEL_59;
            }
          }
        }

        else if ((v24 - 14) >= 0x201Bu && (v24 == 10 || v24 == 8233 || v24 == 13))
        {
LABEL_59:
          v25 = *&v47[0] + v23;
          goto LABEL_61;
        }

        if ((*&v47[0] + v23 - 1) < 1)
        {
          break;
        }

        if (v23 < 2)
        {
          if (*&v47[0])
          {
            if (*&v47[0] >= 0x20uLL)
            {
              v27 = 32;
            }

            else
            {
              v27 = *&v47[0];
            }

            *&v47[0] -= v27;
            [self getUid("getCharacters:v47 + 8 range:{*&v47[0], v27}")];
            v23 = v27;
            LOWORD(v24) = *(v47 + v27 + 3);
          }

          else
          {
            v23 = 0;
            LOWORD(v24) = -1;
          }
        }

        else
        {
          LOWORD(v24) = *(v47 + v23-- + 2);
        }

        WORD4(v48) = v24;
      }

      v25 = 0;
LABEL_61:
      end = endCopy;
      startCopy2 = start;
      contentsEndCopy6 = contentsEnd;
      goto LABEL_62;
    }
  }

  else
  {
    startCopy2 = start;
    contentsEndCopy6 = contentsEnd;
    if (!contentsEnd && v13 == length)
    {
      if (start)
      {
        *start = 0;
      }

      if (end)
      {
        goto LABEL_119;
      }

      return;
    }

    if (start)
    {
      v25 = 0;
LABEL_62:
      *startCopy2 = v25;
    }
  }

  if (end | contentsEndCopy6)
  {
    v28 = location + length - (length != 0);
    v46 = v13;
    *&v47[0] = v28;
    if (v13 <= v28)
    {
      v33 = -1;
      WORD4(v48) = -1;
      v45 = 0;
LABEL_78:
      v34 = 1;
      while (1)
      {
        if (separatorsCopy)
        {
          if ((v33 - 14) >= 0x77u)
          {
            if (v33 > 0x2027u)
            {
              if (v33 - 8232 < 2)
              {
                goto LABEL_101;
              }
            }

            else if (v33 == 10 || v33 == 13 || v33 == 133)
            {
              goto LABEL_101;
            }
          }
        }

        else if ((v33 - 14) >= 0x201Bu && (v33 == 10 || v33 == 8233 || v33 == 13))
        {
LABEL_101:
          v13 = v34 + *&v47[0] - 1;
          if (v34 >= v45)
          {
            v38 = v45 + *&v47[0];
            contentsEndCopy6 = contentsEnd;
            if (v46 <= v45 + *&v47[0])
            {
              v37 = 0xFFFF;
              WORD4(v48) = -1;
            }

            else
            {
              if (v46 - (v45 + *&v47[0]) >= 0x20)
              {
                v39 = 32;
              }

              else
              {
                v39 = v46 - (v45 + *&v47[0]);
              }

              *&v47[0] += v45;
              [self getUid("getCharacters:v47 + 8 range:{v38, v39}")];
              v37 = WORD4(v47[0]);
              WORD4(v48) = WORD4(v47[0]);
            }
          }

          else
          {
            v37 = *(v47 + v34 + 4);
            WORD4(v48) = v37;
            contentsEndCopy6 = contentsEnd;
          }

          v40 = v37 == 10;
          v32 = 1;
          if (v40)
          {
            v32 = 2;
          }

          if (v33 != 13)
          {
            v32 = 1;
          }

          if (!contentsEndCopy6)
          {
            goto LABEL_117;
          }

LABEL_116:
          *contentsEndCopy6 = v13;
          goto LABEL_117;
        }

        if (v34 + *&v47[0] - 1 == v13)
        {
          v32 = 0;
          contentsEndCopy6 = contentsEnd;
          if (contentsEnd)
          {
            goto LABEL_116;
          }

          goto LABEL_117;
        }

        if (v34 >= v45)
        {
          v35 = v45 + *&v47[0];
          if (v13 <= v45 + *&v47[0])
          {
            v34 = v45 + 1;
            v33 = -1;
            WORD4(v48) = -1;
          }

          else
          {
            if (v13 - (v45 + *&v47[0]) >= 0x20)
            {
              v36 = 32;
            }

            else
            {
              v36 = v13 - (v45 + *&v47[0]);
            }

            *&v47[0] += v45;
            v45 = v36;
            [self getUid("getCharacters:v47 + 8 range:{v35, v36}")];
            v33 = WORD4(v47[0]);
            WORD4(v48) = WORD4(v47[0]);
            v34 = 1;
          }
        }

        else
        {
          v33 = *(v47 + v34++ + 4);
          WORD4(v48) = v33;
        }
      }
    }

    if (v13 - v28 >= 0x20)
    {
      v29 = 32;
    }

    else
    {
      v29 = v13 - v28;
    }

    v45 = v29;
    [self getUid("getCharacters:v47 + 8 range:{v28, v29}")];
    v33 = WORD4(v47[0]);
    WORD4(v48) = WORD4(v47[0]);
    if (WORD4(v47[0]) != 10)
    {
      goto LABEL_78;
    }

    v30 = *&v47[0];
    if (*&v47[0])
    {
      if (*&v47[0] >= 0x20uLL)
      {
        v31 = 32;
      }

      else
      {
        v31 = *&v47[0];
      }

      *&v47[0] -= v31;
      [self getUid("getCharacters:v47 + 8 range:{v30 - v31, v31}")];
      v32 = 1;
      if (*(v47 + v31 + 3) == 13)
      {
        v32 = 2;
      }

      v13 = v30 - (*(v47 + v31 + 3) == 13);
      if (contentsEndCopy6)
      {
        goto LABEL_116;
      }
    }

    else
    {
      v13 = 0;
      v32 = 1;
      if (contentsEndCopy6)
      {
        goto LABEL_116;
      }
    }

LABEL_117:
    if (end)
    {
      length = v32 + v13;
LABEL_119:
      *end = length;
    }
  }
}

- (NSRange)lineRangeForRange:(NSRange)range
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = 0;
  v6[0] = 0;
  [(NSString *)self getLineStart:v6 end:&v5 contentsEnd:0 forRange:range.location, range.length];
  v3 = v6[0];
  v4 = v5 - v6[0];
  result.length = v4;
  result.location = v3;
  return result;
}

- (NSRange)paragraphRangeForRange:(NSRange)range
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = 0;
  v6[0] = 0;
  [(NSString *)self getParagraphStart:v6 end:&v5 contentsEnd:0 forRange:range.location, range.length];
  v3 = v6[0];
  v4 = v5 - v6[0];
  result.length = v4;
  result.location = v3;
  return result;
}

- (void)enumerateSubstringsInRange:(NSRange)range options:(NSStringEnumerationOptions)opts usingBlock:(void *)block
{
  length = range.length;
  location = range.location;
  v74 = *MEMORY[0x1E69E9840];
  v10 = (opts & 0x800) == 0;
  v11 = range.location + range.length;
  if ((opts & 0x100) != 0)
  {
    v12 = range.location + range.length - 1;
  }

  else
  {
    v12 = range.location;
  }

  v73 = 0;
  v13 = [(NSString *)self length];
  if (v13 < length || location > v13 - length)
  {
    v55 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: Range {%lu, %lu} out of bounds; string length %lu", _NSMethodExceptionProem(self, a2), location, length, v13), 0}];
    objc_exception_throw(v55);
  }

  if (!length)
  {
    return;
  }

  v71 = 0;
  v72 = 0;
  if (opts - 3 <= 1)
  {
    if ((opts & 0x100) != 0)
    {
      v68[0] = MEMORY[0x1E69E9820];
      v68[1] = 3221225472;
      v57 = v69;
      v69[0] = __58__NSString_enumerateSubstringsInRange_options_usingBlock___block_invoke_3;
      v69[1] = &unk_1E69F6318;
      v70 = v10;
      if (length >= 0x186A0)
      {
        v17 = 100000;
      }

      else
      {
        v17 = length;
      }

      v69[4] = opts;
      v69[5] = location;
      if (length <= 0x186A0)
      {
        v18 = location;
      }

      else
      {
        v18 = v11 - 100000;
      }

      v69[6] = length;
      v69[7] = v11;
      v69[2] = self;
      v69[3] = opts;
      v58 = v18;
      v19 = __58__NSString_enumerateSubstringsInRange_options_usingBlock___block_invoke_3(v68, &v72, &v71, v18, v17);
      v60 = 0;
      v61 = 0;
      if (v19)
      {
        v62 = 0;
        cf = 0;
        v59 = v19 - 1;
      }

      else
      {
        v59 = 0;
        v62 = 0;
        cf = 0;
        v73 = 1;
      }

      v56 = v68;
      goto LABEL_40;
    }

    if (opts == 3)
    {
      v14 = 4;
    }

    else
    {
      v14 = 1;
    }

    if (opts == 3)
    {
      v15 = &__block_literal_global_50;
    }

    else
    {
      v15 = &__block_literal_global_56;
    }

    v61 = v15;
    if ((opts & 0x400) != 0)
    {
      System = 0;
    }

    else
    {
      System = CFLocaleGetSystem();
    }

    if ((opts & 0x800) != 0)
    {
      v76.location = 0;
      v76.length = v13;
      v20 = CFStringTokenizerCreate(0, self, v76, v14, System);
      if (CFStringTokenizerGoToTokenAtIndex(v20, location))
      {
        goto LABEL_34;
      }
    }

    else
    {
      v75.location = location;
      v75.length = length;
      v20 = CFStringTokenizerCreate(0, self, v75, v14, System);
    }

    if (opts == 3)
    {
      v21 = &__block_literal_global_50;
    }

    else
    {
      v21 = &__block_literal_global_56;
    }

    (v21)[2](v61, v20);
LABEL_34:
    cf = v20;
    CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v20);
    v60 = CurrentTokenRange.length;
    v62 = CurrentTokenRange.location;
    v56 = 0;
    v59 = 0;
    v58 = 0;
    if (CurrentTokenRange.location == -1)
    {
      v73 = 1;
      v62 = -1;
    }

    goto LABEL_39;
  }

  v60 = 0;
  v61 = 0;
  v56 = 0;
  v59 = 0;
  v58 = 0;
  v62 = 0;
  cf = 0;
LABEL_39:
  v57 = 16;
LABEL_40:
  _CFAutoreleasePoolPush();
  if (v73)
  {
LABEL_41:
    _CFAutoreleasePoolPop();
    v23 = cf;
    if (cf)
    {
      goto LABEL_42;
    }

    goto LABEL_43;
  }

  v24 = 0;
  LODWORD(v25) = 1 << opts;
  while (1)
  {
    v67 = 0uLL;
    v65 = 0;
    v66 = 0;
    if (opts > 6u)
    {
      v31 = 0;
      v39 = 0;
LABEL_77:
      v67 = xmmword_181406480;
      v27 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_107;
    }

    if ((v25 & 0x64) != 0)
    {
      RangeOfCharacterClusterAtIndex = CFStringGetRangeOfCharacterClusterAtIndex();
      v27 = RangeOfCharacterClusterAtIndex;
      v31 = v30;
      if ((opts & 0x800) == 0)
      {
        v32 = location - RangeOfCharacterClusterAtIndex;
        if (location < RangeOfCharacterClusterAtIndex)
        {
          v32 = 0;
        }

        v33 = v30 - v32;
        if (RangeOfCharacterClusterAtIndex <= location)
        {
          v27 = location;
        }

        if (v33 + v27 <= v11)
        {
          v31 = v33;
        }

        else
        {
          v31 = v11 - v27;
        }
      }

      *&v67 = v27;
      *(&v67 + 1) = v31;
      if ((opts & 0x200) != 0)
      {
        goto LABEL_106;
      }

      selfCopy3 = self;
      v35 = v27;
      v36 = v31;
      goto LABEL_105;
    }

    if ((v25 & 3) != 0)
    {
      [(NSString *)self _getBlockStart:&v67 end:&v65 contentsEnd:&v66 forRange:v12 stopAtLineSeparators:0, opts == 0];
      if ((opts & 0x800) != 0)
      {
        v26 = v66;
        v27 = v67;
        v28 = v65;
      }

      else
      {
        v26 = v66;
        v27 = v67;
        if (v67 < location)
        {
          *&v67 = location;
          v27 = location;
          if (v66 < location)
          {
            v66 = location;
            v26 = location;
            v27 = location;
          }
        }

        v28 = v65;
        if (v65 > v11)
        {
          v65 = v11;
          if (v26 <= v11)
          {
            v28 = v11;
          }

          else
          {
            v66 = v11;
            v28 = v11;
            v26 = v11;
          }
        }
      }

      v36 = v26 - v27;
      *(&v67 + 1) = v26 - v27;
      v31 = v28 - v27;
      if ((opts & 0x200) != 0)
      {
        goto LABEL_106;
      }

      selfCopy3 = self;
      v35 = v27;
LABEL_105:
      v39 = [(NSString *)selfCopy3 _newSubstringWithRange:v35 zone:v36, 0];
      goto LABEL_107;
    }

    if ((opts & 0x100) == 0)
    {
      if ((opts & 0x800) != 0)
      {
        v38 = v60;
        v37 = v62;
      }

      else
      {
        v37 = v62;
        v38 = v60;
        if (v62 <= location)
        {
          v37 = location;
        }

        if (v62 + v60 > v11)
        {
          v38 = v11 - v37;
        }
      }

      *&v67 = v37;
      *(&v67 + 1) = v38;
      if (v37 >= v12)
      {
        v27 = v12;
      }

      else
      {
        v27 = v37;
      }

      v47 = v61[2](v61, cf);
      v48 = CFStringTokenizerGetCurrentTokenRange(cf);
      v46 = v48.location;
      v60 = v48.length;
      if (v47)
      {
        v49 = v48.location;
        if (v48.location > v11)
        {
          goto LABEL_100;
        }
      }

      else
      {
        v49 = v11;
        if ((opts & 0x800) != 0)
        {
LABEL_100:
          v49 = *(&v67 + 1) + v67;
          if (*(&v67 + 1) + v67 <= v11)
          {
            v49 = v11;
          }
        }
      }

      v31 = v49 - v27;
      LOBYTE(v25) = 1 << opts;
      goto LABEL_103;
    }

    if (v59 || v58 == location)
    {
      break;
    }

    v40 = v71[1];
    v41 = v40 + 100000;
    if (v40 >> 5 < 0xC35)
    {
      v41 = 100000;
    }

    v42 = v40 + *v71;
    if (v42 > v41 && v42 - v41 > location)
    {
      v43 = v42 - v41;
    }

    else
    {
      v43 = location;
    }

    v58 = v43;
    v44 = (*v57)(v56, &v72, &v71);
    if (!v44)
    {
      v31 = 0;
      v39 = 0;
      v59 = 0;
      goto LABEL_77;
    }

    v59 = v44 - 1;
LABEL_125:
    if (v73 == 1)
    {
      goto LABEL_41;
    }
  }

  v67 = v72[v59];
  v45 = &v71[2 * v59];
  v27 = *v45;
  v31 = v45[1];
  --v59;
  if (v31 + *v45 > v12)
  {
    v31 = v12 + 1 - v27;
    if (*(&v67 + 1) + v67 > v12)
    {
      *(&v67 + 1) = v12 + 1 - v67;
    }
  }

  v46 = v62;
LABEL_103:
  v62 = v46;
  if ((opts & 0x200) == 0)
  {
    v36 = *(&v67 + 1);
    v35 = v67;
    selfCopy3 = self;
    goto LABEL_105;
  }

LABEL_106:
  v39 = 0;
LABEL_107:
  (*(block + 2))(block, v39, v67, *(&v67 + 1), v27, v31, &v73);
  if (v39)
  {
  }

  if (v73)
  {
    goto LABEL_41;
  }

  if ((opts & 0x100) != 0)
  {
    if (v27 <= location)
    {
      goto LABEL_41;
    }

    v12 = v27 - 1;
    goto LABEL_122;
  }

  v50 = [(NSString *)self length];
  v51 = v50 - v13;
  if (v50 == v13)
  {
    v25 = v13;
LABEL_121:
    v12 = v31 + v27;
    v13 = v25;
    LOBYTE(v25) = 1 << opts;
    if (v31 + v27 >= v11)
    {
      goto LABEL_41;
    }

LABEL_122:
    if (v24 == 1000)
    {
      _CFAutoreleasePoolPop();
      _CFAutoreleasePoolPush();
      v24 = 0;
    }

    else
    {
      ++v24;
    }

    goto LABEL_125;
  }

  v25 = v50;
  v31 += v51;
  v11 += v51;
  v23 = cf;
  if (!cf)
  {
    goto LABEL_121;
  }

  v52.location = v31 + v27;
  if ((opts & 0x800) != 0)
  {
    v53 = v50;
  }

  else
  {
    v53 = v11;
  }

  v52.length = v53 - v52.location;
  CFStringTokenizerSetString(cf, self, v52);
  v61[2](v61, cf);
  v54 = CFStringTokenizerGetCurrentTokenRange(cf);
  v62 = v54.location;
  if (v54.location != -1)
  {
    v60 = v54.length;
    goto LABEL_121;
  }

  _CFAutoreleasePoolPop();
LABEL_42:
  CFRelease(v23);
LABEL_43:
  if (v72)
  {
    free(v72);
  }

  if (v71)
  {
    free(v71);
  }
}

CFStringTokenizerTokenType __58__NSString_enumerateSubstringsInRange_options_usingBlock___block_invoke(int a1, CFStringTokenizerRef tokenizer)
{
  do
  {
    while (1)
    {
      Token = CFStringTokenizerAdvanceToNextToken(tokenizer);
      v4 = Token;
      if (!Token)
      {
        break;
      }

      if ((Token & 0x10) == 0)
      {
        return v4;
      }
    }
  }

  while (CFStringTokenizerGetCurrentTokenRange(tokenizer).location != -1);
  return v4;
}

CFStringTokenizerTokenType __58__NSString_enumerateSubstringsInRange_options_usingBlock___block_invoke_2(int a1, CFStringTokenizerRef tokenizer)
{
  do
  {
    Token = CFStringTokenizerAdvanceToNextToken(tokenizer);
  }

  while (!Token && CFStringTokenizerGetCurrentTokenRange(tokenizer).location != -1);
  return Token;
}

uint64_t __58__NSString_enumerateSubstringsInRange_options_usingBlock___block_invoke_3(uint64_t a1, void **a2, void **a3, uint64_t a4, unint64_t a5)
{
  v24 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v10 = 64.0;
  if (*(a1 + 40) == 3)
  {
    v10 = 4.0;
  }

  v23 = vcvtpd_u64_f64(a5 / v10);
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  if (*a2)
  {
    free(*a2);
  }

  if (*a3)
  {
    free(*a3);
  }

  *a2 = malloc_type_malloc(16 * v21[3], 0x1000040451B5BE8uLL);
  *a3 = malloc_type_malloc(16 * v21[3], 0x1000040451B5BE8uLL);
  v11 = *(a1 + 48) & 0xFFFFFFFFFFFFFCFFLL | 0x200;
  if ((*(a1 + 80) & 1) == 0 && a4 != *(a1 + 56) && a4 + a5 != *(a1 + 72))
  {
    v11 = *(a1 + 48) & 0xFFFFFFFFFFFFF4FFLL | 0x200;
  }

  v12 = *(a1 + 32);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __58__NSString_enumerateSubstringsInRange_options_usingBlock___block_invoke_4;
  v15[3] = &unk_1E69F62F0;
  v15[4] = &v16;
  v15[5] = &v20;
  v15[6] = a2;
  v15[7] = a3;
  [v12 enumerateSubstringsInRange:a4 options:a5 usingBlock:{v11, v15}];
  v13 = v17[3];
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
  return v13;
}

uint64_t __58__NSString_enumerateSubstringsInRange_options_usingBlock___block_invoke_4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = result;
  v11 = *(*(*(result + 32) + 8) + 24);
  v12 = *(*(result + 40) + 8);
  if (v11 == *(v12 + 24))
  {
    *(v12 + 24) = 2 * v11;
    **(result + 48) = MEMORY[0x1865CFE30](**(result + 48), 16 * *(*(*(result + 40) + 8) + 24), 0x1000040451B5BE8, 0);
    result = MEMORY[0x1865CFE30](**(v10 + 56), 16 * *(*(*(v10 + 40) + 8) + 24), 0x1000040451B5BE8, 0);
    **(v10 + 56) = result;
    v11 = *(*(*(v10 + 32) + 8) + 24);
  }

  v13 = *(v10 + 56);
  v14 = (**(v10 + 48) + 16 * v11);
  *v14 = a3;
  v14[1] = a4;
  v15 = (*v13 + 16 * *(*(*(v10 + 32) + 8) + 24));
  *v15 = a5;
  v15[1] = a6;
  ++*(*(*(v10 + 32) + 8) + 24);
  return result;
}

- (void)enumerateLinesUsingBlock:(void *)block
{
  v6[5] = *MEMORY[0x1E69E9840];
  v5 = [(NSString *)self length];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__NSString_enumerateLinesUsingBlock___block_invoke;
  v6[3] = &unk_1E69F4390;
  v6[4] = block;
  [(NSString *)self enumerateSubstringsInRange:0 options:v5 usingBlock:0, v6];
}

- (id)displayableString
{
  selfCopy = self;
  v32 = *MEMORY[0x1E69E9840];
  v31 = 0u;
  memset(v30, 0, sizeof(v30));
  v3 = [(NSString *)self length];
  v4 = v3;
  v28 = v3;
  *&v30[0] = 0;
  size = 6 * v3;
  if (v3)
  {
    if (v3 >= 0x20)
    {
      v5 = 32;
    }

    else
    {
      v5 = v3;
    }

    v24 = v5;
    [selfCopy getUid("getCharacters:v30 + 8 range:{0, v5}")];
    v6 = WORD4(v30[0]);
  }

  else
  {
    v24 = 0;
    v6 = -1;
  }

  WORD4(v31) = v6;
  v7 = 1;
  while (v7 - 1 < v24)
  {
    v8 = (v6 - 32);
    v9 = v6;
    v10 = 0x19FFu >> v6;
    if (v9 > 0xD)
    {
      LOBYTE(v10) = 1;
    }

    if (v8 >= 0x5F)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    if (v7 >= v24)
    {
      v12 = *&v30[0] + v24;
      if (v28 <= *&v30[0] + v24)
      {
        v7 = v24 + 1;
        v6 = -1;
        goto LABEL_23;
      }

      if (v28 - (*&v30[0] + v24) >= 0x20)
      {
        v13 = 32;
      }

      else
      {
        v13 = v28 - (*&v30[0] + v24);
      }

      *&v30[0] += v24;
      v24 = v13;
      [selfCopy getUid("getCharacters:v30 + 8 range:{v12, v13}")];
      v6 = WORD4(v30[0]);
      WORD4(v31) = WORD4(v30[0]);
      v7 = 1;
      if (v11)
      {
LABEL_24:
        v14 = malloc_type_malloc(size, 0x100004077774924uLL);
        v29 = v4;
        *&v30[0] = 0;
        v27 = selfCopy;
        if (v4)
        {
          if (v4 >= 0x20)
          {
            v4 = 32;
          }

          v25 = v4;
          [selfCopy getUid("getCharacters:v30 + 8 range:{0, v4}")];
          v15 = WORD4(v30[0]);
          v26 = 1;
          WORD4(v31) = WORD4(v30[0]);
          v16 = 0;
          do
          {
            if ((v15 - 32) < 0x5F || v15 <= 0xD && ((1 << v15) & 0x2600) != 0)
            {
              v14[v16++] = v15;
            }

            else
            {
              v21 = &v14[v16];
              if (v15 > 0x7F)
              {
                *v21 = 21852;
                v21[2] = a0123456789abcd[v15 >> 12];
                v21[3] = a0123456789abcd[(v15 >> 8) & 0xF];
                v21[4] = a0123456789abcd[v15 >> 4];
                v16 += 6;
                v21[5] = a0123456789abcd[v15 & 0xF];
              }

              else
              {
                *v21 = 92;
                v21[1] = (v15 >> 6) | 0x30;
                v21[2] = (v15 >> 3) & 7 | 0x30;
                v16 += 4;
                v21[3] = v15 & 7 | 0x30;
              }
            }

            v18 = v26;
            v17 = v25;
            if (v26 >= v25)
            {
              v19 = *&v30[0] + v25;
              if (v29 <= *&v30[0] + v25)
              {
                v26 = v25 + 1;
                v15 = 0xFFFFLL;
                WORD4(v31) = -1;
                v18 = v25;
              }

              else
              {
                if (v29 - (*&v30[0] + v25) >= 0x20)
                {
                  v20 = 32;
                }

                else
                {
                  v20 = v29 - (*&v30[0] + v25);
                }

                *&v30[0] += v25;
                v25 = v20;
                [v27 getUid("getCharacters:v30 + 8 range:{v19, v20}")];
                v18 = 0;
                v15 = WORD4(v30[0]);
                WORD4(v31) = WORD4(v30[0]);
                v26 = 1;
                v17 = v20;
              }
            }

            else
            {
              ++v26;
              v15 = *(v30 + v18 + 4);
              WORD4(v31) = *(v30 + v18 + 4);
            }
          }

          while (v18 < v17);
        }

        else
        {
          v16 = 0;
          WORD4(v31) = -1;
        }

        return [objc_allocWithZone(NSString) initWithCStringNoCopy:MEMORY[0x1865CFE30](v14 length:v16 freeWhenDone:{4088371376, 0), v16, 1}];
      }
    }

    else
    {
      v6 = *(v30 + v7++ + 4);
LABEL_23:
      WORD4(v31) = v6;
      if (v11)
      {
        goto LABEL_24;
      }
    }
  }

  return selfCopy;
}

- (BOOL)getExternalRepresentation:(id *)representation extendedAttributes:(id *)attributes forWritingToURLOrPath:(id)path usingEncoding:(unint64_t)encoding error:(id *)error
{
  v22[1] = *MEMORY[0x1E69E9840];
  if (attributes)
  {
    v13 = _NSEncodingToNewDataForExtendedAttribute(encoding);
    if (!v13)
    {
      if (error)
      {
        v20 = _NSErrorWithFilePathAndEncoding(517, path, encoding);
        result = 0;
        *error = v20;
        return result;
      }

      return 0;
    }

    v14 = v13;
    *attributes = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v13, @"com.apple.TextEncoding", 0}];
  }

  if (!representation)
  {
    return 1;
  }

  v21 = 0;
  v22[0] = 0;
  v15 = [(NSString *)self length];
  if ([(NSString *)self getBytes:0 maxLength:0x7FFFFFFFFFFFFFFELL filledLength:v22 encoding:encoding allowLossyConversion:0 range:0 remainingRange:v15, 0])
  {
    v16 = [MEMORY[0x1E695DF88] dataWithLength:v22[0]];
    mutableBytes = [v16 mutableBytes];
    if ([(NSString *)self getBytes:mutableBytes maxLength:v22[0] filledLength:&v21 encoding:encoding allowLossyConversion:0 range:0 remainingRange:v15, 0])
    {
      *representation = v16;
      return 1;
    }

    if (!error)
    {
      return 0;
    }

    v19 = _NSErrorWithFilePath(512, path);
    goto LABEL_15;
  }

  if (error)
  {
    v19 = _NSErrorWithFilePathAndEncoding(517, path, encoding);
LABEL_15:
    *error = v19;
  }

  return 0;
}

- (BOOL)writeToFile:(NSString *)path atomically:(BOOL)useAuxiliaryFile
{
  v4 = useAuxiliaryFile;
  v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:path];

  return [(NSString *)self writeToURL:v6 atomically:v4];
}

- (BOOL)writeToURL:(NSURL *)url atomically:(BOOL)atomically
{
  v4 = atomically;
  v9[1] = *MEMORY[0x1E69E9840];
  if (__NSDefaultStringEncodingFullyInited == 1)
  {
    v7 = _NSDefaultStringEncoding;
  }

  else
  {
    v7 = _NSDefaultCStringEncoding();
  }

  v9[0] = 0;
  if (writeStringToURLOrPath(self, url, v4, v7, v9))
  {
    return 1;
  }

  if ([(NSError *)v9[0] code]== 517)
  {
    return writeStringToURLOrPath(self, url, v4, 10, 0);
  }

  return 0;
}

- (id)initWithCString:(const char *)bytes length:(NSUInteger)length
{
  if (__NSDefaultStringEncodingFullyInited == 1)
  {
    v7 = _NSDefaultStringEncoding;
  }

  else
  {
    v7 = _NSDefaultCStringEncoding();
  }

  return [(NSString *)self initWithBytes:bytes length:length encoding:v7];
}

- (id)initWithCString:(const char *)bytes
{
  if (!bytes)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: NULL cString", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v8);
  }

  v5 = strlen(bytes);
  if (__NSDefaultStringEncodingFullyInited == 1)
  {
    v6 = _NSDefaultStringEncoding;
  }

  else
  {
    v6 = _NSDefaultCStringEncoding();
  }

  return [(NSString *)self initWithBytes:bytes length:v5 encoding:v6];
}

- (NSString)initWithCString:(const char *)nullTerminatedCString encoding:(NSStringEncoding)encoding
{
  if (!nullTerminatedCString)
  {
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: NULL cString", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v9);
  }

  v7 = strlen(nullTerminatedCString);

  return [(NSString *)self initWithBytes:nullTerminatedCString length:v7 encoding:encoding];
}

- (NSString)initWithUTF8String:(const char *)nullTerminatedCString
{
  if (!nullTerminatedCString)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: NULL cString", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v8);
  }

  if (self == &__placeholder || _CFExecutableLinkedOnOrAfter())
  {
    v5 = *MEMORY[0x1E695E480];

    return CFStringCreateWithCString(v5, nullTerminatedCString, 0x8000100u);
  }

  else
  {
    v7 = strlen(nullTerminatedCString);

    return [(NSString *)self initWithBytes:nullTerminatedCString length:v7 encoding:4];
  }
}

- (NSString)initWithCharacters:(const unichar *)characters length:(NSUInteger)length
{
  selfCopy = self;
  if (length)
  {
    v5 = length;
    v7 = [(NSString *)self zone];
    if (!v7)
    {
      v7 = malloc_default_zone();
    }

    v8 = malloc_type_zone_malloc(v7, 2 * v5, 0x409734D7uLL);
    memmove(v8, characters, 2 * v5);
    self = selfCopy;
    v9 = v8;
    length = v5;
    v10 = 1;
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  return [(NSString *)self initWithCharactersNoCopy:v9 length:length freeWhenDone:v10];
}

- (NSString)initWithString:(NSString *)aString
{
  v5 = [(NSString *)aString length];
  if (v5)
  {
    v6 = v5;
    v7 = [(NSString *)self zone];
    if (!v7)
    {
      v7 = malloc_default_zone();
    }

    v8 = malloc_type_zone_malloc(v7, 2 * v6, 0x409734D7uLL);
    if (!v8)
    {
      [(NSString *)self dealloc];
      return 0;
    }

    v9 = v8;
    [(NSString *)aString getCharacters:v8 range:0, v6];
    selfCopy2 = self;
    v11 = v9;
    v12 = v6;
    v13 = 1;
  }

  else
  {
    selfCopy2 = self;
    v11 = 0;
    v12 = 0;
    v13 = 0;
  }

  return [(NSString *)selfCopy2 initWithCharactersNoCopy:v11 length:v12 freeWhenDone:v13];
}

- (NSString)initWithData:(NSData *)data encoding:(NSStringEncoding)encoding
{
  bytes = [(NSData *)data bytes];
  v8 = [(NSData *)data length];

  return [(NSString *)self initWithBytes:bytes length:v8 encoding:encoding];
}

- (id)_initWithBytesOfUnknownEncoding:(char *)encoding length:(unint64_t)length copy:(BOOL)copy usedEncoding:(unint64_t *)usedEncoding
{
  if (!encoding)
  {
    return 0;
  }

  if (length < 2 || (length & 1) != 0)
  {
LABEL_7:
    v9 = 4;
    if (copy)
    {
      goto LABEL_8;
    }

    goto LABEL_13;
  }

  v8 = *encoding;
  if (v8 == 255)
  {
    if (encoding[1] != 254)
    {
      goto LABEL_7;
    }
  }

  else if (v8 != 254 || encoding[1] != 255)
  {
    goto LABEL_7;
  }

  v9 = 10;
  if (copy)
  {
LABEL_8:
    result = [NSString initWithBytes:"initWithBytes:length:encoding:" length:encoding encoding:?];
    if (!result)
    {
      return result;
    }

    goto LABEL_14;
  }

LABEL_13:
  result = [NSString initWithBytesNoCopy:"initWithBytesNoCopy:length:encoding:freeWhenDone:" length:encoding encoding:? freeWhenDone:?];
  if (!result)
  {
    free(encoding);
    return 0;
  }

LABEL_14:
  if (usedEncoding)
  {
    *usedEncoding = v9;
  }

  return result;
}

- (id)_initWithDataOfUnknownEncoding:(id)encoding
{
  v5 = [encoding length];
  bytes = [encoding bytes];
  if (!encoding)
  {
    return 0;
  }

  if (v5 < 2)
  {
    goto LABEL_12;
  }

  if ((v5 & 1) == 0)
  {
    v7 = *bytes;
    if (v7 == 255)
    {
      if (bytes[1] != 254)
      {
        goto LABEL_7;
      }
    }

    else if (v7 != 254 || bytes[1] != 255)
    {
      goto LABEL_7;
    }

    v8 = 10;
    goto LABEL_16;
  }

LABEL_7:
  if (v5 != 2 && *bytes == 239 && bytes[1] == 187 && bytes[2] == 191)
  {
    v8 = 4;
    goto LABEL_16;
  }

LABEL_12:
  if (__NSDefaultStringEncodingFullyInited == 1)
  {
    v8 = _NSDefaultStringEncoding;
  }

  else
  {
    v8 = _NSDefaultCStringEncoding();
  }

LABEL_16:

  return [(NSString *)self initWithData:encoding encoding:v8];
}

- (id)initWithContentsOfFile:(NSString *)path
{
  v4 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithContentsOfMappedFile:path];
  v5 = [(NSString *)self _initWithDataOfUnknownEncoding:v4];

  return v5;
}

- (id)initWithContentsOfURL:(NSURL *)url
{
  v4 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithContentsOfURL:url];
  v5 = [(NSString *)self _initWithDataOfUnknownEncoding:v4];

  return v5;
}

- (NSString)initWithContentsOfURL:(NSURL *)url encoding:(NSStringEncoding)enc error:(NSError *)error
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (![(NSURL *)url isFileURL])
  {
    v11 = [objc_alloc(MEMORY[0x1E695AC68]) initWithURL:url cachePolicy:1 timeoutInterval:60.0];
    v15[0] = 0;
    v12 = [MEMORY[0x1E695AC40] sendSynchronousRequest:v11 returningResponse:v15 error:0];

    if (v15[0] && v12)
    {
      objc_opt_self();
      if (objc_opt_isKindOfClass() & 1) != 0 && ([MEMORY[0x1E695AC08] isErrorStatusCode:{objc_msgSend(v15[0], "statusCode")}])
      {
LABEL_10:
        if (error)
        {
          v13 = 256;
LABEL_18:
          v14 = _NSErrorWithFilePath(v13, url);
          goto LABEL_19;
        }

LABEL_20:

        return 0;
      }
    }

    else if (!v12)
    {
      goto LABEL_10;
    }

    result = -[NSString initWithBytes:length:encoding:](self, "initWithBytes:length:encoding:", [v12 bytes], objc_msgSend(v12, "length"), enc);
    if (error && !result)
    {
      v14 = _NSErrorWithFilePathAndEncoding(261, url, enc);
LABEL_19:
      *error = v14;
      goto LABEL_20;
    }

    if (result)
    {
      return result;
    }

    goto LABEL_20;
  }

  _securePath = [(NSURL *)url _securePath];
  if (!_securePath)
  {
    if (error)
    {
      v13 = 260;
      goto LABEL_18;
    }

    goto LABEL_20;
  }

  return [(NSString *)self initWithContentsOfFile:_securePath encoding:enc error:error];
}

- (NSString)initWithContentsOfFile:(NSString *)path encoding:(NSStringEncoding)enc error:(NSError *)error
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (_NSIsNSURL())
  {

    return [(NSString *)self initWithContentsOfURL:path encoding:enc error:error];
  }

  else
  {
    v12 = 0;
    v13[0] = 0;
    v11 = 0;
    LOBYTE(v10) = 0;
    if ([MEMORY[0x1E695DEF0] _readBytesFromPath:path maxLength:0x7FFFFFFFFFFFFFFFLL bytes:v13 length:&v12 didMap:&v11 options:0 reportProgress:v10 error:error])
    {
      if (v12 || v13[0])
      {
        result = [NSString initWithBytesNoCopy:"initWithBytesNoCopy:length:encoding:freeWhenDone:" length:v13[0] encoding:? freeWhenDone:?];
        if (result)
        {
          return result;
        }

        free(v13[0]);
        if (error)
        {
          *error = _NSErrorWithFilePathAndEncoding(261, path, enc);
        }
      }

      else
      {
        result = [(NSString *)self init];
        if (result)
        {
          return result;
        }
      }
    }

    return 0;
  }
}

- (NSString)initWithContentsOfURL:(NSURL *)url usedEncoding:(NSStringEncoding *)enc error:(NSError *)error
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (![(NSURL *)url isFileURL])
  {
    v11 = [objc_alloc(MEMORY[0x1E695AC68]) initWithURL:url cachePolicy:1 timeoutInterval:60.0];
    v14[0] = 0;
    v12 = [MEMORY[0x1E695AC40] sendSynchronousRequest:v11 returningResponse:v14 error:0];

    if (v14[0] && v12)
    {
      objc_opt_self();
      if (objc_opt_isKindOfClass() & 1) != 0 && ([MEMORY[0x1E695AC08] isErrorStatusCode:{objc_msgSend(v14[0], "statusCode")}])
      {
        goto LABEL_10;
      }
    }

    else if (!v12)
    {
LABEL_10:
      if (!error)
      {
        goto LABEL_19;
      }

      v13 = 256;
      goto LABEL_18;
    }

    result = -[NSString _initWithBytesOfUnknownEncoding:length:copy:usedEncoding:](self, "_initWithBytesOfUnknownEncoding:length:copy:usedEncoding:", [v12 bytes], objc_msgSend(v12, "length"), 1, enc);
    if (!error || result)
    {
      if (result)
      {
        return result;
      }

      goto LABEL_19;
    }

    v13 = 264;
LABEL_18:
    *error = _NSErrorWithFilePath(v13, url);
    goto LABEL_19;
  }

  _securePath = [(NSURL *)url _securePath];
  if (!_securePath)
  {
    if (error)
    {
      v13 = 260;
      goto LABEL_18;
    }

LABEL_19:

    return 0;
  }

  return [(NSString *)self initWithContentsOfFile:_securePath usedEncoding:enc error:error];
}

- (NSString)initWithContentsOfFile:(NSString *)path usedEncoding:(NSStringEncoding *)enc error:(NSError *)error
{
  v16[1] = *MEMORY[0x1E69E9840];
  v15 = 0;
  v16[0] = 0;
  v14 = 0xFFFFFFFFLL;
  v13 = 0;
  LOBYTE(v12) = 0;
  if (([MEMORY[0x1E695DEF0] _readBytesAndEncodingFromPath:path maxLength:0x7FFFFFFFFFFFFFFFLL encoding:&v14 bytes:v16 length:&v15 didMap:&v13 options:0 reportProgress:v12 error:error] & 1) == 0)
  {
LABEL_19:

    return 0;
  }

  v9 = v15;
  v10 = v16[0];
  if (v14 == 0xFFFFFFFF || !v16[0] || !v15)
  {
LABEL_10:
    if (v9 || v10)
    {
      result = [NSString _initWithBytesOfUnknownEncoding:"_initWithBytesOfUnknownEncoding:length:copy:usedEncoding:" length:v10 copy:? usedEncoding:?];
    }

    else
    {
      result = [(NSString *)self init];
      if (enc)
      {
        *enc = 4;
      }
    }

    if (!error || result)
    {
      if (result)
      {
        return result;
      }
    }

    else
    {
      *error = _NSErrorWithFilePath(264, path);
    }

    goto LABEL_19;
  }

  result = [NSString initWithBytesNoCopy:"initWithBytesNoCopy:length:encoding:freeWhenDone:" length:v16[0] encoding:v15 freeWhenDone:?];
  if (enc && result)
  {
    *enc = v14;
    return result;
  }

  if (!result)
  {
    v9 = v15;
    v10 = v16[0];
    goto LABEL_10;
  }

  return result;
}

- (NSString)initWithData:(id)data usedEncoding:(unint64_t *)encoding
{
  bytes = [data bytes];
  v8 = [data length];

  return [(NSString *)self _initWithBytesOfUnknownEncoding:bytes length:v8 copy:1 usedEncoding:encoding];
}

- (void)encodeWithCoder:(id)coder
{
  v15 = *MEMORY[0x1E69E9840];
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    v9 = [(NSString *)self length];
    v10 = v9;
    v13 = v9;
    v11 = 6 * v9;
    if (6 * v9 < 0x65)
    {
      v8 = v14;
    }

    else
    {
      v8 = malloc_type_malloc(6 * v9, 0x100004077774924uLL);
    }

    if ([(NSString *)self getBytes:v8 maxLength:v11 filledLength:&v13 encoding:4 allowLossyConversion:0 range:0 remainingRange:v10, 0])
    {
      [coder encodeBytes:v8 length:v13];
      goto LABEL_16;
    }

LABEL_19:
    v12 = [NSString stringWithFormat:@"couldn't encode string %@", self];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v12 userInfo:0]);
  }

  if (object_getClass(coder) != NSKeyedArchiver)
  {
    v5 = [(NSString *)self length];
    v6 = v5;
    v13 = v5;
    v7 = 6 * v5;
    if (6 * v5 < 0x65)
    {
      v8 = v14;
    }

    else
    {
      v8 = malloc_type_malloc(6 * v5, 0x100004077774924uLL);
    }

    if ([(NSString *)self getBytes:v8 maxLength:v7 filledLength:&v13 encoding:4 allowLossyConversion:0 range:0 remainingRange:v6, 0])
    {
      [coder encodeBytes:v8 length:v13 forKey:@"NS.bytes"];
LABEL_16:
      if (v8 != v14)
      {
        free(v8);
      }

      return;
    }

    goto LABEL_19;
  }

  [coder _encodePropertyList:self forKey:@"NS.string"];
}

- (NSString)initWithCoder:(NSCoder *)coder
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (![(NSCoder *)coder allowsKeyedCoding])
  {
    v7 = [(NSCoder *)coder versionForClassName:@"NSString"];
    if (v7 != 1)
    {
      v9 = [NSString stringWithFormat:@"NSString cannot decode class version %lu", v7];

      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v9 userInfo:0]);
    }

    v10[0] = 0;
    v8 = [(NSCoder *)coder decodeBytesWithReturnedLength:v10];
    return [(NSString *)self initWithBytes:v8 length:v10[0] encoding:4];
  }

  if (![(NSCoder *)coder containsValueForKey:@"NS.string"])
  {
    v10[0] = 0;
    v8 = [(NSCoder *)coder decodeBytesForKey:@"NS.bytes" returnedLength:v10];
    return [(NSString *)self initWithBytes:v8 length:v10[0] encoding:4];
  }

  v5 = [(NSCoder *)coder _decodePropertyListForKey:@"NS.string"];
  if (_NSIsNSString())
  {

    return [(NSString *)self initWithString:v5];
  }

  else
  {
    [(NSCoder *)coder failWithError:[NSError _readCorruptErrorWithFormat:@"Decoded object is not a string"]];

    return 0;
  }
}

- (id)propertyList
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  return _CFPropertyListCreateFromXMLString();
}

- (NSDictionary)propertyListFromStringsFileFormat
{
  propertyList = [(NSString *)self propertyList];
  if (_NSIsNSDictionary())
  {
    return propertyList;
  }

  else
  {
    return 0;
  }
}

- (id)_copyFormatStringWithConfiguration:(id)configuration
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self = [(NSString *)self baseString];
  }

  v5 = [__NSLocalizedString alloc];

  return [(__NSLocalizedString *)v5 initWithString:self withFormatConfiguration:configuration];
}

- (void)getCString:(char *)bytes maxLength:(NSUInteger)maxLength range:(NSRange)aRange remainingRange:(NSRangePointer)leftoverRange
{
  length = aRange.length;
  location = aRange.location;
  v17[1] = *MEMORY[0x1E69E9840];
  if (__NSDefaultStringEncodingFullyInited == 1)
  {
    v12 = _NSDefaultStringEncoding;
  }

  else
  {
    v12 = _NSDefaultCStringEncoding();
  }

  v17[0] = 0;
  if (![(NSString *)self getBytes:bytes maxLength:maxLength filledLength:v17 encoding:v12 allowLossyConversion:0 range:location remainingRange:length, leftoverRange])
  {
    v13 = [(NSString *)self length];
    selfCopy = self;
    if (v13 >= 0x18)
    {
      selfCopy = [[(NSString *)self substringWithRange:0 stringByAppendingString:"stringByAppendingString:", @"..."];
    }

    v15 = MEMORY[0x1E695DF30];
    selfCopy = [NSString stringWithFormat:@"Conversion to cString failed for string %@", selfCopy];
    objc_exception_throw([v15 exceptionWithName:@"NSCharacterConversionException" reason:selfCopy userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjectsAndKeys:", self, @"_NSString", 0)}]);
  }

  bytes[v17[0]] = 0;
}

- (void)getCString:(char *)bytes maxLength:(NSUInteger)maxLength
{
  v7 = [(NSString *)self length];

  [(NSString *)self getCString:bytes maxLength:maxLength range:0 remainingRange:v7, 0];
}

- (void)getCString:(char *)bytes
{
  if (bytes <= 0x8000000000000000)
  {
    v5 = 0x8000000000000000;
  }

  else
  {
    v5 = bytes;
  }

  v6 = [(NSString *)self length];

  [(NSString *)self getCString:bytes maxLength:~v5 range:0 remainingRange:v6, 0];
}

- (const)cString
{
  if (__NSDefaultStringEncodingFullyInited == 1)
  {
    v3 = _NSDefaultStringEncoding;
  }

  else
  {
    v3 = _NSDefaultCStringEncoding();
  }

  return bytesInEncoding(self, v3, 1, 1, 0);
}

- (NSUInteger)cStringLength
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (__NSDefaultStringEncodingFullyInited == 1)
  {
    v3 = _NSDefaultStringEncoding;
  }

  else
  {
    v3 = _NSDefaultCStringEncoding();
  }

  v5[0] = 0;
  if ([(NSString *)self getBytes:0 maxLength:0x7FFFFFFFFFFFFFFELL usedLength:v5 encoding:v3 options:6 range:0 remainingRange:[(NSString *)self length], 0])
  {
    return v5[0];
  }

  else
  {
    return 0;
  }
}

- (const)lossyCString
{
  if (__NSDefaultStringEncodingFullyInited == 1)
  {
    v3 = _NSDefaultStringEncoding;
  }

  else
  {
    v3 = _NSDefaultCStringEncoding();
  }

  return bytesInEncoding(self, v3, 0, 0, 1u);
}

- (NSStringEncoding)smallestEncoding
{
  v3 = 1;
  if (![(NSString *)self canBeConvertedToEncoding:1])
  {
    if (__NSDefaultStringEncodingFullyInited == 1)
    {
      v4 = _NSDefaultStringEncoding;
    }

    else
    {
      v4 = _NSDefaultCStringEncoding();
    }

    if ([(NSString *)self canBeConvertedToEncoding:v4])
    {
      return _NSDefaultStringEncoding;
    }

    else
    {
      return 10;
    }
  }

  return v3;
}

- (BOOL)canBeConvertedToEncoding:(NSStringEncoding)encoding
{
  if (encoding < 0xB && ((0x491u >> encoding) & 1) != 0)
  {
    return 1;
  }

  if (CFStringConvertNSStringEncodingToEncoding(encoding) != -1)
  {
    goto LABEL_8;
  }

  if (encoding == 134217984)
  {
    if (_CFExecutableLinkedOnOrAfter())
    {
      NSLog(@"Incorrect NSStringEncoding value 0x%04lX detected. Assuming NSASCIIStringEncoding. Will stop this compatibility mapping behavior in the near future.", 134217984);
    }

LABEL_8:
    [(NSString *)self length];
    v6 = __CFStringEncodeByteStream();
    return v6 == [(NSString *)self length];
  }

  return 0;
}

- (NSData)dataUsingEncoding:(NSStringEncoding)encoding allowLossyConversion:(BOOL)lossy
{
  v15[1] = *MEMORY[0x1E69E9840];
  v7 = [(NSString *)self length];
  v15[0] = 0;
  v8 = CFStringConvertNSStringEncodingToEncoding(encoding);
  if (v8 == -1)
  {
    if (encoding != 134217984 && encoding)
    {
      v8 = -1;
    }

    else
    {
      if (_CFExecutableLinkedOnOrAfter())
      {
        NSLog(@"Incorrect NSStringEncoding value 0x%04lX detected. Assuming NSASCIIStringEncoding. Will stop this compatibility mapping behavior in the near future.", encoding);
      }

      v8 = 1536;
    }
  }

  if (CFStringIsEncodingAvailable(v8))
  {
    v9 = __CFStringEncodeByteStream();
    result = 0;
    if (v9 == v7)
    {
      v11 = objc_allocWithZone(MEMORY[0x1E695DF88]);
      v12 = [v11 initWithLength:{v15[0], v15}];
      v13 = v12;
      if (v15[0])
      {
        [v12 mutableBytes];
        if (__CFStringEncodeByteStream() != v7)
        {

          v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: didn't convert all characters", _NSMethodExceptionProem(self, a2)), 0}];
          objc_exception_throw(v14);
        }

        [v13 setLength:{v15[0], v15}];
      }

      return v13;
    }
  }

  else
  {
    NSLog(@"Unknown encoding %ld", encoding);
    return 0;
  }

  return result;
}

- (BOOL)getCString:(char *)buffer maxLength:(NSUInteger)maxBufferCount encoding:(NSStringEncoding)encoding
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (maxBufferCount > 1)
  {
    v8[0] = 0;
    v6 = [(NSString *)self getBytes:buffer maxLength:maxBufferCount - 1 usedLength:v8 encoding:encoding options:4 range:0 remainingRange:[(NSString *)self length], 0];
    if (v6)
    {
      buffer[v8[0]] = 0;
      LOBYTE(v6) = 1;
    }

    else
    {
      *buffer = 0;
    }
  }

  else
  {
    if (maxBufferCount == 1)
    {
      *buffer = 0;
    }

    LOBYTE(v6) = [(NSString *)self length]== 0;
  }

  return v6;
}

- (NSUInteger)maximumLengthOfBytesUsingEncoding:(NSStringEncoding)enc
{
  v5 = CFStringConvertNSStringEncodingToEncoding(enc);
  if (v5 == -1)
  {
    if (enc != 134217984 && enc)
    {
      return 0;
    }

    if (_CFExecutableLinkedOnOrAfter())
    {
      NSLog(@"Incorrect NSStringEncoding value 0x%04lX detected. Assuming NSASCIIStringEncoding. Will stop this compatibility mapping behavior in the near future.", enc);
    }

    v5 = 1536;
  }

  result = CFStringGetMaximumSizeForEncoding([(NSString *)self length], v5);
  if (result == -1)
  {
    return 0;
  }

  return result;
}

- (NSUInteger)lengthOfBytesUsingEncoding:(NSStringEncoding)enc
{
  v4 = [(NSString *)self length];
  if (CFStringConvertNSStringEncodingToEncoding(enc) == -1)
  {
    if (enc != 134217984 && enc)
    {
      return 0;
    }

    if (_CFExecutableLinkedOnOrAfter())
    {
      NSLog(@"Incorrect NSStringEncoding value 0x%04lX detected. Assuming NSASCIIStringEncoding. Will stop this compatibility mapping behavior in the near future.", enc);
    }
  }

  if (__CFStringEncodeByteStream() == v4)
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

- (BOOL)getBytes:(void *)buffer maxLength:(NSUInteger)maxBufferCount usedLength:(NSUInteger *)usedBufferCount encoding:(NSStringEncoding)encoding options:(NSStringEncodingConversionOptions)options range:(NSRange)range remainingRange:(NSRangePointer)leftover
{
  v9 = options;
  v13 = CFStringConvertNSStringEncodingToEncoding(encoding);
  if (v13 == -1)
  {
    if (encoding != 134217984 && encoding)
    {
      v13 = -1;
    }

    else
    {
      if (_CFExecutableLinkedOnOrAfter())
      {
        NSLog(@"Incorrect NSStringEncoding value 0x%04lX detected. Assuming NSASCIIStringEncoding. Will stop this compatibility mapping behavior in the near future.", encoding);
      }

      v13 = 1536;
    }
  }

  v14 = [(NSString *)self length];
  if (!v14)
  {
    goto LABEL_13;
  }

  if (!CFStringIsEncodingAvailable(v13))
  {
    v15 = 0;
    v14 = 0;
    if (!usedBufferCount)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v14 = __CFStringEncodeByteStream();
  if ((v9 & 4) == 0 || v14 >= range.length)
  {
    if (v14)
    {
LABEL_13:
      v15 = 1;
      if (!usedBufferCount)
      {
        goto LABEL_17;
      }

LABEL_16:
      *usedBufferCount = 0;
      goto LABEL_17;
    }
  }

  v15 = 0;
  if (usedBufferCount)
  {
    goto LABEL_16;
  }

LABEL_17:
  if (leftover)
  {
    leftover->location = v14 + range.location;
    leftover->length = range.length - v14;
  }

  return v15;
}

+ (const)availableStringEncodings
{
  v2 = availableStringEncodings_encodings;
  if (!availableStringEncodings_encodings)
  {
    v3 = MEMORY[0x1865CE910](self, a2);
    if (*v3 == -1)
    {
      v5 = 0;
    }

    else
    {
      v4 = 0;
      do
      {
        v5 = v4 + 1;
        v6 = v3[++v4];
      }

      while (v6 != -1);
    }

    v7 = MEMORY[0x1865CE910]();
    v2 = malloc_type_malloc(8 * v5 + 8, 0x100004000313F17uLL);
    v2[v5] = 0;
    v8 = v5 < 1;
    v9 = v5 - 1;
    if (!v8)
    {
      do
      {
        v2[v9] = CFStringConvertEncodingToNSStringEncoding(*(v7 + 4 * v9));
        v10 = v9-- + 1;
      }

      while (v10 > 1);
    }

    availableStringEncodings_encodings = v2;
  }

  return v2;
}

+ (NSString)localizedNameOfStringEncoding:(NSStringEncoding)encoding
{
  v4 = CFStringConvertNSStringEncodingToEncoding(encoding);
  if (v4 == -1)
  {
    if (encoding != 134217984 && encoding)
    {
      v4 = -1;
    }

    else
    {
      if (_CFExecutableLinkedOnOrAfter())
      {
        NSLog(@"Incorrect NSStringEncoding value 0x%04lX detected. Assuming NSASCIIStringEncoding. Will stop this compatibility mapping behavior in the near future.", encoding);
      }

      v4 = 1536;
    }
  }

  NameOfEncoding = CFStringGetNameOfEncoding(v4);
  if (!NameOfEncoding)
  {
    return &stru_1EEEFDF90;
  }

  v6 = NameOfEncoding;
  v7 = _NSFoundationBundle();

  return [v7 localizedStringForKey:v6 value:&stru_1EEEFDF90 table:@"EncodingNames"];
}

- (int64_t)_web_countOfString:(id)string
{
  v5 = [(NSString *)self length];
  v6 = 0;
  v7 = 0;
  v8 = v5;
  do
  {
    v9 = [(NSString *)self rangeOfString:string options:2 range:v7, v8];
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    ++v6;
    v8 = v5 - (v9 + v10);
    v7 = v9 + v10;
  }

  while (v9 + v10 < v5);
  return v6;
}

- (BOOL)_web_hasCountryCodeTLD
{
  if ([(NSString *)self _web_looksLikeIPAddress])
  {
    return 0;
  }

  v4 = [(NSString *)self rangeOfString:@"." options:4];
  return v4 == [(NSString *)self length]- 3;
}

- (BOOL)_web_domainMatches:(id)matches
{
  if ([(NSString *)self _web_isCaseInsensitiveEqualToString:?])
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v5 = [matches length];
    if (v5)
    {
      if ([matches characterAtIndex:0] == 46 && !-[NSString _web_looksLikeIPAddress](self, "_web_looksLikeIPAddress"))
      {
        v6 = [(NSString *)self length];
        if (v6 >= [matches length])
        {
          matchesCopy2 = self;
          selfCopy2 = matches;
        }

        else
        {
          matchesCopy2 = matches;
          selfCopy2 = self;
        }

        LOBYTE(v5) = [matchesCopy2 rangeOfString:selfCopy2 options:13] != 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        LOBYTE(v5) = 0;
      }
    }
  }

  return v5;
}

- (id)_web_domainFromHost
{
  if ([(NSString *)self _web_looksLikeIPAddress])
  {
    return self;
  }

  _web_hasCountryCodeTLD = [(NSString *)self _web_hasCountryCodeTLD];
  v5 = [(NSString *)self _web_countOfString:@"."];
  if (_web_hasCountryCodeTLD)
  {
    if (v5 > 2)
    {
      v6 = [(NSString *)self rangeOfString:@"." options:4 range:0, [(NSString *)self rangeOfString:@"." options:4]];
LABEL_11:
      v7 = [(NSString *)self rangeOfString:@"." options:4 range:0, v6];

      return [(NSString *)self substringFromIndex:v7];
    }
  }

  else if (v5 > 1)
  {
    v6 = [(NSString *)self rangeOfString:@"." options:4];
    goto LABEL_11;
  }

  return [@"." stringByAppendingString:self];
}

- (id)_web_stringByTrimmingWhitespace
{
  v3 = [(NSString *)self length];
  if (!v3)
  {
    return self;
  }

  v4 = v3;
  Predefined = CFCharacterSetGetPredefined(kCFCharacterSetWhitespace);
  v6 = v4 + 1;
  do
  {
    v7 = v6 - 1;
    if (v6 == 1)
    {
      v9 = 0;
      goto LABEL_10;
    }

    IsCharacterMember = CFCharacterSetIsCharacterMember(Predefined, [(NSString *)self characterAtIndex:v6 - 2]);
    v6 = v7;
  }

  while (IsCharacterMember);
  v9 = 0;
  do
  {
    if (!CFCharacterSetIsCharacterMember(Predefined, [(NSString *)self characterAtIndex:v9]))
    {
      break;
    }

    ++v9;
    --v7;
  }

  while (v7);
LABEL_10:
  if (v4 == v7)
  {
    return self;
  }

  return [(NSString *)self substringWithRange:v9, v7];
}

- (id)_web_stringByExpandingTildeInPath
{
  stringByExpandingTildeInPath = [(NSString *)self stringByExpandingTildeInPath];
  if (![(NSString *)self hasSuffix:@"/"]|| [(NSString *)stringByExpandingTildeInPath hasSuffix:@"/"])
  {
    return stringByExpandingTildeInPath;
  }

  return [(NSString *)stringByExpandingTildeInPath stringByAppendingString:@"/"];
}

- (id)_web_fixedCarbonPOSIXPath
{
  v3 = +[NSFileManager defaultManager];
  if (![(NSFileManager *)v3 fileExistsAtPath:self])
  {
    v4 = [(NSArray *)[(NSString *)self pathComponents] mutableCopy];
    v5 = [v4 objectAtIndex:1];
    if ([v5 isEqualToString:@"Volumes"])
    {
      v5 = [v4 objectAtIndex:2];
      [v4 removeObjectAtIndex:1];
    }

    if (v5)
    {
      if ([-[NSFileManager _web_startupVolumeName_nowarn](v3 "_web_startupVolumeName_nowarn")])
      {
        [v4 removeObjectAtIndex:1];
      }

      else
      {
        if (![(NSArray *)[(NSFileManager *)v3 contentsOfDirectoryAtPath:@"/Volumes" error:0] containsObject:v5])
        {
          return self;
        }

        [v4 insertObject:@"Volumes" atIndex:1];
      }

      v6 = [NSString pathWithComponents:v4];
      if ([(NSFileManager *)v3 fileExistsAtPath:v6])
      {
        return v6;
      }
    }
  }

  return self;
}

- (_NSRange)_web_rangeOfURLUserPasswordHostPort
{
  _web_rangeOfURLResourceSpecifier_nowarn = [(NSString *)self _web_rangeOfURLResourceSpecifier_nowarn];
  v5 = 0x7FFFFFFFFFFFFFFFLL;
  if (_web_rangeOfURLResourceSpecifier_nowarn == 0x7FFFFFFFFFFFFFFFLL || (v6 = _web_rangeOfURLResourceSpecifier_nowarn, v7 = v4, [(NSString *)self rangeOfString:@"//" options:8 range:_web_rangeOfURLResourceSpecifier_nowarn, v4]== 0x7FFFFFFFFFFFFFFFLL))
  {
    v8 = 0;
  }

  else
  {
    v5 = v6 + 2;
    v9 = v7 - 2;
    v10 = [(NSString *)self rangeOfString:@"/" options:0 range:v6 + 2, v9];
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = v9;
    }

    else
    {
      v8 = v10 - v5;
    }
  }

  v11 = v5;
  result.length = v8;
  result.location = v11;
  return result;
}

- (_NSRange)_web_rangeOfURLHost
{
  _web_rangeOfURLUserPasswordHostPort = [(NSString *)self _web_rangeOfURLUserPasswordHostPort];
  if (_web_rangeOfURLUserPasswordHostPort == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_2;
  }

  v6 = _web_rangeOfURLUserPasswordHostPort;
  v7 = v4;
  v8 = [(NSString *)self rangeOfString:@"@" options:0 range:_web_rangeOfURLUserPasswordHostPort, v4];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v8 == 0x7FFFFFFFFFFFFFFELL)
    {
LABEL_2:
      v5 = 0;
      v6 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_9;
    }

    v7 += v6 + ~v8;
    v6 = v8 + 1;
  }

  v9 = [(NSString *)self rangeOfString:@":" options:0 range:v6, v7];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v7;
  }

  else
  {
    v5 = v9 - v6;
  }

LABEL_9:
  v10 = v6;
  result.length = v5;
  result.location = v10;
  return result;
}

- (id)_web_URLFragment
{
  v3 = [(NSString *)self rangeOfString:@"#" options:2];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  return [(NSString *)self substringFromIndex:v3];
}

+ (id)_web_stringRepresentationForBytes:(int64_t)bytes
{
  if (bytes >= 0)
  {
    bytesCopy = bytes;
  }

  else
  {
    bytesCopy = -bytes;
  }

  if (bytes)
  {
    if (bytesCopy == 1.0)
    {
      result = NSURLLocalizedString("1 byte");
    }

    else if (bytesCopy >= 100.0)
    {
      v6 = bytesCopy * 0.0009765625;
      if (bytesCopy >= 1000.0)
      {
        if (v6 >= 9.95)
        {
          if (v6 >= 99.95)
          {
            if (v6 >= 999.5)
            {
              v6 = v6 * 0.0009765625;
              if (v6 >= 9.95)
              {
                if (v6 >= 99.95)
                {
                  if (v6 >= 999.5)
                  {
                    v6 = v6 * 0.0009765625;
                    if (v6 >= 9.95)
                    {
                      if (v6 >= 99.95)
                      {
                        v7 = "%.0f GB";
                      }

                      else
                      {
                        v7 = "%.1f GB (10.0)";
                      }
                    }

                    else
                    {
                      v7 = "%.1f GB (1.0)";
                    }
                  }

                  else
                  {
                    v7 = "%.0f MB";
                  }
                }

                else
                {
                  v7 = "%.1f MB (10.0)";
                }
              }

              else
              {
                v7 = "%.1f MB (1.0)";
              }
            }

            else
            {
              v7 = "%.0f KB";
            }
          }

          else
          {
            v7 = "%.1f KB (10.0)";
          }
        }

        else
        {
          v7 = "%.1f KB (1.0)";
        }
      }

      else
      {
        v7 = "%.1f KB (0.1)";
      }

      result = [NSString localizedStringWithFormat:NSURLLocalizedString(v7), *&v6];
    }

    else
    {
      result = [NSString localizedStringWithFormat:NSURLLocalizedString("%.0f bytes"), *&bytesCopy];
    }

    if (bytes < 0)
    {

      return [@"-" stringByAppendingString:result];
    }
  }

  else
  {

    return NSURLLocalizedString("0 bytes");
  }

  return result;
}

- (id)_web_stringByCollapsingNonPrintingCharacters
{
  v3 = +[(NSString *)NSMutableString];
  if (!_MergedGlobals_121)
  {
    v4 = objc_alloc_init(NSMutableCharacterSet);
    [(NSMutableCharacterSet *)v4 addCharactersInRange:0, 33];
    [(NSMutableCharacterSet *)v4 addCharactersInRange:127, 1];
    _MergedGlobals_121 = [(NSMutableCharacterSet *)v4 copy];

    qword_1ED43FBD0 = [_MergedGlobals_121 invertedSet];
  }

  v5 = [(NSString *)self length];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    do
    {
      v8 = [(NSString *)self rangeOfCharacterFromSet:qword_1ED43FBD0 options:0 range:v7, v6 - v7];
      if (v8 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v9 = v8;
      v10 = [(NSString *)self rangeOfCharacterFromSet:_MergedGlobals_121 options:0 range:v8, v6 - v8];
      if (v10 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v11 = v6;
      }

      else
      {
        v11 = v10;
      }

      if (v11 > v9)
      {
        if (v7)
        {
          [(NSString *)v3 appendString:@" "];
        }

        [(NSString *)v3 appendString:[(NSString *)self substringWithRange:v9, v11 - v9]];
      }

      v7 = v11;
    }

    while (v11 != v6);
  }

  return v3;
}

- (id)_web_filenameByFixingIllegalCharacters
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = [(NSString *)self mutableCopy];
  v4 = 0;
  [v2 replaceOccurrencesOfString:+[NSString stringWithCharacters:length:](NSString withString:"stringWithCharacters:length:" options:&v4 range:{1), &stru_1EEEFDF90, 0, 0, objc_msgSend(v2, "length")}];
  [v2 replaceOccurrencesOfString:@"/" withString:@"-" options:0 range:{0, objc_msgSend(v2, "length")}];
  [v2 replaceOccurrencesOfString:@":" withString:@"-" options:0 range:{0, objc_msgSend(v2, "length")}];
  if ([v2 hasPrefix:@"."])
  {
    do
    {
      [v2 deleteCharactersInRange:{0, 1}];
    }

    while (([v2 hasPrefix:@"."] & 1) != 0);
  }

  return v2;
}

- (unsigned)_web_extractFourCharCode
{
  v2 = [(NSString *)self dataUsingEncoding:30];
  v3 = [(NSData *)v2 length];
  if (v3)
  {
    [(NSData *)v2 bytes];
    __memcpy_chk();
    LODWORD(v3) = bswap32(0);
  }

  return v3;
}

- (id)_web_splitAtNonDateCommas_nowarn
{
  [(NSString *)self length];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
  v4 = [(NSString *)self rangeOfString:@", "];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v4;
    v7 = 0;
    v5 = 0;
    while (1)
    {
      v8 = [(NSString *)self rangeOfString:@"expires=" options:1 range:v7, v6 - v7];
      v7 = v6 + 1;
      if (v8 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v10 = v8;
        v11 = v9;
        v12 = v8 - 1;
        v13 = [(NSString *)self characterAtIndex:v8 - 1];
        if (v13 > 0x7F)
        {
          if (__maskrune(v13, 0x4000uLL))
          {
            goto LABEL_12;
          }
        }

        else if ((*(MEMORY[0x1E69E9830] + 4 * v13 + 60) & 0x4000) != 0)
        {
          goto LABEL_12;
        }

        if ([(NSString *)self characterAtIndex:v12]== 59 || [(NSString *)self characterAtIndex:v12]== 44)
        {
LABEL_12:
          if (v10 + v11 != v6 && v6 < v10 + v11 + 16)
          {
            goto LABEL_14;
          }
        }
      }

      [v3 addObject:{-[NSString substringWithRange:](self, "substringWithRange:", v5, v6 - v5)}];
      v5 = v6 + 1;
LABEL_14:
      v6 = [(NSString *)self rangeOfString:@" options:" range:2, v6 + 1, [(NSString *)self length]+ ~v6];
      if (v6 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_15;
      }
    }
  }

  v5 = 0;
LABEL_15:
  [v3 addObject:{-[NSString substringWithRange:](self, "substringWithRange:", v5, -[NSString length](self, "length") - v5)}];
  return v3;
}

- (id)_web_parseAsKeyValuePairHandleQuotes_nowarn:(BOOL)quotes_nowarn
{
  quotes_nowarnCopy = quotes_nowarn;
  v5 = [(NSString *)self rangeOfString:@"="];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    _web_stringByTrimmingWhitespace = [(NSString *)self _web_stringByTrimmingWhitespace];
    v7 = 0;
  }

  else
  {
    v8 = v5;
    Predefined = CFCharacterSetGetPredefined(kCFCharacterSetWhitespace);
    if (v8)
    {
      v10 = v8;
      while (1)
      {
        v11 = v10 - 1;
        if (!CFCharacterSetIsCharacterMember(Predefined, [(NSString *)self characterAtIndex:v10 - 1]))
        {
          break;
        }

        --v10;
        if (!v11)
        {
          goto LABEL_14;
        }
      }

      v12 = 0;
      v11 = v10;
      while (CFCharacterSetIsCharacterMember(Predefined, [(NSString *)self characterAtIndex:v12]))
      {
        ++v12;
        if (!--v11)
        {
          goto LABEL_14;
        }
      }

      v10 = v12;
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

LABEL_14:
    _web_stringByTrimmingWhitespace = [(NSString *)self substringWithRange:v10, v11];
    v13 = v8 + 1;
    v14 = [(NSString *)self length];
    v15 = v14 - v13;
    if (v14 != v13)
    {
      v16 = v14 - 1;
      while (CFCharacterSetIsCharacterMember(Predefined, [(NSString *)self characterAtIndex:v16]))
      {
        --v16;
        if (!--v15)
        {
          goto LABEL_25;
        }
      }

      while (CFCharacterSetIsCharacterMember(Predefined, [(NSString *)self characterAtIndex:v13]))
      {
        ++v13;
        if (!--v15)
        {
          goto LABEL_25;
        }
      }

      if (v15 != 1 && quotes_nowarnCopy && [(NSString *)self characterAtIndex:v13]== 34)
      {
        ++v13;
        v15 -= 2;
      }
    }

LABEL_25:
    v7 = [(NSString *)self substringWithRange:v13, v15];
  }

  return [NSURLKeyValuePair pairWithKey:_web_stringByTrimmingWhitespace value:v7];
}

- (_NSRange)_web_rangeOfURLScheme_nowarn
{
  v3 = [(NSString *)self rangeOfString:@":"];
  if (v3)
  {
    v4 = v3 == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    goto LABEL_6;
  }

  v5 = v3;
  if (!_web_rangeOfURLScheme_nowarn_InverseSchemeCharacterSet)
  {
    _web_rangeOfURLScheme_nowarn_InverseSchemeCharacterSet = [[NSCharacterSet characterSetWithCharactersInString:?]];
  }

  v8 = [NSString rangeOfCharacterFromSet:"rangeOfCharacterFromSet:options:range:" options:? range:?];
  v6 = 0;
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_6:
    v5 = 0;
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (_NSRange)_web_rangeOfURLResourceSpecifier_nowarn
{
  v4 = 0x7FFFFFFFFFFFFFFFLL;
  if ([(NSString *)self _web_rangeOfURLScheme_nowarn]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v4 = v3 + 1;
    v5 = [(NSString *)self length]- (v3 + 1);
  }

  v6 = v4;
  result.length = v5;
  result.location = v6;
  return result;
}

- (id)_web_mimeTypeFromContentTypeHeader_nowarn
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [(NSString *)self componentsSeparatedByString:@", "];
  v3 = [(NSArray *)v2 count];
  if (!v3)
  {
    return 0;
  }

  if (v3 != 1)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v8 = [(NSArray *)v2 countByEnumeratingWithState:&v22 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v2);
          }

          [v7 addObject:{objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(*(*(&v22 + 1) + 8 * i), "componentsSeparatedByString:", @";", "objectAtIndex:", 0), "_web_stringByTrimmingWhitespace"), "lowercaseString")}];
        }

        v9 = [(NSArray *)v2 countByEnumeratingWithState:&v22 objects:v21 count:16];
      }

      while (v9);
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v12 = [v7 countByEnumeratingWithState:&v17 objects:v16 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
LABEL_16:
      v15 = 0;
      while (1)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v7);
        }

        v6 = *(*(&v17 + 1) + 8 * v15);
        if (([v6 _web_hasCaseInsensitivePrefix:@"text/"] & 1) == 0 && (objc_msgSend(v6, "_web_hasCaseInsensitivePrefix:", @"application/") & 1) == 0 && objc_msgSend(v6, "rangeOfString:", @"/") != 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        if (v13 == ++v15)
        {
          v13 = [v7 countByEnumeratingWithState:&v17 objects:v16 count:16];
          if (v13)
          {
            goto LABEL_16;
          }

          goto LABEL_26;
        }
      }

      if (v6)
      {
        goto LABEL_27;
      }
    }

LABEL_26:
    v6 = [v7 objectAtIndex:0];
LABEL_27:

    return v6;
  }

  v4 = [objc_msgSend(objc_msgSend(-[NSArray objectAtIndex:](v2 objectAtIndex:{0), "componentsSeparatedByString:", @";", "objectAtIndex:", 0), "_web_stringByTrimmingWhitespace"}];

  return [v4 lowercaseString];
}

- (id)_web_characterSetFromContentTypeHeader_nowarn
{
  v3 = [(NSString *)self rangeOfString:@"charset=" options:1];
  if (!v4)
  {
    return 0;
  }

  v5 = [objc_msgSend(objc_msgSend(-[NSArray objectAtIndex:](-[NSString componentsSeparatedByString:](-[NSString substringFromIndex:](self substringFromIndex:{v3 + v4), "componentsSeparatedByString:", @", "), "objectAtIndex:", 0), "componentsSeparatedByString:", @";", "objectAtIndex:", 0), "_web_stringByTrimmingWhitespace"}];

  return [v5 lowercaseString];
}

- (id)_web_fileNameFromContentDispositionHeader_nowarn
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [(NSString *)self componentsSeparatedByString:@";"];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  result = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v10;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v9 + 1) + 8 * v6) _web_parseAsKeyValuePairHandleQuotes_nowarn:1];
        if ([objc_msgSend(v7 "key")])
        {
          return [v7 value];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      result = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v8 count:16];
      v4 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (id)_web_stringByReplacingValidPercentEscapes_nowarn
{
  v3 = [(NSString *)self dataUsingEncoding:4];
  bytes = [(NSData *)v3 bytes];
  v5 = malloc_type_malloc([(NSData *)v3 length], 0x100004077774924uLL);
  v6 = [(NSData *)v3 length];
  v7 = v5;
  if (v6)
  {
    v8 = &bytes[v6];
    v7 = v5;
    do
    {
      v9 = *bytes;
      v10 = v9 != 37 || (bytes + 3) > v8;
      if (v10 || (v11 = bytes[1], v12 = v11 - 48, (v11 - 48) >= 0xAu) && (bytes[1] - 65 <= 0x25 ? (v13 = ((1 << (v11 - 65)) & 0x3F0000003FLL) == 0) : (v13 = 1), v13) || (v14 = bytes[2], v15 = v14 - 48, v16 = (v14 - 48), v16 >= 0xA) && (bytes[2] - 65 <= 0x25 ? (v17 = ((1 << (v14 - 65)) & 0x3F0000003FLL) == 0) : (v17 = 1), v17))
      {
        ++bytes;
      }

      else
      {
        v18 = v14 - 65;
        v19 = (v11 - 65);
        if ((v11 - 97) >= 6u)
        {
          v20 = 0;
        }

        else
        {
          v20 = v11 - 87;
        }

        v21 = v11 - 55;
        if (v19 <= 5)
        {
          v22 = v21;
        }

        else
        {
          v22 = v20;
        }

        if (v12 < 0xAu)
        {
          v22 = v12;
        }

        v23 = 16 * v22;
        if ((v14 - 97) >= 6u)
        {
          v24 = 0;
        }

        else
        {
          v24 = v14 - 87;
        }

        v25 = v14 - 55;
        if (v18 <= 5u)
        {
          v26 = v25;
        }

        else
        {
          v26 = v24;
        }

        if (v16 < 0xA)
        {
          v26 = v15;
        }

        LOBYTE(v9) = v26 | v23;
        bytes += 3;
      }

      *v7++ = v9;
    }

    while (bytes != v8);
  }

  v27 = [[NSString alloc] initWithBytes:v5 length:v7 - v5 encoding:4];
  free(v5);
  if (v27)
  {
    return v27;
  }

  else
  {
    return self;
  }
}

- (id)standardizedURLPath
{
  pathComponents = [(NSString *)self pathComponents];
  if (![(NSArray *)pathComponents count]|| ![(NSString *)self length])
  {
    return &stru_1EEEFDF90;
  }

  if (-[NSArray count](pathComponents, "count") != 1 || (selfCopy = @"/", ([-[NSArray objectAtIndex:](pathComponents objectAtIndex:{0), "isEqualToString:", @"/"}] & 1) == 0))
  {
    v5 = [(NSArray *)pathComponents objectAtIndex:0];
    if (([v5 isEqual:@"/"] & 1) != 0 || objc_msgSend(v5, "isEqual:", @"\\""))
    {
      v6 = [objc_allocWithZone(MEMORY[0x1E695DF70]) initWithArray:pathComponents];
      [v6 replaceObjectAtIndex:0 withObject:&stru_1EEEFDF90];
      v7 = 1;
    }

    else
    {
      v7 = 0;
      v6 = 0;
    }

    if ([(NSString *)self characterAtIndex:[(NSString *)self length]- 1]== 47)
    {
      if (!v6)
      {
        v6 = [objc_allocWithZone(MEMORY[0x1E695DF70]) initWithArray:pathComponents];
      }

      [v6 addObject:&stru_1EEEFDF90];
    }

    v8 = [(NSArray *)pathComponents count];
    if (v7 >= v8)
    {
LABEL_22:
      selfCopy = self;
      if (!v6)
      {
        return selfCopy;
      }

      if ([v6 count])
      {
        if ([objc_msgSend(v6 objectAtIndex:{0), "isEqual:", &stru_1EEEFDF90}])
        {
          [v6 removeObjectAtIndex:0];
          if ([objc_msgSend(v6 "lastObject")])
          {
            [v6 removeLastObject];
            v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"/%@/", [v6 componentsJoinedByString:@"/"]);
          }

          else
          {
            v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"/%@", [v6 componentsJoinedByString:@"/"]);
          }
        }

        else if ([objc_msgSend(v6 "lastObject")])
        {
          [v6 removeLastObject];
          v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@/", [v6 componentsJoinedByString:@"/"]);
        }

        else
        {
          v13 = [v6 componentsJoinedByString:@"/"];
        }

        selfCopy = v13;
      }

      else
      {
        selfCopy = &stru_1EEEFDF90;
      }
    }

    else
    {
      v9 = v8;
      while (1)
      {
        v10 = [(NSArray *)pathComponents objectAtIndex:v7];
        stringByAddingPercentEscapes = [v10 stringByAddingPercentEscapes];
        if (!stringByAddingPercentEscapes)
        {
          break;
        }

        v12 = stringByAddingPercentEscapes;
        if (stringByAddingPercentEscapes != v10)
        {
          if (!v6)
          {
            v6 = [objc_allocWithZone(MEMORY[0x1E695DF70]) initWithArray:pathComponents];
          }

          [v6 replaceObjectAtIndex:v7 withObject:v12];
        }

        if (v9 == ++v7)
        {
          goto LABEL_22;
        }
      }

      selfCopy = 0;
      if (!v6)
      {
        return selfCopy;
      }
    }
  }

  return selfCopy;
}

- (id)stringByRemovingPercentEscapes
{
  v2 = CFURLCreateStringByReplacingPercentEscapes(0, self, &stru_1EEEFDF90);

  return v2;
}

- (id)stringByAddingPercentEscapes
{
  v2 = CFURLCreateStringByAddingPercentEscapes(0, self, 0, 0, 0x8000100u);

  return v2;
}

- (NSString)stringByAddingPercentEncodingWithAllowedCharacters:(NSCharacterSet *)allowedCharacters
{
  v3 = _CFStringCreateByAddingPercentEncodingWithAllowedCharacters();

  return v3;
}

- (NSString)stringByAddingPercentEscapesUsingEncoding:(NSStringEncoding)enc
{
  v5 = CFStringConvertNSStringEncodingToEncoding(enc);
  if (v5 == -1)
  {
    if (enc != 134217984 && enc)
    {
      v5 = -1;
    }

    else
    {
      if (_CFExecutableLinkedOnOrAfter())
      {
        NSLog(@"Incorrect NSStringEncoding value 0x%04lX detected. Assuming NSASCIIStringEncoding. Will stop this compatibility mapping behavior in the near future.", enc);
      }

      v5 = 1536;
    }
  }

  v6 = CFURLCreateStringByAddingPercentEscapes(0, self, 0, 0, v5);

  return v6;
}

- (NSString)stringByReplacingPercentEscapesUsingEncoding:(NSStringEncoding)enc
{
  v5 = CFStringConvertNSStringEncodingToEncoding(enc);
  if (v5 == -1)
  {
    if (enc != 134217984 && enc)
    {
      v5 = -1;
    }

    else
    {
      if (_CFExecutableLinkedOnOrAfter())
      {
        NSLog(@"Incorrect NSStringEncoding value 0x%04lX detected. Assuming NSASCIIStringEncoding. Will stop this compatibility mapping behavior in the near future.", enc);
      }

      v5 = 1536;
    }
  }

  v6 = CFURLCreateStringByReplacingPercentEscapesUsingEncoding(0, self, &stru_1EEEFDF90, v5);

  return v6;
}

- (id)_web_HTTPStyleLanguageCodeWithoutRegion
{
  if ([(NSString *)self length]< 3 || [(NSString *)self characterAtIndex:2]!= 45)
  {
    return 0;
  }

  return [(NSString *)self substringToIndex:2];
}

- (NSArray)linguisticTagsInRange:(NSRange)range scheme:(NSLinguisticTagScheme)scheme options:(NSLinguisticTaggerOptions)options orthography:(NSOrthography *)orthography tokenRanges:(NSArray *)tokenRanges
{
  length = range.length;
  location = range.location;
  v14 = [NSLinguisticTagger alloc];
  v15 = -[NSLinguisticTagger initWithTagSchemes:options:](v14, "initWithTagSchemes:options:", [MEMORY[0x1E695DEC8] arrayWithObject:scheme], options);
  [(NSLinguisticTagger *)v15 setString:self];
  if (orthography)
  {
    [(NSLinguisticTagger *)v15 setOrthography:orthography range:0, [(NSString *)self length]];
  }

  return [(NSLinguisticTagger *)v15 tagsInRange:location scheme:length options:scheme tokenRanges:options, tokenRanges];
}

- (void)enumerateLinguisticTagsInRange:(NSRange)range scheme:(NSLinguisticTagScheme)scheme options:(NSLinguisticTaggerOptions)options orthography:(NSOrthography *)orthography usingBlock:(void *)block
{
  length = range.length;
  location = range.location;
  v14 = [NSLinguisticTagger alloc];
  v15 = -[NSLinguisticTagger initWithTagSchemes:options:](v14, "initWithTagSchemes:options:", [MEMORY[0x1E695DEC8] arrayWithObject:scheme], options);
  [(NSLinguisticTagger *)v15 setString:self];
  if (orthography)
  {
    [(NSLinguisticTagger *)v15 setOrthography:orthography range:0, [(NSString *)self length]];
  }

  [(NSLinguisticTagger *)v15 enumerateTagsInRange:location scheme:length options:scheme usingBlock:options, block];
}

- (_NSRange)_rangeOfRegularExpressionPattern:(id)pattern options:(unint64_t)options range:(_NSRange)range locale:(id)locale
{
  length = range.length;
  location = range.location;
  v11 = options & 1;
  if (_MergedGlobals_144 != -1)
  {
    dispatch_once(&_MergedGlobals_144, &__block_literal_global_70);
  }

  pattern = [NSString stringWithFormat:@"%lx:%@", v11, pattern];
  v13 = [qword_1ED440028 objectForKey:pattern];
  if (!v13)
  {
    v14 = [[NSRegularExpression alloc] initWithPattern:pattern options:v11 error:0];
    if (!v14)
    {
      v18 = 0x7FFFFFFFFFFFFFFFLL;
      v19 = 0;
      goto LABEL_8;
    }

    v13 = v14;
    [qword_1ED440028 setObject:v14 forKey:pattern];
  }

  v15 = [(NSRegularExpression *)v13 rangeOfFirstMatchInString:self options:(options >> 1) & 4 range:location, length];
  v17 = v16;

  v18 = v15;
  v19 = v17;
LABEL_8:
  result.length = v19;
  result.location = v18;
  return result;
}

- (id)_stringByReplacingOccurrencesOfRegularExpressionPattern:(id)pattern withTemplate:(id)template options:(unint64_t)options range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v12 = options & 1;
  if (_MergedGlobals_144 != -1)
  {
    dispatch_once(&_MergedGlobals_144, &__block_literal_global_70);
  }

  pattern = [NSString stringWithFormat:@"%lx:%@", v12, pattern];
  v14 = [qword_1ED440028 objectForKey:pattern];
  if (v14)
  {
    goto LABEL_6;
  }

  v15 = [[NSRegularExpression alloc] initWithPattern:pattern options:v12 error:0];
  if (v15)
  {
    v14 = v15;
    [qword_1ED440028 setObject:v15 forKey:pattern];
LABEL_6:
    template = [(NSRegularExpression *)v14 stringByReplacingMatchesInString:self options:(options >> 1) & 4 range:location withTemplate:length, template];

    return template;
  }

  return self;
}

- (_NSRange)significantText
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [(NSString *)self length];
  if (v3 <= 0x400)
  {
    [(NSString *)self getCharacters:v10];
    v5 = 0;
    if (v3)
    {
      while (1)
      {
        v6 = v10[v5];
        if ((v6 - 48) > 9)
        {
          break;
        }

        if (v3 == ++v5)
        {
          v5 = v3;
          break;
        }
      }

      v7 = v6 == 95;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7 + v5;
    if (v5 >= v3 - 1)
    {
      v4 = 0;
    }

    else
    {
      v3 -= v8;
      v4 = v8;
    }
  }

  else
  {
    v4 = 0;
  }

  v9 = v3;
  result.length = v9;
  result.location = v4;
  return result;
}

- (void)__graphemeCount
{
  selfCopy = self;
  v9 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x2020000000;
    v8 = 0;
    v2 = [self length];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __60__NSString_NSPersonNameComponentsFormatter____graphemeCount__block_invoke;
    v4[3] = &unk_1E69F6A68;
    v4[4] = &v5;
    [selfCopy enumerateSubstringsInRange:0 options:v2 usingBlock:{2, v4}];
    selfCopy = v6[3];
    _Block_object_dispose(&v5, 8);
  }

  return selfCopy;
}

@end