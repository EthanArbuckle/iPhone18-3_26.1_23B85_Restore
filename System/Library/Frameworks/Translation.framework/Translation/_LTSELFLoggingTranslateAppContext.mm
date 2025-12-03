@interface _LTSELFLoggingTranslateAppContext
- (_LTSELFLoggingTranslateAppContext)initWithCoder:(id)coder;
- (_LTSELFLoggingTranslateAppContext)initWithDisplayMode:(int64_t)mode localePair:(id)pair isGenderAlternativeEnabled:(BOOL)enabled tabName:(int64_t)name tabSessionId:(id)id conversationTabView:(int64_t)view isPlayTranslationsEnabled:(BOOL)translationsEnabled autoTranslateSessionId:(id)self0 audioChannel:(int64_t)self1 languageIdentificationEnabled:(BOOL)self2;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _LTSELFLoggingTranslateAppContext

- (_LTSELFLoggingTranslateAppContext)initWithDisplayMode:(int64_t)mode localePair:(id)pair isGenderAlternativeEnabled:(BOOL)enabled tabName:(int64_t)name tabSessionId:(id)id conversationTabView:(int64_t)view isPlayTranslationsEnabled:(BOOL)translationsEnabled autoTranslateSessionId:(id)self0 audioChannel:(int64_t)self1 languageIdentificationEnabled:(BOOL)self2
{
  pairCopy = pair;
  idCopy = id;
  sessionIdCopy = sessionId;
  v26.receiver = self;
  v26.super_class = _LTSELFLoggingTranslateAppContext;
  v21 = [(_LTSELFLoggingTranslateAppContext *)&v26 init];
  v22 = v21;
  if (v21)
  {
    v21->_displayMode = mode;
    objc_storeStrong(&v21->_localePair, pair);
    v22->_isGenderAlternativeEnabled = enabled;
    v22->_tabName = name;
    objc_storeStrong(&v22->_tabSessionId, id);
    v22->_conversationTabView = view;
    v22->_isPlayTranslationsEnabled = translationsEnabled;
    objc_storeStrong(&v22->_autoTranslateSessionId, sessionId);
    v22->_audioChannel = channel;
    v22->_languageIdentificationEnabled = identificationEnabled;
    v23 = v22;
  }

  return v22;
}

- (void)encodeWithCoder:(id)coder
{
  displayMode = self->_displayMode;
  coderCopy = coder;
  [coderCopy encodeInteger:displayMode forKey:@"displayMode"];
  [coderCopy encodeObject:self->_localePair forKey:@"localePair"];
  [coderCopy encodeBool:self->_isGenderAlternativeEnabled forKey:@"isGenderAlternativeEnabled"];
  [coderCopy encodeInteger:self->_tabName forKey:@"tabName"];
  [coderCopy encodeObject:self->_tabSessionId forKey:@"tabSessionId"];
  [coderCopy encodeInteger:self->_conversationTabView forKey:@"conversationTabView"];
  [coderCopy encodeBool:self->_isPlayTranslationsEnabled forKey:@"isPlayTranslationsEnabled"];
  [coderCopy encodeObject:self->_autoTranslateSessionId forKey:@"autoTranslateSessionId"];
  [coderCopy encodeInteger:self->_audioChannel forKey:@"audioChannel"];
  [coderCopy encodeBool:self->_languageIdentificationEnabled forKey:@"languageIdentificationEnabled"];
}

- (_LTSELFLoggingTranslateAppContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = _LTSELFLoggingTranslateAppContext;
  v5 = [(_LTSELFLoggingTranslateAppContext *)&v14 init];
  if (v5)
  {
    v5->_displayMode = [coderCopy decodeIntegerForKey:@"displayMode"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localePair"];
    localePair = v5->_localePair;
    v5->_localePair = v6;

    v5->_isGenderAlternativeEnabled = [coderCopy decodeBoolForKey:@"isGenderAlternativeEnabled"];
    v5->_tabName = [coderCopy decodeIntegerForKey:@"tabName"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tabSessionId"];
    tabSessionId = v5->_tabSessionId;
    v5->_tabSessionId = v8;

    v5->_conversationTabView = [coderCopy decodeIntegerForKey:@"conversationTabView"];
    v5->_isPlayTranslationsEnabled = [coderCopy decodeBoolForKey:@"isPlayTranslationsEnabled"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"autoTranslateSessionId"];
    autoTranslateSessionId = v5->_autoTranslateSessionId;
    v5->_autoTranslateSessionId = v10;

    v5->_audioChannel = [coderCopy decodeIntegerForKey:@"audioChannel"];
    v5->_languageIdentificationEnabled = [coderCopy decodeBoolForKey:@"languageIdentificationEnabled"];
    v12 = v5;
  }

  return v5;
}

@end