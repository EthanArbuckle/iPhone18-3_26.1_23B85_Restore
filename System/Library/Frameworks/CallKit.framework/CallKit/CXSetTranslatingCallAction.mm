@interface CXSetTranslatingCallAction
- (CXSetTranslatingCallAction)initWithCallUUID:(id)a3 isTranslating:(BOOL)a4 isSystemInitiated:(BOOL)a5 localLanguage:(id)a6 remoteLanguage:(id)a7;
- (CXSetTranslatingCallAction)initWithCallUUID:(id)a3 isTranslating:(BOOL)a4 localLanguage:(id)a5 remoteLanguage:(id)a6;
- (CXSetTranslatingCallAction)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)fulfillUsingTranslationEngine:(int64_t)a3;
@end

@implementation CXSetTranslatingCallAction

- (CXSetTranslatingCallAction)initWithCallUUID:(id)a3 isTranslating:(BOOL)a4 localLanguage:(id)a5 remoteLanguage:(id)a6
{
  v11 = a5;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = CXSetTranslatingCallAction;
  v13 = [(CXCallAction *)&v16 initWithCallUUID:a3];
  v14 = v13;
  if (v13)
  {
    v13->_isTranslating = a4;
    objc_storeStrong(&v13->_localLanguage, a5);
    objc_storeStrong(&v14->_remoteLanguage, a6);
    v14->_isSystemInitiated = 0;
    v14->_translationEngine = 0;
  }

  return v14;
}

- (CXSetTranslatingCallAction)initWithCallUUID:(id)a3 isTranslating:(BOOL)a4 isSystemInitiated:(BOOL)a5 localLanguage:(id)a6 remoteLanguage:(id)a7
{
  v13 = a6;
  v14 = a7;
  v18.receiver = self;
  v18.super_class = CXSetTranslatingCallAction;
  v15 = [(CXCallAction *)&v18 initWithCallUUID:a3];
  v16 = v15;
  if (v15)
  {
    v15->_isTranslating = a4;
    v15->_isSystemInitiated = a5;
    objc_storeStrong(&v15->_localLanguage, a6);
    objc_storeStrong(&v16->_remoteLanguage, a7);
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
  v6 = [(CXSetTranslatingCallAction *)self localLanguage];
  [v5 appendFormat:@" localLanguage=%@", v6];

  v7 = [(CXSetTranslatingCallAction *)self remoteLanguage];
  [v5 appendFormat:@" remoteLanguage=%@", v7];

  [v5 appendFormat:@" translationEngine=%lu", -[CXSetTranslatingCallAction translationEngine](self, "translationEngine")];

  return v5;
}

- (CXSetTranslatingCallAction)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CXSetTranslatingCallAction;
  v5 = [(CXCallAction *)&v11 initWithCoder:v4];
  if (v5)
  {
    v5->_isTranslating = [v4 decodeBoolForKey:@"isTranslating"];
    v5->_isSystemInitiated = [v4 decodeBoolForKey:@"isSystemInitiated"];
    v6 = [v4 decodeObjectForKey:@"localLanguage"];
    localLanguage = v5->_localLanguage;
    v5->_localLanguage = v6;

    v8 = [v4 decodeObjectForKey:@"remoteLanguage"];
    remoteLanguage = v5->_remoteLanguage;
    v5->_remoteLanguage = v8;

    v5->_translationEngine = [v4 decodeIntForKey:@"translationEngine"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = CXSetTranslatingCallAction;
  v4 = a3;
  [(CXCallAction *)&v7 encodeWithCoder:v4];
  [v4 encodeBool:-[CXSetTranslatingCallAction isTranslating](self forKey:{"isTranslating", v7.receiver, v7.super_class), @"isTranslating"}];
  [v4 encodeBool:-[CXSetTranslatingCallAction isSystemInitiated](self forKey:{"isSystemInitiated"), @"isSystemInitiated"}];
  v5 = [(CXSetTranslatingCallAction *)self localLanguage];
  [v4 encodeObject:v5 forKey:@"localLanguage"];

  v6 = [(CXSetTranslatingCallAction *)self remoteLanguage];
  [v4 encodeObject:v6 forKey:@"remoteLanguage"];

  [v4 encodeInteger:-[CXSetTranslatingCallAction translationEngine](self forKey:{"translationEngine"), @"translationEngine"}];
}

- (void)fulfillUsingTranslationEngine:(int64_t)a3
{
  self->_translationEngine = a3;
  v3.receiver = self;
  v3.super_class = CXSetTranslatingCallAction;
  [(CXAction *)&v3 fulfill];
}

@end