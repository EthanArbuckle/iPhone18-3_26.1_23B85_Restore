@interface NoteDebugStatusController
+ (_TtC11MobileNotes25NoteDebugStatusController)sharedController;
- (ICNote)currentNote;
- (void)setCurrentNote:(id)note;
@end

@implementation NoteDebugStatusController

+ (_TtC11MobileNotes25NoteDebugStatusController)sharedController
{
  if (qword_1006BC8D8 != -1)
  {
    swift_once();
  }

  v3 = qword_1006EF998;

  return v3;
}

- (ICNote)currentNote
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  static Published.subscript.getter();

  return v5;
}

- (void)setCurrentNote:(id)note
{
  swift_getKeyPath();
  swift_getKeyPath();
  noteCopy = note;
  selfCopy = self;
  static Published.subscript.setter();
}

@end