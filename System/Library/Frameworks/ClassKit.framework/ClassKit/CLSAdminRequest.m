@interface CLSAdminRequest
+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5;
- (id)initWithDatabaseRow:(id)a3;
- (void)bindTo:(id)a3;
@end

@implementation CLSAdminRequest

- (id)initWithDatabaseRow:(id)a3
{
  v4 = a3;
  v5 = [(CLSAdminRequest *)self _init];
  v6 = v5;
  if (v5)
  {
    [v5 _initCommonPropsWithDatabaseRow:v4];
    v7 = sub_10016D778(v4, @"organizationID");
    [v6 setOrganizationID:v7];

    v8 = sub_10016D778(v4, @"type");
    [v6 setType:{objc_msgSend(v8, "intValue")}];

    v9 = sub_10016D778(v4, @"status");
    [v6 setStatus:{objc_msgSend(v9, "intValue")}];

    v10 = sub_10016D778(v4, @"approval");
    [v6 setApproval:{objc_msgSend(v10, "intValue")}];

    v11 = sub_10016D778(v4, @"requestorID");
    [v6 setRequestorID:v11];

    v12 = sub_10016D778(v4, @"bundleIdentifier");
    [v6 setBundleIdentifier:v12];

    v13 = sub_10016D778(v4, @"dateCompleted");
    [v6 setDateCompleted:v13];

    v14 = sub_10016D778(v4, @"responderNote");
    [v6 setResponderNote:v14];
  }

  return v6;
}

- (void)bindTo:(id)a3
{
  v13.receiver = self;
  v13.super_class = CLSAdminRequest;
  v4 = a3;
  [(CLSAdminRequest *)&v13 bindTo:v4];
  v5 = [(CLSAdminRequest *)self organizationID:v13.receiver];
  sub_1000982FC(v4, v5, @"organizationID");

  v6 = [NSNumber numberWithInteger:[(CLSAdminRequest *)self type]];
  sub_1000982FC(v4, v6, @"type");

  v7 = [NSNumber numberWithInteger:[(CLSAdminRequest *)self status]];
  sub_1000982FC(v4, v7, @"status");

  v8 = [NSNumber numberWithInteger:[(CLSAdminRequest *)self approval]];
  sub_1000982FC(v4, v8, @"approval");

  v9 = [(CLSAdminRequest *)self bundleIdentifier];
  sub_1000982FC(v4, v9, @"bundleIdentifier");

  v10 = [(CLSAdminRequest *)self dateCompleted];
  sub_1000982FC(v4, v10, @"dateCompleted");

  v11 = [(CLSAdminRequest *)self requestorID];
  sub_1000982FC(v4, v11, @"requestorID");

  v12 = [(CLSAdminRequest *)self responderNote];
  sub_1000982FC(v4, v12, @"responderNote");
}

+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (!a3)
  {
    if (!sub_1000B9298(v7, @"create table CLSAdminRequest (\n    objectID               text not null,\n    dateCreated            real not null,\n    dateLastModified       real not null,\n    dateCompleted          real,\n    organizationID         text,\n    type                   integer,\n    status                 integer,\n    approval               integer,\n    requestorID            text,\n    bundleIdentifier       text,\n    responderNote          text\n)\n", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index if not exists CLSAdminRequest_objectID on CLSAdminRequest (objectID)", 0, 0, 0))
    {
      v9 = 0;
      goto LABEL_7;
    }

    a3 = 1;
  }

  *a4 = a3;
  v9 = 1;
LABEL_7:

  return v9;
}

@end