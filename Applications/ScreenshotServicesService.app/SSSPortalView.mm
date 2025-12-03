@interface SSSPortalView
- (BOOL)allowsBackdropGroups;
- (BOOL)hidesSourceView;
- (BOOL)matchesAlpha;
- (BOOL)matchesPosition;
- (BOOL)matchesTransform;
- (UIView)sourceView;
- (unint64_t)sourceLayerRenderId;
- (unsigned)sourceContextId;
- (void)setAllowsBackdropGroups:(BOOL)groups;
- (void)setHidesSourceView:(BOOL)view;
- (void)setMatchesAlpha:(BOOL)alpha;
- (void)setMatchesPosition:(BOOL)position;
- (void)setMatchesTransform:(BOOL)transform;
- (void)setSourceContextId:(unsigned int)id;
- (void)setSourceLayerRenderId:(unint64_t)id;
- (void)setSourceView:(id)view;
@end

@implementation SSSPortalView

- (void)setSourceView:(id)view
{
  viewCopy = view;
  objc_storeWeak(&self->_sourceView, viewCopy);
  layer = [viewCopy layer];

  portalLayer = [(SSSPortalView *)self portalLayer];
  [portalLayer setSourceLayer:layer];
}

- (BOOL)hidesSourceView
{
  portalLayer = [(SSSPortalView *)self portalLayer];
  hidesSourceLayer = [portalLayer hidesSourceLayer];

  return hidesSourceLayer;
}

- (void)setHidesSourceView:(BOOL)view
{
  viewCopy = view;
  portalLayer = [(SSSPortalView *)self portalLayer];
  [portalLayer setHidesSourceLayer:viewCopy];
}

- (BOOL)matchesAlpha
{
  portalLayer = [(SSSPortalView *)self portalLayer];
  matchesOpacity = [portalLayer matchesOpacity];

  return matchesOpacity;
}

- (void)setMatchesAlpha:(BOOL)alpha
{
  alphaCopy = alpha;
  portalLayer = [(SSSPortalView *)self portalLayer];
  [portalLayer setMatchesOpacity:alphaCopy];
}

- (BOOL)matchesTransform
{
  portalLayer = [(SSSPortalView *)self portalLayer];
  matchesTransform = [portalLayer matchesTransform];

  return matchesTransform;
}

- (void)setMatchesTransform:(BOOL)transform
{
  transformCopy = transform;
  portalLayer = [(SSSPortalView *)self portalLayer];
  [portalLayer setMatchesTransform:transformCopy];
}

- (BOOL)matchesPosition
{
  portalLayer = [(SSSPortalView *)self portalLayer];
  matchesPosition = [portalLayer matchesPosition];

  return matchesPosition;
}

- (void)setMatchesPosition:(BOOL)position
{
  positionCopy = position;
  portalLayer = [(SSSPortalView *)self portalLayer];
  [portalLayer setMatchesPosition:positionCopy];
}

- (BOOL)allowsBackdropGroups
{
  portalLayer = [(SSSPortalView *)self portalLayer];
  allowsBackdropGroups = [portalLayer allowsBackdropGroups];

  return allowsBackdropGroups;
}

- (void)setAllowsBackdropGroups:(BOOL)groups
{
  groupsCopy = groups;
  portalLayer = [(SSSPortalView *)self portalLayer];
  [portalLayer setAllowsBackdropGroups:groupsCopy];
}

- (void)setSourceContextId:(unsigned int)id
{
  v3 = *&id;
  portalLayer = [(SSSPortalView *)self portalLayer];
  [portalLayer setSourceContextId:v3];
}

- (unsigned)sourceContextId
{
  portalLayer = [(SSSPortalView *)self portalLayer];
  sourceContextId = [portalLayer sourceContextId];

  return sourceContextId;
}

- (void)setSourceLayerRenderId:(unint64_t)id
{
  portalLayer = [(SSSPortalView *)self portalLayer];
  [portalLayer setSourceLayerRenderId:id];
}

- (unint64_t)sourceLayerRenderId
{
  portalLayer = [(SSSPortalView *)self portalLayer];
  sourceLayerRenderId = [portalLayer sourceLayerRenderId];

  return sourceLayerRenderId;
}

- (UIView)sourceView
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceView);

  return WeakRetained;
}

@end