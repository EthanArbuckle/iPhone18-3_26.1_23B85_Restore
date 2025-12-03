@interface AXVoiceOverNotificationVerbosity
- (AXVoiceOverNotificationVerbosity)initWithCoder:(id)coder;
- (AXVoiceOverNotificationVerbosity)initWithNibName:(id)name bundle:(id)bundle;
- (id)_useRingerSwitchWithSpec:(id)spec;
- (id)specifiers;
- (void)_setUseRingerSwitchWithValue:(id)value spec:(id)spec;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
@end

@implementation AXVoiceOverNotificationVerbosity

- (id)specifiers
{
  selfCopy = self;
  v3 = AXVoiceOverNotificationVerbosity.specifiers()();

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

- (id)_useRingerSwitchWithSpec:(id)spec
{
  sharedInstance = [objc_opt_self() sharedInstance];
  [sharedInstance voiceOverUseRingerSwitchToControlNotificationOutput];

  v4 = sub_19C654();

  return v4;
}

- (void)_setUseRingerSwitchWithValue:(id)value spec:(id)spec
{
  swift_unknownObjectRetain();
  specCopy = spec;
  selfCopy = self;
  sub_19C4C4();
  swift_unknownObjectRelease();
  sub_183CD8(v8);

  __swift_destroy_boxed_opaque_existential_1(v8);
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
  AXVoiceOverNotificationVerbosity.tableView(_:didSelectRowAt:)(viewCopy);

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
  sub_183D94(cellCopy);

  (*(v9 + 8))(v11, v8);
}

- (AXVoiceOverNotificationVerbosity)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_19BFE4();
    bundleCopy = bundle;
    v7 = sub_19BFB4();
  }

  else
  {
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for AXVoiceOverNotificationVerbosity();
  v9 = [(AXVoiceOverNotificationVerbosity *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (AXVoiceOverNotificationVerbosity)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for AXVoiceOverNotificationVerbosity();
  coderCopy = coder;
  v5 = [(AXVoiceOverNotificationVerbosity *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end