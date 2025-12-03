@interface TVMLViewFactoryAccessibility
- (id)_imageViewForBadgeElement:(id)element existingView:(id)view;
@end

@implementation TVMLViewFactoryAccessibility

- (id)_imageViewForBadgeElement:(id)element existingView:(id)view
{
  v6.receiver = self;
  v6.super_class = TVMLViewFactoryAccessibility;
  v4 = [(TVMLViewFactoryAccessibility *)&v6 _imageViewForBadgeElement:element existingView:view];
  [v4 setIsAccessibilityElement:1];

  return v4;
}

@end