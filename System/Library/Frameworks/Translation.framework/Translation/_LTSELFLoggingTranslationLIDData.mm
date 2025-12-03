@interface _LTSELFLoggingTranslationLIDData
- (_LTSELFLoggingTranslationLIDData)initWithCoder:(id)coder;
- (_LTSELFLoggingTranslationLIDData)initWithInvocationId:(id)id inputSource:(int64_t)source topLocale:(id)locale lowConfidenceLocales:(id)locales;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _LTSELFLoggingTranslationLIDData

- (_LTSELFLoggingTranslationLIDData)initWithInvocationId:(id)id inputSource:(int64_t)source topLocale:(id)locale lowConfidenceLocales:(id)locales
{
  idCopy = id;
  localeCopy = locale;
  localesCopy = locales;
  v18.receiver = self;
  v18.super_class = _LTSELFLoggingTranslationLIDData;
  v14 = [(_LTSELFLoggingTranslationLIDData *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_invocationId, id);
    v15->_inputSource = source;
    objc_storeStrong(&v15->_topLocale, locale);
    objc_storeStrong(&v15->_lowConfidenceLocales, locales);
    v16 = v15;
  }

  return v15;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_LTSELFLoggingTranslationLIDData alloc];
  invocationId = [(_LTSELFLoggingTranslationLIDData *)self invocationId];
  inputSource = [(_LTSELFLoggingTranslationLIDData *)self inputSource];
  topLocale = [(_LTSELFLoggingTranslationLIDData *)self topLocale];
  lowConfidenceLocales = [(_LTSELFLoggingTranslationLIDData *)self lowConfidenceLocales];
  v9 = [(_LTSELFLoggingTranslationLIDData *)v4 initWithInvocationId:invocationId inputSource:inputSource topLocale:topLocale lowConfidenceLocales:lowConfidenceLocales];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  invocationId = self->_invocationId;
  coderCopy = coder;
  [coderCopy encodeObject:invocationId forKey:@"invocationId"];
  [coderCopy encodeInteger:self->_inputSource forKey:@"inputSource"];
  [coderCopy encodeObject:self->_topLocale forKey:@"topLocale"];
  [coderCopy encodeObject:self->_lowConfidenceLocales forKey:@"lowConfidenceLocales"];
}

- (_LTSELFLoggingTranslationLIDData)initWithCoder:(id)coder
{
  v19[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
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

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"invocationId"];
    invocationId = v5->_invocationId;
    v5->_invocationId = v9;

    v5->_inputSource = [coderCopy decodeIntegerForKey:@"inputSource"];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"topLocale"];
    topLocale = v5->_topLocale;
    v5->_topLocale = v11;

    v13 = [coderCopy decodeObjectOfClasses:v8 forKey:@"lowConfidenceLocales"];
    lowConfidenceLocales = v5->_lowConfidenceLocales;
    v5->_lowConfidenceLocales = v13;

    v15 = v5;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

@end