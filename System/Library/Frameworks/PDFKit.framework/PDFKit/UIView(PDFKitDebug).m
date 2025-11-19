@interface UIView(PDFKitDebug)
- (id)_dumpLayer;
- (void)_encodedLayerTree;
@end

@implementation UIView(PDFKitDebug)

- (void)_encodedLayerTree
{
  v1 = [a1 layer];
  if (v1)
  {
    v2 = CAEncodeLayerTree();
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

- (id)_dumpLayer
{
  v2 = [a1 _encodedLayerTree];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AE30] processInfo];
    v4 = NSTemporaryDirectory();
    v5 = MEMORY[0x1E696AEC0];
    v6 = [v3 processName];
    v7 = [v3 processIdentifier];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [v3 systemUptime];
    v11 = [v5 stringWithFormat:@"%@-%d-%@-%p-layer-%ld.caar", v6, v7, v9, a1, (v10 * 100000.0)];
    v12 = [v4 stringByAppendingPathComponent:v11];

    [v2 writeToFile:v12 atomically:1];
    NSLog(&cfstr_ViewLayerTreeD.isa, v12);
  }

  else
  {
    NSLog(&cfstr_NoLayerTreeToD.isa);
    v12 = 0;
  }

  return v12;
}

@end