@interface OpenTraceActionHandler
+ (void)performAction:(id)action inContext:(id)context;
@end

@implementation OpenTraceActionHandler

+ (void)performAction:(id)action inContext:(id)context
{
  actionCopy = action;
  contextCopy = context;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = actionCopy;
    filePath = [v6 filePath];

    if (filePath)
    {
      chrome = [contextCopy chrome];
      filePath2 = [v6 filePath];
      [chrome debugController:0 choseTraceAtPath:filePath2 startNav:{objc_msgSend(v6, "startNav")}];
    }

    else
    {
      chrome = [UIAlertController alertControllerWithTitle:@"Alert" message:@"Unable to migrate trace file!" preferredStyle:1];
      v10 = [UIAlertAction actionWithTitle:@"OK" style:0 handler:0];
      [chrome addAction:v10];

      filePath2 = [contextCopy chrome];
      [filePath2 presentViewController:chrome animated:1 completion:0];
    }
  }
}

@end