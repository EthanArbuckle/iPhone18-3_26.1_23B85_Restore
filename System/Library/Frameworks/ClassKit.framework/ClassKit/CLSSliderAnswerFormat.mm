@interface CLSSliderAnswerFormat
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
- (BOOL)canCopyToDatabase:(id)database;
- (CLSSliderAnswerFormat)initWithDatabaseRow:(id)row;
- (id)initWithCKRecord:(id)record;
- (int64_t)syncBackend:(id)backend;
- (void)bindTo:(id)to;
- (void)populate:(id)populate;
@end

@implementation CLSSliderAnswerFormat

- (CLSSliderAnswerFormat)initWithDatabaseRow:(id)row
{
  rowCopy = row;
  _init = [(CLSSliderAnswerFormat *)self _init];
  v6 = _init;
  if (_init)
  {
    [_init _initCommonPropsWithDatabaseRow:rowCopy];
    v7 = sub_10016D778(rowCopy, @"parentObjectID");
    [v6 setParentObjectID:v7];

    v8 = sub_10016D778(rowCopy, @"answerFormatType");
    [v6 setAnswerFormatType:{objc_msgSend(v8, "intValue")}];

    v9 = sub_10016D778(rowCopy, @"minimum");
    [v6 setMinimum:{objc_msgSend(v9, "integerValue")}];

    v10 = sub_10016D778(rowCopy, @"maximum");
    [v6 setMaximum:{objc_msgSend(v10, "integerValue")}];

    v11 = sub_10016D778(rowCopy, @"leadingValueLabel");
    [v6 setLeadingValueLabel:v11];

    v12 = sub_10016D778(rowCopy, @"midValueLabel");
    [v6 setMidValueLabel:v12];

    v13 = sub_10016D778(rowCopy, @"trailingValueLabel");
    [v6 setTrailingValueLabel:v13];

    v14 = sub_10016D778(rowCopy, @"type");
    [v6 setType:{objc_msgSend(v14, "intValue")}];
  }

  return v6;
}

- (void)bindTo:(id)to
{
  v14.receiver = self;
  v14.super_class = CLSSliderAnswerFormat;
  toCopy = to;
  [(CLSSliderAnswerFormat *)&v14 bindTo:toCopy];
  v15 = @"appIdentifier";
  v5 = [NSArray arrayWithObjects:&v15 count:1, v14.receiver, v14.super_class];
  sub_1000983A8(toCopy, v5);

  parentObjectID = [(CLSSliderAnswerFormat *)self parentObjectID];
  sub_1000982FC(toCopy, parentObjectID, @"parentObjectID");

  v7 = [NSNumber numberWithInteger:[(CLSSliderAnswerFormat *)self answerFormatType]];
  sub_1000982FC(toCopy, v7, @"answerFormatType");

  v8 = [NSNumber numberWithInteger:[(CLSSliderAnswerFormat *)self minimum]];
  sub_1000982FC(toCopy, v8, @"minimum");

  v9 = [NSNumber numberWithInteger:[(CLSSliderAnswerFormat *)self maximum]];
  sub_1000982FC(toCopy, v9, @"maximum");

  leadingValueLabel = [(CLSSliderAnswerFormat *)self leadingValueLabel];
  sub_1000982FC(toCopy, leadingValueLabel, @"leadingValueLabel");

  trailingValueLabel = [(CLSSliderAnswerFormat *)self trailingValueLabel];
  sub_1000982FC(toCopy, trailingValueLabel, @"trailingValueLabel");

  midValueLabel = [(CLSSliderAnswerFormat *)self midValueLabel];
  sub_1000982FC(toCopy, midValueLabel, @"midValueLabel");

  v13 = [NSNumber numberWithInteger:[(CLSSliderAnswerFormat *)self type]];
  sub_1000982FC(toCopy, v13, @"type");
}

+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database
{
  databaseCopy = database;
  v8 = databaseCopy;
  if (!version)
  {
    if (!sub_1000B9298(databaseCopy, @"create table CLSSliderAnswerFormat (\n    objectID          text not null,\n    parentObjectID    text not null,\n    dateCreated       real not null,\n    dateLastModified  real not null,\n    type              integer,\n    answerFormatType  integer,\n    minimum           integer,\n    maximum           integer,\n    leadingValueLabel     text,\n    trailingValueLabel    text,\n    midValueLabel         text,\nforeign key (parentObjectID) references CLSQuestionStep(objectID) on delete cascade on update cascade\n)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index if not exists CLSSliderAnswerFormat_objectID on CLSSliderAnswerFormat (objectID)", 0, 0, 0) || !sub_1000B9298(v8, @"create index if not exists CLSSliderAnswerFormat_parentObjectID on CLSSliderAnswerFormat (parentObjectID)", 0, 0, 0))
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

- (BOOL)canCopyToDatabase:(id)database
{
  databaseCopy = database;
  v5 = objc_opt_class();
  parentObjectID = [(CLSSliderAnswerFormat *)self parentObjectID];
  v7 = [databaseCopy select:v5 identity:parentObjectID];

  LOBYTE(parentObjectID) = [v7 canCopyToDatabase:databaseCopy];
  return parentObjectID;
}

- (id)initWithCKRecord:(id)record
{
  recordCopy = record;
  v5 = [recordCopy objectForKeyedSubscript:@"type"];
  if (v5 && CLSSliderAnswerFormatTypeFromString() == 1)
  {
    v6 = [(CLSSliderAnswerFormat *)self init];
    v7 = [recordCopy objectForKeyedSubscript:@"minimum"];
    -[CLSSliderAnswerFormat setMinimum:](v6, "setMinimum:", [v7 integerValue]);

    v8 = [recordCopy objectForKeyedSubscript:@"maximum"];
    -[CLSSliderAnswerFormat setMaximum:](v6, "setMaximum:", [v8 integerValue]);

    v9 = [recordCopy objectForKeyedSubscript:@"leadingValueLabel"];
    [(CLSSliderAnswerFormat *)v6 setLeadingValueLabel:v9];

    v10 = [recordCopy objectForKeyedSubscript:@"trailingValueLabel"];
    [(CLSSliderAnswerFormat *)v6 setTrailingValueLabel:v10];

    v11 = [recordCopy objectForKeyedSubscript:@"midValueLabel"];
    [(CLSSliderAnswerFormat *)v6 setMidValueLabel:v11];

    if (v6)
    {
      [(CLSSliderAnswerFormat *)v6 _initCommonPropsWithRecord:recordCopy];
    }

    self = v6;
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
  v11.receiver = self;
  v11.super_class = CLSSliderAnswerFormat;
  populateCopy = populate;
  [(CLSSliderAnswerFormat *)&v11 populate:populateCopy];
  [(CLSSliderAnswerFormat *)self type:v11.receiver];
  v5 = NSStringFromCLSSliderAnswerFormatType();
  [populateCopy setObject:v5 forKeyedSubscript:@"type"];

  v6 = [NSNumber numberWithInteger:[(CLSSliderAnswerFormat *)self maximum]];
  [populateCopy setObject:v6 forKeyedSubscript:@"maximum"];

  v7 = [NSNumber numberWithInteger:[(CLSSliderAnswerFormat *)self minimum]];
  [populateCopy setObject:v7 forKeyedSubscript:@"minimum"];

  leadingValueLabel = [(CLSSliderAnswerFormat *)self leadingValueLabel];
  [populateCopy setObject:leadingValueLabel forKeyedSubscript:@"leadingValueLabel"];

  trailingValueLabel = [(CLSSliderAnswerFormat *)self trailingValueLabel];
  [populateCopy setObject:trailingValueLabel forKeyedSubscript:@"trailingValueLabel"];

  midValueLabel = [(CLSSliderAnswerFormat *)self midValueLabel];
  [populateCopy setObject:midValueLabel forKeyedSubscript:@"midValueLabel"];

  [(CLSSliderAnswerFormat *)self updateParentReferencesForRecord:populateCopy];
}

- (int64_t)syncBackend:(id)backend
{
  backendCopy = backend;
  parentObjectID = [(CLSSliderAnswerFormat *)self parentObjectID];
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