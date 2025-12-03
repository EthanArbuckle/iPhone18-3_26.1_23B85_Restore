@interface GPMessagesViewController
- (_TtC40GenerativePlaygroundMessagesAppExtension24GPMessagesViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)_didRemoveAssetArchiveWithIdentifier:(id)identifier;
- (void)didBecomeActiveWithConversation:(id)conversation;
- (void)imagePlaygroundViewController:(id)controller didCreateImageAt:(id)at;
- (void)imagePlaygroundViewController:(id)controller didSelectAssets:(id)assets;
- (void)viewDidLoad;
- (void)willBecomeActiveWithConversation:(id)conversation;
@end

@implementation GPMessagesViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100003B78();
}

- (void)willBecomeActiveWithConversation:(id)conversation
{
  v5 = (*(*(sub_1000031C4(&qword_1000149F0, &qword_10000BAD0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v15 - v6;
  conversationCopy = conversation;
  selfCopy = self;
  sub_100003D34(conversationCopy);
  v10 = sub_10000A674();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  sub_10000A654();
  v11 = conversationCopy;
  v12 = selfCopy;
  v13 = sub_10000A644();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = &protocol witness table for MainActor;
  v14[4] = v12;
  v14[5] = v11;
  sub_10000383C(0, 0, v7, &unk_10000BB48, v14);
}

- (void)didBecomeActiveWithConversation:(id)conversation
{
  conversationCopy = conversation;
  selfCopy = self;
  sub_100004B7C(conversationCopy);
}

- (void)_didRemoveAssetArchiveWithIdentifier:(id)identifier
{
  v4 = sub_10000A5E4();
  v6 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC40GenerativePlaygroundMessagesAppExtension24GPMessagesViewController_playgroundViewController);
  if (v6)
  {
    v7 = v4;
    v8 = v5;
    selfCopy = self;
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

- (_TtC40GenerativePlaygroundMessagesAppExtension24GPMessagesViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_10000A5E4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_1000063D4(v5, v7, bundle);
}

- (void)imagePlaygroundViewController:(id)controller didCreateImageAt:(id)at
{
  v4 = sub_10000A374();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A364();
  (*(v5 + 8))(v8, v4);
}

- (void)imagePlaygroundViewController:(id)controller didSelectAssets:(id)assets
{
  sub_10000A218(0, &unk_100014B38, GPExportablePhotoAsset_ptr);
  v5 = sub_10000A624();
  selfCopy = self;
  sub_100006808(v5);

  [(GPMessagesViewController *)selfCopy dismiss];
}

@end