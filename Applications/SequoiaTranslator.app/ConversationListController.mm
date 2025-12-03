@interface ConversationListController
- (_TtC17SequoiaTranslator26ConversationListController)initWithCollectionViewLayout:(id)layout;
- (_TtC17SequoiaTranslator26ConversationListController)initWithNibName:(id)name bundle:(id)bundle;
- (void)dismissKeyboard;
- (void)scrollViewDidScroll:(id)scroll;
- (void)viewDidLoad;
@end

@implementation ConversationListController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ConversationListController();
  v2 = v3.receiver;
  [(ConversationListController *)&v3 viewDidLoad];
  sub_100092964();
  sub_100092DD4();
}

- (void)dismissKeyboard
{
  selfCopy = self;
  view = [(ConversationListController *)selfCopy view];
  if (view)
  {
    v3 = view;
    [view endEditing:1];
  }

  else
  {
    __break(1u);
  }
}

- (_TtC17SequoiaTranslator26ConversationListController)initWithCollectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC17SequoiaTranslator26ConversationListController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_100094A14(scrollCopy);
}

@end