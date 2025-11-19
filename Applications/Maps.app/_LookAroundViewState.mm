@interface _LookAroundViewState
- (_LookAroundViewState)initWithLookAroundView:(id)a3;
- (void)restoreStateToLookAroundView:(id)a3;
@end

@implementation _LookAroundViewState

- (void)restoreStateToLookAroundView:(id)a3
{
  superview = self->_superview;
  v5 = a3;
  [(UIView *)superview insertSubview:v5 atIndex:0];
  [v5 setCompassHidden:self->_compassHidden];
  [v5 setNavigatingEnabled:self->_navigatingEnabled];
  [v5 setPanningEnabled:self->_panningEnabled];
  [v5 setZoomingEnabled:self->_zoomingEnabled];
  [v5 setShowsRoadLabels:self->_showsRoadLabels];
  [v5 setShowsPointLabels:self->_showsPointLabels];
}

- (_LookAroundViewState)initWithLookAroundView:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = _LookAroundViewState;
  v6 = [(_LookAroundViewState *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_lookAroundView, a3);
    v8 = [v5 superview];
    superview = v7->_superview;
    v7->_superview = v8;

    v7->_compassHidden = [v5 isCompassHidden];
    v7->_navigatingEnabled = [v5 navigatingEnabled];
    v7->_panningEnabled = [v5 panningEnabled];
    v7->_zoomingEnabled = [v5 zoomingEnabled];
    v7->_showsPointLabels = [v5 showsPointLabels];
    v7->_showsRoadLabels = [v5 showsRoadLabels];
  }

  return v7;
}

@end