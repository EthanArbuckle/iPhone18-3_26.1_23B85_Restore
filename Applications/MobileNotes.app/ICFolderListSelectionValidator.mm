@interface ICFolderListSelectionValidator
- (BOOL)isSelectionAppropriateForObject:(id)object selectedContainerIdentifiers:(id)identifiers;
- (BOOL)isSelectionAppropriateForObject:(id)object selectedContainerIdentifiers:(id)identifiers tagSelection:(id)selection;
- (BOOL)isSelectionAppropriateForObject:(id)object tagSelection:(id)selection;
- (BOOL)isSelectionAppropriateForObjectID:(id)d selectedContainerIdentifiers:(id)identifiers;
- (BOOL)isSelectionAppropriateForObjectID:(id)d selectedContainerIdentifiers:(id)identifiers tagSelection:(id)selection;
- (BOOL)isSelectionAppropriateForObjectID:(id)d tagSelection:(id)selection;
- (ICFolderListSelectionValidator)init;
- (ICFolderListSelectionValidator)initWithModernContext:(id)context htmlContext:(id)htmlContext;
- (ICFolderListSelectionValidator)initWithModernContext:(id)context htmlContext:(id)htmlContext hidesSystemPaperNotesInCustomFolders:(BOOL)folders hidesMathNotesInCustomFolders:(BOOL)customFolders hidesCallNotesInCustomFolders:(BOOL)inCustomFolders;
@end

@implementation ICFolderListSelectionValidator

- (ICFolderListSelectionValidator)initWithModernContext:(id)context htmlContext:(id)htmlContext hidesSystemPaperNotesInCustomFolders:(BOOL)folders hidesMathNotesInCustomFolders:(BOOL)customFolders hidesCallNotesInCustomFolders:(BOOL)inCustomFolders
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___ICFolderListSelectionValidator_modernContext) = context;
  *(&self->super.isa + OBJC_IVAR___ICFolderListSelectionValidator_htmlContext) = htmlContext;
  *(&self->super.isa + OBJC_IVAR___ICFolderListSelectionValidator_hidesSystemPaperNotesInCustomFolders) = folders;
  *(&self->super.isa + OBJC_IVAR___ICFolderListSelectionValidator_hidesMathNotesInCustomFolders) = customFolders;
  *(&self->super.isa + OBJC_IVAR___ICFolderListSelectionValidator_hidesCallNotesInCustomFolders) = inCustomFolders;
  v17.receiver = self;
  v17.super_class = ObjectType;
  contextCopy = context;
  htmlContextCopy = htmlContext;
  return [(ICFolderListSelectionValidator *)&v17 init];
}

- (ICFolderListSelectionValidator)initWithModernContext:(id)context htmlContext:(id)htmlContext
{
  v7 = objc_opt_self();
  contextCopy = context;
  htmlContextCopy = htmlContext;
  v10 = -[ICFolderListSelectionValidator initWithModernContext:htmlContext:hidesSystemPaperNotesInCustomFolders:hidesMathNotesInCustomFolders:hidesCallNotesInCustomFolders:](self, "initWithModernContext:htmlContext:hidesSystemPaperNotesInCustomFolders:hidesMathNotesInCustomFolders:hidesCallNotesInCustomFolders:", contextCopy, htmlContextCopy, [v7 hidesSystemPaperNotesInCustomFolders], objc_msgSend(v7, "hidesMathNotesInCustomFolders"), objc_msgSend(v7, "hidesCallNotesInCustomFolders"));

  return v10;
}

- (BOOL)isSelectionAppropriateForObjectID:(id)d selectedContainerIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  if (identifiers)
  {
    sub_1000054A4(0, &qword_1006C1730);
    sub_100005B0C(&qword_1006C0750, &qword_1006C1730);
    identifiersCopy = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  dCopy = d;
  selfCopy = self;
  v9 = sub_100014954(dCopy);
  if (v9)
  {
    v10 = v9;
    v11 = sub_100014A9C(v9, identifiersCopy, 0);
  }

  else
  {
    v11 = 1;
  }

  return v11 & 1;
}

- (BOOL)isSelectionAppropriateForObject:(id)object selectedContainerIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  if (identifiers)
  {
    sub_1000054A4(0, &qword_1006C1730);
    sub_100005B0C(&qword_1006C0750, &qword_1006C1730);
    identifiersCopy = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  objectCopy = object;
  selfCopy = self;
  v9 = sub_100014A9C(objectCopy, identifiersCopy, 0);

  return v9 & 1;
}

- (BOOL)isSelectionAppropriateForObjectID:(id)d tagSelection:(id)selection
{
  dCopy = d;
  selfCopy = self;
  selectionCopy = selection;
  v9 = sub_100014954(dCopy);
  if (v9)
  {
    v10 = v9;
    v11 = sub_100014A9C(v9, 0, selectionCopy);
  }

  else
  {
    v11 = 1;
  }

  return v11 & 1;
}

- (BOOL)isSelectionAppropriateForObject:(id)object tagSelection:(id)selection
{
  objectCopy = object;
  selectionCopy = selection;
  selfCopy = self;
  LOBYTE(selection) = sub_100014A9C(objectCopy, 0, selection);

  return selection & 1;
}

- (BOOL)isSelectionAppropriateForObjectID:(id)d selectedContainerIdentifiers:(id)identifiers tagSelection:(id)selection
{
  identifiersCopy = identifiers;
  if (identifiers)
  {
    sub_1000054A4(0, &qword_1006C1730);
    sub_100005B0C(&qword_1006C0750, &qword_1006C1730);
    identifiersCopy = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  dCopy = d;
  selfCopy = self;
  selectionCopy = selection;
  v12 = sub_100014954(dCopy);
  if (v12)
  {
    v13 = v12;
    v14 = sub_100014A9C(v12, identifiersCopy, selection);
  }

  else
  {
    v14 = 1;
  }

  return v14 & 1;
}

- (BOOL)isSelectionAppropriateForObject:(id)object selectedContainerIdentifiers:(id)identifiers tagSelection:(id)selection
{
  identifiersCopy = identifiers;
  if (identifiers)
  {
    sub_1000054A4(0, &qword_1006C1730);
    sub_100005B0C(&qword_1006C0750, &qword_1006C1730);
    identifiersCopy = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  objectCopy = object;
  selectionCopy = selection;
  selfCopy = self;
  v12 = sub_100014A9C(objectCopy, identifiersCopy, selection);

  return v12 & 1;
}

- (ICFolderListSelectionValidator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end