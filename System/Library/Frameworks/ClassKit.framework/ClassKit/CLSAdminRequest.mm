@interface CLSAdminRequest
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
- (id)initWithDatabaseRow:(id)row;
- (void)bindTo:(id)to;
@end

@implementation CLSAdminRequest

- (id)initWithDatabaseRow:(id)row
{
  rowCopy = row;
  _init = [(CLSAdminRequest *)self _init];
  v6 = _init;
  if (_init)
  {
    [_init _initCommonPropsWithDatabaseRow:rowCopy];
    v7 = sub_10016D778(rowCopy, @"organizationID");
    [v6 setOrganizationID:v7];

    v8 = sub_10016D778(rowCopy, @"type");
    [v6 setType:{objc_msgSend(v8, "intValue")}];

    v9 = sub_10016D778(rowCopy, @"status");
    [v6 setStatus:{objc_msgSend(v9, "intValue")}];

    v10 = sub_10016D778(rowCopy, @"approval");
    [v6 setApproval:{objc_msgSend(v10, "intValue")}];

    v11 = sub_10016D778(rowCopy, @"requestorID");
    [v6 setRequestorID:v11];

    v12 = sub_10016D778(rowCopy, @"bundleIdentifier");
    [v6 setBundleIdentifier:v12];

    v13 = sub_10016D778(rowCopy, @"dateCompleted");
    [v6 setDateCompleted:v13];

    v14 = sub_10016D778(rowCopy, @"responderNote");
    [v6 setResponderNote:v14];
  }

  return v6;
}

- (void)bindTo:(id)to
{
  v13.receiver = self;
  v13.super_class = CLSAdminRequest;
  toCopy = to;
  [(CLSAdminRequest *)&v13 bindTo:toCopy];
  v5 = [(CLSAdminRequest *)self organizationID:v13.receiver];
  sub_1000982FC(toCopy, v5, @"organizationID");

  v6 = [NSNumber numberWithInteger:[(CLSAdminRequest *)self type]];
  sub_1000982FC(toCopy, v6, @"type");

  v7 = [NSNumber numberWithInteger:[(CLSAdminRequest *)self status]];
  sub_1000982FC(toCopy, v7, @"status");

  v8 = [NSNumber numberWithInteger:[(CLSAdminRequest *)self approval]];
  sub_1000982FC(toCopy, v8, @"approval");

  bundleIdentifier = [(CLSAdminRequest *)self bundleIdentifier];
  sub_1000982FC(toCopy, bundleIdentifier, @"bundleIdentifier");

  dateCompleted = [(CLSAdminRequest *)self dateCompleted];
  sub_1000982FC(toCopy, dateCompleted, @"dateCompleted");

  requestorID = [(CLSAdminRequest *)self requestorID];
  sub_1000982FC(toCopy, requestorID, @"requestorID");

  responderNote = [(CLSAdminRequest *)self responderNote];
  sub_1000982FC(toCopy, responderNote, @"responderNote");
}

+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database
{
  databaseCopy = database;
  v8 = databaseCopy;
  if (!version)
  {
    if (!sub_1000B9298(databaseCopy, @"create table CLSAdminRequest (\n    objectID               text not null,\n    dateCreated            real not null,\n    dateLastModified       real not null,\n    dateCompleted          real,\n    organizationID         text,\n    type                   integer,\n    status                 integer,\n    approval               integer,\n    requestorID            text,\n    bundleIdentifier       text,\n    responderNote          text\n)\n", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index if not exists CLSAdminRequest_objectID on CLSAdminRequest (objectID)", 0, 0, 0))
    {
      v9 = 0;
      goto LABEL_7;
    }

    version = 1;
  }

  *finalVersion = version;
  v9 = 1;
LABEL_7:

  return v9;
}

@end