@interface SSUICursorViewController
+ (id)serviceBundle;
+ (id)transformImage:(id)a3 flip:(BOOL)a4 rotate:(BOOL)a5;
- (BOOL)cursorHidden;
- (CGRect)cursorFrame;
- (SSUICursorViewController)initWithAXUIService:(id)a3;
- (SSUICursorViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)_updateCursorFrameAnimated:(BOOL)a3;
- (void)_updateCursorPath;
- (void)dealloc;
- (void)doneAssisting;
- (void)handleAlternateMessage:(id)a3;
- (void)handleAnnotation:(id)a3;
- (void)handleHideAllPointers;
- (void)handlePointerAnnotation:(id)a3;
- (void)handleSetCursorFrameMessage:(id)a3;
- (void)handleShowAllPointers;
- (void)setCursorHidden:(BOOL)a3;
- (void)setCursorPath:(CGPath *)a3;
- (void)setCursorPath:(CGPath *)a3 withColor:(int)a4 flipped:(BOOL)a5 rotated:(BOOL)a6;
- (void)setFrameOriginWithPoint:(CGPoint)a3;
- (void)stroke;
- (void)strokeCore:(BOOL)a3 rotate:(BOOL)a4;
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

+ (id)transformImage:(id)a3 flip:(BOOL)a4 rotate:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = [a3 CGImage];
  Width = CGImageGetWidth(v7);
  Height = CGImageGetHeight(v7);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v11 = malloc_type_calloc(4 * Width * Height, 1uLL, 0x100004077774924uLL);
  v12 = CGBitmapContextCreate(v11, Width, Height, 8uLL, 4 * Width, DeviceRGB, 0x4001u);
  CGColorSpaceRelease(DeviceRGB);
  if (v5)
  {
    if (v6)
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

  else if (v6)
  {
    CGContextTranslateCTM(v12, Width, 0.0);
    CGContextScaleCTM(v12, -1.0, 1.0);
  }

  v19.size.width = Width;
  v19.size.height = Height;
  v19.origin.x = 0.0;
  v19.origin.y = 0.0;
  CGContextDrawImage(v12, v19, v7);
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

- (SSUICursorViewController)initWithAXUIService:(id)a3
{
  result = [(SSUICursorViewController *)self initWithNibName:0 bundle:0];
  if (result)
  {
    result->_axuiService = a3;
  }

  return result;
}

- (SSUICursorViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v19.receiver = self;
  v19.super_class = SSUICursorViewController;
  v4 = [(SSUICursorViewController *)&v19 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = +[SSUICursorViewController serviceBundle];
    v6 = [UIImage imageNamed:@"arrow" inBundle:v5 compatibleWithTraitCollection:0];
    [(SSUICursorViewController *)v4 setArrowImage:v6];
    [(SSUICursorViewController *)v4 setCurrentArrowImage:v6];

    v7 = [(SSUICursorViewController *)v4 arrowImage];
    v8 = [SSUICursorViewController transformImage:v7 flip:1 rotate:0];
    [(SSUICursorViewController *)v4 setLeftarrowImage:v8];

    v9 = [(SSUICursorViewController *)v4 arrowImage];
    v10 = [SSUICursorViewController transformImage:v9 flip:1 rotate:1];
    [(SSUICursorViewController *)v4 setUpArrowImage:v10];

    v11 = [(SSUICursorViewController *)v4 arrowImage];
    v12 = [SSUICursorViewController transformImage:v11 flip:0 rotate:1];
    [(SSUICursorViewController *)v4 setDownArrowImage:v12];

    arrowImage = v4->arrowImage;
    v14 = [(SSUICursorViewController *)v4 cursorView];
    [v14 setImage:arrowImage];

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

- (void)handleSetCursorFrameMessage:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"messageType"];
  v6 = [v5 unsignedShortValue];

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "## handleSetCursorFrameMessage incoming message %@", &v8, 0xCu);
  }

  v7 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (v6 <= 2)
  {
    if (v6 == 1)
    {
      if (v7)
      {
        LOWORD(v8) = 0;
        _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "SS kSSSafeViewAnnotationCmd", &v8, 2u);
      }

      [(SSUICursorViewController *)self handleAnnotation:v4];
    }

    else
    {
      if (v6 != 2)
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

      [(SSUICursorViewController *)self handlePointerAnnotation:v4];
    }
  }

  else
  {
    switch(v6)
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

- (void)handleAnnotation:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"animate"];
  v6 = [v5 BOOLValue];

  v7 = [v4 objectForKey:@"frame"];
  v47 = CGRectFromString(v7);
  x = v47.origin.x;
  y = v47.origin.y;
  width = v47.size.width;
  height = v47.size.height;

  v12 = [v4 objectForKey:@"path"];
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
    v22 = [(SSUICursorViewController *)self slateView];
    [v22 wipeSlate];

    goto LABEL_32;
  }

  if ([(SSUICursorViewController *)self cursorHidden])
  {
    [(SSUICursorViewController *)self setCursorHidden:0];
  }

  v15 = [v4 objectForKey:@"flags"];
  v16 = [v15 unsignedIntValue];

  v17 = v16 & 7;
  switch(v17)
  {
    case 3:
      v18 = [(SSUICursorViewController *)self slateView];
      [v18 setHidden:0];

      v19 = [(SSUICursorViewController *)self cursorView];
      [v19 setHidden:1];

      v20 = [(SSUICursorViewController *)self perUserView];
      [v20 setHidden:1];

      v21 = [(SSUICursorViewController *)self slateView];
      break;
    case 5:
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *v45 = 0;
        _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "handleSetCursorFrameMessage per user", v45, 2u);
      }

      v27 = [(SSUICursorViewController *)self slateView];
      [v27 setHidden:1];

      v28 = [(SSUICursorViewController *)self cursorView];
      [v28 setHidden:1];

      v29 = [(SSUICursorViewController *)self perUserView];
      [v29 setHidden:0];

      v21 = [(SSUICursorViewController *)self perUserView];
      break;
    case 2:
      v23 = [(SSUICursorViewController *)self slateView];
      [v23 wipeSlate];

      v24 = [(SSUICursorViewController *)self slateView];
      [v24 setHidden:1];

      v25 = [(SSUICursorViewController *)self cursorView];
      [v25 setHidden:0];

      v26 = [(SSUICursorViewController *)self perUserView];
      [v26 setHidden:1];

      v21 = [(SSUICursorViewController *)self cursorView];
      break;
    default:
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_7408();
      }

      goto LABEL_22;
  }

  v30 = v21;
  [(SSUICursorViewController *)self setCurrentView:v21];

LABEL_22:
  v31 = [(SSUICursorViewController *)self currentView];
  [v31 setEventFlags:v16];

  v32 = [(SSUICursorViewController *)self currentView];
  [v32 hotspotAdjustmentForCursorFrame:{x, y, width, height}];
  v34 = v33;
  v36 = v35;

  v37 = x + v34;
  if (v17 == 3)
  {
    v38 = [v4 objectForKey:@"orientation"];
    v39 = [v38 integerValue];

    v40 = [(SSUICursorViewController *)self slateView];
    [v40 setCurrentOrientation:v39];

    v41 = [(SSUICursorViewController *)self slateView];
    v42 = v41;
    if ((v16 & 0x80000000) != 0)
    {
      [v41 startPeriodicUpdate];

      v43 = [(SSUICursorViewController *)self slateView];
      [v43 addPoint:{v37, y + v36}];
    }

    else
    {
      [v41 stopPeriodicUpdate];

      v43 = [(SSUICursorViewController *)self slateView];
      [v43 drawCompletedPath];
    }
  }

  else
  {
    if (v17 != 5)
    {
      [(SSUICursorViewController *)self setCursorFrame:v6 animated:v37, y + v36, width, height];
      [(SSUICursorViewController *)self setCursorPath:v13 withColor:v16 & 0x70 flipped:(v16 >> 29) & 1 rotated:(v16 >> 28) & 1];
      if (!v13)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

    v44 = [(SSUICursorViewController *)self perUserView];
    [v44 setCursorFrame:v6 animated:{v37, y + v36, width, height}];

    v43 = [(SSUICursorViewController *)self perUserView];
    [v43 setUserData:v4];
  }

  if (v13)
  {
LABEL_31:
    CFRelease(v13);
  }

LABEL_32:
}

- (void)handlePointerAnnotation:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"enabled"];
  v6 = [v5 BOOLValue];

  v7 = [v4 objectForKeyedSubscript:@"uniqueID"];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v49 = 138412290;
    v50 = v4;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "## handlePointerAnnotation incoming dict %@", &v49, 0xCu);
  }

  v8 = self;
  objc_sync_enter(v8);
  v9 = [(SSUICursorViewController *)v8 annotationInfo];
  v10 = [v9 objectForKeyedSubscript:v7];

  if (v10)
  {
    v11 = [v10 objectForKeyedSubscript:@"enabled"];
    v12 = [v11 BOOLValue];

    [v10 addEntriesFromDictionary:v4];
    [v10 setObject:&__kCFBooleanTrue forKeyedSubscript:@"needsUpdate"];
    v13 = [v10 objectForKeyedSubscript:@"x"];
    [v13 doubleValue];
    v15 = v14;
    v16 = [v10 objectForKeyedSubscript:@"y"];
    [v16 doubleValue];
    v18 = v17;

    if (v6)
    {
      if (v12)
      {
        [v10 setObject:&__kCFBooleanFalse forKeyedSubscript:@"showTransition"];
        v19 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v20 = v7;
          v21 = [v7 UTF8String];
          v22 = [v10 objectForKeyedSubscript:@"displayName"];
          v23 = v22;
          v24 = [v22 UTF8String];
          v49 = 136315906;
          v50 = v21;
          v51 = 2080;
          v52 = v24;
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
          v32 = [v7 UTF8String];
          v33 = [v10 objectForKeyedSubscript:@"displayName"];
          v34 = v33;
          v35 = [v33 UTF8String];
          v49 = 136315906;
          v50 = v32;
          v51 = 2080;
          v52 = v35;
          v53 = 2048;
          v54 = v15;
          v55 = 2048;
          v56 = v18;
          _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "show %s for user %s at %f %f", &v49, 0x2Au);
        }
      }

LABEL_23:

LABEL_24:
      v36 = [(SSUICursorViewController *)v8 annotationInfo];
      [v36 setObject:v10 forKeyedSubscript:v7];

      goto LABEL_25;
    }

    if (v12)
    {
      [v10 setObject:&__kCFBooleanFalse forKeyedSubscript:@"enabled"];
      [v10 setObject:&__kCFBooleanTrue forKeyedSubscript:@"showTransition"];
      v25 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v26 = v7;
        v27 = [v7 UTF8String];
        v49 = 136315138;
        v50 = v27;
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
    if (v6)
    {
      v10 = +[NSMutableDictionary dictionary];
      [v10 addEntriesFromDictionary:v4];
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
      v29 = [(SSUICursorViewController *)v8 annotationInfo];
      v49 = 138412290;
      v50 = v29;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "known users: %@", &v49, 0xCu);
    }

    v10 = 0;
  }

LABEL_25:
  objc_sync_exit(v8);

  v37 = [(SSUICursorViewController *)v8 annotationHiddenByLocalUser];
  v38 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (v37)
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
    v40 = [v39 unsignedIntValue];

    v41 = [NSNumber numberWithUnsignedInt:v40 & 0xFFFFFFF8 | 5];
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

    [(SSUICursorViewController *)v8 handleAnnotation:v10];
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

    v3 = [(SSUICursorViewController *)self perUserView];
    [v3 hideAllPointers];
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

    v3 = [(SSUICursorViewController *)self perUserView];
    [v3 showAllPointers];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ignore showAllPointers command", v4, 2u);
  }
}

- (void)doneAssisting
{
  v2 = [(SSUICursorViewController *)self perUserView];
  [v2 clearUserData];
}

- (void)handleAlternateMessage:(id)a3
{
  v4 = [a3 objectForKey:@"flags"];
  v5 = [v4 unsignedIntValue];

  if ((v5 & 7) == 3)
  {
    v6 = [(SSUICursorViewController *)self slateView];
    [v6 wipeSlate];
  }

  else
  {

    [(SSUICursorViewController *)self stroke];
  }
}

- (void)setFrameOriginWithPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(SSUICursorViewController *)self cursorView];
  [v6 frame];
  v8 = v7;
  v10 = v9;

  v11 = [(SSUICursorViewController *)self cursorView];
  [v11 setFrame:{x, y, v8, v10}];
}

- (void)strokeCore:(BOOL)a3 rotate:(BOOL)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_3050;
  v4[3] = &unk_10530;
  v5 = a4;
  v6 = a3;
  v4[4] = self;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)stroke
{
  v3 = [(SSUICursorViewController *)self currentView];
  v4 = [(SSUICursorViewController *)self cursorView];

  if (v3 == v4 && !self->counter)
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

- (void)_updateCursorFrameAnimated:(BOOL)a3
{
  v3 = a3;
  [SSUICursorView resizeFrameForDisplay:self->_cursorFrame.origin.x, self->_cursorFrame.origin.y, self->_cursorFrame.size.width, self->_cursorFrame.size.height];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(SSUICursorViewController *)self view];
  v14 = [v13 window];
  [v14 _convertRectFromSceneReferenceSpace:{v6, v8, v10, v12}];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = [(SSUICursorViewController *)self cursorView];
  [v23 resizeFrameForWindow:{v16, v18, v20, v22}];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v32 = [(SSUICursorViewController *)self view];
  [v32 convertRect:0 fromView:{v25, v27, v29, v31}];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;

  v41 = [(SSUICursorViewController *)self cursorView];
  [v41 setCursorFrame:v3 animated:{v34, v36, v38, v40}];
}

- (void)setCursorPath:(CGPath *)a3
{
  cursorPath = self->_cursorPath;
  if (a3)
  {
    v5 = CFRetain(a3);
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
  v6 = [(SSUICursorViewController *)self currentArrowImage];
  v7 = [(SSUICursorViewController *)self cursorView];
  [v7 setImage:v6];

  x = self->_cursorFrame.origin.x;
  y = self->_cursorFrame.origin.y;
  width = self->_cursorFrame.size.width;
  height = self->_cursorFrame.size.height;
  v12 = [(SSUICursorViewController *)self cursorView];
  [v12 setFrame:{x, y, width, height}];
}

- (void)setCursorPath:(CGPath *)a3 withColor:(int)a4 flipped:(BOOL)a5 rotated:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = *&a4;
  if ([(SSUICursorViewController *)self currentColor]!= a4)
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

    v16 = [(SSUICursorViewController *)self arrowImage];
    v17 = [SSUICursorViewController transformImage:v16 flip:1 rotate:0];
    [(SSUICursorViewController *)self setLeftarrowImage:v17];

    v18 = [(SSUICursorViewController *)self arrowImage];
    v19 = [SSUICursorViewController transformImage:v18 flip:1 rotate:1];
    [(SSUICursorViewController *)self setUpArrowImage:v19];

    v20 = [(SSUICursorViewController *)self arrowImage];
    v21 = [SSUICursorViewController transformImage:v20 flip:0 rotate:1];
    [(SSUICursorViewController *)self setDownArrowImage:v21];

    [(SSUICursorViewController *)self setCurrentColor:v8];
    goto LABEL_9;
  }

  if ([(SSUICursorViewController *)self flipped]!= v7 || [(SSUICursorViewController *)self rotated]!= v6)
  {
LABEL_9:
    if (v7)
    {
      if (v6)
      {
        [(SSUICursorViewController *)self upArrowImage];
      }

      else
      {
        [(SSUICursorViewController *)self leftarrowImage];
      }
    }

    else if (v6)
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

    [(SSUICursorViewController *)self setFlipped:v7];
    [(SSUICursorViewController *)self setRotated:v6];
  }

  [(SSUICursorViewController *)self setCursorPath:a3];
}

- (void)_updateCursorPath
{
  if (self->_cursorPath)
  {
    v3 = [UIBezierPath bezierPathWithCGPath:?];
    v8 = UIAccessibilitySceneReferencePathToScreenPath();

    v4 = [(SSUICursorViewController *)self view];
    v5 = UIAccessibilityPathForAccessibilityPath();
    v6 = [v5 CGPath];

    v7 = [(SSUICursorViewController *)self cursorView];
    [v7 setPath:v6];
  }

  else
  {
    v8 = [(SSUICursorViewController *)self cursorView];
    [v8 setPath:0];
  }
}

- (BOOL)cursorHidden
{
  v2 = [(SSUICursorViewController *)self view];
  v3 = [v2 isHidden];

  return v3;
}

- (void)setCursorHidden:(BOOL)a3
{
  v3 = a3;
  v4 = [(SSUICursorViewController *)self view];
  [v4 setHidden:v3];
}

- (void)viewDidLoad
{
  v3 = [UIView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(SSUICursorViewController *)self setView:v7];

  v8 = [[SSUICursorView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  [(SSUICursorViewController *)self setCursorView:v8];

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

  v15 = [(SSUICursorViewController *)self view];
  v16 = [(SSUICursorViewController *)self cursorView];
  [v15 addSubview:v16];

  v17 = [(SSUICursorViewController *)self view];
  v18 = [(SSUICursorViewController *)self slateView];
  [v17 addSubview:v18];

  v19 = [(SSUICursorViewController *)self view];
  v20 = [(SSUICursorViewController *)self perUserView];
  [v19 addSubview:v20];

  v21 = [(SSUICursorViewController *)self cursorView];
  [(SSUICursorViewController *)self setCurrentView:v21];

  v22.receiver = self;
  v22.super_class = SSUICursorViewController;
  [(SSUICursorViewController *)&v22 viewDidLoad];
}

- (void)tearDownViews
{
  v3 = [(SSUICursorViewController *)self view];

  if (v3)
  {
    [(SSUICursorViewController *)self setCurrentView:0];
    v4 = [(SSUICursorViewController *)self cursorView];
    [v4 removeFromSuperview];

    [(SSUICursorViewController *)self setCursorView:0];
    v5 = [(SSUICursorViewController *)self slateView];
    [v5 removeFromSuperview];

    [(SSUICursorViewController *)self setSlateView:0];
    v6 = [(SSUICursorViewController *)self perUserView];
    [v6 removeFromSuperview];

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