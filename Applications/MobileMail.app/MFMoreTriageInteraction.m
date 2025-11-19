@interface MFMoreTriageInteraction
+ (id)interactionWithMessageListItems:(id)a3 undoManager:(id)a4 origin:(int64_t)a5 actor:(int64_t)a6;
+ (id)interactionWithMessageListItems:(id)a3 undoManager:(id)a4 origin:(int64_t)a5 actor:(int64_t)a6 interactionStyle:(unint64_t)a7;
+ (id)log;
- (id)_iconImageName;
- (id)color;
- (id)title;
- (void)_dispatchInteractionWithCompletion:(id)a3;
@end

@implementation MFMoreTriageInteraction

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001FD960;
  block[3] = &unk_10064C4F8;
  block[4] = a1;
  if (qword_1006DD5F0 != -1)
  {
    dispatch_once(&qword_1006DD5F0, block);
  }

  v2 = qword_1006DD5E8;

  return v2;
}

+ (id)interactionWithMessageListItems:(id)a3 undoManager:(id)a4 origin:(int64_t)a5 actor:(int64_t)a6
{
  v6 = [MFMoreTriageInteraction interactionWithMessageListItems:a3 undoManager:a4 origin:a5 actor:a6 interactionStyle:0];

  return v6;
}

+ (id)interactionWithMessageListItems:(id)a3 undoManager:(id)a4 origin:(int64_t)a5 actor:(int64_t)a6 interactionStyle:(unint64_t)a7
{
  v11 = a3;
  v16.receiver = a1;
  v16.super_class = &OBJC_METACLASS___MFMoreTriageInteraction;
  v12 = objc_msgSendSuper2(&v16, "interactionWithMessageListItems:undoManager:origin:actor:", v11, 0, a5, a6);
  v13 = [v11 firstObject];
  v14 = [v13 displayMessage];
  [v12 setDisplayMessage:v14];

  [v12 setStyle:a7];

  return v12;
}

- (void)_dispatchInteractionWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(MFMoreTriageInteraction *)self displayMessage];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_1001FDC4C;
  v10 = &unk_100655110;
  objc_copyWeak(&v13, &location);
  v11 = self;
  v6 = v4;
  v12 = v6;
  [v5 addSuccessBlock:&v7];
  [v5 addFailureBlock:{&stru_100655130, v7, v8, v9, v10, v11}];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (id)title
{
  v2 = [(MFMoreTriageInteraction *)self style];
  if (v2 == 1)
  {
    v3 = +[NSBundle mainBundle];
    v4 = [v3 localizedStringForKey:@"REPLY" value:&stru_100662A88 table:@"Main"];
    goto LABEL_5;
  }

  if (!v2)
  {
    v3 = +[NSBundle mainBundle];
    v4 = [v3 localizedStringForKey:@"SWIPE_MORE" value:&stru_100662A88 table:@"Main"];
LABEL_5:
    v5 = v4;

    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (id)_iconImageName
{
  v2 = [(MFMoreTriageInteraction *)self style];
  if (!v2)
  {
    v3 = &MFImageGlyphMessageListMore;
    goto LABEL_5;
  }

  if (v2 == 1)
  {
    v3 = &MFImageGlyphReplyFill;
LABEL_5:
    v4 = *v3;
    goto LABEL_7;
  }

  v4 = 0;
LABEL_7:

  return v4;
}

- (id)color
{
  v3 = [(MFMoreTriageInteraction *)self style];
  if (v3 == 1)
  {
    v6.receiver = self;
    v6.super_class = MFMoreTriageInteraction;
    v4 = [(MFTriageInteraction *)&v6 color];
  }

  else if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = +[UIColor mailMoreButtonGrayColor];
  }

  return v4;
}

@end