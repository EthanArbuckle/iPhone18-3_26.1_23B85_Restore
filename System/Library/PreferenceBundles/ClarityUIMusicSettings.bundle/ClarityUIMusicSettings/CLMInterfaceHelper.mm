@interface CLMInterfaceHelper
+ (UIEdgeInsets)separatorInsetsWith:(UIEdgeInsets)with traitCollection:(id)collection;
+ (id)makePlaylistRowCellContentForPlaylistEntry:(id)entry;
- (_TtC22ClarityUIMusicSettings18CLMInterfaceHelper)init;
- (uint64_t)openMusicApp;
- (void)loadPlaylistsWithCompletionHandler:(id)handler;
- (void)setPlaylists:(id)playlists;
@end

@implementation CLMInterfaceHelper

- (void)setPlaylists:(id)playlists
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC22ClarityUIMusicSettings18CLMInterfaceHelper_playlists);
  *(&self->super.isa + OBJC_IVAR____TtC22ClarityUIMusicSettings18CLMInterfaceHelper_playlists) = playlists;
  playlistsCopy = playlists;
}

- (void)loadPlaylistsWithCompletionHandler:(id)handler
{
  v5 = sub_5170(&qword_14D98, &qword_A900);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_94DC();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_A910;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_A920;
  v13[5] = v12;
  selfCopy = self;
  sub_7D48(0, 0, v8, &unk_A930, v13);
}

+ (id)makePlaylistRowCellContentForPlaylistEntry:(id)entry
{
  v4 = objc_allocWithZone(UITableViewCell);
  entryCopy = entry;
  v6 = [v4 init];
  v8[3] = sub_5170(&qword_14DA0, &qword_A950);
  v8[4] = sub_6044(&qword_14DA8, &qword_14DA0, &qword_A950);
  sub_8C1C(v8);
  type metadata accessor for PlaylistRow(0);
  sub_8C80(&qword_14DB0, type metadata accessor for PlaylistRow);
  sub_91CC();
  sub_952C();

  return v6;
}

+ (UIEdgeInsets)separatorInsetsWith:(UIEdgeInsets)with traitCollection:(id)collection
{
  left = with.left;
  collectionCopy = collection;
  preferredContentSizeCategory = [collectionCopy preferredContentSizeCategory];
  v7 = sub_953C();

  if (v7)
  {
    v8 = left;
  }

  else
  {
    v8 = left + 64.0 + 12.0;
  }

  v9 = 0.0;
  v10 = 0.0;
  v11 = 0.0;
  result.right = v11;
  result.bottom = v10;
  result.left = v8;
  result.top = v9;
  return result;
}

- (_TtC22ClarityUIMusicSettings18CLMInterfaceHelper)init
{
  v3 = OBJC_IVAR____TtC22ClarityUIMusicSettings18CLMInterfaceHelper_playlists;
  *(&self->super.isa + v3) = [objc_allocWithZone(NSMutableArray) init];
  v5.receiver = self;
  v5.super_class = type metadata accessor for CLMInterfaceHelper();
  return [(CLMInterfaceHelper *)&v5 init];
}

- (uint64_t)openMusicApp
{
  v0 = sub_5170(&qword_14D80, &qword_A8E8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v21 - v2;
  v4 = sub_905C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_904C();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_608C(v3, &qword_14D80, &qword_A8E8);
  }

  (*(v5 + 32))(v8, v3, v4);
  v10 = objc_opt_self();
  sharedApplication = [v10 sharedApplication];
  sub_903C(v12);
  v14 = v13;
  v15 = [sharedApplication canOpenURL:v13];

  if (v15)
  {
    sharedApplication2 = [v10 sharedApplication];
    sub_903C(v17);
    v19 = v18;
    sub_83CC(&_swiftEmptyArrayStorage);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_8C80(&qword_14CF0, type metadata accessor for OpenExternalURLOptionsKey);
    isa = sub_940C().super.isa;

    [sharedApplication2 openURL:v19 options:isa completionHandler:0];
  }

  return (*(v5 + 8))(v8, v4);
}

@end