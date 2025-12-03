@interface _BKLibraryBookshelfBookCellAnimationDelegate
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
@end

@implementation _BKLibraryBookshelfBookCellAnimationDelegate

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  finishedCopy = finished;
  completionBlock = [(_BKLibraryBookshelfBookCellAnimationDelegate *)self completionBlock];
  if (completionBlock)
  {
    v6 = completionBlock;
    completionBlock[2](completionBlock, finishedCopy);
    completionBlock = v6;
  }
}

@end