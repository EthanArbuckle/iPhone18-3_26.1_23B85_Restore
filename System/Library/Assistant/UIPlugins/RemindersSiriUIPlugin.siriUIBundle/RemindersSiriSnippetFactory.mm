@interface RemindersSiriSnippetFactory
- (_TtC21RemindersSiriUIPlugin27RemindersSiriSnippetFactory)init;
- (id)viewControllerForSnippet:(id)snippet;
@end

@implementation RemindersSiriSnippetFactory

- (id)viewControllerForSnippet:(id)snippet
{
  snippetCopy = snippet;
  selfCopy = self;
  v7 = _s21RemindersSiriUIPlugin0aB14SnippetFactoryC14viewController3forSo0b6UIBased4ViewG0CSgSo11SAUISnippetCSg_tF_0(snippet);

  return v7;
}

- (_TtC21RemindersSiriUIPlugin27RemindersSiriSnippetFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for RemindersSiriSnippetFactory();
  return [(RemindersSiriSnippetFactory *)&v3 init];
}

@end