@interface BKAudiobookController
- (BKAudiobookController)init;
- (BKAudiobookControllerDelegate)delegate;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (void)books_decreaseVolume:(id)a3;
- (void)books_increaseVolume:(id)a3;
- (void)books_togglePlaying:(id)a3;
- (void)validateCommand:(id)a3;
@end

@implementation BKAudiobookController

- (BKAudiobookControllerDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (a4)
  {
    v6 = self;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = self;
  }

  v8 = sub_1004993A0(a3, v10);

  sub_1000230BC(v10);
  return v8 & 1;
}

- (void)validateCommand:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1004999E4(v4);
}

- (void)books_togglePlaying:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
    v5 = self;
  }

  [*(self + OBJC_IVAR___BKAudiobookController_player) togglePlayPause];
  sub_1000230BC(&v6);
}

- (void)books_increaseVolume:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
    v5 = self;
  }

  v6 = *(self + OBJC_IVAR___BKAudiobookController_player);
  [v6 volume];
  *&v7 = *&v7 + 0.1;
  if (*&v7 < 0.0)
  {
    *&v7 = 0.0;
  }

  if (*&v7 > 1.0)
  {
    *&v7 = 1.0;
  }

  [v6 setVolume:v7];
  sub_1000230BC(&v8);
}

- (void)books_decreaseVolume:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
    v5 = self;
  }

  v6 = *(self + OBJC_IVAR___BKAudiobookController_player);
  [v6 volume];
  *&v7 = *&v7 + -0.1;
  if (*&v7 < 0.0)
  {
    *&v7 = 0.0;
  }

  if (*&v7 > 1.0)
  {
    *&v7 = 1.0;
  }

  [v6 setVolume:v7];
  sub_1000230BC(&v8);
}

- (BKAudiobookController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end