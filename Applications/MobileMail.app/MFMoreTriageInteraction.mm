@interface MFMoreTriageInteraction
+ (id)interactionWithMessageListItems:(id)items undoManager:(id)manager origin:(int64_t)origin actor:(int64_t)actor;
+ (id)interactionWithMessageListItems:(id)items undoManager:(id)manager origin:(int64_t)origin actor:(int64_t)actor interactionStyle:(unint64_t)style;
+ (id)log;
- (id)_iconImageName;
- (id)color;
- (id)title;
- (void)_dispatchInteractionWithCompletion:(id)completion;
@end

@implementation MFMoreTriageInteraction

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001FD960;
  block[3] = &unk_10064C4F8;
  block[4] = self;
  if (qword_1006DD5F0 != -1)
  {
    dispatch_once(&qword_1006DD5F0, block);
  }

  v2 = qword_1006DD5E8;

  return v2;
}

+ (id)interactionWithMessageListItems:(id)items undoManager:(id)manager origin:(int64_t)origin actor:(int64_t)actor
{
  v6 = [MFMoreTriageInteraction interactionWithMessageListItems:items undoManager:manager origin:origin actor:actor interactionStyle:0];

  return v6;
}

+ (id)interactionWithMessageListItems:(id)items undoManager:(id)manager origin:(int64_t)origin actor:(int64_t)actor interactionStyle:(unint64_t)style
{
  itemsCopy = items;
  v16.receiver = self;
  v16.super_class = &OBJC_METACLASS___MFMoreTriageInteraction;
  v12 = objc_msgSendSuper2(&v16, "interactionWithMessageListItems:undoManager:origin:actor:", itemsCopy, 0, origin, actor);
  firstObject = [itemsCopy firstObject];
  displayMessage = [firstObject displayMessage];
  [v12 setDisplayMessage:displayMessage];

  [v12 setStyle:style];

  return v12;
}

- (void)_dispatchInteractionWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  displayMessage = [(MFMoreTriageInteraction *)self displayMessage];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_1001FDC4C;
  v10 = &unk_100655110;
  objc_copyWeak(&v13, &location);
  selfCopy = self;
  v6 = completionCopy;
  v12 = v6;
  [displayMessage addSuccessBlock:&v7];
  [displayMessage addFailureBlock:{&stru_100655130, v7, v8, v9, v10, selfCopy}];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (id)title
{
  style = [(MFMoreTriageInteraction *)self style];
  if (style == 1)
  {
    v3 = +[NSBundle mainBundle];
    v4 = [v3 localizedStringForKey:@"REPLY" value:&stru_100662A88 table:@"Main"];
    goto LABEL_5;
  }

  if (!style)
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
  style = [(MFMoreTriageInteraction *)self style];
  if (!style)
  {
    v3 = &MFImageGlyphMessageListMore;
    goto LABEL_5;
  }

  if (style == 1)
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
  style = [(MFMoreTriageInteraction *)self style];
  if (style == 1)
  {
    v6.receiver = self;
    v6.super_class = MFMoreTriageInteraction;
    color = [(MFTriageInteraction *)&v6 color];
  }

  else if (style)
  {
    color = 0;
  }

  else
  {
    color = +[UIColor mailMoreButtonGrayColor];
  }

  return color;
}

@end