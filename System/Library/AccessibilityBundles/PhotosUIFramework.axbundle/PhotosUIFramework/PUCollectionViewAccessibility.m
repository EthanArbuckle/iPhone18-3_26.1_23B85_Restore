@interface PUCollectionViewAccessibility
- (void)_scrollViewAnimationEnded:(id)a3 finished:(BOOL)a4;
@end

@implementation PUCollectionViewAccessibility

- (void)_scrollViewAnimationEnded:(id)a3 finished:(BOOL)a4
{
  v4 = a4;
  v6.receiver = self;
  v6.super_class = PUCollectionViewAccessibility;
  [(PUCollectionViewAccessibility *)&v6 _scrollViewAnimationEnded:a3 finished:?];
  if (v4)
  {
    v5 = [MEMORY[0x29EDBA068] defaultCenter];
    [v5 postNotificationName:@"AXPhotoCollectionViewScrolled" object:0];
  }
}

@end