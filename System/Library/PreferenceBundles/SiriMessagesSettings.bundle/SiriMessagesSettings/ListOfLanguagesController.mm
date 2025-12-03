@interface ListOfLanguagesController
- (_TtC20SiriMessagesSettings25ListOfLanguagesController)initWithNibName:(id)name bundle:(id)bundle;
- (id)specifiers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation ListOfLanguagesController

- (id)specifiers
{
  selfCopy = self;
  v3 = sub_1795C();

  if (v3)
  {
    v4.super.isa = sub_21F74().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = sub_21CC4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB4();
  viewCopy = view;
  selfCopy = self;
  sub_18E88(viewCopy);

  (*(v7 + 8))(v10, v6);
}

- (_TtC20SiriMessagesSettings25ListOfLanguagesController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_21EF4();
  }

  bundleCopy = bundle;
  return sub_19340();
}

@end