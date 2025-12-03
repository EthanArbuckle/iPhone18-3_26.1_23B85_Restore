@interface CLSOpenResponseAnswerFormat
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
- (BOOL)canCopyToDatabase:(id)database;
- (CLSOpenResponseAnswerFormat)initWithDatabaseRow:(id)row;
- (id)initWithCKRecord:(id)record;
- (int64_t)syncBackend:(id)backend;
- (void)bindTo:(id)to;
- (void)populate:(id)populate;
@end

@implementation CLSOpenResponseAnswerFormat

- (CLSOpenResponseAnswerFormat)initWithDatabaseRow:(id)row
{
  rowCopy = row;
  _init = [(CLSOpenResponseAnswerFormat *)self _init];
  v6 = _init;
  if (_init)
  {
    [_init _initCommonPropsWithDatabaseRow:rowCopy];
    v7 = sub_10016D778(rowCopy, @"parentObjectID");
    [v6 setParentObjectID:v7];

    v8 = sub_10016D778(rowCopy, @"answerFormatType");
    [v6 setAnswerFormatType:{objc_msgSend(v8, "intValue")}];

    v9 = sub_10016D778(rowCopy, @"teacherProvidedText");
    [v6 setTeacherProvidedText:v9];

    v10 = sub_10016D778(rowCopy, @"maximumTextLength");
    [v6 setMaximumTextLength:{objc_msgSend(v10, "integerValue")}];

    v11 = sub_10016D778(rowCopy, @"minimumTextLength");
    [v6 setMinimumTextLength:{objc_msgSend(v11, "integerValue")}];

    v12 = sub_10016D778(rowCopy, @"type");
    [v6 setType:{objc_msgSend(v12, "intValue")}];

    v13 = sub_10016D778(rowCopy, @"allowsMultimedia");
    [v6 setAllowsMultimedia:{objc_msgSend(v13, "BOOLValue")}];
  }

  return v6;
}

- (void)bindTo:(id)to
{
  v13.receiver = self;
  v13.super_class = CLSOpenResponseAnswerFormat;
  toCopy = to;
  [(CLSOpenResponseAnswerFormat *)&v13 bindTo:toCopy];
  v14 = @"appIdentifier";
  v5 = [NSArray arrayWithObjects:&v14 count:1, v13.receiver, v13.super_class];
  sub_1000983A8(toCopy, v5);

  parentObjectID = [(CLSOpenResponseAnswerFormat *)self parentObjectID];
  sub_1000982FC(toCopy, parentObjectID, @"parentObjectID");

  v7 = [NSNumber numberWithInteger:[(CLSOpenResponseAnswerFormat *)self answerFormatType]];
  sub_1000982FC(toCopy, v7, @"answerFormatType");

  v8 = [NSNumber numberWithInteger:[(CLSOpenResponseAnswerFormat *)self maximumTextLength]];
  sub_1000982FC(toCopy, v8, @"maximumTextLength");

  v9 = [NSNumber numberWithInteger:[(CLSOpenResponseAnswerFormat *)self minimumTextLength]];
  sub_1000982FC(toCopy, v9, @"minimumTextLength");

  teacherProvidedText = [(CLSOpenResponseAnswerFormat *)self teacherProvidedText];
  sub_1000982FC(toCopy, teacherProvidedText, @"teacherProvidedText");

  v11 = [NSNumber numberWithInteger:[(CLSOpenResponseAnswerFormat *)self type]];
  sub_1000982FC(toCopy, v11, @"type");

  v12 = [NSNumber numberWithBool:[(CLSOpenResponseAnswerFormat *)self allowsMultimedia]];
  sub_1000982FC(toCopy, v12, @"allowsMultimedia");
}

+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database
{
  databaseCopy = database;
  v8 = databaseCopy;
  if (version == 1)
  {
LABEL_6:
    if (sub_1000B9298(v8, @"alter table CLSOpenResponseAnswerFormat add column allowsMultimedia integer", 0, 0, 0))
    {
      version = 2;
      goto LABEL_8;
    }

LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  if (!version)
  {
    if (!sub_1000B9298(databaseCopy, @"create table CLSOpenResponseAnswerFormat (\n    objectID          text not null,\n    parentObjectID    text not null,\n    dateCreated       real not null,\n    dateLastModified  real not null,\n    type                  integer,\n    answerFormatType      integer,\n    maximumTextLength     integer,\n    minimumTextLength     integer,\n    teacherProvidedText   text,\nforeign key (parentObjectID) references CLSQuestionStep(objectID) on delete cascade on update cascade\n)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index if not exists CLSOpenResponseAnswerFormat_objectID on CLSOpenResponseAnswerFormat (objectID)", 0, 0, 0) || !sub_1000B9298(v8, @"create index if not exists CLSOpenResponseAnswerFormat_parentObjectID on CLSOpenResponseAnswerFormat (parentObjectID)", 0, 0, 0))
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

LABEL_8:
  *finalVersion = version;
  v9 = 1;
LABEL_10:

  return v9;
}

- (BOOL)canCopyToDatabase:(id)database
{
  databaseCopy = database;
  v5 = objc_opt_class();
  parentObjectID = [(CLSOpenResponseAnswerFormat *)self parentObjectID];
  v7 = [databaseCopy select:v5 identity:parentObjectID];

  LOBYTE(parentObjectID) = [v7 canCopyToDatabase:databaseCopy];
  return parentObjectID;
}

- (id)initWithCKRecord:(id)record
{
  recordCopy = record;
  v5 = [recordCopy objectForKeyedSubscript:@"type"];
  if (v5)
  {
    v6 = CLSOpenResponseTypeFromString();
    v7 = [recordCopy objectForKeyedSubscript:@"teacherProvidedText"];
    v8 = [recordCopy objectForKeyedSubscript:@"minimumTextLength"];
    integerValue = [v8 integerValue];

    v10 = [recordCopy objectForKeyedSubscript:@"maximumTextLength"];
    integerValue2 = [v10 integerValue];

    v12 = [(CLSOpenResponseAnswerFormat *)self initWithType:v6 starterText:v7 minimumLength:integerValue maximumLength:integerValue2];
    v13 = v12;
    if (v12)
    {
      [(CLSOpenResponseAnswerFormat *)v12 _initCommonPropsWithRecord:recordCopy];
      v14 = [recordCopy objectForKeyedSubscript:@"allowsMultimedia"];
      -[CLSOpenResponseAnswerFormat setAllowsMultimedia:](v13, "setAllowsMultimedia:", [v14 BOOLValue]);
    }

    self = v13;

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)populate:(id)populate
{
  v10.receiver = self;
  v10.super_class = CLSOpenResponseAnswerFormat;
  populateCopy = populate;
  [(CLSOpenResponseAnswerFormat *)&v10 populate:populateCopy];
  [(CLSOpenResponseAnswerFormat *)self type:v10.receiver];
  v5 = NSStringFromOpenResponseType();
  [populateCopy setObject:v5 forKeyedSubscript:@"type"];

  teacherProvidedText = [(CLSOpenResponseAnswerFormat *)self teacherProvidedText];
  [populateCopy setObject:teacherProvidedText forKeyedSubscript:@"teacherProvidedText"];

  v7 = [NSNumber numberWithInteger:[(CLSOpenResponseAnswerFormat *)self minimumTextLength]];
  [populateCopy setObject:v7 forKeyedSubscript:@"minimumTextLength"];

  v8 = [NSNumber numberWithInteger:[(CLSOpenResponseAnswerFormat *)self maximumTextLength]];
  [populateCopy setObject:v8 forKeyedSubscript:@"maximumTextLength"];

  v9 = [NSNumber numberWithBool:[(CLSOpenResponseAnswerFormat *)self allowsMultimedia]];
  [populateCopy setObject:v9 forKeyedSubscript:@"allowsMultimedia"];

  [(CLSOpenResponseAnswerFormat *)self updateParentReferencesForRecord:populateCopy];
}

- (int64_t)syncBackend:(id)backend
{
  backendCopy = backend;
  parentObjectID = [(CLSOpenResponseAnswerFormat *)self parentObjectID];
  if (parentObjectID)
  {
    v6 = [backendCopy select:objc_opt_class() identity:parentObjectID];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 syncBackend:backendCopy];
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

@end