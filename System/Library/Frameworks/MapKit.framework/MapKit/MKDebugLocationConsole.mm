@interface MKDebugLocationConsole
- (CGRect)_debugViewFrameWithMapView:(id)view;
- (MKDebugLocationConsole)initWithMapView:(id)view;
- (id)timeStampFormatter;
- (void)_showNextPage;
- (void)_updateCustomText;
- (void)_updateGPSInfo;
- (void)_updateVehicleInfo;
- (void)setText:(id)text;
- (void)update;
- (void)updateCustomText:(id)text textColor:(id)color;
- (void)updateFrameWithEdgeInsets:(UIEdgeInsets)insets;
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

- (void)setText:(id)text
{
  textCopy = text;
  timeStampFormatter = [(MKDebugLocationConsole *)self timeStampFormatter];
  date = [MEMORY[0x1E695DF00] date];
  v7 = [timeStampFormatter stringFromDate:date];

  textCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v7, textCopy];

  v9.receiver = self;
  v9.super_class = MKDebugLocationConsole;
  [(MKDebugLocationConsole *)&v9 setText:textCopy];
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

- (CGRect)_debugViewFrameWithMapView:(id)view
{
  viewCopy = view;
  if (*&_debugViewFrameWithMapView__height == 0.0)
  {
    v4 = +[MKSystemController sharedInstance];
    userInterfaceIdiom = [v4 userInterfaceIdiom];
    v6 = 18.0;
    if (!userInterfaceIdiom)
    {
      v6 = 30.0;
    }

    _debugViewFrameWithMapView__height = *&v6;
  }

  memset(&slice, 0, sizeof(slice));
  [viewCopy bounds];
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
    grayColor = [MEMORY[0x1E69DC888] grayColor];
    [(MKDebugLocationConsole *)self setTextColor:grayColor];
  }
}

- (void)_updateVehicleInfo
{
  _locationManager = [(MKMapView *)self->_parentMapView _locationManager];
  [_locationManager currentVehicleHeading];
  v4 = v3;
  [_locationManager currentVehicleSpeed];
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
    greenColor = ;
  }

  else
  {
    greenColor = [MEMORY[0x1E69DC888] greenColor];
  }

  v13 = greenColor;
  [(MKDebugLocationConsole *)self setText:v9];
  [(MKDebugLocationConsole *)self setTextColor:v13];
}

- (void)_updateGPSInfo
{
  _locationManager = [(MKMapView *)self->_parentMapView _locationManager];
  lastLocation = [_locationManager lastLocation];

  if (lastLocation)
  {
    if ([(MKMapView *)self->_parentMapView ignoreLocationUpdates]|| [(MKMapView *)self->_parentMapView _isHandlingUserEvent])
    {
      orangeColor = [MEMORY[0x1E69DC888] orangeColor];
    }

    else
    {
      if ([lastLocation referenceFrame] == 2)
      {
        [MEMORY[0x1E69DC888] redColor];
      }

      else
      {
        [MEMORY[0x1E69DC888] greenColor];
      }
      orangeColor = ;
    }

    grayColor = orangeColor;
    v6 = MEMORY[0x1E696AEC0];
    v7 = [MEMORY[0x1E6985C40] _navigation_stringWithType:{objc_msgSend(lastLocation, "type")}];
    shortDescription = [lastLocation shortDescription];
    [lastLocation altitude];
    v10 = v9;
    [lastLocation verticalAccuracy];
    v12 = [v6 stringWithFormat:@"%@:%@ Alt:%.0fm ±%.0fm", v7, shortDescription, v10, v11];

    floor = [lastLocation floor];
    v14 = floor;
    if (floor)
    {
      v15 = -[__CFString stringByAppendingFormat:](v12, "stringByAppendingFormat:", @" Floor: %d", [floor level]);

      v12 = v15;
    }
  }

  else
  {
    grayColor = [MEMORY[0x1E69DC888] grayColor];
    v12 = @"No Location";
  }

  _debugConsoleAdditionalInfoProvider = [(MKMapView *)self->_parentMapView _debugConsoleAdditionalInfoProvider];

  if (_debugConsoleAdditionalInfoProvider)
  {
    _debugConsoleAdditionalInfoProvider2 = [(MKMapView *)self->_parentMapView _debugConsoleAdditionalInfoProvider];
    v18 = _debugConsoleAdditionalInfoProvider2[2]();

    if (v18)
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v12, v18];

      v12 = v19;
    }
  }

  [(MKDebugLocationConsole *)self setText:v12];
  [(MKDebugLocationConsole *)self setTextColor:grayColor];
}

- (void)updateCustomText:(id)text textColor:(id)color
{
  textCopy = text;
  colorCopy = color;
  customText = self->_customText;
  self->_customText = textCopy;
  v9 = textCopy;

  customTextColor = self->_customTextColor;
  self->_customTextColor = colorCopy;

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

- (void)updateFrameWithEdgeInsets:(UIEdgeInsets)insets
{
  [(MKDebugLocationConsole *)self _debugViewFrameWithMapView:self->_parentMapView, insets.top, insets.left, insets.bottom, insets.right];

  [(MKDebugLocationConsole *)self setFrame:?];
}

- (MKDebugLocationConsole)initWithMapView:(id)view
{
  viewCopy = view;
  [(MKDebugLocationConsole *)self _debugViewFrameWithMapView:viewCopy];
  v16.receiver = self;
  v16.super_class = MKDebugLocationConsole;
  v6 = [(MKDebugLocationConsole *)&v16 initWithFrame:?];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_parentMapView, view);
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    [(MKDebugLocationConsole *)v7 setBackgroundColor:blackColor];

    greenColor = [MEMORY[0x1E69DC888] greenColor];
    [(MKDebugLocationConsole *)v7 setTextColor:greenColor];

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