@interface MusicAttributionMetadata
+ (NSString)didChangeNotificationName;
- (MusicAttributionMetadata)init;
- (NSString)displayName;
- (void)setArtworkCatalog:(id)a3;
- (void)setDisplayName:(id)a3;
- (void)setPlaceholderArtworkCatalog:(id)a3;
@end

@implementation MusicAttributionMetadata

+ (NSString)didChangeNotificationName
{
  if (qword_10117FCC8 != -1)
  {
    swift_once();
  }

  v3 = qword_101219538;

  return v3;
}

- (NSString)displayName
{
  if (*(self + OBJC_IVAR___MusicAttributionMetadata_displayName + 8))
  {

    v2 = String._bridgeToObjectiveC()();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setDisplayName:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___MusicAttributionMetadata_displayName);
  *v6 = v4;
  v6[1] = v5;
}

- (void)setArtworkCatalog:(id)a3
{
  v4 = *(self + OBJC_IVAR___MusicAttributionMetadata_artworkCatalog);
  *(self + OBJC_IVAR___MusicAttributionMetadata_artworkCatalog) = a3;
  v3 = a3;
}

- (void)setPlaceholderArtworkCatalog:(id)a3
{
  v4 = *(self + OBJC_IVAR___MusicAttributionMetadata_placeholderArtworkCatalog);
  *(self + OBJC_IVAR___MusicAttributionMetadata_placeholderArtworkCatalog) = a3;
  v3 = a3;
}

- (MusicAttributionMetadata)init
{
  v2 = (self + OBJC_IVAR___MusicAttributionMetadata_displayName);
  *v2 = 0;
  v2[1] = 0;
  *(self + OBJC_IVAR___MusicAttributionMetadata_artworkCatalog) = 0;
  *(self + OBJC_IVAR___MusicAttributionMetadata_placeholderArtworkCatalog) = 0;
  v4.receiver = self;
  v4.super_class = type metadata accessor for AttributionMetadata();
  return [(MusicAttributionMetadata *)&v4 init];
}

@end