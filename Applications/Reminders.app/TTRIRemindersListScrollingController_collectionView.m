@interface TTRIRemindersListScrollingController_collectionView
- (_TtC9Reminders51TTRIRemindersListScrollingController_collectionView)init;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidEndScrollingAnimation:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
@end

@implementation TTRIRemindersListScrollingController_collectionView

- (_TtC9Reminders51TTRIRemindersListScrollingController_collectionView)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = self;
  sub_10016CFC8(v4);
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10016D01C();
}

- (void)scrollViewDidEndScrollingAnimation:(id)a3
{
  sub_100003540(0, &qword_100775690);
  v7 = a3;
  v5 = self;
  if (static NSObject.== infix(_:_:)())
  {

    PassthroughSubject.send(_:)();

    v6 = v7;
  }

  else
  {

    v6 = v5;
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  sub_100003540(0, &qword_100775690);
  v7 = a3;
  v5 = self;
  if (static NSObject.== infix(_:_:)())
  {
    sub_100058000(&unk_1007701B0);
    sub_10000E188(&unk_1007701E0, &unk_1007701B0);
    Subject<>.send()();
    v6 = v5;
  }

  else
  {
    v6 = v7;
    v7 = v5;
  }
}

@end