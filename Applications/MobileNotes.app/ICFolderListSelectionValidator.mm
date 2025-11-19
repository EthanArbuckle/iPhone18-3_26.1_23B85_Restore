@interface ICFolderListSelectionValidator
- (BOOL)isSelectionAppropriateForObject:(id)a3 selectedContainerIdentifiers:(id)a4;
- (BOOL)isSelectionAppropriateForObject:(id)a3 selectedContainerIdentifiers:(id)a4 tagSelection:(id)a5;
- (BOOL)isSelectionAppropriateForObject:(id)a3 tagSelection:(id)a4;
- (BOOL)isSelectionAppropriateForObjectID:(id)a3 selectedContainerIdentifiers:(id)a4;
- (BOOL)isSelectionAppropriateForObjectID:(id)a3 selectedContainerIdentifiers:(id)a4 tagSelection:(id)a5;
- (BOOL)isSelectionAppropriateForObjectID:(id)a3 tagSelection:(id)a4;
- (ICFolderListSelectionValidator)init;
- (ICFolderListSelectionValidator)initWithModernContext:(id)a3 htmlContext:(id)a4;
- (ICFolderListSelectionValidator)initWithModernContext:(id)a3 htmlContext:(id)a4 hidesSystemPaperNotesInCustomFolders:(BOOL)a5 hidesMathNotesInCustomFolders:(BOOL)a6 hidesCallNotesInCustomFolders:(BOOL)a7;
@end

@implementation ICFolderListSelectionValidator

- (ICFolderListSelectionValidator)initWithModernContext:(id)a3 htmlContext:(id)a4 hidesSystemPaperNotesInCustomFolders:(BOOL)a5 hidesMathNotesInCustomFolders:(BOOL)a6 hidesCallNotesInCustomFolders:(BOOL)a7
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___ICFolderListSelectionValidator_modernContext) = a3;
  *(&self->super.isa + OBJC_IVAR___ICFolderListSelectionValidator_htmlContext) = a4;
  *(&self->super.isa + OBJC_IVAR___ICFolderListSelectionValidator_hidesSystemPaperNotesInCustomFolders) = a5;
  *(&self->super.isa + OBJC_IVAR___ICFolderListSelectionValidator_hidesMathNotesInCustomFolders) = a6;
  *(&self->super.isa + OBJC_IVAR___ICFolderListSelectionValidator_hidesCallNotesInCustomFolders) = a7;
  v17.receiver = self;
  v17.super_class = ObjectType;
  v14 = a3;
  v15 = a4;
  return [(ICFolderListSelectionValidator *)&v17 init];
}

- (ICFolderListSelectionValidator)initWithModernContext:(id)a3 htmlContext:(id)a4
{
  v7 = objc_opt_self();
  v8 = a3;
  v9 = a4;
  v10 = -[ICFolderListSelectionValidator initWithModernContext:htmlContext:hidesSystemPaperNotesInCustomFolders:hidesMathNotesInCustomFolders:hidesCallNotesInCustomFolders:](self, "initWithModernContext:htmlContext:hidesSystemPaperNotesInCustomFolders:hidesMathNotesInCustomFolders:hidesCallNotesInCustomFolders:", v8, v9, [v7 hidesSystemPaperNotesInCustomFolders], objc_msgSend(v7, "hidesMathNotesInCustomFolders"), objc_msgSend(v7, "hidesCallNotesInCustomFolders"));

  return v10;
}

- (BOOL)isSelectionAppropriateForObjectID:(id)a3 selectedContainerIdentifiers:(id)a4
{
  v4 = a4;
  if (a4)
  {
    sub_1000054A4(0, &qword_1006C1730);
    sub_100005B0C(&qword_1006C0750, &qword_1006C1730);
    v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = a3;
  v8 = self;
  v9 = sub_100014954(v7);
  if (v9)
  {
    v10 = v9;
    v11 = sub_100014A9C(v9, v4, 0);
  }

  else
  {
    v11 = 1;
  }

  return v11 & 1;
}

- (BOOL)isSelectionAppropriateForObject:(id)a3 selectedContainerIdentifiers:(id)a4
{
  v4 = a4;
  if (a4)
  {
    sub_1000054A4(0, &qword_1006C1730);
    sub_100005B0C(&qword_1006C0750, &qword_1006C1730);
    v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = a3;
  v8 = self;
  v9 = sub_100014A9C(v7, v4, 0);

  return v9 & 1;
}

- (BOOL)isSelectionAppropriateForObjectID:(id)a3 tagSelection:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  v9 = sub_100014954(v6);
  if (v9)
  {
    v10 = v9;
    v11 = sub_100014A9C(v9, 0, v8);
  }

  else
  {
    v11 = 1;
  }

  return v11 & 1;
}

- (BOOL)isSelectionAppropriateForObject:(id)a3 tagSelection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  LOBYTE(a4) = sub_100014A9C(v6, 0, a4);

  return a4 & 1;
}

- (BOOL)isSelectionAppropriateForObjectID:(id)a3 selectedContainerIdentifiers:(id)a4 tagSelection:(id)a5
{
  v6 = a4;
  if (a4)
  {
    sub_1000054A4(0, &qword_1006C1730);
    sub_100005B0C(&qword_1006C0750, &qword_1006C1730);
    v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v9 = a3;
  v10 = self;
  v11 = a5;
  v12 = sub_100014954(v9);
  if (v12)
  {
    v13 = v12;
    v14 = sub_100014A9C(v12, v6, a5);
  }

  else
  {
    v14 = 1;
  }

  return v14 & 1;
}

- (BOOL)isSelectionAppropriateForObject:(id)a3 selectedContainerIdentifiers:(id)a4 tagSelection:(id)a5
{
  v6 = a4;
  if (a4)
  {
    sub_1000054A4(0, &qword_1006C1730);
    sub_100005B0C(&qword_1006C0750, &qword_1006C1730);
    v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v9 = a3;
  v10 = a5;
  v11 = self;
  v12 = sub_100014A9C(v9, v6, a5);

  return v12 & 1;
}

- (ICFolderListSelectionValidator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end