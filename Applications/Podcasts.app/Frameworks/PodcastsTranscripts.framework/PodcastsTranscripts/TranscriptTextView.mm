@interface TranscriptTextView
- (BOOL)isSearching;
- (_TtC19PodcastsTranscripts18TranscriptTextView)initWithCoder:(id)coder;
- (_TtC19PodcastsTranscripts18TranscriptTextView)initWithFrame:(CGRect)frame textContainer:(id)container;
- (void)copy:(id)copy;
- (void)findInteraction:(id)interaction didBeginFindSession:(id)session;
- (void)findInteraction:(id)interaction didEndFindSession:(id)session;
- (void)setIsSearching:(BOOL)searching;
@end

@implementation TranscriptTextView

- (BOOL)isSearching
{
  v3 = OBJC_IVAR____TtC19PodcastsTranscripts18TranscriptTextView_isSearching;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.isa + v3);
}

- (void)setIsSearching:(BOOL)searching
{
  v5 = OBJC_IVAR____TtC19PodcastsTranscripts18TranscriptTextView_isSearching;
  swift_beginAccess();
  *(&self->super.super.super.super.super.isa + v5) = searching;
}

- (_TtC19PodcastsTranscripts18TranscriptTextView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC19PodcastsTranscripts18TranscriptTextView_isSearching) = 0;
  swift_unknownObjectWeakInit();
  result = sub_98758();
  __break(1u);
  return result;
}

- (void)copy:(id)copy
{
  if (copy)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_98608();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  TranscriptTextView.copy(_:)(v6);

  sub_167A4(v6);
}

- (void)findInteraction:(id)interaction didBeginFindSession:(id)session
{
  ObjectType = swift_getObjectType();
  interactionCopy = interaction;
  sessionCopy = session;
  selfCopy = self;
  [(TranscriptTextView *)selfCopy setIsSearching:1];
  searchText = [interactionCopy searchText];
  if (searchText)
  {
    v12 = searchText;
    v13 = sub_97E08();
    v15 = v14;

    static TranscriptCopyUtility.truncate(_:includeEllipsis:)(v13, v15, 0);

    v16 = sub_97DC8();

    [interactionCopy setSearchText:v16];
  }

  v17.receiver = selfCopy;
  v17.super_class = ObjectType;
  [(TranscriptTextView *)&v17 findInteraction:interactionCopy didBeginFindSession:sessionCopy];
}

- (void)findInteraction:(id)interaction didEndFindSession:(id)session
{
  ObjectType = swift_getObjectType();
  interactionCopy = interaction;
  sessionCopy = session;
  selfCopy = self;
  [(TranscriptTextView *)selfCopy setIsSearching:0];
  [(TranscriptTextView *)selfCopy becomeFirstResponder];
  v11.receiver = selfCopy;
  v11.super_class = ObjectType;
  [(TranscriptTextView *)&v11 findInteraction:interactionCopy didEndFindSession:sessionCopy];
}

- (_TtC19PodcastsTranscripts18TranscriptTextView)initWithFrame:(CGRect)frame textContainer:(id)container
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end