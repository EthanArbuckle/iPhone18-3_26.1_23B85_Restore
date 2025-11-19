@interface BKPictureBookPaginationLayoutOperation
- (void)execute;
@end

@implementation BKPictureBookPaginationLayoutOperation

- (void)execute
{
  if ([(BKPaginationOperation *)self isJobGenerationValid])
  {

    [(BKPictureBookPaginationLayoutOperation *)self performSelectorOnMainThread:"_notifyLayoutComplete" withObject:0 waitUntilDone:1];
  }
}

@end