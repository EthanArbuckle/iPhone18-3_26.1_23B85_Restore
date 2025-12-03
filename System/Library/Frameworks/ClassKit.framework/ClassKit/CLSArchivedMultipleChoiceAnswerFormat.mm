@interface CLSArchivedMultipleChoiceAnswerFormat
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
- (id)initWithDatabaseRow:(id)row;
- (void)bindTo:(id)to;
- (void)willBeDeletedFromDatabase:(id)database;
@end

@implementation CLSArchivedMultipleChoiceAnswerFormat

- (id)initWithDatabaseRow:(id)row
{
  rowCopy = row;
  _init = [(CLSArchivedMultipleChoiceAnswerFormat *)self _init];
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
  v9.super_class = CLSArchivedMultipleChoiceAnswerFormat;
  toCopy = to;
  [(CLSArchivedMultipleChoiceAnswerFormat *)&v9 bindTo:toCopy];
  v10 = @"appIdentifier";
  v5 = [NSArray arrayWithObjects:&v10 count:1, v9.receiver, v9.super_class];
  sub_1000983A8(toCopy, v5);

  parentObjectID = [(CLSArchivedMultipleChoiceAnswerFormat *)self parentObjectID];
  sub_1000982FC(toCopy, parentObjectID, @"parentObjectID");

  v7 = [NSNumber numberWithInteger:[(CLSArchivedMultipleChoiceAnswerFormat *)self type]];
  sub_1000982FC(toCopy, v7, @"type");

  v8 = [NSNumber numberWithInteger:[(CLSArchivedMultipleChoiceAnswerFormat *)self answerFormatType]];
  sub_1000982FC(toCopy, v8, @"answerFormatType");
}

+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database
{
  databaseCopy = database;
  v8 = databaseCopy;
  if (!version)
  {
    if (!sub_1000B9298(databaseCopy, @"create table CLSArchivedMultipleChoiceAnswerFormat (\n    objectID          text not null,\n    parentObjectID    text not null,\n    dateCreated       real not null,\n    dateLastModified  real not null,\n    type              integer,\n    answerFormatType  integer,\nforeign key (parentObjectID) references CLSArchivedQuestionStep(objectID) on delete cascade on update cascade\n)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index if not exists CLSArchivedMultipleChoiceAnswerFormat_objectID on CLSArchivedMultipleChoiceAnswerFormat (objectID)", 0, 0, 0) || !sub_1000B9298(v8, @"create index if not exists CLSArchivedMultipleChoiceAnswerFormat_parentObjectID on CLSArchivedMultipleChoiceAnswerFormat (parentObjectID)", 0, 0, 0))
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
  objectID = [(CLSArchivedMultipleChoiceAnswerFormat *)self objectID];
  v7 = objectID;
  v6 = [NSArray arrayWithObjects:&v7 count:1];
  [databaseCopy deleteAll:objc_opt_class() where:@"parentObjectID = ?" bindings:v6];
}

@end