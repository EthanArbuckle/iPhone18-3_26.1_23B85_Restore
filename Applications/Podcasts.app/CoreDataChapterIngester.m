@interface CoreDataChapterIngester
- (id)unsafeIngestFeedChapter:(id)a3 withManagedObjectContext:(id)a4;
@end

@implementation CoreDataChapterIngester

- (id)unsafeIngestFeedChapter:(id)a3 withManagedObjectContext:(id)a4
{
  swift_unknownObjectRetain();
  v6 = a4;

  v7 = _s8Podcasts23CoreDataChapterIngesterC12unsafeIngest04feedD03ctx0A10Foundation9MTChapterCSgSo06MTFeedD0_p_So22NSManagedObjectContextCtF_0(a3, v6);
  swift_unknownObjectRelease();

  return v7;
}

@end