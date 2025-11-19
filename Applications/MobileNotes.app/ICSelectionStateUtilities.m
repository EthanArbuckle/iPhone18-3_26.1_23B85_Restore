@interface ICSelectionStateUtilities
+ (id)selectedNoteObjectIDFromArchive:(id)a3 modernManagedObjectContext:(id)a4 legacyManagedObjectContext:(id)a5;
+ (void)updateArchive:(id)a3 forNewViewMode:(int64_t)a4 requiresContainerSelection:(BOOL)a5 requiresObjectSelection:(BOOL)a6 validateContainerSelection:(BOOL)a7 defaultObjectID:(id)a8 modernManagedObjectContext:(id)a9 legacyManagedObjectContext:(id)a10;
- (_TtC11MobileNotes25ICSelectionStateUtilities)init;
@end

@implementation ICSelectionStateUtilities

+ (id)selectedNoteObjectIDFromArchive:(id)a3 modernManagedObjectContext:(id)a4 legacyManagedObjectContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_1001F6A24(a3, a4, a5);

  return v11;
}

+ (void)updateArchive:(id)a3 forNewViewMode:(int64_t)a4 requiresContainerSelection:(BOOL)a5 requiresObjectSelection:(BOOL)a6 validateContainerSelection:(BOOL)a7 defaultObjectID:(id)a8 modernManagedObjectContext:(id)a9 legacyManagedObjectContext:(id)a10
{
  v18 = a6;
  v19 = a7;
  swift_getObjCClassMetadata();
  v14 = a3;
  v15 = a8;
  v16 = a9;
  v17 = a10;
  sub_1001F303C(a3, a4, a5, v18, v19, a8, a9, a10);
}

- (_TtC11MobileNotes25ICSelectionStateUtilities)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(ICSelectionStateUtilities *)&v3 init];
}

@end