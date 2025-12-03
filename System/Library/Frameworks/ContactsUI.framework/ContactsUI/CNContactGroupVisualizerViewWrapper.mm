@interface CNContactGroupVisualizerViewWrapper
- (_TtC10ContactsUI35CNContactGroupVisualizerViewWrapper)init;
- (_TtC10ContactsUI35CNContactGroupVisualizerViewWrapper)initWithType:(int64_t)type contacts:(id)contacts;
- (_TtC10ContactsUI35CNContactGroupVisualizerViewWrapper)initWithType:(int64_t)type contacts:(id)contacts limitContactsCount:(int64_t)count;
@end

@implementation CNContactGroupVisualizerViewWrapper

- (_TtC10ContactsUI35CNContactGroupVisualizerViewWrapper)initWithType:(int64_t)type contacts:(id)contacts limitContactsCount:(int64_t)count
{
  if (contacts)
  {
    sub_199A7DDB0();
    v7 = sub_199DFA0CC();
  }

  else
  {
    v7 = 0;
  }

  return CNContactGroupVisualizerViewWrapper.init(type:contacts:limitContactsCount:)(type, v7, count);
}

- (_TtC10ContactsUI35CNContactGroupVisualizerViewWrapper)initWithType:(int64_t)type contacts:(id)contacts
{
  contactsCopy = contacts;
  if (contacts)
  {
    selfCopy = self;
    typeCopy = type;
    sub_199A7DDB0();
    sub_199DFA0CC();
    contactsCopy = sub_199DFA0BC();

    self = selfCopy;
    type = typeCopy;
  }

  v7 = [(CNContactGroupVisualizerViewWrapper *)self initWithType:type contacts:contactsCopy limitContactsCount:-1];

  return v7;
}

- (_TtC10ContactsUI35CNContactGroupVisualizerViewWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end