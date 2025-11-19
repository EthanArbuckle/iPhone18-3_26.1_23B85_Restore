@interface GKCollectionReusableBackgroundView
- (void)applyLayoutAttributes:(id)a3;
@end

@implementation GKCollectionReusableBackgroundView

- (void)applyLayoutAttributes:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = GKCollectionReusableBackgroundView;
  [(GKCollectionReusableBackgroundView *)&v6 applyLayoutAttributes:v4];
  v5 = [v4 color];
  [(GKCollectionReusableBackgroundView *)self setBackgroundColor:v5];
}

@end