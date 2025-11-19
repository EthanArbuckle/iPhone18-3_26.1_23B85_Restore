@interface ATXDailyTimeSummary
- (ATXDailyTimeSummary)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXDailyTimeSummary

- (ATXDailyTimeSummary)initWithCoder:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = ATXDailyTimeSummary;
  v5 = [(ATXDailyTimeSummary *)&v30 init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"screen"];
    v5->_screen = v6;
    [v4 decodeDoubleForKey:@"quality"];
    v5->_quality = v7;
    [v4 decodeDoubleForKey:@"outdoors"];
    v5->_outdoors = v8;
    v9 = ATXModeToString(0x10uLL);
    [v4 decodeDoubleForKey:v9];
    v5->_noMode = v10;

    v11 = ATXModeToString(0xDuLL);
    [v4 decodeDoubleForKey:v11];
    v5->_dnd = v12;

    v13 = ATXModeToString(5uLL);
    [v4 decodeDoubleForKey:v13];
    v5->_sleep = v14;

    v15 = ATXModeToString(4uLL);
    [v4 decodeDoubleForKey:v15];
    v5->_driving = v16;

    v17 = ATXModeToString(3uLL);
    [v4 decodeDoubleForKey:v17];
    v5->_exercise = v18;

    v19 = ATXModeToString(2uLL);
    [v4 decodeDoubleForKey:v19];
    v5->_work = v20;

    v21 = ATXModeToString(1uLL);
    [v4 decodeDoubleForKey:v21];
    v5->_personal = v22;

    v23 = ATXModeToString(7uLL);
    [v4 decodeDoubleForKey:v23];
    v5->_reading = v24;

    v25 = ATXModeToString(6uLL);
    [v4 decodeDoubleForKey:v25];
    v5->_gaming = v26;

    v27 = ATXModeToString(0xEuLL);
    [v4 decodeDoubleForKey:v27];
    v5->_mindfulness = v28;

    v5->_silencedNotificationCount = [v4 decodeIntegerForKey:@"notificationsSilenced"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  outdoors = self->_outdoors;
  v25 = a3;
  [v25 encodeDouble:@"outdoors" forKey:outdoors];
  [v25 encodeDouble:@"screen" forKey:self->_screen];
  [v25 encodeDouble:@"quality" forKey:self->_quality];
  noMode = self->_noMode;
  v6 = ATXModeToString(0x10uLL);
  [v25 encodeDouble:v6 forKey:noMode];

  dnd = self->_dnd;
  v8 = ATXModeToString(0xDuLL);
  [v25 encodeDouble:v8 forKey:dnd];

  sleep = self->_sleep;
  v10 = ATXModeToString(5uLL);
  [v25 encodeDouble:v10 forKey:sleep];

  driving = self->_driving;
  v12 = ATXModeToString(4uLL);
  [v25 encodeDouble:v12 forKey:driving];

  exercise = self->_exercise;
  v14 = ATXModeToString(3uLL);
  [v25 encodeDouble:v14 forKey:exercise];

  work = self->_work;
  v16 = ATXModeToString(2uLL);
  [v25 encodeDouble:v16 forKey:work];

  personal = self->_personal;
  v18 = ATXModeToString(1uLL);
  [v25 encodeDouble:v18 forKey:personal];

  reading = self->_reading;
  v20 = ATXModeToString(7uLL);
  [v25 encodeDouble:v20 forKey:reading];

  gaming = self->_gaming;
  v22 = ATXModeToString(6uLL);
  [v25 encodeDouble:v22 forKey:gaming];

  mindfulness = self->_mindfulness;
  v24 = ATXModeToString(0xEuLL);
  [v25 encodeDouble:v24 forKey:mindfulness];

  [v25 encodeInteger:self->_silencedNotificationCount forKey:@"notificationsSilenced"];
}

@end