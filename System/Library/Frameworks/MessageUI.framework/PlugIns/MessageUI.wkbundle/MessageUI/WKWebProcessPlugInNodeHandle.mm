@interface WKWebProcessPlugInNodeHandle
- (ECMessageBodyNode)parentNode;
- (NSString)tagName;
- (id)getAttribute:(id)attribute;
@end

@implementation WKWebProcessPlugInNodeHandle

- (ECMessageBodyNode)parentNode
{
  frame = [(WKWebProcessPlugInNodeHandle *)self frame];
  v4 = +[WKWebProcessPlugInScriptWorld normalWorld];
  v5 = [frame jsNodeForNodeHandle:self inWorld:v4];

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
  frame = [(WKWebProcessPlugInNodeHandle *)self frame];
  v4 = +[WKWebProcessPlugInScriptWorld normalWorld];
  v5 = [frame jsNodeForNodeHandle:self inWorld:v4];

  v6 = [v5 objectForKeyedSubscript:@"tagName"];
  toString = [v6 toString];

  return toString;
}

- (id)getAttribute:(id)attribute
{
  attributeCopy = attribute;
  frame = [(WKWebProcessPlugInNodeHandle *)self frame];
  v6 = +[WKWebProcessPlugInScriptWorld normalWorld];
  v7 = [frame jsNodeForNodeHandle:self inWorld:v6];

  v12 = attributeCopy;
  v8 = [NSArray arrayWithObjects:&v12 count:1];
  v9 = [v7 invokeMethod:@"getAttribute" withArguments:v8];
  toString = [v9 toString];

  return toString;
}

@end