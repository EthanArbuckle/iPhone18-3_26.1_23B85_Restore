@interface RAPReportComposerEmailSection
- (RAPReportComposerEmailSection)initWithQuestion:(id)a3;
- (id)cellForRowAtIndex:(int64_t)a3;
- (id)headerTitle;
- (void)valueForCorrectableItemKind:(int64_t)a3 changedTo:(id)a4;
@end

@implementation RAPReportComposerEmailSection

- (void)valueForCorrectableItemKind:(int64_t)a3 changedTo:(id)a4
{
  question = self->_question;
  v5 = a4;
  v6 = [(RAPCommentQuestion *)question correctableEmail];
  [v6 setValue:v5];
}

- (id)cellForRowAtIndex:(int64_t)a3
{
  v4 = [(RAPTablePartSection *)self dequeueCellWithNamespacedReuseIdentifier:@"EmailCell"];
  if (!v4)
  {
    v4 = [[RAPTextTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"EmailCell"];
  }

  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Email Address [Report a Problem]" value:@"localized string not found" table:0];
  [(RAPTextTableViewCell *)v4 setPlaceholder:v6];

  v7 = [(RAPCommentQuestion *)self->_question correctableEmail];
  v8 = [v7 value];
  [(RAPTextTableViewCell *)v4 setValue:v8];

  [(RAPTextTableViewCell *)v4 setDelegate:self];

  return v4;
}

- (id)headerTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Contact Information [Report a Problem]" value:@"localized string not found" table:0];

  return v3;
}

- (RAPReportComposerEmailSection)initWithQuestion:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = RAPReportComposerEmailSection;
  v6 = [(RAPTablePartSection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_question, a3);
  }

  return v7;
}

@end