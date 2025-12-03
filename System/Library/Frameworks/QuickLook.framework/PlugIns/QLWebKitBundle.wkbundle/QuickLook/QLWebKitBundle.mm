@interface QLWebKitBundle
- (id)_htmlSlideNodeAtIndex:(unint64_t)index;
- (id)_htmlSlideNodes;
- (id)_selector;
- (id)thumbnailForValue:(id)value;
- (void)boundsForPageAtIndex:(int64_t)index withCompletionBlock:(id)block;
- (void)sizeForPageAtIndex:(int64_t)index withCompletionBlock:(id)block;
- (void)thumbnailForPage:(int64_t)page size:(id)size withCompletionBlock:(id)block;
- (void)thumbnailInformationWithCompletionBlock:(id)block;
- (void)webProcessPlugIn:(id)in didCreateBrowserContextController:(id)controller;
- (void)webProcessPlugIn:(id)in initializeWithObject:(id)object;
- (void)webProcessPlugIn:(id)in willDestroyBrowserContextController:(id)controller;
@end

@implementation QLWebKitBundle

- (void)webProcessPlugIn:(id)in initializeWithObject:(id)object
{
  objc_storeStrong(&self->_plugInController, in);
  inCopy = in;
  parameters = [inCopy parameters];
  v7 = [parameters valueForKey:@"contentType"];
  contentType = self->_contentType;
  self->_contentType = v7;
}

- (void)webProcessPlugIn:(id)in didCreateBrowserContextController:(id)controller
{
  controllerCopy = controller;
  v10 = [_WKRemoteObjectInterface remoteObjectInterfaceWithProtocol:&OBJC_PROTOCOL___QLWebKitThumbnailGenerator];
  _remoteObjectRegistry = [controllerCopy _remoteObjectRegistry];
  [_remoteObjectRegistry registerExportedObject:self interface:v10];

  v7 = [_WKRemoteObjectInterface remoteObjectInterfaceWithProtocol:&OBJC_PROTOCOL___QLWebKitPaginator];
  _remoteObjectRegistry2 = [controllerCopy _remoteObjectRegistry];
  [_remoteObjectRegistry2 registerExportedObject:self interface:v7];

  browserContextController = self->_browserContextController;
  self->_browserContextController = controllerCopy;
}

- (void)webProcessPlugIn:(id)in willDestroyBrowserContextController:(id)controller
{
  browserContextController = self->_browserContextController;
  self->_browserContextController = 0;
  _objc_release_x1();
}

- (void)thumbnailInformationWithCompletionBlock:(id)block
{
  blockCopy = block;
  _htmlSlideNodes = [(QLWebKitBundle *)self _htmlSlideNodes];
  v5 = [_htmlSlideNodes count];

  if (v5 <= 0)
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  else
  {
    _htmlSlideNodes2 = [(QLWebKitBundle *)self _htmlSlideNodes];
    firstObject = [_htmlSlideNodes2 firstObject];
    v8 = [(QLWebKitBundle *)self thumbnailForValue:firstObject];
    [v8 size];
    width = v9;
    height = v11;
  }

  blockCopy[2](blockCopy, v5, width, height);
}

- (void)thumbnailForPage:(int64_t)page size:(id)size withCompletionBlock:(id)block
{
  sizeCopy = size;
  blockCopy = block;
  v10 = [(QLWebKitBundle *)self _htmlSlideNodeAtIndex:page];
  v11 = v10;
  if (v10)
  {
    context = [v10 context];
    v13 = [WKWebProcessPlugInNodeHandle nodeHandleWithJSValue:v11 inContext:context];

    [sizeCopy CGSizeValue];
    if (v14 < v15)
    {
      v14 = v15;
    }

    v16 = [NSNumber numberWithDouble:v14];
    v17 = [v13 renderedImageWithOptions:128 width:v16];
    [sizeCopy CGSizeValue];
    v19 = v18;
    v21 = v20;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_F78;
    v22[3] = &unk_40F0;
    v23 = blockCopy;
    [v17 prepareThumbnailOfSize:v22 completionHandler:{v19, v21}];
  }

  else
  {
    (*(blockCopy + 2))(blockCopy, 0);
  }
}

- (void)sizeForPageAtIndex:(int64_t)index withCompletionBlock:(id)block
{
  blockCopy = block;
  v6 = [(QLWebKitBundle *)self _htmlSlideNodeAtIndex:index];
  v7 = v6;
  if (v6)
  {
    context = [v6 context];
    v9 = [WKWebProcessPlugInNodeHandle nodeHandleWithJSValue:v7 inContext:context];

    [v9 elementBounds];
    v12 = [NSValue valueWithCGSize:v10, v11];
    blockCopy[2](blockCopy, v12);
  }

  else
  {
    blockCopy[2](blockCopy, 0);
  }
}

- (void)boundsForPageAtIndex:(int64_t)index withCompletionBlock:(id)block
{
  blockCopy = block;
  if ([(NSArray *)self->_htmlSlideNodes count]>= index)
  {
    _htmlSlideNodes = [(QLWebKitBundle *)self _htmlSlideNodes];
    v7 = [_htmlSlideNodes objectAtIndexedSubscript:index];

    if (v7)
    {
      context = [v7 context];
      v9 = [WKWebProcessPlugInNodeHandle nodeHandleWithJSValue:v7 inContext:context];

      [v9 elementBounds];
      v10 = [NSValue valueWithCGRect:?];
      blockCopy[2](blockCopy, v10);
    }

    else
    {
      blockCopy[2](blockCopy, 0);
    }
  }

  else
  {
    blockCopy[2](blockCopy, 0);
  }
}

- (id)thumbnailForValue:(id)value
{
  if (value)
  {
    valueCopy = value;
    context = [valueCopy context];
    v5 = [WKWebProcessPlugInNodeHandle nodeHandleWithJSValue:valueCopy inContext:context];

    v6 = [v5 renderedImageWithOptions:128];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_selector
{
  v2 = self->_contentType;
  if ([(NSString *)v2 caseInsensitiveCompare:@"com.microsoft.powerpoint.ppt"]&& [(NSString *)v2 caseInsensitiveCompare:@"com.microsoft.powerpoint.pps"]&& [(NSString *)v2 caseInsensitiveCompare:@"com.microsoft.powerpoint.pot"]&& [(NSString *)v2 caseInsensitiveCompare:@"org.openxmlformats.presentationml.presentation"]&& [(NSString *)v2 caseInsensitiveCompare:@"org.openxmlformats.presentationml.template.macroenabled"]&& [(NSString *)v2 caseInsensitiveCompare:@"org.openxmlformats.presentationml.template"]&& [(NSString *)v2 caseInsensitiveCompare:@"org.openxmlformats.presentationml.presentation.macroenabled"]&& [(NSString *)v2 caseInsensitiveCompare:@"org.openxmlformats.presentationml.slideshow"]&& [(NSString *)v2 caseInsensitiveCompare:@"org.openxmlformats.presentationml.slideshow.macroenabled"])
  {
    if ([(NSString *)v2 caseInsensitiveCompare:@"com.apple.iwork.keynote.key"]&& [(NSString *)v2 caseInsensitiveCompare:@"com.apple.iwork.keynote.sffkey"]&& [(NSString *)v2 caseInsensitiveCompare:@"com.apple.iwork.keynote.kth"]&& [(NSString *)v2 caseInsensitiveCompare:@"com.apple.iwork.keynote.sffkth"])
    {
      if ([(NSString *)v2 caseInsensitiveCompare:@"com.apple.iwork.pages.pages"]&& [(NSString *)v2 caseInsensitiveCompare:@"com.apple.iwork.pages.sffpages"])
      {
        v3 = @"body > div";
        if ([(NSString *)v2 caseInsensitiveCompare:@"com.apple.iwork.pages.template"]&& [(NSString *)v2 caseInsensitiveCompare:@"com.apple.iwork.pages.sfftemplate"])
        {
          v3 = &stru_43B0;
        }
      }

      else
      {
        v3 = @"body > div";
      }
    }

    else
    {
      v3 = @"body > div[class]";
    }
  }

  else
  {
    v3 = @"body > div.slide";
  }

  return v3;
}

- (id)_htmlSlideNodes
{
  htmlSlideNodes = self->_htmlSlideNodes;
  if (htmlSlideNodes)
  {
    v3 = htmlSlideNodes;
  }

  else
  {
    browserContextController = self->_browserContextController;
    if (browserContextController)
    {
      mainFrame = [(WKWebProcessPlugInBrowserContextController *)browserContextController mainFrame];
      v7 = +[WKWebProcessPlugInScriptWorld normalWorld];
      v8 = [mainFrame jsContextForWorld:v7];

      _selector = [(QLWebKitBundle *)self _selector];
      v10 = [NSString stringWithFormat:@"document.querySelectorAll('%@')", _selector];
      v11 = [v8 evaluateScript:v10];

      if (([v11 hasProperty:@"error"] & 1) != 0 || !objc_msgSend(v11, "hasProperty:", @"length"))
      {
        v3 = 0;
      }

      else
      {
        v12 = [v11 valueForProperty:@"length"];
        toUInt32 = [v12 toUInt32];

        v14 = objc_opt_new();
        if (toUInt32)
        {
          v15 = 0;
          v16 = toUInt32;
          do
          {
            v17 = [v11 objectAtIndexedSubscript:v15];
            [(NSArray *)v14 addObject:v17];

            ++v15;
          }

          while (v16 != v15);
        }

        v18 = self->_htmlSlideNodes;
        self->_htmlSlideNodes = v14;
        v19 = v14;

        v3 = self->_htmlSlideNodes;
      }
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (id)_htmlSlideNodeAtIndex:(unint64_t)index
{
  _htmlSlideNodes = [(QLWebKitBundle *)self _htmlSlideNodes];
  v6 = [_htmlSlideNodes count];

  if (v6 <= index)
  {
    v8 = 0;
  }

  else
  {
    _htmlSlideNodes2 = [(QLWebKitBundle *)self _htmlSlideNodes];
    v8 = [_htmlSlideNodes2 objectAtIndexedSubscript:index];
  }

  return v8;
}

@end