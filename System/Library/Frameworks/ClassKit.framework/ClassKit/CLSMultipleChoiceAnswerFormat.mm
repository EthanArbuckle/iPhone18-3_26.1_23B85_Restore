@interface CLSMultipleChoiceAnswerFormat
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
- (BOOL)canCopyToDatabase:(id)database;
- (CLSMultipleChoiceAnswerFormat)initWithCKRecord:(id)record;
- (id)initWithDatabaseRow:(id)row;
- (int64_t)syncBackend:(id)backend;
- (void)bindTo:(id)to;
- (void)populate:(id)populate;
- (void)willBeDeletedFromDatabase:(id)database;
@end

@implementation CLSMultipleChoiceAnswerFormat

- (CLSMultipleChoiceAnswerFormat)initWithCKRecord:(id)record
{
  recordCopy = record;
  v5 = [recordCopy objectForKeyedSubscript:@"type"];
  if (v5)
  {
    v6 = [(CLSMultipleChoiceAnswerFormat *)self initWithType:CLSMultipleChoiceTypeFromString()];
    v7 = v6;
    if (v6)
    {
      [(CLSMultipleChoiceAnswerFormat *)v6 _initCommonPropsWithRecord:recordCopy];
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)populate:(id)populate
{
  v6.receiver = self;
  v6.super_class = CLSMultipleChoiceAnswerFormat;
  populateCopy = populate;
  [(CLSMultipleChoiceAnswerFormat *)&v6 populate:populateCopy];
  [(CLSMultipleChoiceAnswerFormat *)self type:v6.receiver];
  v5 = NSStringFromCLSMultipleChoiceType();
  [populateCopy setObject:v5 forKeyedSubscript:@"type"];

  [(CLSMultipleChoiceAnswerFormat *)self updateParentReferencesForRecord:populateCopy];
}

- (int64_t)syncBackend:(id)backend
{
  backendCopy = backend;
  parentObjectID = [(CLSMultipleChoiceAnswerFormat *)self parentObjectID];
  if (parentObjectID)
  {
    v6 = [backendCopy select:objc_opt_class() identity:parentObjectID];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 syncBackend:backendCopy];
    }

    else
    {
      v8 = -1;
    }
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

- (BOOL)canCopyToDatabase:(id)database
{
  databaseCopy = database;
  v5 = objc_opt_class();
  parentObjectID = [(CLSMultipleChoiceAnswerFormat *)self parentObjectID];
  v7 = [databaseCopy select:v5 identity:parentObjectID];

  LOBYTE(parentObjectID) = [v7 canCopyToDatabase:databaseCopy];
  return parentObjectID;
}

- (id)initWithDatabaseRow:(id)row
{
  rowCopy = row;
  _init = [(CLSMultipleChoiceAnswerFormat *)self _init];
  v6 = _init;
  if (_init)
  {
    [_init _initCommonPropsWithDatabaseRow:rowCopy];
    v7 = sub_10016D778(rowCopy, @"parentObjectID");
    [v6 setParentObjectID:v7];

    v8 = sub_10016D778(rowCopy, @"type");
    [v6 setType:{objc_msgSend(v8, "intValue")}];

    v9 = sub_10016D778(rowCopy, @"answerFormatType");
    [v6 setAnswerFormatType:{objc_msgSend(v9, "intValue")}];
  }

  return v6;
}

- (void)bindTo:(id)to
{
  v9.receiver = self;
  v9.super_class = CLSMultipleChoiceAnswerFormat;
  toCopy = to;
  [(CLSMultipleChoiceAnswerFormat *)&v9 bindTo:toCopy];
  v10 = @"appIdentifier";
  v5 = [NSArray arrayWithObjects:&v10 count:1, v9.receiver, v9.super_class];
  sub_1000983A8(toCopy, v5);

  parentObjectID = [(CLSMultipleChoiceAnswerFormat *)self parentObjectID];
  sub_1000982FC(toCopy, parentObjectID, @"parentObjectID");

  v7 = [NSNumber numberWithInteger:[(CLSMultipleChoiceAnswerFormat *)self type]];
  sub_1000982FC(toCopy, v7, @"type");

  v8 = [NSNumber numberWithInteger:[(CLSMultipleChoiceAnswerFormat *)self answerFormatType]];
  sub_1000982FC(toCopy, v8, @"answerFormatType");
}

+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database
{
  databaseCopy = database;
  v8 = databaseCopy;
  if (!version)
  {
    if (!sub_1000B9298(databaseCopy, @"create table CLSMultipleChoiceAnswerFormat (\n    objectID          text not null,\n    parentObjectID    text not null,\n    dateCreated       real not null,\n    dateLastModified  real not null,\n    type              integer,\n    answerFormatType  integer,\nforeign key (parentObjectID) references CLSQuestionStep(objectID) on delete cascade on update cascade\n)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index if not exists CLSMultipleChoiceAnswerFormat_objectID on CLSMultipleChoiceAnswerFormat (objectID)", 0, 0, 0) || !sub_1000B9298(v8, @"create index if not exists CLSMultipleChoiceAnswerFormat_parentObjectID on CLSMultipleChoiceAnswerFormat (parentObjectID)", 0, 0, 0))
    {
      v9 = 0;
      goto LABEL_8;
    }

    version = 1;
  }

  *finalVersion = version;
  v9 = 1;
LABEL_8:

  return v9;
}

- (void)willBeDeletedFromDatabase:(id)database
{
  databaseCopy = database;
  objectID = [(CLSMultipleChoiceAnswerFormat *)self objectID];
  v7 = objectID;
  v6 = [NSArray arrayWithObjects:&v7 count:1];
  [databaseCopy deleteAll:objc_opt_class() where:@"parentObjectID = ?" bindings:v6];
}

@end