@interface _LTSELFLoggingTranslateAppContext
- (_LTSELFLoggingTranslateAppContext)initWithCoder:(id)a3;
- (_LTSELFLoggingTranslateAppContext)initWithDisplayMode:(int64_t)a3 localePair:(id)a4 isGenderAlternativeEnabled:(BOOL)a5 tabName:(int64_t)a6 tabSessionId:(id)a7 conversationTabView:(int64_t)a8 isPlayTranslationsEnabled:(BOOL)a9 autoTranslateSessionId:(id)a10 audioChannel:(int64_t)a11 languageIdentificationEnabled:(BOOL)a12;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _LTSELFLoggingTranslateAppContext

- (_LTSELFLoggingTranslateAppContext)initWithDisplayMode:(int64_t)a3 localePair:(id)a4 isGenderAlternativeEnabled:(BOOL)a5 tabName:(int64_t)a6 tabSessionId:(id)a7 conversationTabView:(int64_t)a8 isPlayTranslationsEnabled:(BOOL)a9 autoTranslateSessionId:(id)a10 audioChannel:(int64_t)a11 languageIdentificationEnabled:(BOOL)a12
{
  v18 = a4;
  v19 = a7;
  v20 = a10;
  v26.receiver = self;
  v26.super_class = _LTSELFLoggingTranslateAppContext;
  v21 = [(_LTSELFLoggingTranslateAppContext *)&v26 init];
  v22 = v21;
  if (v21)
  {
    v21->_displayMode = a3;
    objc_storeStrong(&v21->_localePair, a4);
    v22->_isGenderAlternativeEnabled = a5;
    v22->_tabName = a6;
    objc_storeStrong(&v22->_tabSessionId, a7);
    v22->_conversationTabView = a8;
    v22->_isPlayTranslationsEnabled = a9;
    objc_storeStrong(&v22->_autoTranslateSessionId, a10);
    v22->_audioChannel = a11;
    v22->_languageIdentificationEnabled = a12;
    v23 = v22;
  }

  return v22;
}

- (void)encodeWithCoder:(id)a3
{
  displayMode = self->_displayMode;
  v5 = a3;
  [v5 encodeInteger:displayMode forKey:@"displayMode"];
  [v5 encodeObject:self->_localePair forKey:@"localePair"];
  [v5 encodeBool:self->_isGenderAlternativeEnabled forKey:@"isGenderAlternativeEnabled"];
  [v5 encodeInteger:self->_tabName forKey:@"tabName"];
  [v5 encodeObject:self->_tabSessionId forKey:@"tabSessionId"];
  [v5 encodeInteger:self->_conversationTabView forKey:@"conversationTabView"];
  [v5 encodeBool:self->_isPlayTranslationsEnabled forKey:@"isPlayTranslationsEnabled"];
  [v5 encodeObject:self->_autoTranslateSessionId forKey:@"autoTranslateSessionId"];
  [v5 encodeInteger:self->_audioChannel forKey:@"audioChannel"];
  [v5 encodeBool:self->_languageIdentificationEnabled forKey:@"languageIdentificationEnabled"];
}

- (_LTSELFLoggingTranslateAppContext)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = _LTSELFLoggingTranslateAppContext;
  v5 = [(_LTSELFLoggingTranslateAppContext *)&v14 init];
  if (v5)
  {
    v5->_displayMode = [v4 decodeIntegerForKey:@"displayMode"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localePair"];
    localePair = v5->_localePair;
    v5->_localePair = v6;

    v5->_isGenderAlternativeEnabled = [v4 decodeBoolForKey:@"isGenderAlternativeEnabled"];
    v5->_tabName = [v4 decodeIntegerForKey:@"tabName"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tabSessionId"];
    tabSessionId = v5->_tabSessionId;
    v5->_tabSessionId = v8;

    v5->_conversationTabView = [v4 decodeIntegerForKey:@"conversationTabView"];
    v5->_isPlayTranslationsEnabled = [v4 decodeBoolForKey:@"isPlayTranslationsEnabled"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"autoTranslateSessionId"];
    autoTranslateSessionId = v5->_autoTranslateSessionId;
    v5->_autoTranslateSessionId = v10;

    v5->_audioChannel = [v4 decodeIntegerForKey:@"audioChannel"];
    v5->_languageIdentificationEnabled = [v4 decodeBoolForKey:@"languageIdentificationEnabled"];
    v12 = v5;
  }

  return v5;
}

@end