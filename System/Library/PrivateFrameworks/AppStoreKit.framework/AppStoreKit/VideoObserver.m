@interface VideoObserver
- (_TtC11AppStoreKit13VideoObserver)init;
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
    v10 = sub_1E1AF5DFC();
    v12 = v11;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v18, 0, sizeof(v18));
    v16 = a5;
    v17 = self;
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  v10 = 0;
  v12 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  v13 = a5;
  v14 = self;
  sub_1E1AF6EBC();
  swift_unknownObjectRelease();
  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for NSKeyValueChangeKey(0);
  sub_1E1302974(&qword_1EE1D2478, type metadata accessor for NSKeyValueChangeKey);
  v15 = sub_1E1AF5C7C();

LABEL_8:
  sub_1E1402CEC(v10, v12, v18, v15, a6);

  sub_1E13E44F8(v18);
}

- (void)videoDidPlayToEnd
{
  v2 = self;
  sub_1E14034E4();
}

- (void)videoPlaybackDidStall
{
  v2 = self;
  sub_1E140395C();
}

- (void)playbackErrorOccurredWithNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1E1403E24(v4);
}

- (_TtC11AppStoreKit13VideoObserver)init
{
  *&self->delegate[OBJC_IVAR____TtC11AppStoreKit13VideoObserver_delegate] = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.isa + OBJC_IVAR____TtC11AppStoreKit13VideoObserver_playerItemObserversAdded) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC11AppStoreKit13VideoObserver_playerObserversAdded) = 0;
  v3 = (self + OBJC_IVAR____TtC11AppStoreKit13VideoObserver_timeBoundaryObserver);
  v4 = type metadata accessor for VideoObserver();
  *v3 = 0u;
  v3[1] = 0u;
  v6.receiver = self;
  v6.super_class = v4;
  return [(VideoObserver *)&v6 init];
}

@end