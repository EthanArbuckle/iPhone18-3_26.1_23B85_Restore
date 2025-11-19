@interface PKDataDetectorView
- (PKDataDetectorView)initWithDataDetectorItem:(id)a3 allItems:(id)a4;
- (double)_underlineThickness;
- (id)accessibilityValue;
- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 highlightPreviewForItemWithIdentifier:(id)a5;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (void)contextMenuInteraction:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)tapHandler:(id)a3;
@end

@implementation PKDataDetectorView

- (PKDataDetectorView)initWithDataDetectorItem:(id)a3 allItems:(id)a4
{
  v6 = a3;
  v14.receiver = self;
  v14.super_class = PKDataDetectorView;
  v7 = a4;
  v8 = [(PKDetectionView *)&v14 init];
  dataDetectorItem = v8->_dataDetectorItem;
  v8->_dataDetectorItem = v6;
  v10 = v6;

  [(PKDataDetectorItem *)v8->_dataDetectorItem setDelegate:v8, v14.receiver, v14.super_class];
  v11 = [v7 copy];

  allItems = v8->_allItems;
  v8->_allItems = v11;

  return v8;
}

- (double)_underlineThickness
{
  v3 = [(PKDataDetectorView *)self item];
  v4 = [v3 strokeColor];
  if (v4)
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
  v2 = [(PKDataDetectorItem *)self->_dataDetectorItem scannerResult];
  v3 = [v2 value];

  return v3;
}

- (void)tapHandler:(id)a3
{
  [a3 locationInView:self];
  v5 = v4;
  v7 = v6;
  if ([(PKDetectionView *)self hitTest:?])
  {
    v8 = +[PKStatisticsManager sharedStatisticsManager];
    v9 = [(PKDataDetectorView *)self dataDetectorItem];
    [(PKStatisticsManager *)v8 recordDataDetectorItemDefaultAction:v9];

    v10 = [(PKDataDetectorView *)self item];
    v11 = [(PKDetectionView *)self menuInteraction];
    [(PKDetectionView *)self drawingTransform];
    v12 = *(MEMORY[0x1E695EFD0] + 16);
    v13[0] = *MEMORY[0x1E695EFD0];
    v13[1] = v12;
    v13[2] = *(MEMORY[0x1E695EFD0] + 32);
    [v10 handleTapForMenuForInteraction:v11 location:self view:v13 viewTransform:v14 drawingTransform:{v5, v7}];
  }
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  if ([(PKDetectionView *)self hitTest:x, y])
  {
    v8 = +[PKStatisticsManager sharedStatisticsManager];
    [(PKStatisticsManager *)v8 recordDataDetectorItemMenuAction:?];

    v9 = [(PKDataDetectorView *)self dataDetectorItem];
    v10 = [(PKDetectionItem *)self->_dataDetectorItem identifier];
    v11 = [v9 contextMenuInteraction:v7 configurationForMenuAtLocation:self view:v10 identifier:{x, y}];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 highlightPreviewForItemWithIdentifier:(id)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [(PKDataDetectorView *)self dataDetectorItem];
  v10 = [(PKDataDetectorView *)self superview];
  [(PKDataDetectorView *)self frame];
  v11 = [v9 contextMenuInteraction:v8 configuration:v7 highlightPreviewInContainerView:v10 frame:?];

  return v11;
}

- (void)contextMenuInteraction:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(PKDataDetectorView *)self dataDetectorItem];
  [v11 contextMenuInteraction:v10 willPerformPreviewActionForMenuWithConfiguration:v9 animator:v8];
}

@end