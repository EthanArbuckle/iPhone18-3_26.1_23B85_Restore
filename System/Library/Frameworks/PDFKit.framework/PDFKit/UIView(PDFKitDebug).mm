@interface UIView(PDFKitDebug)
- (id)_dumpLayer;
- (void)_encodedLayerTree;
@end

@implementation UIView(PDFKitDebug)

- (void)_encodedLayerTree
{
  layer = [self layer];
  if (layer)
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
  _encodedLayerTree = [self _encodedLayerTree];
  if (_encodedLayerTree)
  {
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    v4 = NSTemporaryDirectory();
    v5 = MEMORY[0x1E696AEC0];
    processName = [processInfo processName];
    processIdentifier = [processInfo processIdentifier];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [processInfo systemUptime];
    v11 = [v5 stringWithFormat:@"%@-%d-%@-%p-layer-%ld.caar", processName, processIdentifier, v9, self, (v10 * 100000.0)];
    v12 = [v4 stringByAppendingPathComponent:v11];

    [_encodedLayerTree writeToFile:v12 atomically:1];
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