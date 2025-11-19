@interface ReadingVoiceListController
- (_TtC20SiriMessagesSettings26ReadingVoiceListController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)specifiers;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation ReadingVoiceListController

- (id)specifiers
{
  v2 = self;
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

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = sub_21CC4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB4();
  v11 = a3;
  v12 = self;
  sub_13A54(v11);

  (*(v7 + 8))(v10, v6);
}

- (_TtC20SiriMessagesSettings26ReadingVoiceListController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_21EF4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_15C70(v5, v7, a4);
}

@end