@interface ATPlayedMediaItem
- (_TtC9Archetype17ATPlayedMediaItem)init;
- (_TtC9Archetype17ATPlayedMediaItem)initWithTitle:(id)a3 artist:(id)a4 album:(id)a5 link:(id)a6 bundleID:(id)a7 mediaType:(id)a8 playTime:(double)a9;
- (id)copyWithZone:(void *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATPlayedMediaItem

- (_TtC9Archetype17ATPlayedMediaItem)initWithTitle:(id)a3 artist:(id)a4 album:(id)a5 link:(id)a6 bundleID:(id)a7 mediaType:(id)a8 playTime:(double)a9
{
  v34 = sub_240FAE990();
  v12 = v11;
  v13 = sub_240FAE990();
  v15 = v14;
  v16 = sub_240FAE990();
  v18 = v17;
  v19 = sub_240FAE990();
  v21 = v20;
  v22 = sub_240FAE990();
  v24 = v23;
  v25 = sub_240FAE990();
  v26 = (self + OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_title);
  *v26 = v34;
  v26[1] = v12;
  v27 = (self + OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_artist);
  *v27 = v13;
  v27[1] = v15;
  v28 = (self + OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_album);
  *v28 = v16;
  v28[1] = v18;
  v29 = (self + OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_link);
  *v29 = v19;
  v29[1] = v21;
  v30 = (self + OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_bundleID);
  *v30 = v22;
  v30[1] = v24;
  v31 = (self + OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_mediaType);
  *v31 = v25;
  v31[1] = v32;
  *(&self->super.isa + OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_playTime) = a9;
  v35.receiver = self;
  v35.super_class = type metadata accessor for ATPlayedMediaItem();
  return [(ATPlayedMediaItem *)&v35 init];
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  sub_240FA9638(v6);

  __swift_project_boxed_opaque_existential_0(v6, v6[3]);
  v4 = sub_240FAEAC0();
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_240FA9830(v4);
}

- (_TtC9Archetype17ATPlayedMediaItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end