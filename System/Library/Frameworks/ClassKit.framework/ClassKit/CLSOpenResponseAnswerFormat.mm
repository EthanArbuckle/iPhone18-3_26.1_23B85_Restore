@interface CLSOpenResponseAnswerFormat
+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5;
- (BOOL)canCopyToDatabase:(id)a3;
- (CLSOpenResponseAnswerFormat)initWithDatabaseRow:(id)a3;
- (id)initWithCKRecord:(id)a3;
- (int64_t)syncBackend:(id)a3;
- (void)bindTo:(id)a3;
- (void)populate:(id)a3;
@end

@implementation CLSOpenResponseAnswerFormat

- (CLSOpenResponseAnswerFormat)initWithDatabaseRow:(id)a3
{
  v4 = a3;
  v5 = [(CLSOpenResponseAnswerFormat *)self _init];
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
  v13.super_class = CLSOpenResponseAnswerFormat;
  v4 = a3;
  [(CLSOpenResponseAnswerFormat *)&v13 bindTo:v4];
  v14 = @"appIdentifier";
  v5 = [NSArray arrayWithObjects:&v14 count:1, v13.receiver, v13.super_class];
  sub_1000983A8(v4, v5);

  v6 = [(CLSOpenResponseAnswerFormat *)self parentObjectID];
  sub_1000982FC(v4, v6, @"parentObjectID");

  v7 = [NSNumber numberWithInteger:[(CLSOpenResponseAnswerFormat *)self answerFormatType]];
  sub_1000982FC(v4, v7, @"answerFormatType");

  v8 = [NSNumber numberWithInteger:[(CLSOpenResponseAnswerFormat *)self maximumTextLength]];
  sub_1000982FC(v4, v8, @"maximumTextLength");

  v9 = [NSNumber numberWithInteger:[(CLSOpenResponseAnswerFormat *)self minimumTextLength]];
  sub_1000982FC(v4, v9, @"minimumTextLength");

  v10 = [(CLSOpenResponseAnswerFormat *)self teacherProvidedText];
  sub_1000982FC(v4, v10, @"teacherProvidedText");

  v11 = [NSNumber numberWithInteger:[(CLSOpenResponseAnswerFormat *)self type]];
  sub_1000982FC(v4, v11, @"type");

  v12 = [NSNumber numberWithBool:[(CLSOpenResponseAnswerFormat *)self allowsMultimedia]];
  sub_1000982FC(v4, v12, @"allowsMultimedia");
}

+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (a3 == 1)
  {
LABEL_6:
    if (sub_1000B9298(v8, @"alter table CLSOpenResponseAnswerFormat add column allowsMultimedia integer", 0, 0, 0))
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
    if (!sub_1000B9298(v7, @"create table CLSOpenResponseAnswerFormat (\n    objectID          text not null,\n    parentObjectID    text not null,\n    dateCreated       real not null,\n    dateLastModified  real not null,\n    type                  integer,\n    answerFormatType      integer,\n    maximumTextLength     integer,\n    minimumTextLength     integer,\n    teacherProvidedText   text,\nforeign key (parentObjectID) references CLSQuestionStep(objectID) on delete cascade on update cascade\n)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index if not exists CLSOpenResponseAnswerFormat_objectID on CLSOpenResponseAnswerFormat (objectID)", 0, 0, 0) || !sub_1000B9298(v8, @"create index if not exists CLSOpenResponseAnswerFormat_parentObjectID on CLSOpenResponseAnswerFormat (parentObjectID)", 0, 0, 0))
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

- (BOOL)canCopyToDatabase:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(CLSOpenResponseAnswerFormat *)self parentObjectID];
  v7 = [v4 select:v5 identity:v6];

  LOBYTE(v6) = [v7 canCopyToDatabase:v4];
  return v6;
}

- (id)initWithCKRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"type"];
  if (v5)
  {
    v6 = CLSOpenResponseTypeFromString();
    v7 = [v4 objectForKeyedSubscript:@"teacherProvidedText"];
    v8 = [v4 objectForKeyedSubscript:@"minimumTextLength"];
    v9 = [v8 integerValue];

    v10 = [v4 objectForKeyedSubscript:@"maximumTextLength"];
    v11 = [v10 integerValue];

    v12 = [(CLSOpenResponseAnswerFormat *)self initWithType:v6 starterText:v7 minimumLength:v9 maximumLength:v11];
    v13 = v12;
    if (v12)
    {
      [(CLSOpenResponseAnswerFormat *)v12 _initCommonPropsWithRecord:v4];
      v14 = [v4 objectForKeyedSubscript:@"allowsMultimedia"];
      -[CLSOpenResponseAnswerFormat setAllowsMultimedia:](v13, "setAllowsMultimedia:", [v14 BOOLValue]);
    }

    self = v13;

    v15 = self;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)populate:(id)a3
{
  v10.receiver = self;
  v10.super_class = CLSOpenResponseAnswerFormat;
  v4 = a3;
  [(CLSOpenResponseAnswerFormat *)&v10 populate:v4];
  [(CLSOpenResponseAnswerFormat *)self type:v10.receiver];
  v5 = NSStringFromOpenResponseType();
  [v4 setObject:v5 forKeyedSubscript:@"type"];

  v6 = [(CLSOpenResponseAnswerFormat *)self teacherProvidedText];
  [v4 setObject:v6 forKeyedSubscript:@"teacherProvidedText"];

  v7 = [NSNumber numberWithInteger:[(CLSOpenResponseAnswerFormat *)self minimumTextLength]];
  [v4 setObject:v7 forKeyedSubscript:@"minimumTextLength"];

  v8 = [NSNumber numberWithInteger:[(CLSOpenResponseAnswerFormat *)self maximumTextLength]];
  [v4 setObject:v8 forKeyedSubscript:@"maximumTextLength"];

  v9 = [NSNumber numberWithBool:[(CLSOpenResponseAnswerFormat *)self allowsMultimedia]];
  [v4 setObject:v9 forKeyedSubscript:@"allowsMultimedia"];

  [(CLSOpenResponseAnswerFormat *)self updateParentReferencesForRecord:v4];
}

- (int64_t)syncBackend:(id)a3
{
  v4 = a3;
  v5 = [(CLSOpenResponseAnswerFormat *)self parentObjectID];
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

@end