@interface VideoObserver
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)playbackErrorOccurredWithNotification:(id)a3;
- (void)videoDidPlayToEnd;
- (void)videoPlaybackDidStall;
@end

@implementation VideoObserver

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a3)
  {
    sub_1CA19C118();
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v13, 0, sizeof(v13));
    v11 = a5;
    v12 = self;
    if (!a5)
    {
      goto LABEL_7;
    }

    goto LABEL_4;
  }

  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  v9 = a5;
  v10 = self;
  sub_1CA19C768();
  swift_unknownObjectRelease();
  if (a5)
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
  v2 = self;
  sub_1CA1834B8();
}

- (void)videoPlaybackDidStall
{
  v2 = self;
  sub_1CA1835B4();
}

- (void)playbackErrorOccurredWithNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1CA1838CC();
}

@end