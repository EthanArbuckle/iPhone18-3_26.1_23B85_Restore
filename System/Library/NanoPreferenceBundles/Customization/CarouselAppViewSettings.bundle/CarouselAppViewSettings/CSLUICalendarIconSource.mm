@interface CSLUICalendarIconSource
+ (id)sharedInstance;
- (CSLUICalendarIconSource)init;
- (UIImage)calendarIcon;
- (id)_calendarOverrideDate;
- (id)_generateCalendarIconForShape:(unint64_t)shape;
- (id)preparedISIcon;
- (void)_notifyObserversWithIcon:(id)icon circularIcon:(id)circularIcon;
- (void)_timeOrLocaleChanged:(id)changed;
- (void)_updateCalendarIcon:(BOOL)icon;
- (void)dealloc;
@end

@implementation CSLUICalendarIconSource

+ (id)sharedInstance
{
  if (qword_465B8 != -1)
  {
    sub_24B98();
  }

  v3 = qword_465B0;

  return v3;
}

- (CSLUICalendarIconSource)init
{
  v10.receiver = self;
  v10.super_class = CSLUICalendarIconSource;
  v2 = [(CSLUICalendarIconSource *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = [[CSLPRFConcurrentObserverStore alloc] initWithServiceName:@"com.apple.carousel.csluicalendariconsource"];
    observers = v3->_observers;
    v3->_observers = v4;

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v3 selector:"_timeOrLocaleChanged:" name:UIApplicationSignificantTimeChangeNotification object:0];

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v3 selector:"_timeOrLocaleChanged:" name:NSCalendarDayChangedNotification object:0];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v3 selector:"_timeOrLocaleChanged:" name:NSCurrentLocaleDidChangeNotification object:0];

    [(CSLUICalendarIconSource *)v3 _updateCalendarIcon:0];
  }

  return v3;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CSLUICalendarIconSource;
  [(CSLUICalendarIconSource *)&v4 dealloc];
}

- (void)_timeOrLocaleChanged:(id)changed
{
  v4 = dispatch_get_global_queue(17, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_19FD8;
  block[3] = &unk_3CA08;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)_notifyObserversWithIcon:(id)icon circularIcon:(id)circularIcon
{
  iconCopy = icon;
  circularIconCopy = circularIcon;
  observers = self->_observers;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1A0A8;
  v11[3] = &unk_3CCE0;
  v11[4] = self;
  v12 = iconCopy;
  v13 = circularIconCopy;
  v9 = circularIconCopy;
  v10 = iconCopy;
  [(CSLPRFConcurrentObserverStore *)observers enumerateObserversWithBlock:v11];
}

- (UIImage)calendarIcon
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_squareCalendarIcon;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)_calendarOverrideDate
{
  if (qword_465C8 != -1)
  {
    sub_24BAC();
  }

  v3 = qword_465C0;

  return v3;
}

- (void)_updateCalendarIcon:(BOOL)icon
{
  iconCopy = icon;
  obj = [(CSLUICalendarIconSource *)self _generateCalendarIconForShape:1];
  os_unfair_lock_lock(&self->_lock);
  objc_storeStrong(&self->_squareCalendarIcon, obj);
  os_unfair_lock_unlock(&self->_lock);
  if (iconCopy)
  {
    [(CSLUICalendarIconSource *)self _notifyObserversWithIcon:obj circularIcon:0];
  }
}

- (id)_generateCalendarIconForShape:(unint64_t)shape
{
  v5 = objc_autoreleasePoolPush();
  preparedISIcon = [(CSLUICalendarIconSource *)self preparedISIcon];
  +[CSLUILayoutIconView defaultDiameter];
  v8 = v7;
  v9 = [ISImageDescriptor alloc];
  v10 = +[UIScreen mainScreen];
  [v10 scale];
  v12 = [v9 initWithSize:v8 scale:{v8, v11}];

  [v12 setShape:shape];
  v13 = [preparedISIcon prepareImageForDescriptor:v12];
  cGImage = [v13 CGImage];
  [v13 scale];
  v15 = [UIImage imageWithCGImage:cGImage scale:0 orientation:?];

  objc_autoreleasePoolPop(v5);

  return v15;
}

- (id)preparedISIcon
{
  v3 = +[NSCalendar currentCalendar];
  _calendarOverrideDate = [(CSLUICalendarIconSource *)self _calendarOverrideDate];
  v5 = _calendarOverrideDate;
  if (_calendarOverrideDate)
  {
    v6 = _calendarOverrideDate;
  }

  else
  {
    v6 = +[NSDate date];
  }

  v7 = v6;

  v8 = [[ISIcon alloc] initWithDate:v7 calendar:v3 format:0];

  return v8;
}

@end