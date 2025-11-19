@interface _SFLanguageDetectorOptions
- (BOOL)isEqual:(id)a3;
- (_SFLanguageDetectorOptions)initWithCoder:(id)a3;
- (_SFLanguageDetectorOptions)initWithLanguageConstraints:(id)a3 alternativesCount:(int64_t)a4 resultReportingFrequency:(int64_t)a5 useVAD:(BOOL)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _SFLanguageDetectorOptions

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    if ([(_SFLanguageDetectorOptions *)v4 isMemberOfClass:objc_opt_class()])
    {
      v5 = v4;
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

- (_SFLanguageDetectorOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _SFLanguageDetectorOptions;
  v5 = [(_SFLanguageDetectorOptions *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"_languageConstraints"];
    languageConstraints = v5->_languageConstraints;
    v5->_languageConstraints = v6;

    v5->_alternativesCount = [v4 decodeIntegerForKey:@"_alternativesCount"];
    v5->_resultReportingFrequency = [v4 decodeIntegerForKey:@"_resultReportingFrequency"];
    v5->_useVAD = [v4 decodeBoolForKey:@"_useVAD"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  languageConstraints = self->_languageConstraints;
  v5 = a3;
  [v5 encodeObject:languageConstraints forKey:@"_languageConstraints"];
  [v5 encodeInteger:self->_alternativesCount forKey:@"_alternativesCount"];
  [v5 encodeInteger:self->_resultReportingFrequency forKey:@"_resultReportingFrequency"];
  [v5 encodeBool:self->_useVAD forKey:@"_useVAD"];
}

- (_SFLanguageDetectorOptions)initWithLanguageConstraints:(id)a3 alternativesCount:(int64_t)a4 resultReportingFrequency:(int64_t)a5 useVAD:(BOOL)a6
{
  v10 = a3;
  v15.receiver = self;
  v15.super_class = _SFLanguageDetectorOptions;
  v11 = [(_SFLanguageDetectorOptions *)&v15 init];
  if (v11)
  {
    v12 = [v10 copy];
    languageConstraints = v11->_languageConstraints;
    v11->_languageConstraints = v12;

    v11->_alternativesCount = a4;
    v11->_resultReportingFrequency = a5;
    v11->_useVAD = a6;
  }

  return v11;
}

@end