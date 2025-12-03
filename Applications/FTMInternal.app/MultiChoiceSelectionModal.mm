@interface MultiChoiceSelectionModal
- (_TtC11FTMInternal25MultiChoiceSelectionModal)initWithCoder:(id)coder;
- (_TtC11FTMInternal25MultiChoiceSelectionModal)initWithNibName:(id)name bundle:(id)bundle;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)didTapDismiss:(id)dismiss;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation MultiChoiceSelectionModal

- (_TtC11FTMInternal25MultiChoiceSelectionModal)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11FTMInternal25MultiChoiceSelectionModal____lazy_storage___tableView) = 0;
  *&self->$__lazy_storage_$_tableView[OBJC_IVAR____TtC11FTMInternal25MultiChoiceSelectionModal_delegate] = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC11FTMInternal25MultiChoiceSelectionModal_dismissButton;
  *(&self->super.super.super.isa + v4) = sub_10021C6F4();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MultiChoiceSelectionModal();
  v2 = v3.receiver;
  [(MultiChoiceSelectionModal *)&v3 viewDidLoad];
  sub_10021CA84();
}

- (void)didTapDismiss:(id)dismiss
{
  v4 = objc_allocWithZone(UIImpactFeedbackGenerator);
  selfCopy = self;
  v5 = [v4 initWithStyle:1];
  [v5 impactOccurred];
  [(MultiChoiceSelectionModal *)selfCopy dismissViewControllerAnimated:1 completion:0];
}

- (_TtC11FTMInternal25MultiChoiceSelectionModal)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v5 + 8))(v8, v4);
  return 75.0;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_10021D284(viewCopy);

  (*(v7 + 8))(v10, v6);
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v13 = sub_10021D4DC(viewCopy);

  (*(v7 + 8))(v10, v6);

  return v13;
}

@end