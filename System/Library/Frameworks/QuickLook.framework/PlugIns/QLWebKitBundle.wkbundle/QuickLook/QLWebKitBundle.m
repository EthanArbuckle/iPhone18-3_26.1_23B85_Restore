@interface QLWebKitBundle
- (id)_htmlSlideNodeAtIndex:(unint64_t)a3;
- (id)_htmlSlideNodes;
- (id)_selector;
- (id)thumbnailForValue:(id)a3;
- (void)boundsForPageAtIndex:(int64_t)a3 withCompletionBlock:(id)a4;
- (void)sizeForPageAtIndex:(int64_t)a3 withCompletionBlock:(id)a4;
- (void)thumbnailForPage:(int64_t)a3 size:(id)a4 withCompletionBlock:(id)a5;
- (void)thumbnailInformationWithCompletionBlock:(id)a3;
- (void)webProcessPlugIn:(id)a3 didCreateBrowserContextController:(id)a4;
- (void)webProcessPlugIn:(id)a3 initializeWithObject:(id)a4;
- (void)webProcessPlugIn:(id)a3 willDestroyBrowserContextController:(id)a4;
@end

@implementation QLWebKitBundle

- (void)webProcessPlugIn:(id)a3 initializeWithObject:(id)a4
{
  objc_storeStrong(&self->_plugInController, a3);
  v6 = a3;
  v9 = [v6 parameters];
  v7 = [v9 valueForKey:@"contentType"];
  contentType = self->_contentType;
  self->_contentType = v7;
}

- (void)webProcessPlugIn:(id)a3 didCreateBrowserContextController:(id)a4
{
  v5 = a4;
  v10 = [_WKRemoteObjectInterface remoteObjectInterfaceWithProtocol:&OBJC_PROTOCOL___QLWebKitThumbnailGenerator];
  v6 = [v5 _remoteObjectRegistry];
  [v6 registerExportedObject:self interface:v10];

  v7 = [_WKRemoteObjectInterface remoteObjectInterfaceWithProtocol:&OBJC_PROTOCOL___QLWebKitPaginator];
  v8 = [v5 _remoteObjectRegistry];
  [v8 registerExportedObject:self interface:v7];

  browserContextController = self->_browserContextController;
  self->_browserContextController = v5;
}

- (void)webProcessPlugIn:(id)a3 willDestroyBrowserContextController:(id)a4
{
  browserContextController = self->_browserContextController;
  self->_browserContextController = 0;
  _objc_release_x1();
}

- (void)thumbnailInformationWithCompletionBlock:(id)a3
{
  v13 = a3;
  v4 = [(QLWebKitBundle *)self _htmlSlideNodes];
  v5 = [v4 count];

  if (v5 <= 0)
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  else
  {
    v6 = [(QLWebKitBundle *)self _htmlSlideNodes];
    v7 = [v6 firstObject];
    v8 = [(QLWebKitBundle *)self thumbnailForValue:v7];
    [v8 size];
    width = v9;
    height = v11;
  }

  v13[2](v13, v5, width, height);
}

- (void)thumbnailForPage:(int64_t)a3 size:(id)a4 withCompletionBlock:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(QLWebKitBundle *)self _htmlSlideNodeAtIndex:a3];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 context];
    v13 = [WKWebProcessPlugInNodeHandle nodeHandleWithJSValue:v11 inContext:v12];

    [v8 CGSizeValue];
    if (v14 < v15)
    {
      v14 = v15;
    }

    v16 = [NSNumber numberWithDouble:v14];
    v17 = [v13 renderedImageWithOptions:128 width:v16];
    [v8 CGSizeValue];
    v19 = v18;
    v21 = v20;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_F78;
    v22[3] = &unk_40F0;
    v23 = v9;
    [v17 prepareThumbnailOfSize:v22 completionHandler:{v19, v21}];
  }

  else
  {
    (*(v9 + 2))(v9, 0);
  }
}

- (void)sizeForPageAtIndex:(int64_t)a3 withCompletionBlock:(id)a4
{
  v13 = a4;
  v6 = [(QLWebKitBundle *)self _htmlSlideNodeAtIndex:a3];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 context];
    v9 = [WKWebProcessPlugInNodeHandle nodeHandleWithJSValue:v7 inContext:v8];

    [v9 elementBounds];
    v12 = [NSValue valueWithCGSize:v10, v11];
    v13[2](v13, v12);
  }

  else
  {
    v13[2](v13, 0);
  }
}

- (void)boundsForPageAtIndex:(int64_t)a3 withCompletionBlock:(id)a4
{
  v11 = a4;
  if ([(NSArray *)self->_htmlSlideNodes count]>= a3)
  {
    v6 = [(QLWebKitBundle *)self _htmlSlideNodes];
    v7 = [v6 objectAtIndexedSubscript:a3];

    if (v7)
    {
      v8 = [v7 context];
      v9 = [WKWebProcessPlugInNodeHandle nodeHandleWithJSValue:v7 inContext:v8];

      [v9 elementBounds];
      v10 = [NSValue valueWithCGRect:?];
      v11[2](v11, v10);
    }

    else
    {
      v11[2](v11, 0);
    }
  }

  else
  {
    v11[2](v11, 0);
  }
}

- (id)thumbnailForValue:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = [v3 context];
    v5 = [WKWebProcessPlugInNodeHandle nodeHandleWithJSValue:v3 inContext:v4];

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
      v6 = [(WKWebProcessPlugInBrowserContextController *)browserContextController mainFrame];
      v7 = +[WKWebProcessPlugInScriptWorld normalWorld];
      v8 = [v6 jsContextForWorld:v7];

      v9 = [(QLWebKitBundle *)self _selector];
      v10 = [NSString stringWithFormat:@"document.querySelectorAll('%@')", v9];
      v11 = [v8 evaluateScript:v10];

      if (([v11 hasProperty:@"error"] & 1) != 0 || !objc_msgSend(v11, "hasProperty:", @"length"))
      {
        v3 = 0;
      }

      else
      {
        v12 = [v11 valueForProperty:@"length"];
        v13 = [v12 toUInt32];

        v14 = objc_opt_new();
        if (v13)
        {
          v15 = 0;
          v16 = v13;
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

- (id)_htmlSlideNodeAtIndex:(unint64_t)a3
{
  v5 = [(QLWebKitBundle *)self _htmlSlideNodes];
  v6 = [v5 count];

  if (v6 <= a3)
  {
    v8 = 0;
  }

  else
  {
    v7 = [(QLWebKitBundle *)self _htmlSlideNodes];
    v8 = [v7 objectAtIndexedSubscript:a3];
  }

  return v8;
}

@end