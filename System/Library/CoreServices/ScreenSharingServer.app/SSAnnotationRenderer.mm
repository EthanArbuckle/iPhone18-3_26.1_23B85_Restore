@interface SSAnnotationRenderer
+ (id)sharedRenderer;
- (BOOL)hideAllPointers;
- (BOOL)hidePointerForUser:(id)user;
- (BOOL)showAllPointers;
- (BOOL)showPointerForUser:(id)user location:(CGPoint)location;
- (CGPoint)convertScaledCoordinates:(CGPoint)coordinates;
- (SSAnnotationRenderer)init;
- (void)dealloc;
- (void)drawPointerWithRect:(CGRect)rect flags:(unsigned int)flags;
- (void)drawSafeViewSlateWithRect:(CGRect)rect flags:(unsigned int)flags orientation:(int64_t)orientation;
- (void)screenDidChange:(id)change;
- (void)stopAnnotation;
@end

@implementation SSAnnotationRenderer

+ (id)sharedRenderer
{
  if (qword_100070AB8 != -1)
  {
    sub_100043A60();
  }

  v3 = qword_100070AC0;

  return v3;
}

- (SSAnnotationRenderer)init
{
  v15.receiver = self;
  v15.super_class = SSAnnotationRenderer;
  v2 = [(SSAnnotationRenderer *)&v15 init];
  if (v2)
  {
    v3 = [[AXUIClient alloc] initWithIdentifier:@"SSAXUIClientIdentifier" serviceBundleName:@"ScreenSharing"];
    [(SSAnnotationRenderer *)v2 setUiClient:v3];
    [v3 setDelegate:v2];
    v2->assistanceState = 0;
    v4 = +[NSThread currentThread];
    v5 = +[NSThread mainThread];

    if (v4 == v5)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "mainScreen init main", buf, 2u);
      }

      v7 = +[UIScreen mainScreen];
      [(SSAnnotationRenderer *)v2 setMainScreen:v7];
    }

    else
    {
      v6 = dispatch_semaphore_create(0);
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10004077C;
      v11[3] = &unk_100068F08;
      v12 = v2;
      v13 = v6;
      v7 = v6;
      dispatch_async(&_dispatch_main_q, v11);
      dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
    }

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v2 selector:"screenDidChange:" name:UIScreenModeDidChangeNotification object:0];

    v9 = objc_alloc_init(FBSOrientationObserver);
    [(SSAnnotationRenderer *)v2 setOrientationObserver:v9];

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "finished init", buf, 2u);
    }
  }

  return v2;
}

- (BOOL)showPointerForUser:(id)user location:(CGPoint)location
{
  y = location.y;
  x = location.x;
  userCopy = user;
  v8 = +[NSMutableDictionary dictionary];
  v9 = [NSNumber numberWithUnsignedShort:2];
  [v8 setObject:v9 forKeyedSubscript:@"messageType"];

  [(SSAnnotationRenderer *)self convertScaledCoordinates:x, y];
  v11 = v10;
  v13 = v12;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    userID = [userCopy userID];
    displayName = [userCopy displayName];
    v22 = 138413058;
    v23 = userID;
    v24 = 2112;
    v25 = displayName;
    v26 = 2048;
    v27 = v11;
    v28 = 2048;
    v29 = v13;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "showPointerForUser %@ %@ at %f %f ", &v22, 0x2Au);
  }

  v16 = [NSNumber numberWithDouble:v11];
  [v8 setObject:v16 forKeyedSubscript:@"x"];

  v17 = [NSNumber numberWithDouble:v13];
  [v8 setObject:v17 forKeyedSubscript:@"y"];

  userID2 = [userCopy userID];
  [v8 setObject:userID2 forKeyedSubscript:@"uniqueID"];

  displayName2 = [userCopy displayName];
  [v8 setObject:displayName2 forKeyedSubscript:@"displayName"];

  [v8 setObject:&__kCFBooleanTrue forKeyedSubscript:@"enabled"];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v22) = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "going to send show message", &v22, 2u);
  }

  uiClient = [(SSAnnotationRenderer *)self uiClient];
  [uiClient sendAsynchronousMessage:v8 withIdentifier:1 targetAccessQueue:0 completion:&stru_100068F48];

  return 0;
}

- (BOOL)hidePointerForUser:(id)user
{
  userCopy = user;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    userID = [userCopy userID];
    displayName = [userCopy displayName];
    v12 = 138412546;
    v13 = userID;
    v14 = 2112;
    v15 = displayName;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "hidePointerForUser %@ %@", &v12, 0x16u);
  }

  v7 = +[NSMutableDictionary dictionary];
  v8 = [NSNumber numberWithUnsignedShort:2];
  [v7 setObject:v8 forKeyedSubscript:@"messageType"];

  userID2 = [userCopy userID];
  [v7 setObject:userID2 forKeyedSubscript:@"uniqueID"];

  [v7 setObject:&__kCFBooleanFalse forKeyedSubscript:@"enabled"];
  uiClient = [(SSAnnotationRenderer *)self uiClient];
  [uiClient sendAsynchronousMessage:v7 withIdentifier:1 targetAccessQueue:0 completion:0];

  return 0;
}

- (BOOL)hideAllPointers
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "hideAllPointers", v7, 2u);
  }

  v3 = +[NSMutableDictionary dictionary];
  v4 = [NSNumber numberWithUnsignedShort:3];
  [v3 setObject:v4 forKeyedSubscript:@"messageType"];

  uiClient = [(SSAnnotationRenderer *)self uiClient];
  [uiClient sendAsynchronousMessage:v3 withIdentifier:1 targetAccessQueue:0 completion:0];

  return 0;
}

- (BOOL)showAllPointers
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "showAllPointers", v7, 2u);
  }

  v3 = +[NSMutableDictionary dictionary];
  v4 = [NSNumber numberWithUnsignedShort:4];
  [v3 setObject:v4 forKeyedSubscript:@"messageType"];

  uiClient = [(SSAnnotationRenderer *)self uiClient];
  [uiClient sendAsynchronousMessage:v3 withIdentifier:1 targetAccessQueue:0 completion:0];

  return 0;
}

- (void)stopAnnotation
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "stopAnnotation", v6, 2u);
  }

  v3 = +[NSMutableDictionary dictionary];
  v4 = [NSNumber numberWithUnsignedShort:5];
  [v3 setObject:v4 forKeyedSubscript:@"messageType"];

  uiClient = [(SSAnnotationRenderer *)self uiClient];
  [uiClient sendAsynchronousMessage:v3 withIdentifier:1 targetAccessQueue:0 completion:0];
}

- (CGPoint)convertScaledCoordinates:(CGPoint)coordinates
{
  y = coordinates.y;
  x = coordinates.x;
  mainScreen = [(SSAnnotationRenderer *)self mainScreen];
  [mainScreen bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v38.origin.x = v8;
  v38.origin.y = v10;
  v38.size.width = v12;
  v38.size.height = v14;
  v15 = NSStringFromRect(v38);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    uTF8String = [v15 UTF8String];
    mainScreen2 = [(SSAnnotationRenderer *)self mainScreen];
    [mainScreen2 scale];
    v19 = v18;
    mainScreen3 = [(SSAnnotationRenderer *)self mainScreen];
    currentMode = [mainScreen3 currentMode];
    [currentMode size];
    v23 = v22;
    mainScreen4 = [(SSAnnotationRenderer *)self mainScreen];
    currentMode2 = [mainScreen4 currentMode];
    [currentMode2 size];
    v29 = 136315906;
    v30 = uTF8String;
    v31 = 2048;
    v32 = v19;
    v33 = 2048;
    v34 = v23;
    v35 = 2048;
    v36 = v26;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "screenRect: %s, scale: %f, modesize: (%f, %f)", &v29, 0x2Au);
  }

  v27 = floor(x * (v12 + -1.0));
  v28 = floor(y * (v14 + -1.0));
  result.y = v28;
  result.x = v27;
  return result;
}

- (void)drawPointerWithRect:(CGRect)rect flags:(unsigned int)flags
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "drawSafeViewPointerWithRect", buf, 2u);
  }

  v10 = +[NSMutableDictionary dictionary];
  v11 = [NSNumber numberWithUnsignedShort:1];
  [v10 setObject:v11 forKeyedSubscript:@"messageType"];

  [v10 setObject:&__kCFBooleanFalse forKeyedSubscript:@"animate"];
  v30.origin.x = CGRectZero.origin.x;
  v30.origin.y = CGRectZero.origin.y;
  v30.size.width = CGRectZero.size.width;
  v30.size.height = CGRectZero.size.height;
  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = width;
  v33.size.height = height;
  v12 = CGRectEqualToRect(v30, v33);
  if (flags)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  if (v13)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v14 = "SS going to hide the data";
LABEL_13:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v14, buf, 2u);
    }
  }

  else
  {
    v31.origin.x = x;
    v31.origin.y = y;
    v31.size.width = width;
    v31.size.height = height;
    v15 = CGPathCreateWithRect(v31, &CGAffineTransformIdentity);
    if (v15)
    {
      v16 = AX_CGPathCopyDataRepresentation();
      CFRelease(v15);
      goto LABEL_15;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v14 = "SS did not get path data";
      goto LABEL_13;
    }
  }

  v16 = 0;
LABEL_15:
  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  v17 = NSStringFromRect(v32);
  [v10 setObject:v17 forKeyedSubscript:@"frame"];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v18 = v17;
    uTF8String = [v17 UTF8String];
    *buf = 136315138;
    *&buf[4] = uTF8String;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "rect: %s", buf, 0xCu);
  }

  if (v16)
  {
    [v10 setObject:v16 forKeyedSubscript:@"path"];
    CFRelease(v16);
  }

  v20 = [NSNumber numberWithUnsignedInteger:flags];
  [v10 setObject:v20 forKeyedSubscript:@"flags"];

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v21 = v17;
    uTF8String2 = [v17 UTF8String];
    *buf = 136315394;
    *&buf[4] = uTF8String2;
    *&buf[12] = 1024;
    *&buf[14] = flags;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "rect: %s, flags: %x", buf, 0x12u);
  }

  v23 = 0;
  if ((flags & 0x80000000) != 0)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    atomic_compare_exchange_strong(&self->assistanceState, &v23, 1u);
    v29 = v23 == 0;
    uiClient = [(SSAnnotationRenderer *)self uiClient];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100041640;
    v27[3] = &unk_100068F70;
    v27[4] = self;
    v27[5] = buf;
    [uiClient sendAsynchronousMessage:v10 withIdentifier:2 targetAccessQueue:0 completion:v27];

    _Block_object_dispose(buf, 8);
  }

  else
  {
    atomic_compare_exchange_strong(&self->assistanceState, &v23, 1u);
    if (v23)
    {
      [(SSAnnotationRenderer *)self setQueuedMessage:v10];
    }

    else
    {
      uiClient2 = [(SSAnnotationRenderer *)self uiClient];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_100041668;
      v26[3] = &unk_100068FC0;
      v26[4] = self;
      [uiClient2 sendAsynchronousMessage:v10 withIdentifier:1 targetAccessQueue:0 completion:v26];
    }
  }
}

- (void)drawSafeViewSlateWithRect:(CGRect)rect flags:(unsigned int)flags orientation:(int64_t)orientation
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v12 = +[NSMutableDictionary dictionary];
  v13 = [NSNumber numberWithUnsignedShort:1];
  [v12 setObject:v13 forKeyedSubscript:@"messageType"];

  [v12 setObject:&__kCFBooleanFalse forKeyedSubscript:@"animate"];
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  v14 = CGPathCreateWithRect(v29, &CGAffineTransformIdentity);
  if (v14)
  {
    v15 = v14;
    v16 = AX_CGPathCopyDataRepresentation();
    CFRelease(v15);
  }

  else
  {
    v16 = 0;
  }

  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  v17 = NSStringFromRect(v30);
  [v12 setObject:v17 forKeyedSubscript:@"frame"];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 136315394;
    uTF8String = [v17 UTF8String];
    v27 = 1024;
    flagsCopy = flags;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "rect: %s, flags: %x", &v25, 0x12u);
  }

  if (v16)
  {
    [v12 setObject:v16 forKeyedSubscript:@"path"];
    CFRelease(v16);
  }

  v18 = [NSNumber numberWithUnsignedInteger:flags];
  [v12 setObject:v18 forKeyedSubscript:@"flags"];

  v19 = [NSNumber numberWithInteger:orientation];
  [v12 setObject:v19 forKeyedSubscript:@"orientation"];

  uiClient = [(SSAnnotationRenderer *)self uiClient];
  v21 = uiClient;
  if ((flags & 0x20000000) != 0)
  {
    v22 = &stru_100068FE0;
    v23 = v12;
    v24 = 2;
  }

  else
  {
    v22 = &stru_100069000;
    v23 = v12;
    v24 = 1;
  }

  [uiClient sendAsynchronousMessage:v23 withIdentifier:v24 targetAccessQueue:0 completion:v22];
}

- (void)screenDidChange:(id)change
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "screenDidChange", v5, 2u);
  }

  v4 = +[UIScreen mainScreen];
  [(SSAnnotationRenderer *)self setMainScreen:v4];
}

- (void)dealloc
{
  [(SSAnnotationRenderer *)self setUiClient:0];
  [(SSAnnotationRenderer *)self setQueuedMessage:0];
  [(SSAnnotationRenderer *)self setMainScreen:0];
  orientationObserver = [(SSAnnotationRenderer *)self orientationObserver];
  [orientationObserver invalidate];

  v4.receiver = self;
  v4.super_class = SSAnnotationRenderer;
  [(SSAnnotationRenderer *)&v4 dealloc];
}

@end