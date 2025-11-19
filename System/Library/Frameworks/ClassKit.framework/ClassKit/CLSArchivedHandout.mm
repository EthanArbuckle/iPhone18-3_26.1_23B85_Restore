@interface CLSArchivedHandout
+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5;
- (id)initWithDatabaseRow:(id)a3;
- (void)bindTo:(id)a3;
- (void)willBeDeletedFromDatabase:(id)a3;
@end

@implementation CLSArchivedHandout

- (id)initWithDatabaseRow:(id)a3
{
  v4 = a3;
  v5 = [(CLSArchivedHandout *)self init];
  v6 = v5;
  if (v5)
  {
    [(CLSArchivedHandout *)v5 _initCommonPropsWithDatabaseRow:v4];
    v7 = sub_10016D778(v4, @"title");
    [(CLSArchivedHandout *)v6 setTitle:v7];

    v8 = sub_10016D778(v4, @"instructions");
    [(CLSArchivedHandout *)v6 setInstructions:v8];

    v9 = sub_10016D6F0(v4, @"dueDate");
    [(CLSArchivedHandout *)v6 setDueDate:v9];

    v10 = sub_10016D6F0(v4, @"dateOfPublication");
    [(CLSArchivedHandout *)v6 setDateOfPublication:v10];

    v11 = sub_10016D778(v4, @"version");
    -[CLSArchivedHandout setVersion:](v6, "setVersion:", [v11 integerValue]);
  }

  return v6;
}

- (void)bindTo:(id)a3
{
  v11.receiver = self;
  v11.super_class = CLSArchivedHandout;
  v4 = a3;
  [(CLSArchivedHandout *)&v11 bindTo:v4];
  v12 = @"appIdentifier";
  v5 = [NSArray arrayWithObjects:&v12 count:1, v11.receiver, v11.super_class];
  sub_1000983A8(v4, v5);

  v6 = [(CLSArchivedHandout *)self dueDate];
  sub_1000982FC(v4, v6, @"dueDate");

  v7 = [(CLSArchivedHandout *)self instructions];
  sub_1000982FC(v4, v7, @"instructions");

  v8 = [(CLSArchivedHandout *)self title];
  sub_1000982FC(v4, v8, @"title");

  v9 = [(CLSArchivedHandout *)self dateOfPublication];
  sub_1000982FC(v4, v9, @"dateOfPublication");

  v10 = [NSNumber numberWithInteger:[(CLSArchivedHandout *)self version]];
  sub_1000982FC(v4, v10, @"version");
}

+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5
{
  v7 = a5;
  v8 = v7;
  switch(a3)
  {
    case 2uLL:
      goto LABEL_7;
    case 1uLL:
LABEL_6:
      if (!sub_1000B9298(v8, @"alter table CLSArchivedHandout add column version integer default 0", 0, 0, 0))
      {
        goto LABEL_25;
      }

LABEL_7:
      if (sub_1000B9298(v8, @"create table CLSArchivedHandout_temp (\n    objectID            text not null,\n    dateCreated         real not null,\n    dateLastModified    real not null,\n    dateOfPublication   real,\n    dueDate             real,\n    instructions        text,\n    title               text,\n    version             integer default 0)", 0, 0, 0))
      {
        if (sub_1000B9298(v8, @"insert into CLSArchivedHandout_temp select objectID, dateCreated, dateLastModified, dateOfPublication, dueDate, instructions, title, version from CLSArchivedHandout", 0, 0, 0))
        {
          if (sub_1000B9298(v8, @"drop table CLSArchivedHandout", 0, 0, 0))
          {
            if (sub_1000B9298(v8, @"alter table CLSArchivedHandout_temp rename to CLSArchivedHandout", 0, 0, 0))
            {
              if (sub_1000B9298(v8, @"create unique index if not exists CLSArchivedHandout_objectID on CLSArchivedHandout (objectID)", 0, 0, 0))
              {
                a3 = 3;
                break;
              }

              CLSInitLog();
              v10 = CLSLogDatabase;
              if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
              {
                v14 = 0;
                v11 = "Failed to migrate CLSHandoutAttachment(2): index creation";
                v12 = &v14;
                goto LABEL_24;
              }

LABEL_25:
              v9 = 0;
              goto LABEL_26;
            }

            CLSInitLog();
            v10 = CLSLogDatabase;
            if (!os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_25;
            }

            v15 = 0;
            v11 = "Failed to migrate CLSHandoutAttachment(2): Could not rename table";
            v12 = &v15;
          }

          else
          {
            CLSInitLog();
            v10 = CLSLogDatabase;
            if (!os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_25;
            }

            v16 = 0;
            v11 = "Failed to migrate CLSHandoutAttachment(2): Could not drop table";
            v12 = &v16;
          }
        }

        else
        {
          CLSInitLog();
          v10 = CLSLogDatabase;
          if (!os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_25;
          }

          v17 = 0;
          v11 = "Failed to migrate CLSHandoutAttachment(2): Could not complete mass insert";
          v12 = &v17;
        }
      }

      else
      {
        CLSInitLog();
        v10 = CLSLogDatabase;
        if (!os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_25;
        }

        v18 = 0;
        v11 = "Failed to migrate CLSHandoutAttachment(2): Could not create temp table";
        v12 = &v18;
      }

LABEL_24:
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, v11, v12, 2u);
      goto LABEL_25;
    case 0uLL:
      if (!sub_1000B9298(v7, @"create table CLSArchivedHandout(   objectID            text not null,    appIdentifier       text not null,    dateCreated         real not null,    dateLastModified    real not null,    dateOfPublication   real,    dueDate             real,    instructions        text,    title               text,    parentObjectID      text)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index if not exists CLSArchivedHandout_objectID on CLSArchivedHandout (objectID)", 0, 0, 0))
      {
        goto LABEL_25;
      }

      goto LABEL_6;
  }

  *a4 = a3;
  v9 = 1;
LABEL_26:

  return v9;
}

- (void)willBeDeletedFromDatabase:(id)a3
{
  v4 = a3;
  v5 = [(CLSArchivedHandout *)self objectID];
  v7 = v5;
  v6 = [NSArray arrayWithObjects:&v7 count:1];
  [v4 deleteAll:objc_opt_class() where:@"parentObjectID = ?" bindings:v6];
  [v4 deleteAll:objc_opt_class() where:@"parentObjectID = ?" bindings:v6];
}

@end