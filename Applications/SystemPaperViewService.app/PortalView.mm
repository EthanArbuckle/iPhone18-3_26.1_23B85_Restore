@interface PortalView
- (BOOL)allowsBackdropGroups;
- (BOOL)hidesSourceView;
- (BOOL)matchesAlpha;
- (BOOL)matchesPosition;
- (BOOL)matchesTransform;
- (UIView)sourceView;
- (unint64_t)sourceLayerRenderId;
- (unsigned)sourceContextId;
- (void)setSourceLayerRenderId:(unint64_t)id;
- (void)setSourceView:(id)view;
@end

@implementation PortalView

- (void)setSourceView:(id)view
{
  viewCopy = view;
  objc_storeWeak(&self->_sourceView, viewCopy);
  layer = [viewCopy layer];

  portalLayer = [(PortalView *)self portalLayer];
  [portalLayer setSourceLayer:layer];
}

- (BOOL)hidesSourceView
{
  portalLayer = [(PortalView *)self portalLayer];
  hidesSourceLayer = [portalLayer hidesSourceLayer];

  return hidesSourceLayer;
}

- (BOOL)matchesAlpha
{
  portalLayer = [(PortalView *)self portalLayer];
  matchesOpacity = [portalLayer matchesOpacity];

  return matchesOpacity;
}

- (BOOL)matchesTransform
{
  portalLayer = [(PortalView *)self portalLayer];
  matchesTransform = [portalLayer matchesTransform];

  return matchesTransform;
}

- (BOOL)matchesPosition
{
  portalLayer = [(PortalView *)self portalLayer];
  matchesPosition = [portalLayer matchesPosition];

  return matchesPosition;
}

- (BOOL)allowsBackdropGroups
{
  portalLayer = [(PortalView *)self portalLayer];
  allowsBackdropGroups = [portalLayer allowsBackdropGroups];

  return allowsBackdropGroups;
}

- (unsigned)sourceContextId
{
  portalLayer = [(PortalView *)self portalLayer];
  sourceContextId = [portalLayer sourceContextId];

  return sourceContextId;
}

- (void)setSourceLayerRenderId:(unint64_t)id
{
  portalLayer = [(PortalView *)self portalLayer];
  [portalLayer setSourceLayerRenderId:id];
}

- (unint64_t)sourceLayerRenderId
{
  portalLayer = [(PortalView *)self portalLayer];
  sourceLayerRenderId = [portalLayer sourceLayerRenderId];

  return sourceLayerRenderId;
}

- (UIView)sourceView
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceView);

  return WeakRetained;
}

@end