@interface MusicMessagesAppViewController
- (_TtC16MusicMessagesApp30MusicMessagesAppViewController)initWithCoder:(id)a3;
- (_TtC16MusicMessagesApp30MusicMessagesAppViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didStartSendingMessage:(id)a3 conversation:(id)a4;
- (void)viewDidLoad;
@end

@implementation MusicMessagesAppViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_10002A254();
}

- (void)didStartSendingMessage:(id)a3 conversation:(id)a4
{
  v4 = sub_1004DD3FC();
  AnalyticsSendEvent();
}

- (_TtC16MusicMessagesApp30MusicMessagesAppViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1004DD43C();
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC16MusicMessagesApp30MusicMessagesAppViewController__sharingViewController) = 0;
    v6 = a4;
    v7 = sub_1004DD3FC();
  }

  else
  {
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC16MusicMessagesApp30MusicMessagesAppViewController__sharingViewController) = 0;
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for MusicMessagesAppViewController();
  v9 = [(MusicMessagesAppViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC16MusicMessagesApp30MusicMessagesAppViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC16MusicMessagesApp30MusicMessagesAppViewController__sharingViewController) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for MusicMessagesAppViewController();
  v4 = a3;
  v5 = [(MusicMessagesAppViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end