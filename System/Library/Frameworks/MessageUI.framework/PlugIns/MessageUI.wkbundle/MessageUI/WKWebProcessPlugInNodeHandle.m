@interface WKWebProcessPlugInNodeHandle
- (ECMessageBodyNode)parentNode;
- (NSString)tagName;
- (id)getAttribute:(id)a3;
@end

@implementation WKWebProcessPlugInNodeHandle

- (ECMessageBodyNode)parentNode
{
  v3 = [(WKWebProcessPlugInNodeHandle *)self frame];
  v4 = +[WKWebProcessPlugInScriptWorld normalWorld];
  v5 = [v3 jsNodeForNodeHandle:self inWorld:v4];

  v6 = [v5 objectForKeyedSubscript:@"parentNode"];
  if ([v6 isNull])
  {
    v7 = 0;
  }

  else
  {
    v8 = +[JSContext currentContext];
    v7 = [WKWebProcessPlugInNodeHandle nodeHandleWithJSValue:v6 inContext:v8];
  }

  return v7;
}

- (NSString)tagName
{
  v3 = [(WKWebProcessPlugInNodeHandle *)self frame];
  v4 = +[WKWebProcessPlugInScriptWorld normalWorld];
  v5 = [v3 jsNodeForNodeHandle:self inWorld:v4];

  v6 = [v5 objectForKeyedSubscript:@"tagName"];
  v7 = [v6 toString];

  return v7;
}

- (id)getAttribute:(id)a3
{
  v4 = a3;
  v5 = [(WKWebProcessPlugInNodeHandle *)self frame];
  v6 = +[WKWebProcessPlugInScriptWorld normalWorld];
  v7 = [v5 jsNodeForNodeHandle:self inWorld:v6];

  v12 = v4;
  v8 = [NSArray arrayWithObjects:&v12 count:1];
  v9 = [v7 invokeMethod:@"getAttribute" withArguments:v8];
  v10 = [v9 toString];

  return v10;
}

@end