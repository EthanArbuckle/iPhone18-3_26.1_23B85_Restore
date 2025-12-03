@interface BSBuildVersion
+ (id)fromString:(id)string;
- (BOOL)isEqual:(id)equal;
- (BSBuildVersion)init;
- (BSBuildVersion)initWithString:(id)string;
- (id)description;
- (int64_t)_compareAgainstBuildVersion:(id)version withPrecision:(int64_t)precision;
- (unint64_t)hash;
@end

@implementation BSBuildVersion

- (BSBuildVersion)init
{
  v4 = _CFCopySystemVersionDictionary();
  if (!v4)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BSBuildVersion.m" lineNumber:24 description:@"System version dictionary not found."];
  }

  v5 = [v4 objectForKey:*MEMORY[0x1E695E1E8]];
  if (!v5)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"BSBuildVersion.m" lineNumber:26 description:@"System version string not found."];
  }

  v6 = [(BSBuildVersion *)self initWithString:v5];

  return v6;
}

+ (id)fromString:(id)string
{
  stringCopy = string;
  v4 = [[BSBuildVersion alloc] initWithString:stringCopy];

  return v4;
}

- (BSBuildVersion)initWithString:(id)string
{
  stringCopy = string;
  v36.receiver = self;
  v36.super_class = BSBuildVersion;
  v5 = [(BSBuildVersion *)&v36 init];
  if (!v5)
  {
    goto LABEL_17;
  }

  if ([stringCopy length] >= 1)
  {
    letterCharacterSet = [MEMORY[0x1E696AB08] letterCharacterSet];
    v7 = [stringCopy rangeOfCharacterFromSet:letterCharacterSet];
    v9 = v8;

    if (v7 != 0x7FFFFFFFFFFFFFFFLL && v9 == 1)
    {
      v10 = [stringCopy copy];
      stringRepresentation = v5->_stringRepresentation;
      v5->_stringRepresentation = v10;

      v12 = [stringCopy substringToIndex:v7];
      v5->_majorBuildNumber = [v12 integerValue];

      v13 = [stringCopy substringWithRange:{v7, 1}];
      v14 = [v13 copy];
      majorBuildLetterString = v5->_majorBuildLetterString;
      v5->_majorBuildLetterString = v14;

      v16 = [stringCopy substringFromIndex:v7 + 1];
      letterCharacterSet2 = [MEMORY[0x1E696AB08] letterCharacterSet];
      v18 = [v16 rangeOfCharacterFromSet:letterCharacterSet2];
      v20 = v19;

      if (v18 == 0x7FFFFFFFFFFFFFFFLL || v20 != 1)
      {
        if (v18 == 0x7FFFFFFFFFFFFFFFLL)
        {
          minorBuildLetterString = v5->_minorBuildLetterString;
          v5->_minorBuildLetterString = 0;

          v24 = [stringCopy substringFromIndex:v7 + 1];
          integerValue = [v24 integerValue];
          goto LABEL_14;
        }
      }

      else if (v18 == [v16 length] - 1)
      {
        v21 = [v16 substringWithRange:{v18, 1}];
        v22 = [v21 copy];
        v23 = v5->_minorBuildLetterString;
        v5->_minorBuildLetterString = v22;

        v24 = [v16 substringToIndex:v18];
        integerValue = [v24 integerValue];
LABEL_14:
        v5->_minorBuildNumber = integerValue;

        goto LABEL_16;
      }

      v5 = 0;
      goto LABEL_16;
    }

    v26 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(stringCopy, "integerValue")}];
    stringValue = [v26 stringValue];
    v28 = [stringCopy isEqual:stringValue];

    if (v28)
    {
      v29 = [stringCopy copy];
      v30 = v5->_stringRepresentation;
      v5->_stringRepresentation = v29;

      integerValue2 = [stringCopy integerValue];
      v32 = v5->_majorBuildLetterString;
      v5->_majorBuildNumber = integerValue2;
      v5->_majorBuildLetterString = 0;

      v16 = v5->_minorBuildLetterString;
      v5->_minorBuildNumber = 0;
      v5->_minorBuildLetterString = 0;
LABEL_16:

LABEL_17:
      v5 = v5;
      v33 = v5;
      goto LABEL_18;
    }
  }

  v33 = 0;
LABEL_18:

  return v33;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = v5;
      if (self->_majorBuildNumber == v5->_majorBuildNumber && self->_minorBuildNumber == v5->_minorBuildNumber)
      {
        majorBuildLetterString = self->_majorBuildLetterString;
        v8 = v6->_majorBuildLetterString;
        if (majorBuildLetterString == v8)
        {
          goto LABEL_9;
        }

        v9 = 0;
        if (!majorBuildLetterString || !v8)
        {
LABEL_16:

          goto LABEL_17;
        }

        if ([(NSString *)majorBuildLetterString isEqualToString:?])
        {
LABEL_9:
          minorBuildLetterString = self->_minorBuildLetterString;
          v11 = v6->_minorBuildLetterString;
          if (minorBuildLetterString == v11)
          {
            v9 = 1;
          }

          else
          {
            v9 = 0;
            if (minorBuildLetterString && v11)
            {
              v9 = [(NSString *)minorBuildLetterString isEqualToString:?];
            }
          }

          goto LABEL_16;
        }
      }

      v9 = 0;
      goto LABEL_16;
    }

    v9 = 0;
  }

LABEL_17:

  return v9;
}

- (unint64_t)hash
{
  v3 = +[BSHashBuilder builder];
  v4 = [v3 appendObject:self->_stringRepresentation];
  v5 = [v3 appendInteger:self->_majorBuildNumber];
  v6 = [v3 appendObject:self->_majorBuildLetterString];
  v7 = [v3 appendInteger:self->_minorBuildNumber];
  v8 = [v3 appendObject:self->_minorBuildLetterString];
  v9 = [v3 hash];

  return v9;
}

- (int64_t)_compareAgainstBuildVersion:(id)version withPrecision:(int64_t)precision
{
  versionCopy = version;
  if (!versionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BSBuildVersion.m" lineNumber:127 description:{@"Invalid parameter not satisfying: %@", @"otherBuildVersion"}];
  }

  majorBuildNumber = self->_majorBuildNumber;
  majorBuildNumber = [versionCopy majorBuildNumber];
  if (majorBuildNumber < majorBuildNumber)
  {
    v10 = -1;
  }

  else
  {
    v10 = majorBuildNumber > majorBuildNumber;
  }

  if (!v10)
  {
    if ((precision & 0xFFFFFFFFFFFFFFFDLL) != 0)
    {
LABEL_8:
      v10 = 0;
      goto LABEL_17;
    }

    majorBuildLetterString = self->_majorBuildLetterString;
    majorBuildLetterString = [versionCopy majorBuildLetterString];
    v10 = [(NSString *)majorBuildLetterString caseInsensitiveCompare:majorBuildLetterString];

    if (!(v10 | precision))
    {
      minorBuildNumber = self->_minorBuildNumber;
      minorBuildNumber = [versionCopy minorBuildNumber];
      v10 = minorBuildNumber < minorBuildNumber ? -1 : minorBuildNumber > minorBuildNumber;
      if (!v10)
      {
        if (self->_minorBuildLetterString || ([versionCopy minorBuildLetterString], v15 = objc_claimAutoreleasedReturnValue(), v15, v15))
        {
          minorBuildLetterString = [(BSBuildVersion *)self minorBuildLetterString];
          minorBuildLetterString2 = [versionCopy minorBuildLetterString];
          v10 = [minorBuildLetterString caseInsensitiveCompare:minorBuildLetterString2];

          goto LABEL_17;
        }

        goto LABEL_8;
      }
    }
  }

LABEL_17:

  return v10;
}

- (id)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  [v3 appendString:self->_stringRepresentation withName:0];
  v4 = [v3 appendInteger:self->_majorBuildNumber withName:@"majorNumber"];
  [v3 appendString:self->_majorBuildLetterString withName:@"majorLetter"];
  v5 = [v3 appendInteger:self->_minorBuildNumber withName:@"minorNumber"];
  [v3 appendString:self->_minorBuildLetterString withName:@"minorLetter" skipIfEmpty:1];
  build = [v3 build];

  return build;
}

@end