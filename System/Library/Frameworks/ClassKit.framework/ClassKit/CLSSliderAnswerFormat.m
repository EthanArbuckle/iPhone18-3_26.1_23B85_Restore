@interface CLSSliderAnswerFormat
+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5;
- (BOOL)canCopyToDatabase:(id)a3;
- (CLSSliderAnswerFormat)initWithDatabaseRow:(id)a3;
- (id)initWithCKRecord:(id)a3;
- (int64_t)syncBackend:(id)a3;
- (void)bindTo:(id)a3;
- (void)populate:(id)a3;
@end

@implementation CLSSliderAnswerFormat

- (CLSSliderAnswerFormat)initWithDatabaseRow:(id)a3
{
  v4 = a3;
  v5 = [(CLSSliderAnswerFormat *)self _init];
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
  v14.super_class = CLSSliderAnswerFormat;
  v4 = a3;
  [(CLSSliderAnswerFormat *)&v14 bindTo:v4];
  v15 = @"appIdentifier";
  v5 = [NSArray arrayWithObjects:&v15 count:1, v14.receiver, v14.super_class];
  sub_1000983A8(v4, v5);

  v6 = [(CLSSliderAnswerFormat *)self parentObjectID];
  sub_1000982FC(v4, v6, @"parentObjectID");

  v7 = [NSNumber numberWithInteger:[(CLSSliderAnswerFormat *)self answerFormatType]];
  sub_1000982FC(v4, v7, @"answerFormatType");

  v8 = [NSNumber numberWithInteger:[(CLSSliderAnswerFormat *)self minimum]];
  sub_1000982FC(v4, v8, @"minimum");

  v9 = [NSNumber numberWithInteger:[(CLSSliderAnswerFormat *)self maximum]];
  sub_1000982FC(v4, v9, @"maximum");

  v10 = [(CLSSliderAnswerFormat *)self leadingValueLabel];
  sub_1000982FC(v4, v10, @"leadingValueLabel");

  v11 = [(CLSSliderAnswerFormat *)self trailingValueLabel];
  sub_1000982FC(v4, v11, @"trailingValueLabel");

  v12 = [(CLSSliderAnswerFormat *)self midValueLabel];
  sub_1000982FC(v4, v12, @"midValueLabel");

  v13 = [NSNumber numberWithInteger:[(CLSSliderAnswerFormat *)self type]];
  sub_1000982FC(v4, v13, @"type");
}

+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (!a3)
  {
    if (!sub_1000B9298(v7, @"create table CLSSliderAnswerFormat (\n    objectID          text not null,\n    parentObjectID    text not null,\n    dateCreated       real not null,\n    dateLastModified  real not null,\n    type              integer,\n    answerFormatType  integer,\n    minimum           integer,\n    maximum           integer,\n    leadingValueLabel     text,\n    trailingValueLabel    text,\n    midValueLabel         text,\nforeign key (parentObjectID) references CLSQuestionStep(objectID) on delete cascade on update cascade\n)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index if not exists CLSSliderAnswerFormat_objectID on CLSSliderAnswerFormat (objectID)", 0, 0, 0) || !sub_1000B9298(v8, @"create index if not exists CLSSliderAnswerFormat_parentObjectID on CLSSliderAnswerFormat (parentObjectID)", 0, 0, 0))
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

- (BOOL)canCopyToDatabase:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(CLSSliderAnswerFormat *)self parentObjectID];
  v7 = [v4 select:v5 identity:v6];

  LOBYTE(v6) = [v7 canCopyToDatabase:v4];
  return v6;
}

- (id)initWithCKRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"type"];
  if (v5 && CLSSliderAnswerFormatTypeFromString() == 1)
  {
    v6 = [(CLSSliderAnswerFormat *)self init];
    v7 = [v4 objectForKeyedSubscript:@"minimum"];
    -[CLSSliderAnswerFormat setMinimum:](v6, "setMinimum:", [v7 integerValue]);

    v8 = [v4 objectForKeyedSubscript:@"maximum"];
    -[CLSSliderAnswerFormat setMaximum:](v6, "setMaximum:", [v8 integerValue]);

    v9 = [v4 objectForKeyedSubscript:@"leadingValueLabel"];
    [(CLSSliderAnswerFormat *)v6 setLeadingValueLabel:v9];

    v10 = [v4 objectForKeyedSubscript:@"trailingValueLabel"];
    [(CLSSliderAnswerFormat *)v6 setTrailingValueLabel:v10];

    v11 = [v4 objectForKeyedSubscript:@"midValueLabel"];
    [(CLSSliderAnswerFormat *)v6 setMidValueLabel:v11];

    if (v6)
    {
      [(CLSSliderAnswerFormat *)v6 _initCommonPropsWithRecord:v4];
    }

    self = v6;
    v12 = self;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)populate:(id)a3
{
  v11.receiver = self;
  v11.super_class = CLSSliderAnswerFormat;
  v4 = a3;
  [(CLSSliderAnswerFormat *)&v11 populate:v4];
  [(CLSSliderAnswerFormat *)self type:v11.receiver];
  v5 = NSStringFromCLSSliderAnswerFormatType();
  [v4 setObject:v5 forKeyedSubscript:@"type"];

  v6 = [NSNumber numberWithInteger:[(CLSSliderAnswerFormat *)self maximum]];
  [v4 setObject:v6 forKeyedSubscript:@"maximum"];

  v7 = [NSNumber numberWithInteger:[(CLSSliderAnswerFormat *)self minimum]];
  [v4 setObject:v7 forKeyedSubscript:@"minimum"];

  v8 = [(CLSSliderAnswerFormat *)self leadingValueLabel];
  [v4 setObject:v8 forKeyedSubscript:@"leadingValueLabel"];

  v9 = [(CLSSliderAnswerFormat *)self trailingValueLabel];
  [v4 setObject:v9 forKeyedSubscript:@"trailingValueLabel"];

  v10 = [(CLSSliderAnswerFormat *)self midValueLabel];
  [v4 setObject:v10 forKeyedSubscript:@"midValueLabel"];

  [(CLSSliderAnswerFormat *)self updateParentReferencesForRecord:v4];
}

- (int64_t)syncBackend:(id)a3
{
  v4 = a3;
  v5 = [(CLSSliderAnswerFormat *)self parentObjectID];
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