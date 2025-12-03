@interface CoreDataChapterIngester
- (id)unsafeIngestFeedChapter:(id)chapter withManagedObjectContext:(id)context;
@end

@implementation CoreDataChapterIngester

- (id)unsafeIngestFeedChapter:(id)chapter withManagedObjectContext:(id)context
{
  swift_unknownObjectRetain();
  contextCopy = context;

  v7 = _s8Podcasts23CoreDataChapterIngesterC12unsafeIngest04feedD03ctx0A10Foundation9MTChapterCSgSo06MTFeedD0_p_So22NSManagedObjectContextCtF_0(chapter, contextCopy);
  swift_unknownObjectRelease();

  return v7;
}

@end