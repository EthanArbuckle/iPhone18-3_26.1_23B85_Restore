@interface PKDataDetectorView
- (PKDataDetectorView)initWithDataDetectorItem:(id)item allItems:(id)items;
- (double)_underlineThickness;
- (id)accessibilityValue;
- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration highlightPreviewForItemWithIdentifier:(id)identifier;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (void)contextMenuInteraction:(id)interaction willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)tapHandler:(id)handler;
@end

@implementation PKDataDetectorView

- (PKDataDetectorView)initWithDataDetectorItem:(id)item allItems:(id)items
{
  itemCopy = item;
  v14.receiver = self;
  v14.super_class = PKDataDetectorView;
  itemsCopy = items;
  v8 = [(PKDetectionView *)&v14 init];
  dataDetectorItem = v8->_dataDetectorItem;
  v8->_dataDetectorItem = itemCopy;
  v10 = itemCopy;

  [(PKDataDetectorItem *)v8->_dataDetectorItem setDelegate:v8, v14.receiver, v14.super_class];
  v11 = [itemsCopy copy];

  allItems = v8->_allItems;
  v8->_allItems = v11;

  return v8;
}

- (double)_underlineThickness
{
  item = [(PKDataDetectorView *)self item];
  strokeColor = [item strokeColor];
  if (strokeColor)
  {
    v8.receiver = self;
    v8.super_class = PKDataDetectorView;
    [(PKDetectionView *)&v8 _underlineThickness];
    v6 = v5;
  }

  else
  {
    v6 = 1.0;
  }

  return v6;
}

- (id)accessibilityValue
{
  scannerResult = [(PKDataDetectorItem *)self->_dataDetectorItem scannerResult];
  value = [scannerResult value];

  return value;
}

- (void)tapHandler:(id)handler
{
  [handler locationInView:self];
  v5 = v4;
  v7 = v6;
  if ([(PKDetectionView *)self hitTest:?])
  {
    v8 = +[PKStatisticsManager sharedStatisticsManager];
    dataDetectorItem = [(PKDataDetectorView *)self dataDetectorItem];
    [(PKStatisticsManager *)v8 recordDataDetectorItemDefaultAction:dataDetectorItem];

    item = [(PKDataDetectorView *)self item];
    menuInteraction = [(PKDetectionView *)self menuInteraction];
    [(PKDetectionView *)self drawingTransform];
    v12 = *(MEMORY[0x1E695EFD0] + 16);
    v13[0] = *MEMORY[0x1E695EFD0];
    v13[1] = v12;
    v13[2] = *(MEMORY[0x1E695EFD0] + 32);
    [item handleTapForMenuForInteraction:menuInteraction location:self view:v13 viewTransform:v14 drawingTransform:{v5, v7}];
  }
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  interactionCopy = interaction;
  if ([(PKDetectionView *)self hitTest:x, y])
  {
    v8 = +[PKStatisticsManager sharedStatisticsManager];
    [(PKStatisticsManager *)v8 recordDataDetectorItemMenuAction:?];

    dataDetectorItem = [(PKDataDetectorView *)self dataDetectorItem];
    identifier = [(PKDetectionItem *)self->_dataDetectorItem identifier];
    v11 = [dataDetectorItem contextMenuInteraction:interactionCopy configurationForMenuAtLocation:self view:identifier identifier:{x, y}];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration highlightPreviewForItemWithIdentifier:(id)identifier
{
  configurationCopy = configuration;
  interactionCopy = interaction;
  dataDetectorItem = [(PKDataDetectorView *)self dataDetectorItem];
  superview = [(PKDataDetectorView *)self superview];
  [(PKDataDetectorView *)self frame];
  v11 = [dataDetectorItem contextMenuInteraction:interactionCopy configuration:configurationCopy highlightPreviewInContainerView:superview frame:?];

  return v11;
}

- (void)contextMenuInteraction:(id)interaction willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  animatorCopy = animator;
  configurationCopy = configuration;
  interactionCopy = interaction;
  dataDetectorItem = [(PKDataDetectorView *)self dataDetectorItem];
  [dataDetectorItem contextMenuInteraction:interactionCopy willPerformPreviewActionForMenuWithConfiguration:configurationCopy animator:animatorCopy];
}

@end