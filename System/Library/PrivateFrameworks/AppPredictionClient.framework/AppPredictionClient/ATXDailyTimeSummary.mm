@interface ATXDailyTimeSummary
- (ATXDailyTimeSummary)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXDailyTimeSummary

- (ATXDailyTimeSummary)initWithCoder:(id)coder
{
  coderCopy = coder;
  v30.receiver = self;
  v30.super_class = ATXDailyTimeSummary;
  v5 = [(ATXDailyTimeSummary *)&v30 init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"screen"];
    v5->_screen = v6;
    [coderCopy decodeDoubleForKey:@"quality"];
    v5->_quality = v7;
    [coderCopy decodeDoubleForKey:@"outdoors"];
    v5->_outdoors = v8;
    v9 = ATXModeToString(0x10uLL);
    [coderCopy decodeDoubleForKey:v9];
    v5->_noMode = v10;

    v11 = ATXModeToString(0xDuLL);
    [coderCopy decodeDoubleForKey:v11];
    v5->_dnd = v12;

    v13 = ATXModeToString(5uLL);
    [coderCopy decodeDoubleForKey:v13];
    v5->_sleep = v14;

    v15 = ATXModeToString(4uLL);
    [coderCopy decodeDoubleForKey:v15];
    v5->_driving = v16;

    v17 = ATXModeToString(3uLL);
    [coderCopy decodeDoubleForKey:v17];
    v5->_exercise = v18;

    v19 = ATXModeToString(2uLL);
    [coderCopy decodeDoubleForKey:v19];
    v5->_work = v20;

    v21 = ATXModeToString(1uLL);
    [coderCopy decodeDoubleForKey:v21];
    v5->_personal = v22;

    v23 = ATXModeToString(7uLL);
    [coderCopy decodeDoubleForKey:v23];
    v5->_reading = v24;

    v25 = ATXModeToString(6uLL);
    [coderCopy decodeDoubleForKey:v25];
    v5->_gaming = v26;

    v27 = ATXModeToString(0xEuLL);
    [coderCopy decodeDoubleForKey:v27];
    v5->_mindfulness = v28;

    v5->_silencedNotificationCount = [coderCopy decodeIntegerForKey:@"notificationsSilenced"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  outdoors = self->_outdoors;
  coderCopy = coder;
  [coderCopy encodeDouble:@"outdoors" forKey:outdoors];
  [coderCopy encodeDouble:@"screen" forKey:self->_screen];
  [coderCopy encodeDouble:@"quality" forKey:self->_quality];
  noMode = self->_noMode;
  v6 = ATXModeToString(0x10uLL);
  [coderCopy encodeDouble:v6 forKey:noMode];

  dnd = self->_dnd;
  v8 = ATXModeToString(0xDuLL);
  [coderCopy encodeDouble:v8 forKey:dnd];

  sleep = self->_sleep;
  v10 = ATXModeToString(5uLL);
  [coderCopy encodeDouble:v10 forKey:sleep];

  driving = self->_driving;
  v12 = ATXModeToString(4uLL);
  [coderCopy encodeDouble:v12 forKey:driving];

  exercise = self->_exercise;
  v14 = ATXModeToString(3uLL);
  [coderCopy encodeDouble:v14 forKey:exercise];

  work = self->_work;
  v16 = ATXModeToString(2uLL);
  [coderCopy encodeDouble:v16 forKey:work];

  personal = self->_personal;
  v18 = ATXModeToString(1uLL);
  [coderCopy encodeDouble:v18 forKey:personal];

  reading = self->_reading;
  v20 = ATXModeToString(7uLL);
  [coderCopy encodeDouble:v20 forKey:reading];

  gaming = self->_gaming;
  v22 = ATXModeToString(6uLL);
  [coderCopy encodeDouble:v22 forKey:gaming];

  mindfulness = self->_mindfulness;
  v24 = ATXModeToString(0xEuLL);
  [coderCopy encodeDouble:v24 forKey:mindfulness];

  [coderCopy encodeInteger:self->_silencedNotificationCount forKey:@"notificationsSilenced"];
}

@end