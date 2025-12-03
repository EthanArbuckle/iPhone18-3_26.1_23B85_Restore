@interface CLSArchivedSliderAnswerFormat
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
- (id)initWithDatabaseRow:(id)row;
- (void)bindTo:(id)to;
@end

@implementation CLSArchivedSliderAnswerFormat

- (id)initWithDatabaseRow:(id)row
{
  rowCopy = row;
  _init = [(CLSArchivedSliderAnswerFormat *)self _init];
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
  v14.super_class = CLSArchivedSliderAnswerFormat;
  toCopy = to;
  [(CLSArchivedSliderAnswerFormat *)&v14 bindTo:toCopy];
  v15 = @"appIdentifier";
  v5 = [NSArray arrayWithObjects:&v15 count:1, v14.receiver, v14.super_class];
  sub_1000983A8(toCopy, v5);

  parentObjectID = [(CLSArchivedSliderAnswerFormat *)self parentObjectID];
  sub_1000982FC(toCopy, parentObjectID, @"parentObjectID");

  v7 = [NSNumber numberWithInteger:[(CLSArchivedSliderAnswerFormat *)self answerFormatType]];
  sub_1000982FC(toCopy, v7, @"answerFormatType");

  v8 = [NSNumber numberWithInteger:[(CLSArchivedSliderAnswerFormat *)self minimum]];
  sub_1000982FC(toCopy, v8, @"minimum");

  v9 = [NSNumber numberWithInteger:[(CLSArchivedSliderAnswerFormat *)self maximum]];
  sub_1000982FC(toCopy, v9, @"maximum");

  leadingValueLabel = [(CLSArchivedSliderAnswerFormat *)self leadingValueLabel];
  sub_1000982FC(toCopy, leadingValueLabel, @"leadingValueLabel");

  trailingValueLabel = [(CLSArchivedSliderAnswerFormat *)self trailingValueLabel];
  sub_1000982FC(toCopy, trailingValueLabel, @"trailingValueLabel");

  midValueLabel = [(CLSArchivedSliderAnswerFormat *)self midValueLabel];
  sub_1000982FC(toCopy, midValueLabel, @"midValueLabel");

  v13 = [NSNumber numberWithInteger:[(CLSArchivedSliderAnswerFormat *)self type]];
  sub_1000982FC(toCopy, v13, @"type");
}

+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database
{
  databaseCopy = database;
  v8 = databaseCopy;
  if (!version)
  {
    if (!sub_1000B9298(databaseCopy, @"create table CLSArchivedSliderAnswerFormat (\n    objectID          text not null,\n    parentObjectID    text not null,\n    dateCreated       real not null,\n    dateLastModified  real not null,\n    type              integer,\n    answerFormatType  integer,\n    minimum           integer,\n    maximum           integer,\n    leadingValueLabel     text,\n    trailingValueLabel    text,\n    midValueLabel         text,\nforeign key (parentObjectID) references CLSArchivedQuestionStep(objectID) on delete cascade on update cascade\n)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index if not exists CLSArchivedSliderAnswerFormat_objectID on CLSArchivedSliderAnswerFormat (objectID)", 0, 0, 0) || !sub_1000B9298(v8, @"create index if not exists CLSArchivedSliderAnswerFormat_parentObjectID on CLSArchivedSliderAnswerFormat (parentObjectID)", 0, 0, 0))
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

@end