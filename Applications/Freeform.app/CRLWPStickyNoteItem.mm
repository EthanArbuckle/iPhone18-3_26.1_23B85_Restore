@interface CRLWPStickyNoteItem
- (Class)editorClass;
- (Class)layoutClass;
- (Class)repClass;
@end

@implementation CRLWPStickyNoteItem

- (Class)layoutClass
{
  type metadata accessor for CRLWPStickyNoteLayout();

  return swift_getObjCClassFromMetadata();
}

- (Class)repClass
{
  type metadata accessor for CRLWPStickyNoteRep();

  return swift_getObjCClassFromMetadata();
}

- (Class)editorClass
{
  type metadata accessor for CRLWPStickyNoteEditor();

  return swift_getObjCClassFromMetadata();
}

@end