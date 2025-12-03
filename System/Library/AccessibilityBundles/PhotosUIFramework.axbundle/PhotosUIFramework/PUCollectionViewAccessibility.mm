@interface PUCollectionViewAccessibility
- (void)_scrollViewAnimationEnded:(id)ended finished:(BOOL)finished;
@end

@implementation PUCollectionViewAccessibility

- (void)_scrollViewAnimationEnded:(id)ended finished:(BOOL)finished
{
  finishedCopy = finished;
  v6.receiver = self;
  v6.super_class = PUCollectionViewAccessibility;
  [(PUCollectionViewAccessibility *)&v6 _scrollViewAnimationEnded:ended finished:?];
  if (finishedCopy)
  {
    defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
    [defaultCenter postNotificationName:@"AXPhotoCollectionViewScrolled" object:0];
  }
}

@end