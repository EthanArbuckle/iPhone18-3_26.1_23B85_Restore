@interface MSCRODMain
- (id)_safeHandlerForType:(int *)type;
- (int)run;
- (void)_goDogGo:(id)go;
- (void)dealloc;
- (void)stop;
@end

@implementation MSCRODMain

- (void)dealloc
{
  v3 = objc_autoreleasePoolPush();
  v4 = +[SCROServer sharedServer];
  [v4 setDelegate:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self];

  v6 = qword_100019890;
  qword_100019890 = 0;

  free(self->_runLoops);
  objc_autoreleasePoolPop(v3);
  v7.receiver = self;
  v7.super_class = MSCRODMain;
  [(MSCRODMain *)&v7 dealloc];
}

- (id)_safeHandlerForType:(int *)type
{
  v3 = *type;
  if ((*type - 3) < 0xFFFFFFFE)
  {
    v3 = 0;
  }

  *type = v3;
  return self->_handlers[v3];
}

- (int)run
{
  [SCRCThread setDefaultThreadPriority:47];
  v21.receiver = self;
  v21.super_class = MSCRODMain;
  v3 = [(MSCRODMain *)&v21 run];
  v4 = self->_handlers[0];
  self->_handlers[0] = 0;

  v5 = objc_allocWithZone(SCROBrailleHandler);
  v6 = +[MSCRODBrailleDisplayManager sharedManager];
  v7 = [v5 initWithBrailleDisplayManager:v6];
  v8 = self->_handlers[1];
  self->_handlers[1] = v7;

  v9 = self->_handlers[2];
  self->_handlers[2] = 0;

  for (i = 0; i != 2; ++i)
  {
    [(SCROHandler *)self->_handlers[i + 1] setCallbackDelegate:self];
  }

  self->_mainRunLoop = CFRunLoopGetCurrent();
  v11 = +[SCROServer sharedServer];
  [v11 setDelegate:self];

  v12 = objc_allocWithZone(NSDictionary);
  v13 = +[SCROServer sharedServer];
  serverSource = [v13 serverSource];
  v15 = [NSNumber numberWithInt:0];
  v16 = [v12 initWithObjectsAndKeys:{serverSource, @"server", v15, @"index", 0}];

  [NSThread detachNewThreadSelector:"_goDogGo:" toTarget:self withObject:v16];
  [(MSCRODMain *)self _goDogGo:0];
  v17 = 0;
  v18 = &self->_handlers[1];
  do
  {
    [(SCROHandler *)v18[v17] lock];
    v19 = v18[v17];
    if (v19 && (*(v19 + OBJC_IVAR___SCROHandler_isInvalid) & 1) == 0)
    {
      [(SCROHandler *)v19 invalidate];
    }

    [(SCROHandler *)v18[v17++] unlock];
  }

  while (v17 != 2);
  return v3;
}

- (void)_goDogGo:(id)go
{
  goCopy = go;
  v4 = objc_autoreleasePoolPush();
  AXSetThreadPriority();
  v5 = [goCopy objectForKey:@"index"];
  v6 = [goCopy objectForKey:@"server"];
  Current = CFRunLoopGetCurrent();
  v8 = Current;
  if (Current != self->_mainRunLoop)
  {
    CFRunLoopAddSource(Current, v6, kCFRunLoopDefaultMode);
  }

  if (v5)
  {
    self->_runLoops[[v5 integerValue]] = v8;
  }

  while (!self->_stop)
  {
    CFRunLoopRun();
  }

  if (v8 == self->_mainRunLoop)
  {
    v9 = +[SCROServer sharedServer];
    [v9 unregisterWithMach];
  }

  objc_autoreleasePoolPop(v4);
}

- (void)stop
{
  v8.receiver = self;
  v8.super_class = MSCRODMain;
  [(MSCRODMain *)&v8 stop];
  self->_stop = 1;
  runLoops = self->_runLoops;
  v4 = *runLoops;
  *runLoops = 0;
  if (v4)
  {
    CFRunLoopStop(v4);
  }

  v5 = +[MSCRODBrailleDisplayManager sharedManager];
  [v5 invalidate];

  v6 = AXLogBrailleHW();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Stopping scrod", v7, 2u);
  }

  CFRunLoopStop(self->_mainRunLoop);
}

@end