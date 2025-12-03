@interface RCSelectionTouchTrackingInfo
- (UITouch)touch;
- (id)description;
- (void)setTouch:(id)touch;
- (void)updateTrackingInfo;
@end

@implementation RCSelectionTouchTrackingInfo

- (void)setTouch:(id)touch
{
  obj = touch;
  [obj locationInView:0];
  self->_lastLocation = v4;
  objc_storeWeak(&self->_touch, obj);
}

- (void)updateTrackingInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_touch);
  [WeakRetained locationInView:0];
  v5 = v4;

  lastLocation = self->_lastLocation;
  if (v5 != lastLocation)
  {
    v7 = -1;
    if (v5 > lastLocation)
    {
      v7 = 1;
    }

    self->_selectionAffinity = v7;
  }

  self->_lastLocation = v5;
}

- (id)description
{
  v9.receiver = self;
  v9.super_class = RCSelectionTouchTrackingInfo;
  v3 = [(RCSelectionTouchTrackingInfo *)&v9 description];
  if (self->_selectionBarType)
  {
    v4 = @"MAX";
  }

  else
  {
    v4 = @"min";
  }

  v5 = [NSNumber numberWithDouble:self->_trackingOffset];
  v6 = [NSNumber numberWithInteger:self->_selectionAffinity];
  v7 = [NSString stringWithFormat:@"%@ location=%@, offset=%@, affinity=%@", v3, v4, v5, v6];

  return v7;
}

- (UITouch)touch
{
  WeakRetained = objc_loadWeakRetained(&self->_touch);

  return WeakRetained;
}

@end