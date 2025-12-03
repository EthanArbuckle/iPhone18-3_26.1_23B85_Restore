@interface CLSArchivedQuestionStep
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
- (id)initWithDatabaseRow:(id)row;
- (void)bindTo:(id)to;
- (void)willBeDeletedFromDatabase:(id)database;
@end

@implementation CLSArchivedQuestionStep

- (id)initWithDatabaseRow:(id)row
{
  rowCopy = row;
  _init = [(CLSArchivedQuestionStep *)self _init];
  v6 = _init;
  if (_init)
  {
    [_init _initCommonPropsWithDatabaseRow:rowCopy];
    v7 = sub_10016D778(rowCopy, @"parentObjectID");
    [v6 setParentObjectID:v7];

    v8 = sub_10016D778(rowCopy, @"questionText");
    [v6 setQuestionText:v8];

    v9 = sub_10016D778(rowCopy, @"displayOrder");
    [v6 setDisplayOrder:{objc_msgSend(v9, "integerValue")}];

    v10 = sub_10016D778(rowCopy, @"version");
    [v6 setVersion:{objc_msgSend(v10, "integerValue")}];

    v11 = sub_10016D778(rowCopy, @"type");
    [v6 setType:{objc_msgSend(v11, "integerValue")}];

    v12 = sub_10016D778(rowCopy, @"questionType");
    [v6 setQuestionType:{objc_msgSend(v12, "integerValue")}];
  }

  return v6;
}

- (void)bindTo:(id)to
{
  v12.receiver = self;
  v12.super_class = CLSArchivedQuestionStep;
  toCopy = to;
  [(CLSArchivedQuestionStep *)&v12 bindTo:toCopy];
  v13 = @"appIdentifier";
  v5 = [NSArray arrayWithObjects:&v13 count:1, v12.receiver, v12.super_class];
  sub_1000983A8(toCopy, v5);

  parentObjectID = [(CLSArchivedQuestionStep *)self parentObjectID];
  sub_1000982FC(toCopy, parentObjectID, @"parentObjectID");

  questionText = [(CLSArchivedQuestionStep *)self questionText];
  sub_1000982FC(toCopy, questionText, @"questionText");

  v8 = [NSNumber numberWithInteger:[(CLSArchivedQuestionStep *)self displayOrder]];
  sub_1000982FC(toCopy, v8, @"displayOrder");

  v9 = [NSNumber numberWithInteger:[(CLSArchivedQuestionStep *)self version]];
  sub_1000982FC(toCopy, v9, @"version");

  v10 = [NSNumber numberWithInteger:[(CLSArchivedQuestionStep *)self type]];
  sub_1000982FC(toCopy, v10, @"type");

  v11 = [NSNumber numberWithInteger:[(CLSArchivedQuestionStep *)self questionType]];
  sub_1000982FC(toCopy, v11, @"questionType");
}

+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database
{
  databaseCopy = database;
  v8 = databaseCopy;
  if (!version)
  {
    if (!sub_1000B9298(databaseCopy, @"create table CLSArchivedQuestionStep(   objectID          text not null,\n    parentObjectID    text not null,\n    dateCreated       real not null,\n    dateLastModified  real not null,\n    questionText      text,\n    version           integer,\n    displayOrder      integer,\n    type              integer,\n    questionType      integer,\n    foreign key (parentObjectID) references CLSArchivedSurvey(objectID) on delete cascade on update cascade\n)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index CLSArchivedQuestionStep_objectID on CLSArchivedQuestionStep (objectID)", 0, 0, 0) || !sub_1000B9298(v8, @"create index CLSArchivedQuestionStep_parentObjectID on CLSArchivedQuestionStep (parentObjectID)", 0, 0, 0))
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
  objectID = [(CLSArchivedQuestionStep *)self objectID];
  v7 = objectID;
  v6 = [NSArray arrayWithObjects:&v7 count:1];
  [databaseCopy deleteAll:objc_opt_class() where:@"parentObjectID = ?" bindings:v6];
  [databaseCopy deleteAll:objc_opt_class() where:@"parentObjectID = ?" bindings:v6];
  [databaseCopy deleteAll:objc_opt_class() where:@"parentObjectID = ?" bindings:v6];
  [databaseCopy deleteAll:objc_opt_class() where:@"parentObjectID = ?" bindings:v6];
}

@end