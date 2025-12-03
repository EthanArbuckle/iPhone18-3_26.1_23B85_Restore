@interface TTRIRemindersListScrollingController_collectionView
- (_TtC9Reminders51TTRIRemindersListScrollingController_collectionView)init;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
- (void)scrollViewDidScroll:(id)scroll;
@end

@implementation TTRIRemindersListScrollingController_collectionView

- (_TtC9Reminders51TTRIRemindersListScrollingController_collectionView)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  decelerateCopy = decelerate;
  draggingCopy = dragging;
  selfCopy = self;
  sub_10016CFC8(decelerateCopy);
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  selfCopy = self;
  sub_10016D01C();
}

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  sub_100003540(0, &qword_100775690);
  animationCopy = animation;
  selfCopy = self;
  if (static NSObject.== infix(_:_:)())
  {

    PassthroughSubject.send(_:)();

    v6 = animationCopy;
  }

  else
  {

    v6 = selfCopy;
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  sub_100003540(0, &qword_100775690);
  scrollCopy = scroll;
  selfCopy = self;
  if (static NSObject.== infix(_:_:)())
  {
    sub_100058000(&unk_1007701B0);
    sub_10000E188(&unk_1007701E0, &unk_1007701B0);
    Subject<>.send()();
    v6 = selfCopy;
  }

  else
  {
    v6 = scrollCopy;
    scrollCopy = selfCopy;
  }
}

@end