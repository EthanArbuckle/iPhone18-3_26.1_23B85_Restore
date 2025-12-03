@interface OpenTraceAction
- (OpenTraceAction)initWithFilePath:(id)path;
- (OpenTraceAction)initWithFilePath:(id)path shouldStartNav:(BOOL)nav;
@end

@implementation OpenTraceAction

- (OpenTraceAction)initWithFilePath:(id)path shouldStartNav:(BOOL)nav
{
  pathCopy = path;
  v11.receiver = self;
  v11.super_class = OpenTraceAction;
  v8 = [(OpenTraceAction *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_filePath, path);
    v9->_startNav = nav;
  }

  return v9;
}

- (OpenTraceAction)initWithFilePath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = OpenTraceAction;
  v6 = [(OpenTraceAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_filePath, path);
    v7->_startNav = 0;
  }

  return v7;
}

@end