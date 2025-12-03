@interface ICNoteEditorBaseViewController
- (ICRealtimeCollaborationController)realtimeCollaborationController;
@end

@implementation ICNoteEditorBaseViewController

- (ICRealtimeCollaborationController)realtimeCollaborationController
{
  v2 = qword_1006BC7C8;
  selfCopy = self;
  if (v2 != -1)
  {
    swift_once();
  }

  if (byte_1006EF718 == 1 && (sub_100025BC8() & 1) != 0)
  {
    v4 = sub_100363264();

    v5 = v4;
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

@end