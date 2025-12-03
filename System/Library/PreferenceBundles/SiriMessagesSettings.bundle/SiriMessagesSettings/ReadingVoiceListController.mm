@interface ReadingVoiceListController
- (_TtC20SiriMessagesSettings26ReadingVoiceListController)initWithNibName:(id)name bundle:(id)bundle;
- (id)specifiers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation ReadingVoiceListController

- (id)specifiers
{
  selfCopy = self;
  v3 = sub_F168();

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
  sub_13A54(viewCopy);

  (*(v7 + 8))(v10, v6);
}

- (_TtC20SiriMessagesSettings26ReadingVoiceListController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_21EF4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_15C70(v5, v7, bundle);
}

@end