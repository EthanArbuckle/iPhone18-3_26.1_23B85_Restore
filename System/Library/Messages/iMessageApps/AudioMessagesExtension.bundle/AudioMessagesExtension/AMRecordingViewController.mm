@interface AMRecordingViewController
- (_TtC22AudioMessagesExtension25AMRecordingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)controlButtonLongPress:(id)a3;
- (void)controllButtonTouchDown:(id)a3;
- (void)controllButtonTouchUpInside:(id)a3;
- (void)controllButtonTouchUpOutside:(id)a3;
- (void)handlePan:(id)a3;
- (void)viewDidLoad;
@end

@implementation AMRecordingViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_3F124();
}

- (void)controllButtonTouchDown:(id)a3
{
  sub_2D124(&qword_82010);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_5F5C0;
  *(v3 + 56) = &type metadata for String;
  *(v3 + 32) = 0x6F64206863756F74;
  *(v3 + 40) = 0xEA00000000006E77;
  sub_42BF8();
}

- (void)controllButtonTouchUpInside:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_41BA4();
  swift_unknownObjectRelease();
}

- (void)controllButtonTouchUpOutside:(id)a3
{
  sub_2D124(&qword_82010);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_5F5C0;
  *(v3 + 56) = &type metadata for String;
  *(v3 + 32) = 0xD000000000000010;
  *(v3 + 40) = 0x8000000000063E60;
  sub_42BF8();
}

- (void)controlButtonLongPress:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_3F964(v4);
}

- (void)handlePan:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_40090(v4);
}

- (_TtC22AudioMessagesExtension25AMRecordingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_42978();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_403EC(v5, v7, a4);
}

@end