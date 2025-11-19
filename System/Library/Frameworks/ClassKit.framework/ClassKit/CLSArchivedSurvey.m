@interface CLSArchivedSurvey
+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5;
- (id)initWithDatabaseRow:(id)a3;
- (void)bindTo:(id)a3;
- (void)willBeDeletedFromDatabase:(id)a3;
@end

@implementation CLSArchivedSurvey

- (id)initWithDatabaseRow:(id)a3
{
  v4 = a3;
  v5 = [(CLSArchivedSurvey *)self _init];
  v6 = v5;
  if (v5)
  {
    [v5 _initCommonPropsWithDatabaseRow:v4];
    v7 = sub_10016D778(v4, @"parentObjectID");
    [v6 setParentObjectID:v7];

    v8 = sub_10016D778(v4, @"type");
    [v6 setType:{objc_msgSend(v8, "intValue")}];

    v9 = sub_10016D778(v4, @"title");
    [v6 setTitle:v9];

    v10 = sub_10016D778(v4, @"authorID");
    [v6 setAuthorID:v10];
  }

  return v6;
}

- (void)bindTo:(id)a3
{
  v10.receiver = self;
  v10.super_class = CLSArchivedSurvey;
  v4 = a3;
  [(CLSArchivedSurvey *)&v10 bindTo:v4];
  v11 = @"appIdentifier";
  v5 = [NSArray arrayWithObjects:&v11 count:1, v10.receiver, v10.super_class];
  sub_1000983A8(v4, v5);

  v6 = [(CLSArchivedSurvey *)self parentObjectID];
  sub_1000982FC(v4, v6, @"parentObjectID");

  v7 = [NSNumber numberWithInteger:[(CLSArchivedSurvey *)self type]];
  sub_1000982FC(v4, v7, @"type");

  v8 = [(CLSArchivedSurvey *)self title];
  sub_1000982FC(v4, v8, @"title");

  v9 = [(CLSArchivedSurvey *)self authorID];
  sub_1000982FC(v4, v9, @"authorID");
}

+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (!a3)
  {
    if (!sub_1000B9298(v7, @"create table CLSArchivedSurvey (\n    objectID          text not null,\n    parentObjectID    text not null,\n    dateCreated       real not null,\n    dateLastModified  real not null,\n    title             text not null,\n    authorID          text not null,\n    type              integer,\n    foreign key (parentObjectID) references CLSArchivedHandoutAttachment(objectID) on delete cascade on update cascade)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index if not exists CLSArchivedSurvey_objectID on CLSArchivedSurvey (objectID)", 0, 0, 0) || !sub_1000B9298(v8, @"create index if not exists CLSArchivedSurvey_parentObjectID on CLSArchivedSurvey (parentObjectID)", 0, 0, 0))
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
  v5 = [(CLSArchivedSurvey *)self objectID];
  v7 = v5;
  v6 = [NSArray arrayWithObjects:&v7 count:1];
  [v4 deleteAll:objc_opt_class() where:@"parentObjectID = ?" bindings:v6];
}

@end