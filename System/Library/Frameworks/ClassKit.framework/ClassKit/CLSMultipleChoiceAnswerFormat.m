@interface CLSMultipleChoiceAnswerFormat
+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5;
- (BOOL)canCopyToDatabase:(id)a3;
- (CLSMultipleChoiceAnswerFormat)initWithCKRecord:(id)a3;
- (id)initWithDatabaseRow:(id)a3;
- (int64_t)syncBackend:(id)a3;
- (void)bindTo:(id)a3;
- (void)populate:(id)a3;
- (void)willBeDeletedFromDatabase:(id)a3;
@end

@implementation CLSMultipleChoiceAnswerFormat

- (CLSMultipleChoiceAnswerFormat)initWithCKRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"type"];
  if (v5)
  {
    v6 = [(CLSMultipleChoiceAnswerFormat *)self initWithType:CLSMultipleChoiceTypeFromString()];
    v7 = v6;
    if (v6)
    {
      [(CLSMultipleChoiceAnswerFormat *)v6 _initCommonPropsWithRecord:v4];
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)populate:(id)a3
{
  v6.receiver = self;
  v6.super_class = CLSMultipleChoiceAnswerFormat;
  v4 = a3;
  [(CLSMultipleChoiceAnswerFormat *)&v6 populate:v4];
  [(CLSMultipleChoiceAnswerFormat *)self type:v6.receiver];
  v5 = NSStringFromCLSMultipleChoiceType();
  [v4 setObject:v5 forKeyedSubscript:@"type"];

  [(CLSMultipleChoiceAnswerFormat *)self updateParentReferencesForRecord:v4];
}

- (int64_t)syncBackend:(id)a3
{
  v4 = a3;
  v5 = [(CLSMultipleChoiceAnswerFormat *)self parentObjectID];
  if (v5)
  {
    v6 = [v4 select:objc_opt_class() identity:v5];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 syncBackend:v4];
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

- (BOOL)canCopyToDatabase:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(CLSMultipleChoiceAnswerFormat *)self parentObjectID];
  v7 = [v4 select:v5 identity:v6];

  LOBYTE(v6) = [v7 canCopyToDatabase:v4];
  return v6;
}

- (id)initWithDatabaseRow:(id)a3
{
  v4 = a3;
  v5 = [(CLSMultipleChoiceAnswerFormat *)self _init];
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
  v9.super_class = CLSMultipleChoiceAnswerFormat;
  v4 = a3;
  [(CLSMultipleChoiceAnswerFormat *)&v9 bindTo:v4];
  v10 = @"appIdentifier";
  v5 = [NSArray arrayWithObjects:&v10 count:1, v9.receiver, v9.super_class];
  sub_1000983A8(v4, v5);

  v6 = [(CLSMultipleChoiceAnswerFormat *)self parentObjectID];
  sub_1000982FC(v4, v6, @"parentObjectID");

  v7 = [NSNumber numberWithInteger:[(CLSMultipleChoiceAnswerFormat *)self type]];
  sub_1000982FC(v4, v7, @"type");

  v8 = [NSNumber numberWithInteger:[(CLSMultipleChoiceAnswerFormat *)self answerFormatType]];
  sub_1000982FC(v4, v8, @"answerFormatType");
}

+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (!a3)
  {
    if (!sub_1000B9298(v7, @"create table CLSMultipleChoiceAnswerFormat (\n    objectID          text not null,\n    parentObjectID    text not null,\n    dateCreated       real not null,\n    dateLastModified  real not null,\n    type              integer,\n    answerFormatType  integer,\nforeign key (parentObjectID) references CLSQuestionStep(objectID) on delete cascade on update cascade\n)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index if not exists CLSMultipleChoiceAnswerFormat_objectID on CLSMultipleChoiceAnswerFormat (objectID)", 0, 0, 0) || !sub_1000B9298(v8, @"create index if not exists CLSMultipleChoiceAnswerFormat_parentObjectID on CLSMultipleChoiceAnswerFormat (parentObjectID)", 0, 0, 0))
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
  v5 = [(CLSMultipleChoiceAnswerFormat *)self objectID];
  v7 = v5;
  v6 = [NSArray arrayWithObjects:&v7 count:1];
  [v4 deleteAll:objc_opt_class() where:@"parentObjectID = ?" bindings:v6];
}

@end