@interface _LTSELFLoggingTranslationLIDData
- (_LTSELFLoggingTranslationLIDData)initWithCoder:(id)a3;
- (_LTSELFLoggingTranslationLIDData)initWithInvocationId:(id)a3 inputSource:(int64_t)a4 topLocale:(id)a5 lowConfidenceLocales:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _LTSELFLoggingTranslationLIDData

- (_LTSELFLoggingTranslationLIDData)initWithInvocationId:(id)a3 inputSource:(int64_t)a4 topLocale:(id)a5 lowConfidenceLocales:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v18.receiver = self;
  v18.super_class = _LTSELFLoggingTranslationLIDData;
  v14 = [(_LTSELFLoggingTranslationLIDData *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_invocationId, a3);
    v15->_inputSource = a4;
    objc_storeStrong(&v15->_topLocale, a5);
    objc_storeStrong(&v15->_lowConfidenceLocales, a6);
    v16 = v15;
  }

  return v15;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_LTSELFLoggingTranslationLIDData alloc];
  v5 = [(_LTSELFLoggingTranslationLIDData *)self invocationId];
  v6 = [(_LTSELFLoggingTranslationLIDData *)self inputSource];
  v7 = [(_LTSELFLoggingTranslationLIDData *)self topLocale];
  v8 = [(_LTSELFLoggingTranslationLIDData *)self lowConfidenceLocales];
  v9 = [(_LTSELFLoggingTranslationLIDData *)v4 initWithInvocationId:v5 inputSource:v6 topLocale:v7 lowConfidenceLocales:v8];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  invocationId = self->_invocationId;
  v5 = a3;
  [v5 encodeObject:invocationId forKey:@"invocationId"];
  [v5 encodeInteger:self->_inputSource forKey:@"inputSource"];
  [v5 encodeObject:self->_topLocale forKey:@"topLocale"];
  [v5 encodeObject:self->_lowConfidenceLocales forKey:@"lowConfidenceLocales"];
}

- (_LTSELFLoggingTranslationLIDData)initWithCoder:(id)a3
{
  v19[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18.receiver = self;
  v18.super_class = _LTSELFLoggingTranslationLIDData;
  v5 = [(_LTSELFLoggingTranslationLIDData *)&v18 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v19[0] = objc_opt_class();
    v19[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
    v8 = [v6 setWithArray:v7];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"invocationId"];
    invocationId = v5->_invocationId;
    v5->_invocationId = v9;

    v5->_inputSource = [v4 decodeIntegerForKey:@"inputSource"];
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"topLocale"];
    topLocale = v5->_topLocale;
    v5->_topLocale = v11;

    v13 = [v4 decodeObjectOfClasses:v8 forKey:@"lowConfidenceLocales"];
    lowConfidenceLocales = v5->_lowConfidenceLocales;
    v5->_lowConfidenceLocales = v13;

    v15 = v5;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

@end