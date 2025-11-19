@interface TVMLViewFactoryAccessibility
- (id)_imageViewForBadgeElement:(id)a3 existingView:(id)a4;
@end

@implementation TVMLViewFactoryAccessibility

- (id)_imageViewForBadgeElement:(id)a3 existingView:(id)a4
{
  v6.receiver = self;
  v6.super_class = TVMLViewFactoryAccessibility;
  v4 = [(TVMLViewFactoryAccessibility *)&v6 _imageViewForBadgeElement:a3 existingView:a4];
  [v4 setIsAccessibilityElement:1];

  return v4;
}

@end