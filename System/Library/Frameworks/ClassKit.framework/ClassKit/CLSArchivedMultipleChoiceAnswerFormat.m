@interface CLSArchivedMultipleChoiceAnswerFormat
+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5;
- (id)initWithDatabaseRow:(id)a3;
- (void)bindTo:(id)a3;
- (void)willBeDeletedFromDatabase:(id)a3;
@end

@implementation CLSArchivedMultipleChoiceAnswerFormat

- (id)initWithDatabaseRow:(id)a3
{
  v4 = a3;
  v5 = [(CLSArchivedMultipleChoiceAnswerFormat *)self _init];
  v6 = v5;
  if (v5)
  {
    [v5 _initCommonPropsWithDatabaseRow:v4];
    v7 = sub_10016D778(v4, @"parentObjectID");
    [v6 setParentObjectID:v7];

    v8 = sub_10016D778(v4, @"type");
    [v6 setType:{objc_msgSend(v8, "intValue")}];

    v9 = sub_10016D778(v4, @"answerFormatType");
    [v6 setAnswerFormatType:{objc_msgSend(v9, "intValue")}];
  }

  return v6;
}

- (void)bindTo:(id)a3
{
  v9.receiver = self;
  v9.super_class = CLSArchivedMultipleChoiceAnswerFormat;
  v4 = a3;
  [(CLSArchivedMultipleChoiceAnswerFormat *)&v9 bindTo:v4];
  v10 = @"appIdentifier";
  v5 = [NSArray arrayWithObjects:&v10 count:1, v9.receiver, v9.super_class];
  sub_1000983A8(v4, v5);

  v6 = [(CLSArchivedMultipleChoiceAnswerFormat *)self parentObjectID];
  sub_1000982FC(v4, v6, @"parentObjectID");

  v7 = [NSNumber numberWithInteger:[(CLSArchivedMultipleChoiceAnswerFormat *)self type]];
  sub_1000982FC(v4, v7, @"type");

  v8 = [NSNumber numberWithInteger:[(CLSArchivedMultipleChoiceAnswerFormat *)self answerFormatType]];
  sub_1000982FC(v4, v8, @"answerFormatType");
}

+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (!a3)
  {
    if (!sub_1000B9298(v7, @"create table CLSArchivedMultipleChoiceAnswerFormat (\n    objectID          text not null,\n    parentObjectID    text not null,\n    dateCreated       real not null,\n    dateLastModified  real not null,\n    type              integer,\n    answerFormatType  integer,\nforeign key (parentObjectID) references CLSArchivedQuestionStep(objectID) on delete cascade on update cascade\n)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index if not exists CLSArchivedMultipleChoiceAnswerFormat_objectID on CLSArchivedMultipleChoiceAnswerFormat (objectID)", 0, 0, 0) || !sub_1000B9298(v8, @"create index if not exists CLSArchivedMultipleChoiceAnswerFormat_parentObjectID on CLSArchivedMultipleChoiceAnswerFormat (parentObjectID)", 0, 0, 0))
    {
      v9 = 0;
      goto LABEL_8;
    }

    a3 = 1;
  }

  *a4 = a3;
  v9 = 1;
LABEL_8:

  return v9;
}

- (void)willBeDeletedFromDatabase:(id)a3
{
  v4 = a3;
  v5 = [(CLSArchivedMultipleChoiceAnswerFormat *)self objectID];
  v7 = v5;
  v6 = [NSArray arrayWithObjects:&v7 count:1];
  [v4 deleteAll:objc_opt_class() where:@"parentObjectID = ?" bindings:v6];
}

@end