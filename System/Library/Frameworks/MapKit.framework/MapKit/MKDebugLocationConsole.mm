@interface MKDebugLocationConsole
- (CGRect)_debugViewFrameWithMapView:(id)a3;
- (MKDebugLocationConsole)initWithMapView:(id)a3;
- (id)timeStampFormatter;
- (void)_showNextPage;
- (void)_updateCustomText;
- (void)_updateGPSInfo;
- (void)_updateVehicleInfo;
- (void)setText:(id)a3;
- (void)update;
- (void)updateCustomText:(id)a3 textColor:(id)a4;
- (void)updateFrameWithEdgeInsets:(UIEdgeInsets)a3;
@end

@implementation MKDebugLocationConsole

- (id)timeStampFormatter
{
  timeStampFormatter = self->_timeStampFormatter;
  if (!timeStampFormatter)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v5 = self->_timeStampFormatter;
    self->_timeStampFormatter = v4;

    [(NSDateFormatter *)self->_timeStampFormatter setDateFormat:@"HH:mm:ss"];
    timeStampFormatter = self->_timeStampFormatter;
  }

  return timeStampFormatter;
}

- (void)setText:(id)a3
{
  v4 = a3;
  v5 = [(MKDebugLocationConsole *)self timeStampFormatter];
  v6 = [MEMORY[0x1E695DF00] date];
  v7 = [v5 stringFromDate:v6];

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v7, v4];

  v9.receiver = self;
  v9.super_class = MKDebugLocationConsole;
  [(MKDebugLocationConsole *)&v9 setText:v8];
}

- (void)_showNextPage
{
  v2 = (self->_pageIndex + 1) % 3;
  self->_pageIndex = v2;
  if (v2 == 2 && !self->_customTextEnabled)
  {
    [(MKDebugLocationConsole *)self _showNextPage];
  }

  else
  {
    [(MKDebugLocationConsole *)self update];
  }
}

- (CGRect)_debugViewFrameWithMapView:(id)a3
{
  v3 = a3;
  if (*&_debugViewFrameWithMapView__height == 0.0)
  {
    v4 = +[MKSystemController sharedInstance];
    v5 = [v4 userInterfaceIdiom];
    v6 = 18.0;
    if (!v5)
    {
      v6 = 30.0;
    }

    _debugViewFrameWithMapView__height = *&v6;
  }

  memset(&slice, 0, sizeof(slice));
  [v3 bounds];
  CGRectDivide(v13, &slice, &v11, *&_debugViewFrameWithMapView__height, CGRectMaxYEdge);

  x = slice.origin.x;
  y = slice.origin.y;
  width = slice.size.width;
  height = slice.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)_updateCustomText
{
  if (self->_customTextEnabled)
  {
    [(MKDebugLocationConsole *)self setText:self->_customText];
    customTextColor = self->_customTextColor;

    [(MKDebugLocationConsole *)self setTextColor:customTextColor];
  }

  else
  {
    [(MKDebugLocationConsole *)self setText:@"No custom text set"];
    v4 = [MEMORY[0x1E69DC888] grayColor];
    [(MKDebugLocationConsole *)self setTextColor:v4];
  }
}

- (void)_updateVehicleInfo
{
  v14 = [(MKMapView *)self->_parentMapView _locationManager];
  [v14 currentVehicleHeading];
  v4 = v3;
  [v14 currentVehicleSpeed];
  v6 = v5;
  if (v4 == -1.0)
  {
    v7 = @"No vehicle heading";
  }

  else
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Vehicle heading: %0.1f", *&v4];
  }

  if (v6 == -1.0)
  {
    v8 = @"No vehicle speed";
  }

  else
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Vehicle speed: %0.1f", *&v6];
  }

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ | %@", v7, v8];
  if (v4 == -1.0 || v6 == -1.0)
  {
    if (v4 == -1.0 && v6 == -1.0)
    {
      [MEMORY[0x1E69DC888] grayColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] redColor];
    }
    v12 = ;
  }

  else
  {
    v12 = [MEMORY[0x1E69DC888] greenColor];
  }

  v13 = v12;
  [(MKDebugLocationConsole *)self setText:v9];
  [(MKDebugLocationConsole *)self setTextColor:v13];
}

- (void)_updateGPSInfo
{
  v3 = [(MKMapView *)self->_parentMapView _locationManager];
  v20 = [v3 lastLocation];

  if (v20)
  {
    if ([(MKMapView *)self->_parentMapView ignoreLocationUpdates]|| [(MKMapView *)self->_parentMapView _isHandlingUserEvent])
    {
      v4 = [MEMORY[0x1E69DC888] orangeColor];
    }

    else
    {
      if ([v20 referenceFrame] == 2)
      {
        [MEMORY[0x1E69DC888] redColor];
      }

      else
      {
        [MEMORY[0x1E69DC888] greenColor];
      }
      v4 = ;
    }

    v5 = v4;
    v6 = MEMORY[0x1E696AEC0];
    v7 = [MEMORY[0x1E6985C40] _navigation_stringWithType:{objc_msgSend(v20, "type")}];
    v8 = [v20 shortDescription];
    [v20 altitude];
    v10 = v9;
    [v20 verticalAccuracy];
    v12 = [v6 stringWithFormat:@"%@:%@ Alt:%.0fm ±%.0fm", v7, v8, v10, v11];

    v13 = [v20 floor];
    v14 = v13;
    if (v13)
    {
      v15 = -[__CFString stringByAppendingFormat:](v12, "stringByAppendingFormat:", @" Floor: %d", [v13 level]);

      v12 = v15;
    }
  }

  else
  {
    v5 = [MEMORY[0x1E69DC888] grayColor];
    v12 = @"No Location";
  }

  v16 = [(MKMapView *)self->_parentMapView _debugConsoleAdditionalInfoProvider];

  if (v16)
  {
    v17 = [(MKMapView *)self->_parentMapView _debugConsoleAdditionalInfoProvider];
    v18 = v17[2]();

    if (v18)
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v12, v18];

      v12 = v19;
    }
  }

  [(MKDebugLocationConsole *)self setText:v12];
  [(MKDebugLocationConsole *)self setTextColor:v5];
}

- (void)updateCustomText:(id)a3 textColor:(id)a4
{
  v6 = a3;
  v7 = a4;
  customText = self->_customText;
  self->_customText = v6;
  v9 = v6;

  customTextColor = self->_customTextColor;
  self->_customTextColor = v7;

  [(MKDebugLocationConsole *)self update];
}

- (void)update
{
  pageIndex = self->_pageIndex;
  switch(pageIndex)
  {
    case 2uLL:
      [(MKDebugLocationConsole *)self _updateCustomText];
      break;
    case 1uLL:
      [(MKDebugLocationConsole *)self _updateVehicleInfo];
      break;
    case 0uLL:
      [(MKDebugLocationConsole *)self _updateGPSInfo];
      break;
  }
}

- (void)updateFrameWithEdgeInsets:(UIEdgeInsets)a3
{
  [(MKDebugLocationConsole *)self _debugViewFrameWithMapView:self->_parentMapView, a3.top, a3.left, a3.bottom, a3.right];

  [(MKDebugLocationConsole *)self setFrame:?];
}

- (MKDebugLocationConsole)initWithMapView:(id)a3
{
  v5 = a3;
  [(MKDebugLocationConsole *)self _debugViewFrameWithMapView:v5];
  v16.receiver = self;
  v16.super_class = MKDebugLocationConsole;
  v6 = [(MKDebugLocationConsole *)&v16 initWithFrame:?];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_parentMapView, a3);
    v8 = [MEMORY[0x1E69DC888] blackColor];
    [(MKDebugLocationConsole *)v7 setBackgroundColor:v8];

    v9 = [MEMORY[0x1E69DC888] greenColor];
    [(MKDebugLocationConsole *)v7 setTextColor:v9];

    [(MKDebugLocationConsole *)v7 setAlpha:0.800000012];
    [(MKDebugLocationConsole *)v7 setTextAlignment:1];
    v10 = [MEMORY[0x1E69DB878] systemFontOfSize:12.0];
    [(MKDebugLocationConsole *)v7 setFont:v10];

    [(MKDebugLocationConsole *)v7 setNumberOfLines:2];
    [(MKDebugLocationConsole *)v7 setLineBreakMode:0];
    [(MKDebugLocationConsole *)v7 setUserInteractionEnabled:1];
    v11 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v7 action:sel__consoleTapped_];
    [v11 setNumberOfTapsRequired:1];
    [v11 setNumberOfTouchesRequired:1];
    [v11 setCancelsTouchesInView:0];
    [v11 setDelaysTouchesBegan:0];
    [(MKDebugLocationConsole *)v7 addGestureRecognizer:v11];
    [(MKDebugLocationConsole *)v7 update];
    v12 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:v7 target:sel_update selector:0 userInfo:1 repeats:1.0];
    updateTimer = v7->_updateTimer;
    v7->_updateTimer = v12;

    v14 = v7;
  }

  return v7;
}

@end