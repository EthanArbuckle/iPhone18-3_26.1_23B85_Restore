@interface SSSPortalView
- (BOOL)allowsBackdropGroups;
- (BOOL)hidesSourceView;
- (BOOL)matchesAlpha;
- (BOOL)matchesPosition;
- (BOOL)matchesTransform;
- (UIView)sourceView;
- (unint64_t)sourceLayerRenderId;
- (unsigned)sourceContextId;
- (void)setAllowsBackdropGroups:(BOOL)a3;
- (void)setHidesSourceView:(BOOL)a3;
- (void)setMatchesAlpha:(BOOL)a3;
- (void)setMatchesPosition:(BOOL)a3;
- (void)setMatchesTransform:(BOOL)a3;
- (void)setSourceContextId:(unsigned int)a3;
- (void)setSourceLayerRenderId:(unint64_t)a3;
- (void)setSourceView:(id)a3;
@end

@implementation SSSPortalView

- (void)setSourceView:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_sourceView, v4);
  v6 = [v4 layer];

  v5 = [(SSSPortalView *)self portalLayer];
  [v5 setSourceLayer:v6];
}

- (BOOL)hidesSourceView
{
  v2 = [(SSSPortalView *)self portalLayer];
  v3 = [v2 hidesSourceLayer];

  return v3;
}

- (void)setHidesSourceView:(BOOL)a3
{
  v3 = a3;
  v4 = [(SSSPortalView *)self portalLayer];
  [v4 setHidesSourceLayer:v3];
}

- (BOOL)matchesAlpha
{
  v2 = [(SSSPortalView *)self portalLayer];
  v3 = [v2 matchesOpacity];

  return v3;
}

- (void)setMatchesAlpha:(BOOL)a3
{
  v3 = a3;
  v4 = [(SSSPortalView *)self portalLayer];
  [v4 setMatchesOpacity:v3];
}

- (BOOL)matchesTransform
{
  v2 = [(SSSPortalView *)self portalLayer];
  v3 = [v2 matchesTransform];

  return v3;
}

- (void)setMatchesTransform:(BOOL)a3
{
  v3 = a3;
  v4 = [(SSSPortalView *)self portalLayer];
  [v4 setMatchesTransform:v3];
}

- (BOOL)matchesPosition
{
  v2 = [(SSSPortalView *)self portalLayer];
  v3 = [v2 matchesPosition];

  return v3;
}

- (void)setMatchesPosition:(BOOL)a3
{
  v3 = a3;
  v4 = [(SSSPortalView *)self portalLayer];
  [v4 setMatchesPosition:v3];
}

- (BOOL)allowsBackdropGroups
{
  v2 = [(SSSPortalView *)self portalLayer];
  v3 = [v2 allowsBackdropGroups];

  return v3;
}

- (void)setAllowsBackdropGroups:(BOOL)a3
{
  v3 = a3;
  v4 = [(SSSPortalView *)self portalLayer];
  [v4 setAllowsBackdropGroups:v3];
}

- (void)setSourceContextId:(unsigned int)a3
{
  v3 = *&a3;
  v4 = [(SSSPortalView *)self portalLayer];
  [v4 setSourceContextId:v3];
}

- (unsigned)sourceContextId
{
  v2 = [(SSSPortalView *)self portalLayer];
  v3 = [v2 sourceContextId];

  return v3;
}

- (void)setSourceLayerRenderId:(unint64_t)a3
{
  v4 = [(SSSPortalView *)self portalLayer];
  [v4 setSourceLayerRenderId:a3];
}

- (unint64_t)sourceLayerRenderId
{
  v2 = [(SSSPortalView *)self portalLayer];
  v3 = [v2 sourceLayerRenderId];

  return v3;
}

- (UIView)sourceView
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceView);

  return WeakRetained;
}

@end