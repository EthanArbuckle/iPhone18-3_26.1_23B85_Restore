@interface ReadingHistoryController
- (void)clearTodaysReadingTime;
- (void)createFakeSession:(id)a3;
- (void)handlePlaceholderStreakDayGoalNeedsUpdate:(id)a3;
- (void)handleSignificantDateChange:(id)a3;
@end

@implementation ReadingHistoryController

- (void)handlePlaceholderStreakDayGoalNeedsUpdate:(id)a3
{
  v4 = sub_1EDD64();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1EDD24();
  v8 = *self->queue;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1E3DC4;
  *(v9 + 24) = self;
  aBlock[4] = sub_1ADC78;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_199688;
  aBlock[3] = &unk_2D2590;
  v10 = _Block_copy(aBlock);
  swift_retain_n();

  dispatch_sync(v8, v10);
  _Block_release(v10);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  else
  {
    (*(v5 + 8))(v7, v4);
  }
}

- (void)handleSignificantDateChange:(id)a3
{
  v3 = sub_1EDD64();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1EDD24();

  sub_1DD61C();

  (*(v4 + 8))(v6, v3);
}

- (void)createFakeSession:(id)a3
{
  v3 = sub_1EDD64();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1EDD24();

  sub_1DE1A4(v6);

  (*(v4 + 8))(v6, v3);
}

- (void)clearTodaysReadingTime
{

  sub_1DE890();
}

@end