@interface CNContactGroupVisualizerViewWrapper
- (_TtC10ContactsUI35CNContactGroupVisualizerViewWrapper)init;
- (_TtC10ContactsUI35CNContactGroupVisualizerViewWrapper)initWithType:(int64_t)a3 contacts:(id)a4;
- (_TtC10ContactsUI35CNContactGroupVisualizerViewWrapper)initWithType:(int64_t)a3 contacts:(id)a4 limitContactsCount:(int64_t)a5;
@end

@implementation CNContactGroupVisualizerViewWrapper

- (_TtC10ContactsUI35CNContactGroupVisualizerViewWrapper)initWithType:(int64_t)a3 contacts:(id)a4 limitContactsCount:(int64_t)a5
{
  if (a4)
  {
    sub_199A7DDB0();
    v7 = sub_199DFA0CC();
  }

  else
  {
    v7 = 0;
  }

  return CNContactGroupVisualizerViewWrapper.init(type:contacts:limitContactsCount:)(a3, v7, a5);
}

- (_TtC10ContactsUI35CNContactGroupVisualizerViewWrapper)initWithType:(int64_t)a3 contacts:(id)a4
{
  v4 = a4;
  if (a4)
  {
    v5 = self;
    v6 = a3;
    sub_199A7DDB0();
    sub_199DFA0CC();
    v4 = sub_199DFA0BC();

    self = v5;
    a3 = v6;
  }

  v7 = [(CNContactGroupVisualizerViewWrapper *)self initWithType:a3 contacts:v4 limitContactsCount:-1];

  return v7;
}

- (_TtC10ContactsUI35CNContactGroupVisualizerViewWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end