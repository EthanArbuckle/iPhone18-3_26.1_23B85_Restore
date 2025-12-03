@interface FKARootNonInteractiveViewController
- (void)updateTypeaheadNamesForQueryString:(id)string;
@end

@implementation FKARootNonInteractiveViewController

- (void)updateTypeaheadNamesForQueryString:(id)string
{
  stringCopy = string;
  typeaheadNamesViewController = [(FKARootNonInteractiveViewController *)self typeaheadNamesViewController];

  if (typeaheadNamesViewController)
  {
    if ([stringCopy length])
    {
      v6 = dispatch_get_global_queue(0, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000DDF4;
      block[3] = &unk_100028790;
      block[4] = self;
      v8 = stringCopy;
      dispatch_async(v6, block);
    }

    else
    {
      AXPerformBlockOnMainThread();
    }
  }
}

@end