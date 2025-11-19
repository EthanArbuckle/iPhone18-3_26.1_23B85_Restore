@interface AXVoiceOverNotificationVerbosity
- (AXVoiceOverNotificationVerbosity)initWithCoder:(id)a3;
- (AXVoiceOverNotificationVerbosity)initWithNibName:(id)a3 bundle:(id)a4;
- (id)_useRingerSwitchWithSpec:(id)a3;
- (id)specifiers;
- (void)_setUseRingerSwitchWithValue:(id)a3 spec:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
@end

@implementation AXVoiceOverNotificationVerbosity

- (id)specifiers
{
  v2 = self;
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

- (id)_useRingerSwitchWithSpec:(id)a3
{
  v3 = [objc_opt_self() sharedInstance];
  [v3 voiceOverUseRingerSwitchToControlNotificationOutput];

  v4 = sub_19C654();

  return v4;
}

- (void)_setUseRingerSwitchWithValue:(id)a3 spec:(id)a4
{
  swift_unknownObjectRetain();
  v6 = a4;
  v7 = self;
  sub_19C4C4();
  swift_unknownObjectRelease();
  sub_183CD8(v8);

  __swift_destroy_boxed_opaque_existential_1(v8);
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = sub_19AF24();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19AF14();
  v10 = a3;
  v11 = self;
  AXVoiceOverNotificationVerbosity.tableView(_:didSelectRowAt:)(v10);

  (*(v7 + 8))(v9, v6);
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v8 = sub_19AF24();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19AF14();
  v12 = a3;
  v13 = a4;
  v14 = self;
  sub_183D94(v13);

  (*(v9 + 8))(v11, v8);
}

- (AXVoiceOverNotificationVerbosity)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_19BFE4();
    v6 = a4;
    v7 = sub_19BFB4();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for AXVoiceOverNotificationVerbosity();
  v9 = [(AXVoiceOverNotificationVerbosity *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (AXVoiceOverNotificationVerbosity)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for AXVoiceOverNotificationVerbosity();
  v4 = a3;
  v5 = [(AXVoiceOverNotificationVerbosity *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end