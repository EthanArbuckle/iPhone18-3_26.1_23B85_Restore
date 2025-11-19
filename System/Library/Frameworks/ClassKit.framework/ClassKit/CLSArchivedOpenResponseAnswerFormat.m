@interface CLSArchivedOpenResponseAnswerFormat
+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5;
- (id)initWithDatabaseRow:(id)a3;
- (void)bindTo:(id)a3;
@end

@implementation CLSArchivedOpenResponseAnswerFormat

- (id)initWithDatabaseRow:(id)a3
{
  v4 = a3;
  v5 = [(CLSArchivedOpenResponseAnswerFormat *)self _init];
  v6 = v5;
  if (v5)
  {
    [v5 _initCommonPropsWithDatabaseRow:v4];
    v7 = sub_10016D778(v4, @"parentObjectID");
    [v6 setParentObjectID:v7];

    v8 = sub_10016D778(v4, @"answerFormatType");
    [v6 setAnswerFormatType:{objc_msgSend(v8, "intValue")}];

    v9 = sub_10016D778(v4, @"teacherProvidedText");
    [v6 setTeacherProvidedText:v9];

    v10 = sub_10016D778(v4, @"maximumTextLength");
    [v6 setMaximumTextLength:{objc_msgSend(v10, "integerValue")}];

    v11 = sub_10016D778(v4, @"minimumTextLength");
    [v6 setMinimumTextLength:{objc_msgSend(v11, "integerValue")}];

    v12 = sub_10016D778(v4, @"type");
    [v6 setType:{objc_msgSend(v12, "intValue")}];

    v13 = sub_10016D778(v4, @"allowsMultimedia");
    [v6 setAllowsMultimedia:{objc_msgSend(v13, "BOOLValue")}];
  }

  return v6;
}

- (void)bindTo:(id)a3
{
  v13.receiver = self;
  v13.super_class = CLSArchivedOpenResponseAnswerFormat;
  v4 = a3;
  [(CLSArchivedOpenResponseAnswerFormat *)&v13 bindTo:v4];
  v14 = @"appIdentifier";
  v5 = [NSArray arrayWithObjects:&v14 count:1, v13.receiver, v13.super_class];
  sub_1000983A8(v4, v5);

  v6 = [(CLSArchivedOpenResponseAnswerFormat *)self parentObjectID];
  sub_1000982FC(v4, v6, @"parentObjectID");

  v7 = [NSNumber numberWithInteger:[(CLSArchivedOpenResponseAnswerFormat *)self answerFormatType]];
  sub_1000982FC(v4, v7, @"answerFormatType");

  v8 = [NSNumber numberWithInteger:[(CLSArchivedOpenResponseAnswerFormat *)self maximumTextLength]];
  sub_1000982FC(v4, v8, @"maximumTextLength");

  v9 = [NSNumber numberWithInteger:[(CLSArchivedOpenResponseAnswerFormat *)self minimumTextLength]];
  sub_1000982FC(v4, v9, @"minimumTextLength");

  v10 = [(CLSArchivedOpenResponseAnswerFormat *)self teacherProvidedText];
  sub_1000982FC(v4, v10, @"teacherProvidedText");

  v11 = [NSNumber numberWithInteger:[(CLSArchivedOpenResponseAnswerFormat *)self type]];
  sub_1000982FC(v4, v11, @"type");

  v12 = [NSNumber numberWithBool:[(CLSArchivedOpenResponseAnswerFormat *)self allowsMultimedia]];
  sub_1000982FC(v4, v12, @"allowsMultimedia");
}

+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (a3 == 1)
  {
LABEL_6:
    if (sub_1000B9298(v8, @"alter table CLSArchivedOpenResponseAnswerFormat add column allowsMultimedia integer", 0, 0, 0))
    {
      a3 = 2;
      goto LABEL_8;
    }

LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  if (!a3)
  {
    if (!sub_1000B9298(v7, @"create table CLSArchivedOpenResponseAnswerFormat (\n    objectID          text not null,\n    parentObjectID    text not null,\n    dateCreated       real not null,\n    dateLastModified  real not null,\n    type                  integer,\n    answerFormatType      integer,\n    maximumTextLength     integer,\n    minimumTextLength     integer,\n    teacherProvidedText   text,\nforeign key (parentObjectID) references CLSArchivedQuestionStep(objectID) on delete cascade on update cascade\n)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index if not exists CLSArchivedOpenResponseAnswerFormat_objectID on CLSArchivedOpenResponseAnswerFormat (objectID)", 0, 0, 0) || !sub_1000B9298(v8, @"create index if not exists CLSArchivedOpenResponseAnswerFormat_parentObjectID on CLSArchivedOpenResponseAnswerFormat (parentObjectID)", 0, 0, 0))
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

LABEL_8:
  *a4 = a3;
  v9 = 1;
LABEL_10:

  return v9;
}

@end