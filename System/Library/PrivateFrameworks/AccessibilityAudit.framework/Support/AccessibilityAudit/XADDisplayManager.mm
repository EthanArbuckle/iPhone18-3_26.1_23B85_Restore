@interface XADDisplayManager
+ (id)sharedManager;
- (CGRect)_currentCursorFrame;
- (XADDisplayManager)init;
- (void)dealloc;
- (void)hideVisualsSynchronously;
- (void)setCursorFrameForElement:(id)element;
- (void)setCursorStyle:(unint64_t)style;
@end

@implementation XADDisplayManager

+ (id)sharedManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007F88;
  block[3] = &unk_100018878;
  block[4] = self;
  if (qword_10001DD78 != -1)
  {
    dispatch_once(&qword_10001DD78, block);
  }

  v2 = qword_10001DD70;

  return v2;
}

- (XADDisplayManager)init
{
  v8.receiver = self;
  v8.super_class = XADDisplayManager;
  v2 = [(XADDisplayManager *)&v8 init];
  if (v2)
  {
    v3 = [[AXUIClient alloc] initWithIdentifier:@"AXAuditAXUIClientIdentifier" serviceBundleName:@"AXAuditAXUIService"];
    uiClient = v2->__uiClient;
    v2->__uiClient = v3;

    [(AXUIClient *)v2->__uiClient setDelegate:v2];
    v5 = objc_opt_new();
    lock = v2->__lock;
    v2->__lock = v5;
  }

  return v2;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = XADDisplayManager;
  [(XADDisplayManager *)&v2 dealloc];
}

- (void)setCursorStyle:(unint64_t)style
{
  v7 = @"frameStyle";
  v4 = [NSNumber numberWithUnsignedLongLong:style];
  v8 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];

  _uiClient = [(XADDisplayManager *)self _uiClient];
  [_uiClient sendAsynchronousMessage:v5 withIdentifier:2 targetAccessQueue:0 completion:0];

  [(XADDisplayManager *)self set_forceRefreshOnNextUpdate:1];
}

- (void)hideVisualsSynchronously
{
  v3 = dispatch_semaphore_create(0);
  v4 = dispatch_time(0, 10000000000);
  v11 = @"frame";
  v13.origin.x = CGRectZero.origin.x;
  v13.origin.y = CGRectZero.origin.y;
  v13.size.width = CGRectZero.size.width;
  v13.size.height = CGRectZero.size.height;
  v5 = NSStringFromRect(v13);
  v12 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];

  _uiClient = [(XADDisplayManager *)self _uiClient];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100008668;
  v9[3] = &unk_100018AE0;
  v10 = v3;
  v8 = v3;
  [_uiClient sendAsynchronousMessage:v6 withIdentifier:1 targetAccessQueue:0 completion:v9];

  dispatch_semaphore_wait(v8, v4);
}

- (void)setCursorFrameForElement:(id)element
{
  elementCopy = element;
  v5 = elementCopy;
  if (elementCopy)
  {
    [elementCopy clearCachedFrame:1 cachedVisibleFrame:1];
    uiElement = [v5 uiElement];
    [uiElement updateCache:2003];

    if ([v5 path])
    {
      uiElement2 = [v5 uiElement];
      [uiElement2 updateCache:2042];
    }

    [v5 frame];
    x = v8;
    y = v10;
    width = v12;
    height = v14;
  }

  else
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  v16 = v5;
  uiElement3 = [v16 uiElement];
  v18 = [uiElement3 numberWithAXAttribute:2021];
  unsignedIntValue = [v18 unsignedIntValue];

  if (!unsignedIntValue)
  {
    v20 = [v16 elementForAttribute:5002];
    if (v20)
    {
      v21 = v20;
      do
      {
        uiElement4 = [v21 uiElement];
        v23 = [uiElement4 numberWithAXAttribute:2021];
        unsignedIntValue = [v23 unsignedIntValue];

        if (unsignedIntValue)
        {
          break;
        }

        v24 = [v21 elementForAttribute:5002];

        v21 = v24;
      }

      while (v24);
    }

    else
    {
      unsignedIntValue = 0;
    }
  }

  uiElement5 = [v16 uiElement];
  v26 = [uiElement5 BOOLWithAXAttribute:2098];

  if (v26)
  {
    v27 = +[AXElement systemWideElement];
    valuePtr = x;
    v33 = y;
    v34 = width;
    v35 = height;
    v28 = AXValueCreate(kAXValueTypeCGRect, &valuePtr);
    uiElement6 = [v27 uiElement];
    v30 = [NSNumber numberWithUnsignedInteger:unsignedIntValue];
    v31 = [uiElement6 objectWithAXAttribute:91505 parameter:{+[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", v28, v30, 0)}];

    if (v31)
    {
      AXValueGetValue(v31, kAXValueTypeCGRect, &valuePtr);
    }

    if (v28)
    {
      CFRelease(v28);
    }

    x = valuePtr;
    y = v33;
    width = v34;
    height = v35;
  }

  -[XADDisplayManager setCursorFrame:withPath:withContextId:element:forceRefresh:](self, "setCursorFrame:withPath:withContextId:element:forceRefresh:", [v16 path], unsignedIntValue, v16, -[XADDisplayManager _forceRefreshOnNextUpdate](self, "_forceRefreshOnNextUpdate"), x, y, width, height);
  [(XADDisplayManager *)self set_forceRefreshOnNextUpdate:0];
}

- (CGRect)_currentCursorFrame
{
  x = self->__currentCursorFrame.origin.x;
  y = self->__currentCursorFrame.origin.y;
  width = self->__currentCursorFrame.size.width;
  height = self->__currentCursorFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end