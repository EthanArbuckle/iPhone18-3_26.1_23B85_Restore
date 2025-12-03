@interface _LookAroundViewState
- (_LookAroundViewState)initWithLookAroundView:(id)view;
- (void)restoreStateToLookAroundView:(id)view;
@end

@implementation _LookAroundViewState

- (void)restoreStateToLookAroundView:(id)view
{
  superview = self->_superview;
  viewCopy = view;
  [(UIView *)superview insertSubview:viewCopy atIndex:0];
  [viewCopy setCompassHidden:self->_compassHidden];
  [viewCopy setNavigatingEnabled:self->_navigatingEnabled];
  [viewCopy setPanningEnabled:self->_panningEnabled];
  [viewCopy setZoomingEnabled:self->_zoomingEnabled];
  [viewCopy setShowsRoadLabels:self->_showsRoadLabels];
  [viewCopy setShowsPointLabels:self->_showsPointLabels];
}

- (_LookAroundViewState)initWithLookAroundView:(id)view
{
  viewCopy = view;
  v11.receiver = self;
  v11.super_class = _LookAroundViewState;
  v6 = [(_LookAroundViewState *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_lookAroundView, view);
    superview = [viewCopy superview];
    superview = v7->_superview;
    v7->_superview = superview;

    v7->_compassHidden = [viewCopy isCompassHidden];
    v7->_navigatingEnabled = [viewCopy navigatingEnabled];
    v7->_panningEnabled = [viewCopy panningEnabled];
    v7->_zoomingEnabled = [viewCopy zoomingEnabled];
    v7->_showsPointLabels = [viewCopy showsPointLabels];
    v7->_showsRoadLabels = [viewCopy showsRoadLabels];
  }

  return v7;
}

@end