@interface _SFLanguageDetectorOptions
- (BOOL)isEqual:(id)equal;
- (_SFLanguageDetectorOptions)initWithCoder:(id)coder;
- (_SFLanguageDetectorOptions)initWithLanguageConstraints:(id)constraints alternativesCount:(int64_t)count resultReportingFrequency:(int64_t)frequency useVAD:(BOOL)d;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _SFLanguageDetectorOptions

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    if ([(_SFLanguageDetectorOptions *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v5 = equalCopy;
      languageConstraints = self->_languageConstraints;
      if (languageConstraints | v5->_languageConstraints)
      {
        v9 = [(NSArray *)languageConstraints isEqualToArray:?];
        v7 = self->_resultReportingFrequency == v5->_resultReportingFrequency;
        if (!v9)
        {
          v8 = 0;
LABEL_12:

          goto LABEL_13;
        }
      }

      else
      {
        v7 = self->_resultReportingFrequency == v5->_resultReportingFrequency;
      }

      v8 = 0;
      if (self->_alternativesCount == v5->_alternativesCount && v7)
      {
        v8 = self->_useVAD == v5->_useVAD;
      }

      goto LABEL_12;
    }

    v8 = 0;
  }

LABEL_13:

  return v8;
}

- (_SFLanguageDetectorOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = _SFLanguageDetectorOptions;
  v5 = [(_SFLanguageDetectorOptions *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"_languageConstraints"];
    languageConstraints = v5->_languageConstraints;
    v5->_languageConstraints = v6;

    v5->_alternativesCount = [coderCopy decodeIntegerForKey:@"_alternativesCount"];
    v5->_resultReportingFrequency = [coderCopy decodeIntegerForKey:@"_resultReportingFrequency"];
    v5->_useVAD = [coderCopy decodeBoolForKey:@"_useVAD"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  languageConstraints = self->_languageConstraints;
  coderCopy = coder;
  [coderCopy encodeObject:languageConstraints forKey:@"_languageConstraints"];
  [coderCopy encodeInteger:self->_alternativesCount forKey:@"_alternativesCount"];
  [coderCopy encodeInteger:self->_resultReportingFrequency forKey:@"_resultReportingFrequency"];
  [coderCopy encodeBool:self->_useVAD forKey:@"_useVAD"];
}

- (_SFLanguageDetectorOptions)initWithLanguageConstraints:(id)constraints alternativesCount:(int64_t)count resultReportingFrequency:(int64_t)frequency useVAD:(BOOL)d
{
  constraintsCopy = constraints;
  v15.receiver = self;
  v15.super_class = _SFLanguageDetectorOptions;
  v11 = [(_SFLanguageDetectorOptions *)&v15 init];
  if (v11)
  {
    v12 = [constraintsCopy copy];
    languageConstraints = v11->_languageConstraints;
    v11->_languageConstraints = v12;

    v11->_alternativesCount = count;
    v11->_resultReportingFrequency = frequency;
    v11->_useVAD = d;
  }

  return v11;
}

@end