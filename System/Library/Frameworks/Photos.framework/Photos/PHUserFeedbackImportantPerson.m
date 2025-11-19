@interface PHUserFeedbackImportantPerson
- (PHUserFeedbackImportantPerson)initWithPersonUUID:(id)a3 type:(unint64_t)a4;
@end

@implementation PHUserFeedbackImportantPerson

- (PHUserFeedbackImportantPerson)initWithPersonUUID:(id)a3 type:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PHUserFeedbackImportantPerson;
  v8 = [(PHUserFeedbackImportantPerson *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_personUUID, a3);
    v9->_type = a4;
  }

  return v9;
}

@end