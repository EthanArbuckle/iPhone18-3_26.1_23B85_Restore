@interface HWFallbackGenerator
- (void)fallbackForData:(id)data inFileURL:(id)l completionBlock:(id)block;
@end

@implementation HWFallbackGenerator

- (void)fallbackForData:(id)data inFileURL:(id)l completionBlock:(id)block
{
  blockCopy = block;
  lCopy = l;
  v9 = [HWEncoding decodeHandwritingFromData:data];
  drawing = [v9 drawing];
  v11 = +[UIColor fallbackInkColor];
  v12 = [DKInkThumbnailRenderer imageForDrawing:drawing fittingInSize:v11 backingScale:1 color:184.0 highFidelity:94.0, 3.0];

  [v12 size];
  v15 = v13 == v14;
  v16 = v14 > 16.0;
  if (v13 <= 16.0)
  {
    v16 = 0;
  }

  v17 = v13 + 16.0;
  v18 = v14 + 16.0;
  if (v16 && v15)
  {
    v19 = v18;
  }

  else
  {
    v19 = 110.0;
  }

  if (v16 && v15)
  {
    v20 = v17;
  }

  else
  {
    v20 = 200.0;
  }

  [v12 size];
  v22 = v19 - (v21 + 8.0);
  v36.width = v20;
  v36.height = v19;
  UIGraphicsBeginImageContextWithOptions(v36, 1, 3.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  v24 = +[UIColor drawingCanvasBackgroundColor];
  CGContextSetFillColorWithColor(CurrentContext, [v24 CGColor]);

  v37.origin.x = 0.0;
  v37.origin.y = 0.0;
  v37.size.width = v20;
  v37.size.height = v19;
  CGContextFillRect(CurrentContext, v37);
  [v12 size];
  v26 = v25;
  [v12 size];
  [v12 drawInRect:{8.0, v22, v26, v27}];
  v28 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v29 = UIImageJPEGRepresentation(v28, 0.75);
  v30 = [lCopy URLByAppendingPathComponent:@"handwriting.jpg"];

  v34 = 0;
  v31 = [v29 writeToURL:v30 options:1 error:&v34];
  v32 = v34;
  if (v31)
  {
    v35 = v30;
    v33 = [NSArray arrayWithObjects:&v35 count:1];
    blockCopy[2](blockCopy, v33, 0, 1, 1);
  }

  else
  {
    (blockCopy)[2](blockCopy, 0, v32, 0, 1);
  }
}

@end