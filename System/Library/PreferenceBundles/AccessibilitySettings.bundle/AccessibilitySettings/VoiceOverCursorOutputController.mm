@interface VoiceOverCursorOutputController
- (VoiceOverCursorOutputController)initWithCoder:(id)coder;
- (VoiceOverCursorOutputController)initWithNibName:(id)name bundle:(id)bundle;
- (id)specifiers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
@end

@implementation VoiceOverCursorOutputController

- (id)specifiers
{
  selfCopy = self;
  v3 = VoiceOverCursorOutputController.specifiers()();

  if (v3)
  {
    v4.super.isa = sub_19C094().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = sub_19AF24();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19AF14();
  viewCopy = view;
  selfCopy = self;
  VoiceOverCursorOutputController.tableView(_:didSelectRowAt:)(viewCopy);

  (*(v7 + 8))(v9, v6);
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  v8 = sub_19AF24();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19AF14();
  viewCopy = view;
  cellCopy = cell;
  selfCopy = self;
  sub_1820D8(cellCopy);

  (*(v9 + 8))(v11, v8);
}

- (VoiceOverCursorOutputController)initWithNibName:(id)name bundle:(id)bundle
{
  ObjectType = swift_getObjectType();
  if (name)
  {
    sub_19BFE4();
    bundleCopy = bundle;
    name = sub_19BFB4();
  }

  else
  {
    bundleCopy2 = bundle;
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(VoiceOverCursorOutputController *)&v12 initWithNibName:name bundle:bundle];

  return v10;
}

- (VoiceOverCursorOutputController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(VoiceOverCursorOutputController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end