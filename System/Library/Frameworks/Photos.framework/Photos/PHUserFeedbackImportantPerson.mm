@interface PHUserFeedbackImportantPerson
- (PHUserFeedbackImportantPerson)initWithPersonUUID:(id)d type:(unint64_t)type;
@end

@implementation PHUserFeedbackImportantPerson

- (PHUserFeedbackImportantPerson)initWithPersonUUID:(id)d type:(unint64_t)type
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = PHUserFeedbackImportantPerson;
  v8 = [(PHUserFeedbackImportantPerson *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_personUUID, d);
    v9->_type = type;
  }

  return v9;
}

@end