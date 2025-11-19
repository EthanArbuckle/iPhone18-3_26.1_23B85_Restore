@interface ConversationListController
- (_TtC17SequoiaTranslator26ConversationListController)initWithCollectionViewLayout:(id)a3;
- (_TtC17SequoiaTranslator26ConversationListController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)dismissKeyboard;
- (void)scrollViewDidScroll:(id)a3;
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
  v4 = self;
  v2 = [(ConversationListController *)v4 view];
  if (v2)
  {
    v3 = v2;
    [v2 endEditing:1];
  }

  else
  {
    __break(1u);
  }
}

- (_TtC17SequoiaTranslator26ConversationListController)initWithCollectionViewLayout:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC17SequoiaTranslator26ConversationListController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100094A14(v4);
}

@end