@interface BSUIScreenshotLoader
- (BSUIScreenshotLoader)initWithScreenshots:(id)screenshots;
- (BSUIScreenshotLoaderDelegate)delegate;
- (id)imageForScreenshot:(id)screenshot;
- (void)startLoading;
@end

@implementation BSUIScreenshotLoader

- (BSUIScreenshotLoader)initWithScreenshots:(id)screenshots
{
  screenshotsCopy = screenshots;
  v22.receiver = self;
  v22.super_class = BSUIScreenshotLoader;
  v5 = [(BSUIScreenshotLoader *)&v22 init];
  if (v5)
  {
    v6 = objc_opt_new();
    screenshotsCache = v5->_screenshotsCache;
    v5->_screenshotsCache = v6;

    v8 = objc_opt_new();
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = screenshotsCopy;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        v13 = 0;
        do
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v18 + 1) + 8 * v13) url];
          [v8 addObject:v14];

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v11);
    }

    v15 = [v8 copy];
    screenshotURLs = v5->_screenshotURLs;
    v5->_screenshotURLs = v15;
  }

  return v5;
}

- (void)startLoading
{
  objc_initWeak(&location, self);
  for (i = 0; ; ++i)
  {
    screenshotURLs = [(BSUIScreenshotLoader *)self screenshotURLs];
    v5 = [screenshotURLs count];

    if (i >= v5)
    {
      break;
    }

    screenshotURLs2 = [(BSUIScreenshotLoader *)self screenshotURLs];
    v7 = [screenshotURLs2 objectAtIndexedSubscript:i];

    delegate = [(BSUIScreenshotLoader *)self delegate];
    [delegate screenshotLoader:self willLoadImageAtIndex:i fromURL:v7];

    v9 = +[NSURLSession sharedSession];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1BD38;
    v12[3] = &unk_387740;
    objc_copyWeak(v14, &location);
    v10 = v7;
    v13 = v10;
    v14[1] = i;
    v11 = [v9 dataTaskWithURL:v10 completionHandler:v12];

    [v11 resume];
    objc_destroyWeak(v14);
  }

  objc_destroyWeak(&location);
}

- (id)imageForScreenshot:(id)screenshot
{
  screenshotCopy = screenshot;
  screenshotsCache = [(BSUIScreenshotLoader *)self screenshotsCache];
  v6 = [screenshotCopy url];

  v7 = [screenshotsCache objectForKey:v6];

  return v7;
}

- (BSUIScreenshotLoaderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end