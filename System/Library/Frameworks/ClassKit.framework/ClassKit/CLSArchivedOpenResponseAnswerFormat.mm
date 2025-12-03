@interface CLSArchivedOpenResponseAnswerFormat
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
- (id)initWithDatabaseRow:(id)row;
- (void)bindTo:(id)to;
@end

@implementation CLSArchivedOpenResponseAnswerFormat

- (id)initWithDatabaseRow:(id)row
{
  rowCopy = row;
  _init = [(CLSArchivedOpenResponseAnswerFormat *)self _init];
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
  v13.super_class = CLSArchivedOpenResponseAnswerFormat;
  toCopy = to;
  [(CLSArchivedOpenResponseAnswerFormat *)&v13 bindTo:toCopy];
  v14 = @"appIdentifier";
  v5 = [NSArray arrayWithObjects:&v14 count:1, v13.receiver, v13.super_class];
  sub_1000983A8(toCopy, v5);

  parentObjectID = [(CLSArchivedOpenResponseAnswerFormat *)self parentObjectID];
  sub_1000982FC(toCopy, parentObjectID, @"parentObjectID");

  v7 = [NSNumber numberWithInteger:[(CLSArchivedOpenResponseAnswerFormat *)self answerFormatType]];
  sub_1000982FC(toCopy, v7, @"answerFormatType");

  v8 = [NSNumber numberWithInteger:[(CLSArchivedOpenResponseAnswerFormat *)self maximumTextLength]];
  sub_1000982FC(toCopy, v8, @"maximumTextLength");

  v9 = [NSNumber numberWithInteger:[(CLSArchivedOpenResponseAnswerFormat *)self minimumTextLength]];
  sub_1000982FC(toCopy, v9, @"minimumTextLength");

  teacherProvidedText = [(CLSArchivedOpenResponseAnswerFormat *)self teacherProvidedText];
  sub_1000982FC(toCopy, teacherProvidedText, @"teacherProvidedText");

  v11 = [NSNumber numberWithInteger:[(CLSArchivedOpenResponseAnswerFormat *)self type]];
  sub_1000982FC(toCopy, v11, @"type");

  v12 = [NSNumber numberWithBool:[(CLSArchivedOpenResponseAnswerFormat *)self allowsMultimedia]];
  sub_1000982FC(toCopy, v12, @"allowsMultimedia");
}

+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database
{
  databaseCopy = database;
  v8 = databaseCopy;
  if (version == 1)
  {
LABEL_6:
    if (sub_1000B9298(v8, @"alter table CLSArchivedOpenResponseAnswerFormat add column allowsMultimedia integer", 0, 0, 0))
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
    if (!sub_1000B9298(databaseCopy, @"create table CLSArchivedOpenResponseAnswerFormat (\n    objectID          text not null,\n    parentObjectID    text not null,\n    dateCreated       real not null,\n    dateLastModified  real not null,\n    type                  integer,\n    answerFormatType      integer,\n    maximumTextLength     integer,\n    minimumTextLength     integer,\n    teacherProvidedText   text,\nforeign key (parentObjectID) references CLSArchivedQuestionStep(objectID) on delete cascade on update cascade\n)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index if not exists CLSArchivedOpenResponseAnswerFormat_objectID on CLSArchivedOpenResponseAnswerFormat (objectID)", 0, 0, 0) || !sub_1000B9298(v8, @"create index if not exists CLSArchivedOpenResponseAnswerFormat_parentObjectID on CLSArchivedOpenResponseAnswerFormat (parentObjectID)", 0, 0, 0))
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

@end