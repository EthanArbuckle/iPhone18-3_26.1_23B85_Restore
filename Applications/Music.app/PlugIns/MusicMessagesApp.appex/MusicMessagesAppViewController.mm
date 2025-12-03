@interface MusicMessagesAppViewController
- (_TtC16MusicMessagesApp30MusicMessagesAppViewController)initWithCoder:(id)coder;
- (_TtC16MusicMessagesApp30MusicMessagesAppViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didStartSendingMessage:(id)message conversation:(id)conversation;
- (void)viewDidLoad;
@end

@implementation MusicMessagesAppViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10002A254();
}

- (void)didStartSendingMessage:(id)message conversation:(id)conversation
{
  v4 = sub_1004DD3FC();
  AnalyticsSendEvent();
}

- (_TtC16MusicMessagesApp30MusicMessagesAppViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1004DD43C();
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC16MusicMessagesApp30MusicMessagesAppViewController__sharingViewController) = 0;
    bundleCopy = bundle;
    v7 = sub_1004DD3FC();
  }

  else
  {
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC16MusicMessagesApp30MusicMessagesAppViewController__sharingViewController) = 0;
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for MusicMessagesAppViewController();
  v9 = [(MusicMessagesAppViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC16MusicMessagesApp30MusicMessagesAppViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC16MusicMessagesApp30MusicMessagesAppViewController__sharingViewController) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for MusicMessagesAppViewController();
  coderCopy = coder;
  v5 = [(MusicMessagesAppViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end