@interface RAPReportComposerEmailSection
- (RAPReportComposerEmailSection)initWithQuestion:(id)question;
- (id)cellForRowAtIndex:(int64_t)index;
- (id)headerTitle;
- (void)valueForCorrectableItemKind:(int64_t)kind changedTo:(id)to;
@end

@implementation RAPReportComposerEmailSection

- (void)valueForCorrectableItemKind:(int64_t)kind changedTo:(id)to
{
  question = self->_question;
  toCopy = to;
  correctableEmail = [(RAPCommentQuestion *)question correctableEmail];
  [correctableEmail setValue:toCopy];
}

- (id)cellForRowAtIndex:(int64_t)index
{
  v4 = [(RAPTablePartSection *)self dequeueCellWithNamespacedReuseIdentifier:@"EmailCell"];
  if (!v4)
  {
    v4 = [[RAPTextTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"EmailCell"];
  }

  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Email Address [Report a Problem]" value:@"localized string not found" table:0];
  [(RAPTextTableViewCell *)v4 setPlaceholder:v6];

  correctableEmail = [(RAPCommentQuestion *)self->_question correctableEmail];
  value = [correctableEmail value];
  [(RAPTextTableViewCell *)v4 setValue:value];

  [(RAPTextTableViewCell *)v4 setDelegate:self];

  return v4;
}

- (id)headerTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Contact Information [Report a Problem]" value:@"localized string not found" table:0];

  return v3;
}

- (RAPReportComposerEmailSection)initWithQuestion:(id)question
{
  questionCopy = question;
  v9.receiver = self;
  v9.super_class = RAPReportComposerEmailSection;
  v6 = [(RAPTablePartSection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_question, question);
  }

  return v7;
}

@end