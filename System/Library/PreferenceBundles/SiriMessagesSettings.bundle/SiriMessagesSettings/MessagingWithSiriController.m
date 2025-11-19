@interface MessagingWithSiriController
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (_TtC20SiriMessagesSettings27MessagingWithSiriController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)getMessageWithoutConfCarPlayEnabledWithSpecifier:(id)a3;
- (id)getMessageWithoutConfEnabledWithSpecifier:(id)a3;
- (id)getMessageWithoutConfHeadphonesEnabledWithSpecifier:(id)a3;
- (id)specifiers;
- (void)applicationWillSuspend;
- (void)handleURL:(NSDictionary *)a3 withCompletion:(id)a4;
- (void)logLongPressWithSpecifier:(id)a3;
- (void)setMessageWithoutConfCarPlayEnabled:(id)a3 specifier:(id)a4;
- (void)setMessageWithoutConfEnabled:(id)a3 specifier:(id)a4;
- (void)setMessageWithoutConfHeadphonesEnabled:(id)a3 specifier:(id)a4;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didEndDisplayingCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation MessagingWithSiriController

- (id)specifiers
{
  v2 = self;
  sub_1680();
  v4 = v3;

  if (v4)
  {
    v5.super.isa = sub_21F74().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

- (void)setMessageWithoutConfEnabled:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1A5C();
}

- (id)getMessageWithoutConfEnabledWithSpecifier:(id)a3
{
  v4 = a3;
  v5 = self;
  v6.super.super.isa = sub_1EA0().super.super.isa;

  return v6.super.super.isa;
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_1FD4(a3);
}

- (void)applicationWillSuspend
{
  v2 = self;
  sub_2080();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_2110(a3);
}

- (void)setMessageWithoutConfHeadphonesEnabled:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v9 = self;
  sub_27DC(v6, v8);
}

- (id)getMessageWithoutConfHeadphonesEnabledWithSpecifier:(id)a3
{
  v4 = a3;
  v5 = self;
  v6.super.super.isa = sub_2868(v5).super.super.isa;

  return v6.super.super.isa;
}

- (void)setMessageWithoutConfCarPlayEnabled:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v9 = self;
  sub_28D8(v6, v8);
}

- (id)getMessageWithoutConfCarPlayEnabledWithSpecifier:(id)a3
{
  v4 = a3;
  v5 = self;
  v6.super.super.isa = sub_2B0C(v5).super.super.isa;

  return v6.super.super.isa;
}

- (void)tableView:(id)a3 didEndDisplayingCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v8 = sub_21CC4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB4();
  v13 = a3;
  v14 = a4;
  v15 = self;
  sub_46C4(v13);

  (*(v9 + 8))(v12, v8);
}

- (void)handleURL:(NSDictionary *)a3 withCompletion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = a3;
  v9 = self;

  sub_597C(&unk_22CA0, v7);
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
  sub_5A8C(v11);

  (*(v7 + 8))(v10, v6);
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v8 = sub_21CC4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB4();
  v13 = a3;
  v14 = self;
  sub_6190(v13, a4, v12);

  (*(v9 + 8))(v12, v8);
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  v6 = sub_21CC4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB4();
  v11 = a3;
  v12 = self;
  LOBYTE(self) = sub_6F6C();

  (*(v7 + 8))(v10, v6);
  return self & 1;
}

- (void)logLongPressWithSpecifier:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_7374();
}

- (_TtC20SiriMessagesSettings27MessagingWithSiriController)initWithNibName:(id)a3 bundle:(id)a4
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
  return sub_7A60(v5, v7, a4);
}

@end