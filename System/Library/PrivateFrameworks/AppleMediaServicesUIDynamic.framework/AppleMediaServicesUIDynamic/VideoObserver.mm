@interface VideoObserver
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)playbackErrorOccurredWithNotification:(id)notification;
- (void)videoDidPlayToEnd;
- (void)videoPlaybackDidStall;
@end

@implementation VideoObserver

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (path)
  {
    sub_1CA19C118();
    if (object)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v13, 0, sizeof(v13));
    changeCopy = change;
    selfCopy = self;
    if (!change)
    {
      goto LABEL_7;
    }

    goto LABEL_4;
  }

  if (!object)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  changeCopy2 = change;
  selfCopy2 = self;
  sub_1CA19C768();
  swift_unknownObjectRelease();
  if (change)
  {
LABEL_4:
    type metadata accessor for NSKeyValueChangeKey(0);
    sub_1CA184D90(&qword_1EC433070, type metadata accessor for NSKeyValueChangeKey);
    sub_1CA19C018();
  }

LABEL_7:
  sub_1CA182CB8();

  sub_1CA0F0440(v13);
}

- (void)videoDidPlayToEnd
{
  selfCopy = self;
  sub_1CA1834B8();
}

- (void)videoPlaybackDidStall
{
  selfCopy = self;
  sub_1CA1835B4();
}

- (void)playbackErrorOccurredWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_1CA1838CC();
}

@end