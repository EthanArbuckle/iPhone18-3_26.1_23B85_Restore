@interface PPKLayoutCompleteCollectionView
- (PPKLayoutCompleteCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout layoutCompletion:(id)completion;
- (void)layoutSubviews;
@end

@implementation PPKLayoutCompleteCollectionView

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PPKLayoutCompleteCollectionView;
  [(PPKLayoutCompleteCollectionView *)&v4 layoutSubviews];
  if (![(PPKLayoutCompleteCollectionView *)self laidOut])
  {
    [(PPKLayoutCompleteCollectionView *)self setLaidOut:1];
    layoutCompletion = [(PPKLayoutCompleteCollectionView *)self layoutCompletion];
    layoutCompletion[2]();
  }
}

- (PPKLayoutCompleteCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout layoutCompletion:(id)completion
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v13.receiver = self;
  v13.super_class = PPKLayoutCompleteCollectionView;
  completionCopy = completion;
  height = [(PPKLayoutCompleteCollectionView *)&v13 initWithFrame:layout collectionViewLayout:x, y, width, height];
  [(PPKLayoutCompleteCollectionView *)height setLayoutCompletion:completionCopy, v13.receiver, v13.super_class];

  return height;
}

@end