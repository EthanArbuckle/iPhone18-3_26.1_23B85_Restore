@interface PPKLayoutCompleteCollectionView
- (PPKLayoutCompleteCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4 layoutCompletion:(id)a5;
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
    v3 = [(PPKLayoutCompleteCollectionView *)self layoutCompletion];
    v3[2]();
  }
}

- (PPKLayoutCompleteCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4 layoutCompletion:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13.receiver = self;
  v13.super_class = PPKLayoutCompleteCollectionView;
  v10 = a5;
  v11 = [(PPKLayoutCompleteCollectionView *)&v13 initWithFrame:a4 collectionViewLayout:x, y, width, height];
  [(PPKLayoutCompleteCollectionView *)v11 setLayoutCompletion:v10, v13.receiver, v13.super_class];

  return v11;
}

@end