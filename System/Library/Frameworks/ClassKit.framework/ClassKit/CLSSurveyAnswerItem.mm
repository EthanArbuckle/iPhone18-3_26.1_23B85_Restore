@interface CLSSurveyAnswerItem
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
- (CLSSurveyAnswerItem)initWithCKRecord:(id)record;
- (id)initWithDatabaseRow:(id)row;
- (void)bindTo:(id)to;
- (void)populate:(id)populate;
- (void)willBeDeletedFromDatabase:(id)database;
@end

@implementation CLSSurveyAnswerItem

- (CLSSurveyAnswerItem)initWithCKRecord:(id)record
{
  recordCopy = record;
  v5 = [recordCopy objectForKeyedSubscript:@"surveyID"];
  v6 = [recordCopy objectForKeyedSubscript:@"responderPersonID"];
  v7 = [recordCopy objectForKeyedSubscript:@"questionID"];
  v8 = [(CLSSurveyAnswerItem *)self initWithSurveyID:v5 questionID:v7 responderID:v6];
  v9 = v8;
  if (v8)
  {
    [(CLSSurveyAnswerItem *)v8 _initCommonPropsWithRecord:recordCopy];
    v10 = [recordCopy objectForKeyedSubscript:@"answerType"];
    [(CLSSurveyAnswerItem *)v9 setAnswerType:CLSAnswerTypeFromString()];

    v11 = [recordCopy objectForKeyedSubscript:@"textResponse"];
    [(CLSSurveyAnswerItem *)v9 setTextResponse:v11];

    v12 = [recordCopy objectForKeyedSubscript:@"selectedIndex"];
    -[CLSSurveyAnswerItem setSelectedIndex:](v9, "setSelectedIndex:", [v12 integerValue]);

    v13 = [recordCopy objectForKeyedSubscript:@"continuousSliderValue"];
    [v13 doubleValue];
    [(CLSSurveyAnswerItem *)v9 setContinuousSliderValue:?];

    v14 = [recordCopy objectForKeyedSubscript:@"state"];
    [(CLSSurveyAnswerItem *)v9 setState:CLSAnswerStateFromString()];

    v15 = [recordCopy objectForKeyedSubscript:@"action"];
    [(CLSSurveyAnswerItem *)v9 setAction:CLSAnswerActionFromString()];
  }

  return v9;
}

- (void)populate:(id)populate
{
  v14.receiver = self;
  v14.super_class = CLSSurveyAnswerItem;
  populateCopy = populate;
  [(CLSSurveyAnswerItem *)&v14 populate:populateCopy];
  [(CLSSurveyAnswerItem *)self answerType:v14.receiver];
  v5 = NSStringFromCLSAnswerType();
  [populateCopy setObject:v5 forKeyedSubscript:@"answerType"];

  surveyID = [(CLSSurveyAnswerItem *)self surveyID];
  [populateCopy setObject:surveyID forKeyedSubscript:@"surveyID"];

  responderPersonID = [(CLSSurveyAnswerItem *)self responderPersonID];
  [populateCopy setObject:responderPersonID forKeyedSubscript:@"responderPersonID"];

  questionID = [(CLSSurveyAnswerItem *)self questionID];
  [populateCopy setObject:questionID forKeyedSubscript:@"questionID"];

  textResponse = [(CLSSurveyAnswerItem *)self textResponse];
  [populateCopy setObject:textResponse forKeyedSubscript:@"textResponse"];

  v10 = [NSNumber numberWithInteger:[(CLSSurveyAnswerItem *)self selectedIndex]];
  [populateCopy setObject:v10 forKeyedSubscript:@"selectedIndex"];

  [(CLSSurveyAnswerItem *)self continuousSliderValue];
  v11 = [NSNumber numberWithDouble:?];
  [populateCopy setObject:v11 forKeyedSubscript:@"continuousSliderValue"];

  [(CLSSurveyAnswerItem *)self state];
  v12 = NSStringFromCLSAnswerState();
  [populateCopy setObject:v12 forKeyedSubscript:@"state"];

  [(CLSSurveyAnswerItem *)self action];
  v13 = NSStringFromCLSAnswerAction();
  [populateCopy setObject:v13 forKeyedSubscript:@"action"];

  [(CLSSurveyAnswerItem *)self updateParentReferencesForRecord:populateCopy];
}

- (id)initWithDatabaseRow:(id)row
{
  rowCopy = row;
  _init = [(CLSSurveyAnswerItem *)self _init];
  v6 = _init;
  if (_init)
  {
    [_init _initCommonPropsWithDatabaseRow:rowCopy];
    v7 = sub_10016D778(rowCopy, @"parentObjectID");
    [v6 setParentObjectID:v7];

    v8 = sub_10016D778(rowCopy, @"answerType");
    [v6 setAnswerType:{objc_msgSend(v8, "integerValue")}];

    v9 = sub_10016D778(rowCopy, @"surveyID");
    [v6 setSurveyID:v9];

    v10 = sub_10016D778(rowCopy, @"responderPersonID");
    [v6 setResponderPersonID:v10];

    v11 = sub_10016D778(rowCopy, @"questionID");
    [v6 setQuestionID:v11];

    v12 = sub_10016D778(rowCopy, @"textResponse");
    [v6 setTextResponse:v12];

    v13 = sub_10016D778(rowCopy, @"selectedIndex");
    [v6 setSelectedIndex:{objc_msgSend(v13, "integerValue")}];

    v14 = sub_10016D778(rowCopy, @"continuousSliderValue");
    [v14 doubleValue];
    [v6 setContinuousSliderValue:?];

    v15 = sub_10016D778(rowCopy, @"state");
    [v6 setState:{objc_msgSend(v15, "integerValue")}];

    v16 = sub_10016D778(rowCopy, @"action");
    [v6 setAction:{objc_msgSend(v16, "integerValue")}];
  }

  return v6;
}

- (void)bindTo:(id)to
{
  v16.receiver = self;
  v16.super_class = CLSSurveyAnswerItem;
  toCopy = to;
  [(CLSSurveyAnswerItem *)&v16 bindTo:toCopy];
  v17 = @"appIdentifier";
  v5 = [NSArray arrayWithObjects:&v17 count:1, v16.receiver, v16.super_class];
  sub_1000983A8(toCopy, v5);

  parentObjectID = [(CLSSurveyAnswerItem *)self parentObjectID];
  sub_1000982FC(toCopy, parentObjectID, @"parentObjectID");

  v7 = [NSNumber numberWithInteger:[(CLSSurveyAnswerItem *)self answerType]];
  sub_1000982FC(toCopy, v7, @"answerType");

  questionID = [(CLSSurveyAnswerItem *)self questionID];
  sub_1000982FC(toCopy, questionID, @"questionID");

  surveyID = [(CLSSurveyAnswerItem *)self surveyID];
  sub_1000982FC(toCopy, surveyID, @"surveyID");

  responderPersonID = [(CLSSurveyAnswerItem *)self responderPersonID];
  sub_1000982FC(toCopy, responderPersonID, @"responderPersonID");

  textResponse = [(CLSSurveyAnswerItem *)self textResponse];
  sub_1000982FC(toCopy, textResponse, @"textResponse");

  v12 = [NSNumber numberWithInteger:[(CLSSurveyAnswerItem *)self selectedIndex]];
  sub_1000982FC(toCopy, v12, @"selectedIndex");

  [(CLSSurveyAnswerItem *)self continuousSliderValue];
  v13 = [NSNumber numberWithDouble:?];
  sub_1000982FC(toCopy, v13, @"continuousSliderValue");

  v14 = [NSNumber numberWithInteger:[(CLSSurveyAnswerItem *)self state]];
  sub_1000982FC(toCopy, v14, @"state");

  v15 = [NSNumber numberWithInteger:[(CLSSurveyAnswerItem *)self action]];
  sub_1000982FC(toCopy, v15, @"action");
}

+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database
{
  databaseCopy = database;
  v8 = databaseCopy;
  if (!version)
  {
    if (!sub_1000B9298(databaseCopy, @"create table CLSSurveyAnswerItem (\n    objectID          text not null,\n    parentObjectID    text,\n    dateCreated       real not null,\n    dateLastModified  real not null,\n    answerType        integer,\n    state             integer,\n    action            integer,\n    surveyID          text not null,\n    responderPersonID         text not null,\n    questionID        text not null,\n    textResponse      text,\n    selectedIndex     integer,\n    continuousSliderValue     real\n)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index if not exists CLSSurveyAnswerItem_objectID on CLSSurveyAnswerItem (objectID)", 0, 0, 0) || !sub_1000B9298(v8, @"create index if not exists CLSSurveyAnswerItem_parentObjectID on CLSSurveyAnswerItem (parentObjectID)", 0, 0, 0))
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

- (void)willBeDeletedFromDatabase:(id)database
{
  databaseCopy = database;
  objectID = [(CLSSurveyAnswerItem *)self objectID];
  v7 = objectID;
  v6 = [NSArray arrayWithObjects:&v7 count:1];
  [databaseCopy deleteAll:objc_opt_class() where:@"parentObjectID = ?" bindings:v6];
}

@end