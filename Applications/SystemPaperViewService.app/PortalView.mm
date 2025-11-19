@interface PortalView
- (BOOL)allowsBackdropGroups;
- (BOOL)hidesSourceView;
- (BOOL)matchesAlpha;
- (BOOL)matchesPosition;
- (BOOL)matchesTransform;
- (UIView)sourceView;
- (unint64_t)sourceLayerRenderId;
- (unsigned)sourceContextId;
- (void)setSourceLayerRenderId:(unint64_t)a3;
- (void)setSourceView:(id)a3;
@end

@implementation PortalView

- (void)setSourceView:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_sourceView, v4);
  v6 = [v4 layer];

  v5 = [(PortalView *)self portalLayer];
  [v5 setSourceLayer:v6];
}

- (BOOL)hidesSourceView
{
  v2 = [(PortalView *)self portalLayer];
  v3 = [v2 hidesSourceLayer];

  return v3;
}

- (BOOL)matchesAlpha
{
  v2 = [(PortalView *)self portalLayer];
  v3 = [v2 matchesOpacity];

  return v3;
}

- (BOOL)matchesTransform
{
  v2 = [(PortalView *)self portalLayer];
  v3 = [v2 matchesTransform];

  return v3;
}

- (BOOL)matchesPosition
{
  v2 = [(PortalView *)self portalLayer];
  v3 = [v2 matchesPosition];

  return v3;
}

- (BOOL)allowsBackdropGroups
{
  v2 = [(PortalView *)self portalLayer];
  v3 = [v2 allowsBackdropGroups];

  return v3;
}

- (unsigned)sourceContextId
{
  v2 = [(PortalView *)self portalLayer];
  v3 = [v2 sourceContextId];

  return v3;
}

- (void)setSourceLayerRenderId:(unint64_t)a3
{
  v4 = [(PortalView *)self portalLayer];
  [v4 setSourceLayerRenderId:a3];
}

- (unint64_t)sourceLayerRenderId
{
  v2 = [(PortalView *)self portalLayer];
  v3 = [v2 sourceLayerRenderId];

  return v3;
}

- (UIView)sourceView
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceView);

  return WeakRetained;
}

@end