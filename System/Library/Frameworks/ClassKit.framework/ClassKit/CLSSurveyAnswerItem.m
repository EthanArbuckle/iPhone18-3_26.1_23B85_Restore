@interface CLSSurveyAnswerItem
+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5;
- (CLSSurveyAnswerItem)initWithCKRecord:(id)a3;
- (id)initWithDatabaseRow:(id)a3;
- (void)bindTo:(id)a3;
- (void)populate:(id)a3;
- (void)willBeDeletedFromDatabase:(id)a3;
@end

@implementation CLSSurveyAnswerItem

- (CLSSurveyAnswerItem)initWithCKRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"surveyID"];
  v6 = [v4 objectForKeyedSubscript:@"responderPersonID"];
  v7 = [v4 objectForKeyedSubscript:@"questionID"];
  v8 = [(CLSSurveyAnswerItem *)self initWithSurveyID:v5 questionID:v7 responderID:v6];
  v9 = v8;
  if (v8)
  {
    [(CLSSurveyAnswerItem *)v8 _initCommonPropsWithRecord:v4];
    v10 = [v4 objectForKeyedSubscript:@"answerType"];
    [(CLSSurveyAnswerItem *)v9 setAnswerType:CLSAnswerTypeFromString()];

    v11 = [v4 objectForKeyedSubscript:@"textResponse"];
    [(CLSSurveyAnswerItem *)v9 setTextResponse:v11];

    v12 = [v4 objectForKeyedSubscript:@"selectedIndex"];
    -[CLSSurveyAnswerItem setSelectedIndex:](v9, "setSelectedIndex:", [v12 integerValue]);

    v13 = [v4 objectForKeyedSubscript:@"continuousSliderValue"];
    [v13 doubleValue];
    [(CLSSurveyAnswerItem *)v9 setContinuousSliderValue:?];

    v14 = [v4 objectForKeyedSubscript:@"state"];
    [(CLSSurveyAnswerItem *)v9 setState:CLSAnswerStateFromString()];

    v15 = [v4 objectForKeyedSubscript:@"action"];
    [(CLSSurveyAnswerItem *)v9 setAction:CLSAnswerActionFromString()];
  }

  return v9;
}

- (void)populate:(id)a3
{
  v14.receiver = self;
  v14.super_class = CLSSurveyAnswerItem;
  v4 = a3;
  [(CLSSurveyAnswerItem *)&v14 populate:v4];
  [(CLSSurveyAnswerItem *)self answerType:v14.receiver];
  v5 = NSStringFromCLSAnswerType();
  [v4 setObject:v5 forKeyedSubscript:@"answerType"];

  v6 = [(CLSSurveyAnswerItem *)self surveyID];
  [v4 setObject:v6 forKeyedSubscript:@"surveyID"];

  v7 = [(CLSSurveyAnswerItem *)self responderPersonID];
  [v4 setObject:v7 forKeyedSubscript:@"responderPersonID"];

  v8 = [(CLSSurveyAnswerItem *)self questionID];
  [v4 setObject:v8 forKeyedSubscript:@"questionID"];

  v9 = [(CLSSurveyAnswerItem *)self textResponse];
  [v4 setObject:v9 forKeyedSubscript:@"textResponse"];

  v10 = [NSNumber numberWithInteger:[(CLSSurveyAnswerItem *)self selectedIndex]];
  [v4 setObject:v10 forKeyedSubscript:@"selectedIndex"];

  [(CLSSurveyAnswerItem *)self continuousSliderValue];
  v11 = [NSNumber numberWithDouble:?];
  [v4 setObject:v11 forKeyedSubscript:@"continuousSliderValue"];

  [(CLSSurveyAnswerItem *)self state];
  v12 = NSStringFromCLSAnswerState();
  [v4 setObject:v12 forKeyedSubscript:@"state"];

  [(CLSSurveyAnswerItem *)self action];
  v13 = NSStringFromCLSAnswerAction();
  [v4 setObject:v13 forKeyedSubscript:@"action"];

  [(CLSSurveyAnswerItem *)self updateParentReferencesForRecord:v4];
}

- (id)initWithDatabaseRow:(id)a3
{
  v4 = a3;
  v5 = [(CLSSurveyAnswerItem *)self _init];
  v6 = v5;
  if (v5)
  {
    [v5 _initCommonPropsWithDatabaseRow:v4];
    v7 = sub_10016D778(v4, @"parentObjectID");
    [v6 setParentObjectID:v7];

    v8 = sub_10016D778(v4, @"answerType");
    [v6 setAnswerType:{objc_msgSend(v8, "integerValue")}];

    v9 = sub_10016D778(v4, @"surveyID");
    [v6 setSurveyID:v9];

    v10 = sub_10016D778(v4, @"responderPersonID");
    [v6 setResponderPersonID:v10];

    v11 = sub_10016D778(v4, @"questionID");
    [v6 setQuestionID:v11];

    v12 = sub_10016D778(v4, @"textResponse");
    [v6 setTextResponse:v12];

    v13 = sub_10016D778(v4, @"selectedIndex");
    [v6 setSelectedIndex:{objc_msgSend(v13, "integerValue")}];

    v14 = sub_10016D778(v4, @"continuousSliderValue");
    [v14 doubleValue];
    [v6 setContinuousSliderValue:?];

    v15 = sub_10016D778(v4, @"state");
    [v6 setState:{objc_msgSend(v15, "integerValue")}];

    v16 = sub_10016D778(v4, @"action");
    [v6 setAction:{objc_msgSend(v16, "integerValue")}];
  }

  return v6;
}

- (void)bindTo:(id)a3
{
  v16.receiver = self;
  v16.super_class = CLSSurveyAnswerItem;
  v4 = a3;
  [(CLSSurveyAnswerItem *)&v16 bindTo:v4];
  v17 = @"appIdentifier";
  v5 = [NSArray arrayWithObjects:&v17 count:1, v16.receiver, v16.super_class];
  sub_1000983A8(v4, v5);

  v6 = [(CLSSurveyAnswerItem *)self parentObjectID];
  sub_1000982FC(v4, v6, @"parentObjectID");

  v7 = [NSNumber numberWithInteger:[(CLSSurveyAnswerItem *)self answerType]];
  sub_1000982FC(v4, v7, @"answerType");

  v8 = [(CLSSurveyAnswerItem *)self questionID];
  sub_1000982FC(v4, v8, @"questionID");

  v9 = [(CLSSurveyAnswerItem *)self surveyID];
  sub_1000982FC(v4, v9, @"surveyID");

  v10 = [(CLSSurveyAnswerItem *)self responderPersonID];
  sub_1000982FC(v4, v10, @"responderPersonID");

  v11 = [(CLSSurveyAnswerItem *)self textResponse];
  sub_1000982FC(v4, v11, @"textResponse");

  v12 = [NSNumber numberWithInteger:[(CLSSurveyAnswerItem *)self selectedIndex]];
  sub_1000982FC(v4, v12, @"selectedIndex");

  [(CLSSurveyAnswerItem *)self continuousSliderValue];
  v13 = [NSNumber numberWithDouble:?];
  sub_1000982FC(v4, v13, @"continuousSliderValue");

  v14 = [NSNumber numberWithInteger:[(CLSSurveyAnswerItem *)self state]];
  sub_1000982FC(v4, v14, @"state");

  v15 = [NSNumber numberWithInteger:[(CLSSurveyAnswerItem *)self action]];
  sub_1000982FC(v4, v15, @"action");
}

+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (!a3)
  {
    if (!sub_1000B9298(v7, @"create table CLSSurveyAnswerItem (\n    objectID          text not null,\n    parentObjectID    text,\n    dateCreated       real not null,\n    dateLastModified  real not null,\n    answerType        integer,\n    state             integer,\n    action            integer,\n    surveyID          text not null,\n    responderPersonID         text not null,\n    questionID        text not null,\n    textResponse      text,\n    selectedIndex     integer,\n    continuousSliderValue     real\n)", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index if not exists CLSSurveyAnswerItem_objectID on CLSSurveyAnswerItem (objectID)", 0, 0, 0) || !sub_1000B9298(v8, @"create index if not exists CLSSurveyAnswerItem_parentObjectID on CLSSurveyAnswerItem (parentObjectID)", 0, 0, 0))
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

- (void)willBeDeletedFromDatabase:(id)a3
{
  v4 = a3;
  v5 = [(CLSSurveyAnswerItem *)self objectID];
  v7 = v5;
  v6 = [NSArray arrayWithObjects:&v7 count:1];
  [v4 deleteAll:objc_opt_class() where:@"parentObjectID = ?" bindings:v6];
}

@end