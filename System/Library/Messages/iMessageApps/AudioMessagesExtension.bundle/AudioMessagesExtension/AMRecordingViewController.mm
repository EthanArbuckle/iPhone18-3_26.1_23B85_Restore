@interface AMRecordingViewController
- (_TtC22AudioMessagesExtension25AMRecordingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)controlButtonLongPress:(id)press;
- (void)controllButtonTouchDown:(id)down;
- (void)controllButtonTouchUpInside:(id)inside;
- (void)controllButtonTouchUpOutside:(id)outside;
- (void)handlePan:(id)pan;
- (void)viewDidLoad;
@end

@implementation AMRecordingViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_3F124();
}

- (void)controllButtonTouchDown:(id)down
{
  sub_2D124(&qword_82010);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_5F5C0;
  *(v3 + 56) = &type metadata for String;
  *(v3 + 32) = 0x6F64206863756F74;
  *(v3 + 40) = 0xEA00000000006E77;
  sub_42BF8();
}

- (void)controllButtonTouchUpInside:(id)inside
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_41BA4();
  swift_unknownObjectRelease();
}

- (void)controllButtonTouchUpOutside:(id)outside
{
  sub_2D124(&qword_82010);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_5F5C0;
  *(v3 + 56) = &type metadata for String;
  *(v3 + 32) = 0xD000000000000010;
  *(v3 + 40) = 0x8000000000063E60;
  sub_42BF8();
}

- (void)controlButtonLongPress:(id)press
{
  pressCopy = press;
  selfCopy = self;
  sub_3F964(pressCopy);
}

- (void)handlePan:(id)pan
{
  panCopy = pan;
  selfCopy = self;
  sub_40090(panCopy);
}

- (_TtC22AudioMessagesExtension25AMRecordingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_42978();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_403EC(v5, v7, bundle);
}

@end