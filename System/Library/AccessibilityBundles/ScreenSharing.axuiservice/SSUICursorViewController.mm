@interface SSUICursorViewController
+ (id)serviceBundle;
+ (id)transformImage:(id)image flip:(BOOL)flip rotate:(BOOL)rotate;
- (BOOL)cursorHidden;
- (CGRect)cursorFrame;
- (SSUICursorViewController)initWithAXUIService:(id)service;
- (SSUICursorViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)_updateCursorFrameAnimated:(BOOL)animated;
- (void)_updateCursorPath;
- (void)dealloc;
- (void)doneAssisting;
- (void)handleAlternateMessage:(id)message;
- (void)handleAnnotation:(id)annotation;
- (void)handleHideAllPointers;
- (void)handlePointerAnnotation:(id)annotation;
- (void)handleSetCursorFrameMessage:(id)message;
- (void)handleShowAllPointers;
- (void)setCursorHidden:(BOOL)hidden;
- (void)setCursorPath:(CGPath *)path;
- (void)setCursorPath:(CGPath *)path withColor:(int)color flipped:(BOOL)flipped rotated:(BOOL)rotated;
- (void)setFrameOriginWithPoint:(CGPoint)point;
- (void)stroke;
- (void)strokeCore:(BOOL)core rotate:(BOOL)rotate;
- (void)tearDownViews;
- (void)viewDidLoad;
@end

@implementation SSUICursorViewController

+ (id)serviceBundle
{
  if (qword_169F0 != -1)
  {
    sub_73F4();
  }

  v3 = qword_169F8;

  return v3;
}

+ (id)transformImage:(id)image flip:(BOOL)flip rotate:(BOOL)rotate
{
  rotateCopy = rotate;
  flipCopy = flip;
  cGImage = [image CGImage];
  Width = CGImageGetWidth(cGImage);
  Height = CGImageGetHeight(cGImage);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v11 = malloc_type_calloc(4 * Width * Height, 1uLL, 0x100004077774924uLL);
  v12 = CGBitmapContextCreate(v11, Width, Height, 8uLL, 4 * Width, DeviceRGB, 0x4001u);
  CGColorSpaceRelease(DeviceRGB);
  if (rotateCopy)
  {
    if (flipCopy)
    {
      v13 = 1.57079633;
    }

    else
    {
      v13 = -1.57079633;
    }

    CGContextTranslateCTM(v12, (Width >> 1), (Height >> 1));
    CGContextRotateCTM(v12, v13);
    CGContextTranslateCTM(v12, -(Height >> 1), -(Width >> 1));
  }

  else if (flipCopy)
  {
    CGContextTranslateCTM(v12, Width, 0.0);
    CGContextScaleCTM(v12, -1.0, 1.0);
  }

  v19.size.width = Width;
  v19.size.height = Height;
  v19.origin.x = 0.0;
  v19.origin.y = 0.0;
  CGContextDrawImage(v12, v19, cGImage);
  Image = CGBitmapContextCreateImage(v12);
  if (Image)
  {
    v15 = Image;
    v16 = [UIImage imageWithCGImage:Image];
    CGImageRelease(v15);
  }

  else
  {
    v16 = 0;
  }

  CGContextRelease(v12);
  free(v11);

  return v16;
}

- (SSUICursorViewController)initWithAXUIService:(id)service
{
  result = [(SSUICursorViewController *)self initWithNibName:0 bundle:0];
  if (result)
  {
    result->_axuiService = service;
  }

  return result;
}

- (SSUICursorViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v19.receiver = self;
  v19.super_class = SSUICursorViewController;
  v4 = [(SSUICursorViewController *)&v19 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = +[SSUICursorViewController serviceBundle];
    v6 = [UIImage imageNamed:@"arrow" inBundle:v5 compatibleWithTraitCollection:0];
    [(SSUICursorViewController *)v4 setArrowImage:v6];
    [(SSUICursorViewController *)v4 setCurrentArrowImage:v6];

    arrowImage = [(SSUICursorViewController *)v4 arrowImage];
    v8 = [SSUICursorViewController transformImage:arrowImage flip:1 rotate:0];
    [(SSUICursorViewController *)v4 setLeftarrowImage:v8];

    arrowImage2 = [(SSUICursorViewController *)v4 arrowImage];
    v10 = [SSUICursorViewController transformImage:arrowImage2 flip:1 rotate:1];
    [(SSUICursorViewController *)v4 setUpArrowImage:v10];

    arrowImage3 = [(SSUICursorViewController *)v4 arrowImage];
    v12 = [SSUICursorViewController transformImage:arrowImage3 flip:0 rotate:1];
    [(SSUICursorViewController *)v4 setDownArrowImage:v12];

    arrowImage = v4->arrowImage;
    cursorView = [(SSUICursorViewController *)v4 cursorView];
    [cursorView setImage:arrowImage];

    v15 = dispatch_semaphore_create(0);
    blinker = v4->blinker;
    v4->blinker = v15;

    v17 = +[NSMutableDictionary dictionary];
    [(SSUICursorViewController *)v4 setAnnotationInfo:v17];
  }

  return v4;
}

- (void)dealloc
{
  [(SSUICursorViewController *)self tearDownViews];
  cursorPath = self->_cursorPath;
  if (cursorPath)
  {
    CFRelease(cursorPath);
    self->_cursorPath = 0;
  }

  [(SSUICursorViewController *)self setArrowImage:0];
  [(SSUICursorViewController *)self setLeftarrowImage:0];
  [(SSUICursorViewController *)self setUpArrowImage:0];
  [(SSUICursorViewController *)self setDownArrowImage:0];
  [(SSUICursorViewController *)self setCurrentArrowImage:0];
  v4.receiver = self;
  v4.super_class = SSUICursorViewController;
  [(SSUICursorViewController *)&v4 dealloc];
}

- (void)handleSetCursorFrameMessage:(id)message
{
  messageCopy = message;
  v5 = [messageCopy objectForKey:@"messageType"];
  unsignedShortValue = [v5 unsignedShortValue];

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = messageCopy;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "## handleSetCursorFrameMessage incoming message %@", &v8, 0xCu);
  }

  v7 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (unsignedShortValue <= 2)
  {
    if (unsignedShortValue == 1)
    {
      if (v7)
      {
        LOWORD(v8) = 0;
        _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "SS kSSSafeViewAnnotationCmd", &v8, 2u);
      }

      [(SSUICursorViewController *)self handleAnnotation:messageCopy];
    }

    else
    {
      if (unsignedShortValue != 2)
      {
LABEL_24:
        if (v7)
        {
          LOWORD(v8) = 0;
          _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "SS unknown annotation cmd", &v8, 2u);
        }

        goto LABEL_26;
      }

      if (v7)
      {
        LOWORD(v8) = 0;
        _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "SS kSSPointerAnnotationCmd", &v8, 2u);
      }

      [(SSUICursorViewController *)self handlePointerAnnotation:messageCopy];
    }
  }

  else
  {
    switch(unsignedShortValue)
    {
      case 3:
        if (v7)
        {
          LOWORD(v8) = 0;
          _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "SS  kSSHideAllPointersCmd", &v8, 2u);
        }

        [(SSUICursorViewController *)self handleHideAllPointers];
        break;
      case 4:
        if (v7)
        {
          LOWORD(v8) = 0;
          _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "SS kSSShowAllPointersCmd", &v8, 2u);
        }

        [(SSUICursorViewController *)self handleShowAllPointers];
        break;
      case 5:
        if (v7)
        {
          LOWORD(v8) = 0;
          _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "SS kSSDoneAssistingCmd", &v8, 2u);
        }

        [(SSUICursorViewController *)self doneAssisting];
        break;
      default:
        goto LABEL_24;
    }
  }

LABEL_26:
}

- (void)handleAnnotation:(id)annotation
{
  annotationCopy = annotation;
  v5 = [annotationCopy objectForKey:@"animate"];
  bOOLValue = [v5 BOOLValue];

  v7 = [annotationCopy objectForKey:@"frame"];
  v47 = CGRectFromString(v7);
  x = v47.origin.x;
  y = v47.origin.y;
  width = v47.size.width;
  height = v47.size.height;

  v12 = [annotationCopy objectForKey:@"path"];
  if (v12)
  {
    v13 = AX_CGPathCreateWithDataRepresentation();
  }

  else
  {
    v13 = 0;
  }

  v48.origin.x = CGRectZero.origin.x;
  v48.origin.y = CGRectZero.origin.y;
  v48.size.width = CGRectZero.size.width;
  v48.size.height = CGRectZero.size.height;
  v49.origin.x = x;
  v49.origin.y = y;
  v49.size.width = width;
  v49.size.height = height;
  if (CGRectEqualToRect(v48, v49) && v13 == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "SS handleSetCursorFrameMessage hidden", buf, 2u);
    }

    [(SSUICursorViewController *)self setCursorHidden:1];
    slateView = [(SSUICursorViewController *)self slateView];
    [slateView wipeSlate];

    goto LABEL_32;
  }

  if ([(SSUICursorViewController *)self cursorHidden])
  {
    [(SSUICursorViewController *)self setCursorHidden:0];
  }

  v15 = [annotationCopy objectForKey:@"flags"];
  unsignedIntValue = [v15 unsignedIntValue];

  v17 = unsignedIntValue & 7;
  switch(v17)
  {
    case 3:
      slateView2 = [(SSUICursorViewController *)self slateView];
      [slateView2 setHidden:0];

      cursorView = [(SSUICursorViewController *)self cursorView];
      [cursorView setHidden:1];

      perUserView = [(SSUICursorViewController *)self perUserView];
      [perUserView setHidden:1];

      slateView3 = [(SSUICursorViewController *)self slateView];
      break;
    case 5:
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *v45 = 0;
        _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "handleSetCursorFrameMessage per user", v45, 2u);
      }

      slateView4 = [(SSUICursorViewController *)self slateView];
      [slateView4 setHidden:1];

      cursorView2 = [(SSUICursorViewController *)self cursorView];
      [cursorView2 setHidden:1];

      perUserView2 = [(SSUICursorViewController *)self perUserView];
      [perUserView2 setHidden:0];

      slateView3 = [(SSUICursorViewController *)self perUserView];
      break;
    case 2:
      slateView5 = [(SSUICursorViewController *)self slateView];
      [slateView5 wipeSlate];

      slateView6 = [(SSUICursorViewController *)self slateView];
      [slateView6 setHidden:1];

      cursorView3 = [(SSUICursorViewController *)self cursorView];
      [cursorView3 setHidden:0];

      perUserView3 = [(SSUICursorViewController *)self perUserView];
      [perUserView3 setHidden:1];

      slateView3 = [(SSUICursorViewController *)self cursorView];
      break;
    default:
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_7408();
      }

      goto LABEL_22;
  }

  v30 = slateView3;
  [(SSUICursorViewController *)self setCurrentView:slateView3];

LABEL_22:
  currentView = [(SSUICursorViewController *)self currentView];
  [currentView setEventFlags:unsignedIntValue];

  currentView2 = [(SSUICursorViewController *)self currentView];
  [currentView2 hotspotAdjustmentForCursorFrame:{x, y, width, height}];
  v34 = v33;
  v36 = v35;

  v37 = x + v34;
  if (v17 == 3)
  {
    v38 = [annotationCopy objectForKey:@"orientation"];
    integerValue = [v38 integerValue];

    slateView7 = [(SSUICursorViewController *)self slateView];
    [slateView7 setCurrentOrientation:integerValue];

    slateView8 = [(SSUICursorViewController *)self slateView];
    v42 = slateView8;
    if ((unsignedIntValue & 0x80000000) != 0)
    {
      [slateView8 startPeriodicUpdate];

      slateView9 = [(SSUICursorViewController *)self slateView];
      [slateView9 addPoint:{v37, y + v36}];
    }

    else
    {
      [slateView8 stopPeriodicUpdate];

      slateView9 = [(SSUICursorViewController *)self slateView];
      [slateView9 drawCompletedPath];
    }
  }

  else
  {
    if (v17 != 5)
    {
      [(SSUICursorViewController *)self setCursorFrame:bOOLValue animated:v37, y + v36, width, height];
      [(SSUICursorViewController *)self setCursorPath:v13 withColor:unsignedIntValue & 0x70 flipped:(unsignedIntValue >> 29) & 1 rotated:(unsignedIntValue >> 28) & 1];
      if (!v13)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

    perUserView4 = [(SSUICursorViewController *)self perUserView];
    [perUserView4 setCursorFrame:bOOLValue animated:{v37, y + v36, width, height}];

    slateView9 = [(SSUICursorViewController *)self perUserView];
    [slateView9 setUserData:annotationCopy];
  }

  if (v13)
  {
LABEL_31:
    CFRelease(v13);
  }

LABEL_32:
}

- (void)handlePointerAnnotation:(id)annotation
{
  annotationCopy = annotation;
  v5 = [annotationCopy objectForKeyedSubscript:@"enabled"];
  bOOLValue = [v5 BOOLValue];

  v7 = [annotationCopy objectForKeyedSubscript:@"uniqueID"];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v49 = 138412290;
    v50 = annotationCopy;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "## handlePointerAnnotation incoming dict %@", &v49, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  annotationInfo = [(SSUICursorViewController *)selfCopy annotationInfo];
  v10 = [annotationInfo objectForKeyedSubscript:v7];

  if (v10)
  {
    v11 = [v10 objectForKeyedSubscript:@"enabled"];
    bOOLValue2 = [v11 BOOLValue];

    [v10 addEntriesFromDictionary:annotationCopy];
    [v10 setObject:&__kCFBooleanTrue forKeyedSubscript:@"needsUpdate"];
    v13 = [v10 objectForKeyedSubscript:@"x"];
    [v13 doubleValue];
    v15 = v14;
    v16 = [v10 objectForKeyedSubscript:@"y"];
    [v16 doubleValue];
    v18 = v17;

    if (bOOLValue)
    {
      if (bOOLValue2)
      {
        [v10 setObject:&__kCFBooleanFalse forKeyedSubscript:@"showTransition"];
        v19 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v20 = v7;
          uTF8String = [v7 UTF8String];
          v22 = [v10 objectForKeyedSubscript:@"displayName"];
          v23 = v22;
          uTF8String2 = [v22 UTF8String];
          v49 = 136315906;
          v50 = uTF8String;
          v51 = 2080;
          v52 = uTF8String2;
          v53 = 2048;
          v54 = v15;
          v55 = 2048;
          v56 = v18;
          _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "##move %s for user %s to %f %f", &v49, 0x2Au);
        }
      }

      else
      {
        [v10 setObject:&__kCFBooleanTrue forKeyedSubscript:@"enabled"];
        [v10 setObject:&__kCFBooleanTrue forKeyedSubscript:@"showTransition"];
        v30 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v31 = v7;
          uTF8String3 = [v7 UTF8String];
          v33 = [v10 objectForKeyedSubscript:@"displayName"];
          v34 = v33;
          uTF8String4 = [v33 UTF8String];
          v49 = 136315906;
          v50 = uTF8String3;
          v51 = 2080;
          v52 = uTF8String4;
          v53 = 2048;
          v54 = v15;
          v55 = 2048;
          v56 = v18;
          _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "show %s for user %s at %f %f", &v49, 0x2Au);
        }
      }

LABEL_23:

LABEL_24:
      annotationInfo2 = [(SSUICursorViewController *)selfCopy annotationInfo];
      [annotationInfo2 setObject:v10 forKeyedSubscript:v7];

      goto LABEL_25;
    }

    if (bOOLValue2)
    {
      [v10 setObject:&__kCFBooleanFalse forKeyedSubscript:@"enabled"];
      [v10 setObject:&__kCFBooleanTrue forKeyedSubscript:@"showTransition"];
      v25 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v26 = v7;
        uTF8String5 = [v7 UTF8String];
        v49 = 136315138;
        v50 = uTF8String5;
        _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "hide %s", &v49, 0xCu);
      }

      goto LABEL_23;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v49) = 0;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "pointer already hidden", &v49, 2u);
    }
  }

  else
  {
    if (bOOLValue)
    {
      v10 = +[NSMutableDictionary dictionary];
      [v10 addEntriesFromDictionary:annotationCopy];
      [v10 setObject:&__kCFBooleanTrue forKeyedSubscript:@"needsUpdate"];
      [v10 setObject:&__kCFBooleanTrue forKeyedSubscript:@"enabled"];
      [v10 setObject:&__kCFBooleanTrue forKeyedSubscript:@"showTransition"];
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v49 = 138412290;
        v50 = v7;
        _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "##added %@", &v49, 0xCu);
      }

      goto LABEL_24;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v49 = 138412290;
      v50 = v7;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "tried to hide annotation for unknown user: %@", &v49, 0xCu);
    }

    v28 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      annotationInfo3 = [(SSUICursorViewController *)selfCopy annotationInfo];
      v49 = 138412290;
      v50 = annotationInfo3;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "known users: %@", &v49, 0xCu);
    }

    v10 = 0;
  }

LABEL_25:
  objc_sync_exit(selfCopy);

  annotationHiddenByLocalUser = [(SSUICursorViewController *)selfCopy annotationHiddenByLocalUser];
  v38 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (annotationHiddenByLocalUser)
  {
    if (v38)
    {
      LOWORD(v49) = 0;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "hidden by local user", &v49, 2u);
    }
  }

  else
  {
    if (v38)
    {
      LOWORD(v49) = 0;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "showing", &v49, 2u);
    }

    v39 = [v10 objectForKeyedSubscript:@"flags"];
    unsignedIntValue = [v39 unsignedIntValue];

    v41 = [NSNumber numberWithUnsignedInt:unsignedIntValue & 0xFFFFFFF8 | 5];
    [v10 setObject:v41 forKeyedSubscript:@"flags"];

    v42 = [v10 objectForKeyedSubscript:@"x"];
    [v42 floatValue];
    v44 = v43;
    v45 = [v10 objectForKeyedSubscript:@"y"];
    [v45 floatValue];
    v47 = v46;

    v57.origin.x = v44;
    v57.origin.y = v47;
    v57.size.width = 96.0;
    v57.size.height = 64.0;
    v48 = NSStringFromCGRect(v57);
    [v10 setObject:v48 forKeyedSubscript:@"frame"];

    [(SSUICursorViewController *)selfCopy handleAnnotation:v10];
  }
}

- (void)handleHideAllPointers
{
  if ([(SSUICursorViewController *)self annotationHiddenByLocalUser])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ignore hideAllPointers command", v4, 2u);
    }
  }

  else
  {
    [(SSUICursorViewController *)self setAnnotationHiddenByLocalUser:1];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "local user hid all annotation pointers", buf, 2u);
    }

    perUserView = [(SSUICursorViewController *)self perUserView];
    [perUserView hideAllPointers];
  }
}

- (void)handleShowAllPointers
{
  if ([(SSUICursorViewController *)self annotationHiddenByLocalUser])
  {
    [(SSUICursorViewController *)self setAnnotationHiddenByLocalUser:0];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "local unhid all annotation pointers", buf, 2u);
    }

    perUserView = [(SSUICursorViewController *)self perUserView];
    [perUserView showAllPointers];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ignore showAllPointers command", v4, 2u);
  }
}

- (void)doneAssisting
{
  perUserView = [(SSUICursorViewController *)self perUserView];
  [perUserView clearUserData];
}

- (void)handleAlternateMessage:(id)message
{
  v4 = [message objectForKey:@"flags"];
  unsignedIntValue = [v4 unsignedIntValue];

  if ((unsignedIntValue & 7) == 3)
  {
    slateView = [(SSUICursorViewController *)self slateView];
    [slateView wipeSlate];
  }

  else
  {

    [(SSUICursorViewController *)self stroke];
  }
}

- (void)setFrameOriginWithPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  cursorView = [(SSUICursorViewController *)self cursorView];
  [cursorView frame];
  v8 = v7;
  v10 = v9;

  cursorView2 = [(SSUICursorViewController *)self cursorView];
  [cursorView2 setFrame:{x, y, v8, v10}];
}

- (void)strokeCore:(BOOL)core rotate:(BOOL)rotate
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_3050;
  v4[3] = &unk_10530;
  rotateCopy = rotate;
  coreCopy = core;
  v4[4] = self;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)stroke
{
  currentView = [(SSUICursorViewController *)self currentView];
  cursorView = [(SSUICursorViewController *)self cursorView];

  if (currentView == cursorView && !self->counter)
  {
    v5 = dispatch_get_global_queue(-32768, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_35F4;
    block[3] = &unk_103D8;
    block[4] = self;
    dispatch_async(v5, block);
  }
}

- (void)_updateCursorFrameAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [SSUICursorView resizeFrameForDisplay:self->_cursorFrame.origin.x, self->_cursorFrame.origin.y, self->_cursorFrame.size.width, self->_cursorFrame.size.height];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  view = [(SSUICursorViewController *)self view];
  window = [view window];
  [window _convertRectFromSceneReferenceSpace:{v6, v8, v10, v12}];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  cursorView = [(SSUICursorViewController *)self cursorView];
  [cursorView resizeFrameForWindow:{v16, v18, v20, v22}];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  view2 = [(SSUICursorViewController *)self view];
  [view2 convertRect:0 fromView:{v25, v27, v29, v31}];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;

  cursorView2 = [(SSUICursorViewController *)self cursorView];
  [cursorView2 setCursorFrame:animatedCopy animated:{v34, v36, v38, v40}];
}

- (void)setCursorPath:(CGPath *)path
{
  cursorPath = self->_cursorPath;
  if (path)
  {
    v5 = CFRetain(path);
  }

  else
  {
    v5 = 0;
  }

  self->_cursorPath = v5;
  if (cursorPath)
  {
    CFRelease(cursorPath);
  }

  [(SSUICursorViewController *)self _updateCursorPath];
  currentArrowImage = [(SSUICursorViewController *)self currentArrowImage];
  cursorView = [(SSUICursorViewController *)self cursorView];
  [cursorView setImage:currentArrowImage];

  x = self->_cursorFrame.origin.x;
  y = self->_cursorFrame.origin.y;
  width = self->_cursorFrame.size.width;
  height = self->_cursorFrame.size.height;
  cursorView2 = [(SSUICursorViewController *)self cursorView];
  [cursorView2 setFrame:{x, y, width, height}];
}

- (void)setCursorPath:(CGPath *)path withColor:(int)color flipped:(BOOL)flipped rotated:(BOOL)rotated
{
  rotatedCopy = rotated;
  flippedCopy = flipped;
  v8 = *&color;
  if ([(SSUICursorViewController *)self currentColor]!= color)
  {
    HIDWORD(v12) = v8 - 16;
    LODWORD(v12) = v8 - 16;
    v11 = v12 >> 4;
    if (v11 > 4)
    {
      v13 = @"arrow";
    }

    else
    {
      v13 = off_10550[v11];
    }

    v14 = +[SSUICursorViewController serviceBundle];
    v15 = [UIImage imageNamed:v13 inBundle:v14 compatibleWithTraitCollection:0];
    [(SSUICursorViewController *)self setArrowImage:v15];

    arrowImage = [(SSUICursorViewController *)self arrowImage];
    v17 = [SSUICursorViewController transformImage:arrowImage flip:1 rotate:0];
    [(SSUICursorViewController *)self setLeftarrowImage:v17];

    arrowImage2 = [(SSUICursorViewController *)self arrowImage];
    v19 = [SSUICursorViewController transformImage:arrowImage2 flip:1 rotate:1];
    [(SSUICursorViewController *)self setUpArrowImage:v19];

    arrowImage3 = [(SSUICursorViewController *)self arrowImage];
    v21 = [SSUICursorViewController transformImage:arrowImage3 flip:0 rotate:1];
    [(SSUICursorViewController *)self setDownArrowImage:v21];

    [(SSUICursorViewController *)self setCurrentColor:v8];
    goto LABEL_9;
  }

  if ([(SSUICursorViewController *)self flipped]!= flippedCopy || [(SSUICursorViewController *)self rotated]!= rotatedCopy)
  {
LABEL_9:
    if (flippedCopy)
    {
      if (rotatedCopy)
      {
        [(SSUICursorViewController *)self upArrowImage];
      }

      else
      {
        [(SSUICursorViewController *)self leftarrowImage];
      }
    }

    else if (rotatedCopy)
    {
      [(SSUICursorViewController *)self downArrowImage];
    }

    else
    {
      [(SSUICursorViewController *)self arrowImage];
    }
    v22 = ;
    v23 = v22;
    [(SSUICursorViewController *)self setCurrentArrowImage:v22];

    [(SSUICursorViewController *)self setFlipped:flippedCopy];
    [(SSUICursorViewController *)self setRotated:rotatedCopy];
  }

  [(SSUICursorViewController *)self setCursorPath:path];
}

- (void)_updateCursorPath
{
  if (self->_cursorPath)
  {
    v3 = [UIBezierPath bezierPathWithCGPath:?];
    cursorView2 = UIAccessibilitySceneReferencePathToScreenPath();

    view = [(SSUICursorViewController *)self view];
    v5 = UIAccessibilityPathForAccessibilityPath();
    cGPath = [v5 CGPath];

    cursorView = [(SSUICursorViewController *)self cursorView];
    [cursorView setPath:cGPath];
  }

  else
  {
    cursorView2 = [(SSUICursorViewController *)self cursorView];
    [cursorView2 setPath:0];
  }
}

- (BOOL)cursorHidden
{
  view = [(SSUICursorViewController *)self view];
  isHidden = [view isHidden];

  return isHidden;
}

- (void)setCursorHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  view = [(SSUICursorViewController *)self view];
  [view setHidden:hiddenCopy];
}

- (void)viewDidLoad
{
  v3 = [UIView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(SSUICursorViewController *)self setView:v7];

  height = [[SSUICursorView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  [(SSUICursorViewController *)self setCursorView:height];

  v9 = [SSUISlateView alloc];
  v10 = +[UIScreen mainScreen];
  [v10 bounds];
  v11 = [(SSUISlateView *)v9 initWithFrame:?];
  [(SSUICursorViewController *)self setSlateView:v11];

  v12 = [SSUIPerUserMasterView alloc];
  v13 = +[UIScreen mainScreen];
  [v13 bounds];
  v14 = [(SSUIPerUserMasterView *)v12 initWithFrame:?];
  [(SSUICursorViewController *)self setPerUserView:v14];

  view = [(SSUICursorViewController *)self view];
  cursorView = [(SSUICursorViewController *)self cursorView];
  [view addSubview:cursorView];

  view2 = [(SSUICursorViewController *)self view];
  slateView = [(SSUICursorViewController *)self slateView];
  [view2 addSubview:slateView];

  view3 = [(SSUICursorViewController *)self view];
  perUserView = [(SSUICursorViewController *)self perUserView];
  [view3 addSubview:perUserView];

  cursorView2 = [(SSUICursorViewController *)self cursorView];
  [(SSUICursorViewController *)self setCurrentView:cursorView2];

  v22.receiver = self;
  v22.super_class = SSUICursorViewController;
  [(SSUICursorViewController *)&v22 viewDidLoad];
}

- (void)tearDownViews
{
  view = [(SSUICursorViewController *)self view];

  if (view)
  {
    [(SSUICursorViewController *)self setCurrentView:0];
    cursorView = [(SSUICursorViewController *)self cursorView];
    [cursorView removeFromSuperview];

    [(SSUICursorViewController *)self setCursorView:0];
    slateView = [(SSUICursorViewController *)self slateView];
    [slateView removeFromSuperview];

    [(SSUICursorViewController *)self setSlateView:0];
    perUserView = [(SSUICursorViewController *)self perUserView];
    [perUserView removeFromSuperview];

    [(SSUICursorViewController *)self setPerUserView:0];

    [(SSUICursorViewController *)self setView:0];
  }
}

- (CGRect)cursorFrame
{
  x = self->_cursorFrame.origin.x;
  y = self->_cursorFrame.origin.y;
  width = self->_cursorFrame.size.width;
  height = self->_cursorFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end