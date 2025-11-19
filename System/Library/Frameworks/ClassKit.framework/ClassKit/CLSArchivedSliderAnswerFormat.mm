@interface CLSArchivedSliderAnswerFormat
+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5;
- (id)initWithDatabaseRow:(id)a3;
- (void)bindTo:(id)a3;
@end

@implementation CLSArchivedSliderAnswerFormat

- (id)initWithDatabaseRow:(id)a3
{
  v4 = a3;
  v5 = [(CLSArchivedSliderAnswerFormat *)self _init];
  v6 = v5;
  if (v5)
  {
    [v5 _initCommonPropsWithDatabaseRow:v4];
    v7 = sub_10016D778(v4, @"parentObjectID");
    [v6 setParentObjectID:v7];

    v8 = sub_10016D778(v4, @"answerFormatType");
    [v6 setAnswerFormatType:{objc_msgSend(v8, "intValue")}];

    v9 = sub_10016D778(v4, @"minimum");
    [v6 setMinimum:{objc_msgSend(v9, "integerValue")}];

    v10 = sub_10016D778(v4, @"maximum");
    [v6 setMaximum:{objc_msgSend(v10, "integerValue")}];

    v11 = sub_10016D778(v4, @"leadingValueLabel");
    [v6 setLeadingValueLabel:v11];

    v12 = sub_10016D778(v4, @"midValueLabel");
    [v6 setMidValueLabel:v12];

    v13 = sub_10016D778(v4, @"trailingValueLabel");
    [v6 setTrailingValueLabel:v13];

    v14 = sub_10016D778(v4, @"type");
    [v6 setType:{objc_msgSend(v14, "intValue")}];
  }

  return v6;
}

- (void)bindTo:(id)a3
{
  v14.receiver = self;
  v14.super_class = CLSArchivedSliderAnswerFormat;
  v4 = a3;
  [(CLSArchivedSliderAnswerFormat *)&v14 bindTo:v4];
  v15 = @"appIdentifier";
  v5 = [NSArray arrayWithObjects:&v15 count:1, v14.receiver, v14.super_class];
  sub_1000983A8(v4, v5);

  v6 = [(CLSArchivedSliderAnswerFormat *)self parentObjectID];
  sub_1000982FC(v4, v6, @"parentObjectID");

  v7 = [NSNumber numberWithInteger:[(CLSArchivedSliderAnswerFormat *)self answerFormatType]];
  sub_1000982FC(v4, v7, @"answerFormatType");

  v8 = [NSNumber numberWithInteger:[(CLSArchivedSliderAnswerFormat *)self minimum]];
  sub_1000982FC(v4, v8, @"minimum");

  v9 = [NSNumber numberWithInteger:[(CLSArchivedSliderAnswerFormat *)self maximum]];
  sub_1000982FC(v4, v9, @"maximum");

  v10 = [(CLSArchivedSliderAnswerFormat *)self leadingValueLabel];
  sub_1000982FC(v4, v10, @"leadingValueLabel");

  v11 = [(CLSArchivedSliderAnswerFormat *)self trailingValueLabel];
  sub_1000982FC(v4, v11, @"trailingValueLabel");

  v12 = [(CLSArchivedSliderAnswerFormat *)self midValueLabel];
  sub_1000982FC(v4, v12, @"midValueLabel");

  v13 = [NSNumber numberWithInteger:[(CLSArchivedSliderAnswerFormat *)self type]];
  sub_1000982FC(v4, v13, @"type");
}

+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (!a3)
  {
    if (!sub_1000B9298(v7, @"create table CLSArchivedSliderAnswerFormat (\n    objectID          text not null,\n    parentObjectID    text not null,\n    dateCreated       real not null,\n    dateLastModified  real not null,\n    type              integer,\n    answerFormatType  integer,\n    minimum           integer,\n    maximum           integer,\n    leadingValueLabel     text,\n    trailingValueLabel    text,\n    midValueLabel         text,\nforeign key (parentObjectID) references CLSArchivedQuestionStep(objectID) on delete cascade on update cascade\n)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index if not exists CLSArchivedSliderAnswerFormat_objectID on CLSArchivedSliderAnswerFormat (objectID)", 0, 0, 0) || !sub_1000B9298(v8, @"create index if not exists CLSArchivedSliderAnswerFormat_parentObjectID on CLSArchivedSliderAnswerFormat (parentObjectID)", 0, 0, 0))
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

@end