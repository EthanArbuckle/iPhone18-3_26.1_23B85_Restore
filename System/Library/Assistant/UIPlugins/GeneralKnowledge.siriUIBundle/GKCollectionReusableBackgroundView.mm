@interface GKCollectionReusableBackgroundView
- (void)applyLayoutAttributes:(id)attributes;
@end

@implementation GKCollectionReusableBackgroundView

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  v6.receiver = self;
  v6.super_class = GKCollectionReusableBackgroundView;
  [(GKCollectionReusableBackgroundView *)&v6 applyLayoutAttributes:attributesCopy];
  color = [attributesCopy color];
  [(GKCollectionReusableBackgroundView *)self setBackgroundColor:color];
}

@end