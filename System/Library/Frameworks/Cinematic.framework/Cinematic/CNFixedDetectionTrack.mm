@interface CNFixedDetectionTrack
- (CNDetection)originalDetection;
- (CNFixedDetectionTrack)initWithFocusDisparity:(float)focusDisparity;
- (CNFixedDetectionTrack)initWithOriginalDetection:(CNDetection *)originalDetection;
- (float)focusDisparity;
@end

@implementation CNFixedDetectionTrack

- (CNFixedDetectionTrack)initWithFocusDisparity:(float)focusDisparity
{
  v5 = objc_alloc(MEMORY[0x277D3E848]);
  *&v6 = focusDisparity;
  v7 = [v5 initWithFocusDistance:v6];
  v10.receiver = self;
  v10.super_class = CNFixedDetectionTrack;
  v8 = [(CNDetectionTrack *)&v10 _initWithInternal:v7];

  return v8;
}

- (CNFixedDetectionTrack)initWithOriginalDetection:(CNDetection *)originalDetection
{
  v4 = MEMORY[0x277D3E848];
  v5 = originalDetection;
  v6 = [v4 alloc];
  internalDetection = [(CNDetection *)v5 internalDetection];

  v8 = [internalDetection copy];
  v9 = [v6 initWithDetection:v8];
  v12.receiver = self;
  v12.super_class = CNFixedDetectionTrack;
  v10 = [(CNDetectionTrack *)&v12 _initWithInternal:v9];

  return v10;
}

- (float)focusDisparity
{
  _internalFixedTrack = [(CNFixedDetectionTrack *)self _internalFixedTrack];
  [_internalFixedTrack focusDistance];
  v4 = v3;

  return v4;
}

- (CNDetection)originalDetection
{
  _internalFixedTrack = [(CNFixedDetectionTrack *)self _internalFixedTrack];
  detection = [_internalFixedTrack detection];

  if (detection && ([detection time], (v7 & 1) != 0) && (objc_msgSend(detection, "time"), (v6 & 0x10) != 0))
  {
    v4 = 0;
  }

  else
  {
    v4 = [CNDetection _copyDetectionFromInternal:detection];
  }

  return v4;
}

@end