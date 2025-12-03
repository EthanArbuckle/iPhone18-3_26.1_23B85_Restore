@interface CXSetTranslatingCallAction
- (CXSetTranslatingCallAction)initWithCallUUID:(id)d isTranslating:(BOOL)translating isSystemInitiated:(BOOL)initiated localLanguage:(id)language remoteLanguage:(id)remoteLanguage;
- (CXSetTranslatingCallAction)initWithCallUUID:(id)d isTranslating:(BOOL)translating localLanguage:(id)language remoteLanguage:(id)remoteLanguage;
- (CXSetTranslatingCallAction)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)fulfillUsingTranslationEngine:(int64_t)engine;
@end

@implementation CXSetTranslatingCallAction

- (CXSetTranslatingCallAction)initWithCallUUID:(id)d isTranslating:(BOOL)translating localLanguage:(id)language remoteLanguage:(id)remoteLanguage
{
  languageCopy = language;
  remoteLanguageCopy = remoteLanguage;
  v16.receiver = self;
  v16.super_class = CXSetTranslatingCallAction;
  v13 = [(CXCallAction *)&v16 initWithCallUUID:d];
  v14 = v13;
  if (v13)
  {
    v13->_isTranslating = translating;
    objc_storeStrong(&v13->_localLanguage, language);
    objc_storeStrong(&v14->_remoteLanguage, remoteLanguage);
    v14->_isSystemInitiated = 0;
    v14->_translationEngine = 0;
  }

  return v14;
}

- (CXSetTranslatingCallAction)initWithCallUUID:(id)d isTranslating:(BOOL)translating isSystemInitiated:(BOOL)initiated localLanguage:(id)language remoteLanguage:(id)remoteLanguage
{
  languageCopy = language;
  remoteLanguageCopy = remoteLanguage;
  v18.receiver = self;
  v18.super_class = CXSetTranslatingCallAction;
  v15 = [(CXCallAction *)&v18 initWithCallUUID:d];
  v16 = v15;
  if (v15)
  {
    v15->_isTranslating = translating;
    v15->_isSystemInitiated = initiated;
    objc_storeStrong(&v15->_localLanguage, language);
    objc_storeStrong(&v16->_remoteLanguage, remoteLanguage);
    v16->_translationEngine = 0;
  }

  return v16;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v9.receiver = self;
  v9.super_class = CXSetTranslatingCallAction;
  v4 = [(CXAction *)&v9 description];
  v5 = [v3 stringWithString:v4];

  [v5 appendFormat:@" isTranslating=%d", -[CXSetTranslatingCallAction isTranslating](self, "isTranslating")];
  [v5 appendFormat:@" isSystemInitiated=%d", -[CXSetTranslatingCallAction isSystemInitiated](self, "isSystemInitiated")];
  localLanguage = [(CXSetTranslatingCallAction *)self localLanguage];
  [v5 appendFormat:@" localLanguage=%@", localLanguage];

  remoteLanguage = [(CXSetTranslatingCallAction *)self remoteLanguage];
  [v5 appendFormat:@" remoteLanguage=%@", remoteLanguage];

  [v5 appendFormat:@" translationEngine=%lu", -[CXSetTranslatingCallAction translationEngine](self, "translationEngine")];

  return v5;
}

- (CXSetTranslatingCallAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CXSetTranslatingCallAction;
  v5 = [(CXCallAction *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_isTranslating = [coderCopy decodeBoolForKey:@"isTranslating"];
    v5->_isSystemInitiated = [coderCopy decodeBoolForKey:@"isSystemInitiated"];
    v6 = [coderCopy decodeObjectForKey:@"localLanguage"];
    localLanguage = v5->_localLanguage;
    v5->_localLanguage = v6;

    v8 = [coderCopy decodeObjectForKey:@"remoteLanguage"];
    remoteLanguage = v5->_remoteLanguage;
    v5->_remoteLanguage = v8;

    v5->_translationEngine = [coderCopy decodeIntForKey:@"translationEngine"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CXSetTranslatingCallAction;
  coderCopy = coder;
  [(CXCallAction *)&v7 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:-[CXSetTranslatingCallAction isTranslating](self forKey:{"isTranslating", v7.receiver, v7.super_class), @"isTranslating"}];
  [coderCopy encodeBool:-[CXSetTranslatingCallAction isSystemInitiated](self forKey:{"isSystemInitiated"), @"isSystemInitiated"}];
  localLanguage = [(CXSetTranslatingCallAction *)self localLanguage];
  [coderCopy encodeObject:localLanguage forKey:@"localLanguage"];

  remoteLanguage = [(CXSetTranslatingCallAction *)self remoteLanguage];
  [coderCopy encodeObject:remoteLanguage forKey:@"remoteLanguage"];

  [coderCopy encodeInteger:-[CXSetTranslatingCallAction translationEngine](self forKey:{"translationEngine"), @"translationEngine"}];
}

- (void)fulfillUsingTranslationEngine:(int64_t)engine
{
  self->_translationEngine = engine;
  v3.receiver = self;
  v3.super_class = CXSetTranslatingCallAction;
  [(CXAction *)&v3 fulfill];
}

@end