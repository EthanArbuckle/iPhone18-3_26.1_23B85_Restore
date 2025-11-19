@interface GPMessagesViewController
- (_TtC40GenerativePlaygroundMessagesAppExtension24GPMessagesViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)_didRemoveAssetArchiveWithIdentifier:(id)a3;
- (void)didBecomeActiveWithConversation:(id)a3;
- (void)imagePlaygroundViewController:(id)a3 didCreateImageAt:(id)a4;
- (void)imagePlaygroundViewController:(id)a3 didSelectAssets:(id)a4;
- (void)viewDidLoad;
- (void)willBecomeActiveWithConversation:(id)a3;
@end

@implementation GPMessagesViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_100003B78();
}

- (void)willBecomeActiveWithConversation:(id)a3
{
  v5 = (*(*(sub_1000031C4(&qword_1000149F0, &qword_10000BAD0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v15 - v6;
  v8 = a3;
  v9 = self;
  sub_100003D34(v8);
  v10 = sub_10000A674();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  sub_10000A654();
  v11 = v8;
  v12 = v9;
  v13 = sub_10000A644();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = &protocol witness table for MainActor;
  v14[4] = v12;
  v14[5] = v11;
  sub_10000383C(0, 0, v7, &unk_10000BB48, v14);
}

- (void)didBecomeActiveWithConversation:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100004B7C(v4);
}

- (void)_didRemoveAssetArchiveWithIdentifier:(id)a3
{
  v4 = sub_10000A5E4();
  v6 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC40GenerativePlaygroundMessagesAppExtension24GPMessagesViewController_playgroundViewController);
  if (v6)
  {
    v7 = v4;
    v8 = v5;
    v9 = self;
    v10 = v6;
    v12._countAndFlagsBits = v7;
    v12._object = v8;
    sub_10000A414(v12);
  }

  else
  {
    __break(1u);
  }
}

- (_TtC40GenerativePlaygroundMessagesAppExtension24GPMessagesViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_10000A5E4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_1000063D4(v5, v7, a4);
}

- (void)imagePlaygroundViewController:(id)a3 didCreateImageAt:(id)a4
{
  v4 = sub_10000A374();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A364();
  (*(v5 + 8))(v8, v4);
}

- (void)imagePlaygroundViewController:(id)a3 didSelectAssets:(id)a4
{
  sub_10000A218(0, &unk_100014B38, GPExportablePhotoAsset_ptr);
  v5 = sub_10000A624();
  v6 = self;
  sub_100006808(v5);

  [(GPMessagesViewController *)v6 dismiss];
}

@end