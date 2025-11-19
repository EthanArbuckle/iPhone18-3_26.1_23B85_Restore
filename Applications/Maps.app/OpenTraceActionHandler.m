@interface OpenTraceActionHandler
+ (void)performAction:(id)a3 inContext:(id)a4;
@end

@implementation OpenTraceActionHandler

+ (void)performAction:(id)a3 inContext:(id)a4
{
  v11 = a3;
  v5 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v11;
    v7 = [v6 filePath];

    if (v7)
    {
      v8 = [v5 chrome];
      v9 = [v6 filePath];
      [v8 debugController:0 choseTraceAtPath:v9 startNav:{objc_msgSend(v6, "startNav")}];
    }

    else
    {
      v8 = [UIAlertController alertControllerWithTitle:@"Alert" message:@"Unable to migrate trace file!" preferredStyle:1];
      v10 = [UIAlertAction actionWithTitle:@"OK" style:0 handler:0];
      [v8 addAction:v10];

      v9 = [v5 chrome];
      [v9 presentViewController:v8 animated:1 completion:0];
    }
  }
}

@end