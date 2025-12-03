@interface PDDeletedObjectSurveyID
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
- (PDDeletedObjectSurveyID)initWithDatabaseRow:(id)row;
- (void)bindTo:(id)to;
@end

@implementation PDDeletedObjectSurveyID

- (PDDeletedObjectSurveyID)initWithDatabaseRow:(id)row
{
  rowCopy = row;
  v11.receiver = self;
  v11.super_class = PDDeletedObjectSurveyID;
  v5 = [(PDDeletedObjectSurveyID *)&v11 init];
  if (v5)
  {
    v6 = sub_10016D778(rowCopy, @"objectID");
    objectID = v5->_objectID;
    v5->_objectID = v6;

    v8 = sub_10016D778(rowCopy, @"surveyID");
    surveyID = v5->_surveyID;
    v5->_surveyID = v8;
  }

  return v5;
}

- (void)bindTo:(id)to
{
  objectID = self->_objectID;
  toCopy = to;
  sub_1000982FC(toCopy, objectID, @"objectID");
  sub_1000982FC(toCopy, self->_surveyID, @"surveyID");
}

+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database
{
  databaseCopy = database;
  v8 = databaseCopy;
  if (!version)
  {
    if (!sub_1000B9298(databaseCopy, @"create table PDDeletedObjectSurveyID (\n    objectID text not null,\n    surveyID text not null\n)\n", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index PDDeletedObjectSurveyID_objectID on PDDeletedObjectSurveyID (objectID)", 0, 0, 0))
    {
      v9 = 0;
      goto LABEL_7;
    }

    version = 1;
  }

  *finalVersion = version;
  v9 = 1;
LABEL_7:

  return v9;
}

@end