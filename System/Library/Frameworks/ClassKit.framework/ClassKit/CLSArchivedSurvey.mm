@interface CLSArchivedSurvey
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
- (id)initWithDatabaseRow:(id)row;
- (void)bindTo:(id)to;
- (void)willBeDeletedFromDatabase:(id)database;
@end

@implementation CLSArchivedSurvey

- (id)initWithDatabaseRow:(id)row
{
  rowCopy = row;
  _init = [(CLSArchivedSurvey *)self _init];
  v6 = _init;
  if (_init)
  {
    [_init _initCommonPropsWithDatabaseRow:rowCopy];
    v7 = sub_10016D778(rowCopy, @"parentObjectID");
    [v6 setParentObjectID:v7];

    v8 = sub_10016D778(rowCopy, @"type");
    [v6 setType:{objc_msgSend(v8, "intValue")}];

    v9 = sub_10016D778(rowCopy, @"title");
    [v6 setTitle:v9];

    v10 = sub_10016D778(rowCopy, @"authorID");
    [v6 setAuthorID:v10];
  }

  return v6;
}

- (void)bindTo:(id)to
{
  v10.receiver = self;
  v10.super_class = CLSArchivedSurvey;
  toCopy = to;
  [(CLSArchivedSurvey *)&v10 bindTo:toCopy];
  v11 = @"appIdentifier";
  v5 = [NSArray arrayWithObjects:&v11 count:1, v10.receiver, v10.super_class];
  sub_1000983A8(toCopy, v5);

  parentObjectID = [(CLSArchivedSurvey *)self parentObjectID];
  sub_1000982FC(toCopy, parentObjectID, @"parentObjectID");

  v7 = [NSNumber numberWithInteger:[(CLSArchivedSurvey *)self type]];
  sub_1000982FC(toCopy, v7, @"type");

  title = [(CLSArchivedSurvey *)self title];
  sub_1000982FC(toCopy, title, @"title");

  authorID = [(CLSArchivedSurvey *)self authorID];
  sub_1000982FC(toCopy, authorID, @"authorID");
}

+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database
{
  databaseCopy = database;
  v8 = databaseCopy;
  if (!version)
  {
    if (!sub_1000B9298(databaseCopy, @"create table CLSArchivedSurvey (\n    objectID          text not null,\n    parentObjectID    text not null,\n    dateCreated       real not null,\n    dateLastModified  real not null,\n    title             text not null,\n    authorID          text not null,\n    type              integer,\n    foreign key (parentObjectID) references CLSArchivedHandoutAttachment(objectID) on delete cascade on update cascade)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index if not exists CLSArchivedSurvey_objectID on CLSArchivedSurvey (objectID)", 0, 0, 0) || !sub_1000B9298(v8, @"create index if not exists CLSArchivedSurvey_parentObjectID on CLSArchivedSurvey (parentObjectID)", 0, 0, 0))
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
  objectID = [(CLSArchivedSurvey *)self objectID];
  v7 = objectID;
  v6 = [NSArray arrayWithObjects:&v7 count:1];
  [databaseCopy deleteAll:objc_opt_class() where:@"parentObjectID = ?" bindings:v6];
}

@end