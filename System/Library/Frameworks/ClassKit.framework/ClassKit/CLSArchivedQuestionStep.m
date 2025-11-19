@interface CLSArchivedQuestionStep
+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5;
- (id)initWithDatabaseRow:(id)a3;
- (void)bindTo:(id)a3;
- (void)willBeDeletedFromDatabase:(id)a3;
@end

@implementation CLSArchivedQuestionStep

- (id)initWithDatabaseRow:(id)a3
{
  v4 = a3;
  v5 = [(CLSArchivedQuestionStep *)self _init];
  v6 = v5;
  if (v5)
  {
    [v5 _initCommonPropsWithDatabaseRow:v4];
    v7 = sub_10016D778(v4, @"parentObjectID");
    [v6 setParentObjectID:v7];

    v8 = sub_10016D778(v4, @"questionText");
    [v6 setQuestionText:v8];

    v9 = sub_10016D778(v4, @"displayOrder");
    [v6 setDisplayOrder:{objc_msgSend(v9, "integerValue")}];

    v10 = sub_10016D778(v4, @"version");
    [v6 setVersion:{objc_msgSend(v10, "integerValue")}];

    v11 = sub_10016D778(v4, @"type");
    [v6 setType:{objc_msgSend(v11, "integerValue")}];

    v12 = sub_10016D778(v4, @"questionType");
    [v6 setQuestionType:{objc_msgSend(v12, "integerValue")}];
  }

  return v6;
}

- (void)bindTo:(id)a3
{
  v12.receiver = self;
  v12.super_class = CLSArchivedQuestionStep;
  v4 = a3;
  [(CLSArchivedQuestionStep *)&v12 bindTo:v4];
  v13 = @"appIdentifier";
  v5 = [NSArray arrayWithObjects:&v13 count:1, v12.receiver, v12.super_class];
  sub_1000983A8(v4, v5);

  v6 = [(CLSArchivedQuestionStep *)self parentObjectID];
  sub_1000982FC(v4, v6, @"parentObjectID");

  v7 = [(CLSArchivedQuestionStep *)self questionText];
  sub_1000982FC(v4, v7, @"questionText");

  v8 = [NSNumber numberWithInteger:[(CLSArchivedQuestionStep *)self displayOrder]];
  sub_1000982FC(v4, v8, @"displayOrder");

  v9 = [NSNumber numberWithInteger:[(CLSArchivedQuestionStep *)self version]];
  sub_1000982FC(v4, v9, @"version");

  v10 = [NSNumber numberWithInteger:[(CLSArchivedQuestionStep *)self type]];
  sub_1000982FC(v4, v10, @"type");

  v11 = [NSNumber numberWithInteger:[(CLSArchivedQuestionStep *)self questionType]];
  sub_1000982FC(v4, v11, @"questionType");
}

+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (!a3)
  {
    if (!sub_1000B9298(v7, @"create table CLSArchivedQuestionStep(   objectID          text not null,\n    parentObjectID    text not null,\n    dateCreated       real not null,\n    dateLastModified  real not null,\n    questionText      text,\n    version           integer,\n    displayOrder      integer,\n    type              integer,\n    questionType      integer,\n    foreign key (parentObjectID) references CLSArchivedSurvey(objectID) on delete cascade on update cascade\n)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index CLSArchivedQuestionStep_objectID on CLSArchivedQuestionStep (objectID)", 0, 0, 0) || !sub_1000B9298(v8, @"create index CLSArchivedQuestionStep_parentObjectID on CLSArchivedQuestionStep (parentObjectID)", 0, 0, 0))
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
  v5 = [(CLSArchivedQuestionStep *)self objectID];
  v7 = v5;
  v6 = [NSArray arrayWithObjects:&v7 count:1];
  [v4 deleteAll:objc_opt_class() where:@"parentObjectID = ?" bindings:v6];
  [v4 deleteAll:objc_opt_class() where:@"parentObjectID = ?" bindings:v6];
  [v4 deleteAll:objc_opt_class() where:@"parentObjectID = ?" bindings:v6];
  [v4 deleteAll:objc_opt_class() where:@"parentObjectID = ?" bindings:v6];
}

@end