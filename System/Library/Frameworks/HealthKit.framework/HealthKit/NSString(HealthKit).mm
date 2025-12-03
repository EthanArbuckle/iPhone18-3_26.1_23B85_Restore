@interface NSString(HealthKit)
+ (id)hk_randomStringOfLength:()HealthKit;
- (BOOL)hk_isBase64;
- (BOOL)hk_isValidPurposeString;
- (id)hk_MD5Hash;
- (id)hk_MD5HashAsUUID;
- (id)hk_SHA224Hash;
- (id)hk_SHA256Hash;
- (id)hk_SHA384Hash;
- (id)hk_SHA512Hash;
- (id)hk_copyNonEmptyString;
- (id)hk_firstWordCapitalizedStringWithLocale:()HealthKit;
- (id)hk_localizedFirstWordCapitalizedString;
- (id)hk_stringByAppendingKeyPathComponent:()HealthKit;
- (id)hk_stringByRemovingCharactersInSet:()HealthKit;
- (id)hk_stringByReplacingSpacesWithString:()HealthKit;
- (id)hk_stringByUnescapingJSONCharactersForDisplay;
- (id)hk_stringIndentedBy:()HealthKit prefix:;
- (id)hk_stripLeadingTrailingWhitespace;
- (id)hk_trimWhitespaceAndNewlines;
- (void)hk_compareBuildVersionWithString:()HealthKit;
- (void)hk_isBetweenLowerBuildVersion:()HealthKit upperBuildVersion:;
@end

@implementation NSString(HealthKit)

- (id)hk_copyNonEmptyString
{
  v2 = [self length];
  if (v2)
  {
    v2 = [self copy];
  }

  return v2;
}

- (BOOL)hk_isValidPurposeString
{
  alphanumericCharacterSet = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
  invertedSet = [alphanumericCharacterSet invertedSet];
  v4 = [self hk_stringByRemovingCharactersInSet:invertedSet];

  v5 = [v4 length] > 0xB;
  return v5;
}

- (id)hk_stripLeadingTrailingWhitespace
{
  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v3 = [self stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  return v3;
}

- (id)hk_trimWhitespaceAndNewlines
{
  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v3 = [self stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  return v3;
}

- (id)hk_stringByRemovingCharactersInSet:()HealthKit
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [self componentsSeparatedByCharactersInSet:{v4, 0}];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v5 appendString:*(*(&v13 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)hk_stringByReplacingSpacesWithString:()HealthKit
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  selfCopy = self;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [&unk_1F0686B80 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      v10 = selfCopy;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(&unk_1F0686B80);
        }

        selfCopy = [v10 stringByReplacingOccurrencesOfString:*(*(&v13 + 1) + 8 * v9) withString:v4];

        ++v9;
        v10 = selfCopy;
      }

      while (v7 != v9);
      v7 = [&unk_1F0686B80 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];

  return selfCopy;
}

- (id)hk_stringByUnescapingJSONCharactersForDisplay
{
  v1 = [self stringByReplacingOccurrencesOfString:@"\\/" withString:@"/"];
  v2 = [v1 stringByReplacingOccurrencesOfString:@"\\\ withString:@"\];

  return v2;
}

- (id)hk_stringByAppendingKeyPathComponent:()HealthKit
{
  v4 = MEMORY[0x1E696AB08];
  v5 = a3;
  v6 = [v4 characterSetWithCharactersInString:@"."];
  v7 = [self stringByTrimmingCharactersInSet:v6];
  v8 = [v5 stringByTrimmingCharactersInSet:v6];

  if ([v7 isEqualToString:&stru_1F05FF230])
  {
    v9 = v8;
  }

  else
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, v8];
  }

  v10 = v9;

  return v10;
}

- (id)hk_firstWordCapitalizedStringWithLocale:()HealthKit
{
  v4 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3010000000;
  v20 = &unk_191E0EA3D;
  v21 = xmmword_191DCD770;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__43;
  v15 = __Block_byref_object_dispose__43;
  v16 = 0;
  v5 = [self length];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__NSString_HealthKit__hk_firstWordCapitalizedStringWithLocale___block_invoke;
  v10[3] = &unk_1E7381E20;
  v10[4] = &v17;
  v10[5] = &v11;
  [self enumerateSubstringsInRange:0 options:v5 usingBlock:{3, v10}];
  v6 = v18;
  if (v18[4] == 0x7FFFFFFFFFFFFFFFLL)
  {
    selfCopy = self;
  }

  else
  {
    v8 = [v12[5] capitalizedStringWithLocale:v4];
    selfCopy = [self stringByReplacingCharactersInRange:v6[4] withString:{v6[5], v8}];
  }

  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);

  return selfCopy;
}

- (id)hk_localizedFirstWordCapitalizedString
{
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v3 = [self hk_firstWordCapitalizedStringWithLocale:currentLocale];

  return v3;
}

- (BOOL)hk_isBase64
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = [self length];
  if ((v2 & 3) != 0)
  {
    result = 0;
  }

  else
  {
    v5 = v2;
    if (v2)
    {
      MEMORY[0x1EEE9AC00](v2, v3);
      v7 = v12 - ((v6 + 17) & 0xFFFFFFFFFFFFFFF0);
      [self getCharacters:v7 range:{0, v5}];
      v8 = (v7 + 2);
      while (1)
      {
        v9 = *(v8 - 1);
        v10 = (v9 - 48) >= 0xA && (v9 - 97) >= 0x1A;
        if (v10 && (v9 - 65) >= 0x1A && (v9 & 0xFFFFFFFB) != 0x2B)
        {
          break;
        }

        ++v8;
        if (!--v5)
        {
          goto LABEL_13;
        }
      }

      if (v9 != 61)
      {
        goto LABEL_19;
      }

      if (v5 == 1)
      {
LABEL_13:
        result = 1;
        goto LABEL_20;
      }

      if (v5 == 2)
      {
        result = *v8 == 61;
      }

      else
      {
LABEL_19:
        result = 0;
      }
    }

    else
    {
      result = 1;
    }
  }

LABEL_20:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)hk_stringIndentedBy:()HealthKit prefix:
{
  v5 = &stru_1F05FF230;
  if (a4)
  {
    v5 = a4;
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%*s", v5, a3, ""];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n%@", v6];
  v8 = [self stringByReplacingOccurrencesOfString:@"\n" withString:v7];
  v9 = [v6 stringByAppendingString:v8];

  return v9;
}

- (void)hk_compareBuildVersionWithString:()HealthKit
{
  selfCopy = self;
  v6 = a3;
  [self UTF8String];
  [v6 UTF8String];

  HKCompareBuildVersionStrings();
}

- (void)hk_isBetweenLowerBuildVersion:()HealthKit upperBuildVersion:
{
  v6 = a4;
  selfCopy = self;
  v8 = a3;
  [self UTF8String];
  [v8 UTF8String];

  HKCompareBuildVersionStrings();
}

+ (id)hk_randomStringOfLength:()HealthKit
{
  if (a3 < 0)
  {
    [(NSString(HealthKit) *)a2 hk_randomStringOfLength:self];
  }

  v4 = [MEMORY[0x1E695DEF0] hk_randomDataOfLength:vcvtpd_s64_f64(a3 * 0.75)];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 base64EncodedStringWithOptions:0];
    v7 = [v6 substringToIndex:a3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)hk_SHA224Hash
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = [self dataUsingEncoding:4];
  CC_SHA224([v1 bytes], objc_msgSend(v1, "length"), md);
  v2 = [MEMORY[0x1E696AD60] stringWithCapacity:56];
  for (i = 0; i != 28; ++i)
  {
    [v2 appendFormat:@"%02x", md[i]];
  }

  v4 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)hk_SHA256Hash
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = [self dataUsingEncoding:4];
  CC_SHA256([v1 bytes], objc_msgSend(v1, "length"), md);
  v2 = [MEMORY[0x1E696AD60] stringWithCapacity:64];
  for (i = 0; i != 32; ++i)
  {
    [v2 appendFormat:@"%02x", md[i]];
  }

  v4 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)hk_SHA384Hash
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = [self dataUsingEncoding:4];
  CC_SHA384([v1 bytes], objc_msgSend(v1, "length"), md);
  v2 = [MEMORY[0x1E696AD60] stringWithCapacity:96];
  for (i = 0; i != 48; ++i)
  {
    [v2 appendFormat:@"%02x", md[i]];
  }

  v4 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)hk_SHA512Hash
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = [self dataUsingEncoding:4];
  CC_SHA512([v1 bytes], objc_msgSend(v1, "length"), md);
  v2 = [MEMORY[0x1E696AD60] stringWithCapacity:128];
  for (i = 0; i != 64; ++i)
  {
    [v2 appendFormat:@"%02x", md[i]];
  }

  v4 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)hk_MD5Hash
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = [self dataUsingEncoding:4];
  CC_MD5([v1 bytes], objc_msgSend(v1, "length"), md);
  v2 = [MEMORY[0x1E696AD60] stringWithCapacity:32];
  for (i = 0; i != 16; ++i)
  {
    [v2 appendFormat:@"%02x", md[i]];
  }

  v4 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)hk_MD5HashAsUUID
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = [self cStringUsingEncoding:4];
  v3 = [MEMORY[0x1E695DEF0] dataWithBytes:v2 length:{objc_msgSend(self, "length")}];
  CC_MD5([v3 bytes], objc_msgSend(v3, "length"), md);
  v4 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:md];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (void)hk_randomStringOfLength:()HealthKit .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"NSString+HealthKit.m" lineNumber:168 description:{@"Invalid parameter not satisfying: %@", @"length >= 0"}];
}

@end