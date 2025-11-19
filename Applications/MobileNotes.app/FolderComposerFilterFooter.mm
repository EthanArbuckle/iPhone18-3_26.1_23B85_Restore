@interface FolderComposerFilterFooter
- (_TtC11MobileNotes26FolderComposerFilterFooter)initWithCoder:(id)a3;
- (_TtC11MobileNotes26FolderComposerFilterFooter)initWithFrame:(CGRect)a3;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
@end

@implementation FolderComposerFilterFooter

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = type metadata accessor for UIListContentConfiguration();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UICellConfigurationState();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = self;
  static UIListContentConfiguration.groupedFooter()();

  UIListContentConfiguration.text.setter();
  v15[3] = v4;
  v15[4] = &protocol witness table for UIListContentConfiguration;
  v13 = sub_100180240(v15);
  (*(v5 + 16))(v13, v7, v4);
  UICollectionViewCell.contentConfiguration.setter();

  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
}

- (_TtC11MobileNotes26FolderComposerFilterFooter)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  v9 = (&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC11MobileNotes26FolderComposerFilterFooter_text);
  *v9 = 0;
  v9[1] = 0;
  v11.receiver = self;
  v11.super_class = ObjectType;
  return [(FolderComposerFilterFooter *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC11MobileNotes26FolderComposerFilterFooter)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = (&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC11MobileNotes26FolderComposerFilterFooter_text);
  *v6 = 0;
  v6[1] = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  v7 = a3;
  v8 = [(FolderComposerFilterFooter *)&v10 initWithCoder:v7];

  if (v8)
  {
  }

  return v8;
}

@end