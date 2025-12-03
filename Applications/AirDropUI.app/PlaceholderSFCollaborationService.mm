@interface PlaceholderSFCollaborationService
- (BOOL)canShareFileURL:(id)l;
- (_TtC9AirDropUI33PlaceholderSFCollaborationService)init;
@end

@implementation PlaceholderSFCollaborationService

- (BOOL)canShareFileURL:(id)l
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v4 + 8))(v7, v3);
  return 1;
}

- (_TtC9AirDropUI33PlaceholderSFCollaborationService)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PlaceholderSFCollaborationService();
  return [(PlaceholderSFCollaborationService *)&v3 init];
}

@end