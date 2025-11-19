@interface TranscriptTextView
- (BOOL)isSearching;
- (_TtC19PodcastsTranscripts18TranscriptTextView)initWithCoder:(id)a3;
- (_TtC19PodcastsTranscripts18TranscriptTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4;
- (void)copy:(id)a3;
- (void)findInteraction:(id)a3 didBeginFindSession:(id)a4;
- (void)findInteraction:(id)a3 didEndFindSession:(id)a4;
- (void)setIsSearching:(BOOL)a3;
@end

@implementation TranscriptTextView

- (BOOL)isSearching
{
  v3 = OBJC_IVAR____TtC19PodcastsTranscripts18TranscriptTextView_isSearching;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.isa + v3);
}

- (void)setIsSearching:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC19PodcastsTranscripts18TranscriptTextView_isSearching;
  swift_beginAccess();
  *(&self->super.super.super.super.super.isa + v5) = a3;
}

- (_TtC19PodcastsTranscripts18TranscriptTextView)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC19PodcastsTranscripts18TranscriptTextView_isSearching) = 0;
  swift_unknownObjectWeakInit();
  result = sub_98758();
  __break(1u);
  return result;
}

- (void)copy:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_98608();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  TranscriptTextView.copy(_:)(v6);

  sub_167A4(v6);
}

- (void)findInteraction:(id)a3 didBeginFindSession:(id)a4
{
  ObjectType = swift_getObjectType();
  v8 = a3;
  v9 = a4;
  v10 = self;
  [(TranscriptTextView *)v10 setIsSearching:1];
  v11 = [v8 searchText];
  if (v11)
  {
    v12 = v11;
    v13 = sub_97E08();
    v15 = v14;

    static TranscriptCopyUtility.truncate(_:includeEllipsis:)(v13, v15, 0);

    v16 = sub_97DC8();

    [v8 setSearchText:v16];
  }

  v17.receiver = v10;
  v17.super_class = ObjectType;
  [(TranscriptTextView *)&v17 findInteraction:v8 didBeginFindSession:v9];
}

- (void)findInteraction:(id)a3 didEndFindSession:(id)a4
{
  ObjectType = swift_getObjectType();
  v8 = a3;
  v9 = a4;
  v10 = self;
  [(TranscriptTextView *)v10 setIsSearching:0];
  [(TranscriptTextView *)v10 becomeFirstResponder];
  v11.receiver = v10;
  v11.super_class = ObjectType;
  [(TranscriptTextView *)&v11 findInteraction:v8 didEndFindSession:v9];
}

- (_TtC19PodcastsTranscripts18TranscriptTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end