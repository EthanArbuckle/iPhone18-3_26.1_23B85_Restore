@interface PDDeletedObjectQuestionIDs
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
- (PDDeletedObjectQuestionIDs)initWithDatabaseRow:(id)row;
- (void)bindTo:(id)to;
@end

@implementation PDDeletedObjectQuestionIDs

- (PDDeletedObjectQuestionIDs)initWithDatabaseRow:(id)row
{
  rowCopy = row;
  v14.receiver = self;
  v14.super_class = PDDeletedObjectQuestionIDs;
  v5 = [(PDDeletedObjectQuestionIDs *)&v14 init];
  if (v5)
  {
    v6 = sub_10016D778(rowCopy, @"objectID");
    objectID = v5->_objectID;
    v5->_objectID = v6;

    v8 = sub_10016D778(rowCopy, @"questionIDs");
    if (v8)
    {
      v9 = objc_opt_class();
      v10 = [NSSet setWithObjects:v9, objc_opt_class(), 0];
      v11 = [NSKeyedUnarchiver cls_secureUnarchiveObjectOfClasses:v10 withData:v8];
      questionIDs = v5->_questionIDs;
      v5->_questionIDs = v11;
    }
  }

  return v5;
}

- (void)bindTo:(id)to
{
  toCopy = to;
  sub_1000982FC(toCopy, self->_objectID, @"objectID");
  questionIDs = self->_questionIDs;
  if (questionIDs)
  {
    v9 = 0;
    v6 = [NSKeyedArchiver archivedDataWithRootObject:questionIDs requiringSecureCoding:1 error:&v9];
    v7 = v9;
    v8 = v7;
    if (v7)
    {
      [v7 cls_debug:CLSLogDatabase];
    }
  }

  else
  {
    v6 = 0;
  }

  sub_1000982FC(toCopy, v6, @"questionIDs");
}

+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database
{
  databaseCopy = database;
  v8 = databaseCopy;
  if (!version)
  {
    if (!sub_1000B9298(databaseCopy, @"create table PDDeletedObjectQuestionIDs (\n    objectID text not null,\n    questionIDs blob not null\n)\n", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index PDDeletedObjectQuestionIDs_objectID on PDDeletedObjectQuestionIDs (objectID)", 0, 0, 0))
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