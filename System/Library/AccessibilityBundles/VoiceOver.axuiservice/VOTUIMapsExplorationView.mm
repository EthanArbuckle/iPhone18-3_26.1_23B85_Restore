@interface VOTUIMapsExplorationView
- (CGPoint)currentCenter;
- (CGPoint)currentLocation;
- (CGPoint)lastLocation;
- (VOTUIMapsExplorationLocationView)currentLocationView;
- (VOTUIMapsExplorationRotaryView)currentRotaryView;
- (VOTUIMapsExplorationView)init;
- (void)highlightExplorationSegmentWithIndex:(int64_t)a3;
- (void)updateUIWithCenter:(CGPoint)a3;
- (void)updateUIWithCenter:(CGPoint)a3 andExplorationSegments:(id)a4;
- (void)updateUIWithCurrentLocation:(CGPoint)a3;
@end

@implementation VOTUIMapsExplorationView

- (VOTUIMapsExplorationView)init
{
  v8.receiver = self;
  v8.super_class = VOTUIMapsExplorationView;
  v2 = [(VOTUIMapsExplorationView *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_lastIndex = -1;
    v2->_currentIndex = -1;
    v4 = CGPointZero;
    v2->_currentLocation = CGPointZero;
    v2->_lastLocation = v4;
    v5 = [(VOTUIMapsExplorationView *)v2 currentRotaryView];
    v6 = [(VOTUIMapsExplorationView *)v3 currentLocationView];
  }

  return v3;
}

- (VOTUIMapsExplorationLocationView)currentLocationView
{
  currentLocationView = self->_currentLocationView;
  if (!currentLocationView)
  {
    v4 = [[VOTUIMapsExplorationLocationView alloc] initWithFrame:0.0, 0.0, 40.0, 40.0];
    [(VOTUIMapsExplorationView *)self currentLocation];
    [(VOTUIMapsExplorationLocationView *)v4 setCenter:?];
    v5 = self->_currentLocationView;
    self->_currentLocationView = v4;
    v6 = v4;

    [(VOTUIMapsExplorationView *)self addSubview:v6];
    v7 = [(VOTUIMapsExplorationView *)self currentLocationView];
    [v7 setAlpha:0.0];

    currentLocationView = self->_currentLocationView;
  }

  return currentLocationView;
}

- (VOTUIMapsExplorationRotaryView)currentRotaryView
{
  currentRotaryView = self->_currentRotaryView;
  if (!currentRotaryView)
  {
    v4 = [VOTUIMapsExplorationRotaryView alloc];
    [(VOTUIMapsExplorationView *)self currentLocation];
    v7 = [(VOTUIMapsExplorationRotaryView *)v4 initWithFrame:0.0 atCenter:0.0, 900.0, 900.0, v5, v6];
    v8 = self->_currentRotaryView;
    self->_currentRotaryView = v7;
    v9 = v7;

    [(VOTUIMapsExplorationView *)self addSubview:v9];
    currentRotaryView = self->_currentRotaryView;
  }

  return currentRotaryView;
}

- (void)updateUIWithCenter:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(VOTUIMapsExplorationView *)self setCurrentCenter:?];
  v6 = [(VOTUIMapsExplorationView *)self currentRotaryView];
  [v6 setCenter:{x, y}];
}

- (void)updateUIWithCenter:(CGPoint)a3 andExplorationSegments:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  [(VOTUIMapsExplorationView *)self setLastIndex:-1];
  [(VOTUIMapsExplorationView *)self setCurrentIndex:-1];
  [(VOTUIMapsExplorationView *)self setCurrentCenter:x, y];
  v8 = [(VOTUIMapsExplorationView *)self currentRotaryView];
  [v8 setCenter:{x, y}];

  v9 = [(VOTUIMapsExplorationView *)self currentRotaryView];
  [v9 addSubviewsFromExplorationSegments:v7];
}

- (void)updateUIWithCurrentLocation:(CGPoint)a3
{
  [(VOTUIMapsExplorationView *)self setCurrentLocation:a3.x, a3.y];
  v4 = [(VOTUIMapsExplorationView *)self currentLocationView];

  if (v4)
  {
    [(VOTUIMapsExplorationView *)self currentLocation];
    v6 = v5;
    [(VOTUIMapsExplorationView *)self lastLocation];
    v8 = v6 - v7;
    [(VOTUIMapsExplorationView *)self currentLocation];
    v10 = v9;
    [(VOTUIMapsExplorationView *)self lastLocation];
    v12 = v10 - v11;
    v13 = [(VOTUIMapsExplorationView *)self currentLocationView];
    [v13 frame];
    v15 = v14;
    v17 = v16;
    v19 = v8 + v18;
    v21 = v12 + v20;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1072C;
    v24[3] = &unk_3D218;
    v24[4] = self;
    [UIView animateWithDuration:v24 animations:0.2];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10774;
    v23[3] = &unk_3D308;
    v23[4] = self;
    *&v23[5] = v19;
    *&v23[6] = v21;
    v23[7] = v15;
    v23[8] = v17;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_107E0;
    v22[3] = &unk_3D128;
    v22[4] = self;
    [UIView animateWithDuration:v23 animations:v22 completion:0.5];
  }
}

- (void)highlightExplorationSegmentWithIndex:(int64_t)a3
{
  [(VOTUIMapsExplorationView *)self setCurrentIndex:a3];
  v4 = [(VOTUIMapsExplorationView *)self currentRotaryView];
  [v4 handleHighlightChangeWithLastIndex:-[VOTUIMapsExplorationView lastIndex](self andNewIndex:{"lastIndex"), -[VOTUIMapsExplorationView currentIndex](self, "currentIndex")}];
}

- (CGPoint)currentCenter
{
  x = self->_currentCenter.x;
  y = self->_currentCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)currentLocation
{
  x = self->_currentLocation.x;
  y = self->_currentLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)lastLocation
{
  x = self->_lastLocation.x;
  y = self->_lastLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

@end