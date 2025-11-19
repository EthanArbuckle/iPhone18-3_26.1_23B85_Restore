@interface NSRunLoop
- (BOOL)rc_runUntilNextDisplayLinkEventWithTimeout:(double)a3;
@end

@implementation NSRunLoop

- (BOOL)rc_runUntilNextDisplayLinkEventWithTimeout:(double)a3
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_21748;
  v10[3] = &unk_6D868;
  v10[4] = &v11;
  v5 = [CADisplayLink rc_displayWithFramesPerSecond:0 handlerBlock:v10];
  [v5 addToRunLoop:self forMode:NSRunLoopCommonModes];
  Current = CFAbsoluteTimeGetCurrent();
  do
  {
    [(NSRunLoop *)self runUntilDate:[NSDate dateWithTimeIntervalSinceNow:0.05]];
    if (v12[3])
    {
      break;
    }

    v7 = CFAbsoluteTimeGetCurrent();
  }

  while (a3 < 0.0 || v7 - Current <= a3);
  [v5 invalidate];

  v8 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v8;
}

@end