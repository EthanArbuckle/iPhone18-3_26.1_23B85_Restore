@interface OpenTraceAction
- (OpenTraceAction)initWithFilePath:(id)a3;
- (OpenTraceAction)initWithFilePath:(id)a3 shouldStartNav:(BOOL)a4;
@end

@implementation OpenTraceAction

- (OpenTraceAction)initWithFilePath:(id)a3 shouldStartNav:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = OpenTraceAction;
  v8 = [(OpenTraceAction *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_filePath, a3);
    v9->_startNav = a4;
  }

  return v9;
}

- (OpenTraceAction)initWithFilePath:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = OpenTraceAction;
  v6 = [(OpenTraceAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_filePath, a3);
    v7->_startNav = 0;
  }

  return v7;
}

@end