@interface ICSelectionStateUtilities
+ (id)selectedNoteObjectIDFromArchive:(id)archive modernManagedObjectContext:(id)context legacyManagedObjectContext:(id)objectContext;
+ (void)updateArchive:(id)archive forNewViewMode:(int64_t)mode requiresContainerSelection:(BOOL)selection requiresObjectSelection:(BOOL)objectSelection validateContainerSelection:(BOOL)containerSelection defaultObjectID:(id)d modernManagedObjectContext:(id)context legacyManagedObjectContext:(id)self0;
- (_TtC11MobileNotes25ICSelectionStateUtilities)init;
@end

@implementation ICSelectionStateUtilities

+ (id)selectedNoteObjectIDFromArchive:(id)archive modernManagedObjectContext:(id)context legacyManagedObjectContext:(id)objectContext
{
  archiveCopy = archive;
  contextCopy = context;
  objectContextCopy = objectContext;
  v11 = sub_1001F6A24(archive, context, objectContext);

  return v11;
}

+ (void)updateArchive:(id)archive forNewViewMode:(int64_t)mode requiresContainerSelection:(BOOL)selection requiresObjectSelection:(BOOL)objectSelection validateContainerSelection:(BOOL)containerSelection defaultObjectID:(id)d modernManagedObjectContext:(id)context legacyManagedObjectContext:(id)self0
{
  objectSelectionCopy = objectSelection;
  containerSelectionCopy = containerSelection;
  swift_getObjCClassMetadata();
  archiveCopy = archive;
  dCopy = d;
  contextCopy = context;
  objectContextCopy = objectContext;
  sub_1001F303C(archive, mode, selection, objectSelectionCopy, containerSelectionCopy, d, context, objectContext);
}

- (_TtC11MobileNotes25ICSelectionStateUtilities)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(ICSelectionStateUtilities *)&v3 init];
}

@end