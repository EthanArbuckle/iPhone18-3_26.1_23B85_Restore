@interface PDDeletedObjectSurveyID
+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5;
- (PDDeletedObjectSurveyID)initWithDatabaseRow:(id)a3;
- (void)bindTo:(id)a3;
@end

@implementation PDDeletedObjectSurveyID

- (PDDeletedObjectSurveyID)initWithDatabaseRow:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PDDeletedObjectSurveyID;
  v5 = [(PDDeletedObjectSurveyID *)&v11 init];
  if (v5)
  {
    v6 = sub_10016D778(v4, @"objectID");
    objectID = v5->_objectID;
    v5->_objectID = v6;

    v8 = sub_10016D778(v4, @"surveyID");
    surveyID = v5->_surveyID;
    v5->_surveyID = v8;
  }

  return v5;
}

- (void)bindTo:(id)a3
{
  objectID = self->_objectID;
  v5 = a3;
  sub_1000982FC(v5, objectID, @"objectID");
  sub_1000982FC(v5, self->_surveyID, @"surveyID");
}

+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (!a3)
  {
    if (!sub_1000B9298(v7, @"create table PDDeletedObjectSurveyID (\n    objectID text not null,\n    surveyID text not null\n)\n", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index PDDeletedObjectSurveyID_objectID on PDDeletedObjectSurveyID (objectID)", 0, 0, 0))
    {
      v9 = 0;
      goto LABEL_7;
    }

    a3 = 1;
  }

  *a4 = a3;
  v9 = 1;
LABEL_7:

  return v9;
}

@end