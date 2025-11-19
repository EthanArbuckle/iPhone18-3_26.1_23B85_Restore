@interface TranscriptSearchButton
- (_TtC19PodcastsTranscripts22TranscriptSearchButton)initWithCoder:(id)a3;
- (_TtC19PodcastsTranscripts22TranscriptSearchButton)initWithFrame:(CGRect)a3;
@end

@implementation TranscriptSearchButton

- (_TtC19PodcastsTranscripts22TranscriptSearchButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C68C8);
  __chkstk_darwin(v9 - 8);
  v11 = &v15 - v10;
  v15.receiver = self;
  v15.super_class = ObjectType;
  v12 = [(TranscriptSearchButton *)&v15 initWithFrame:x, y, width, height];
  sub_5AD84();
  v13 = sub_98548();
  (*(*(v13 - 8) + 56))(v11, 0, 1, v13);
  sub_98558();
  sub_5AB48();

  return v12;
}

- (_TtC19PodcastsTranscripts22TranscriptSearchButton)initWithCoder:(id)a3
{
  result = sub_98758();
  __break(1u);
  return result;
}

@end