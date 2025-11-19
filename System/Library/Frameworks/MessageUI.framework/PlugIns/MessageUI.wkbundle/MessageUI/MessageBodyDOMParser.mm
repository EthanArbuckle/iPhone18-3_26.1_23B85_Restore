@interface MessageBodyDOMParser
- (BOOL)parse;
- (id)_copyConsumableNodesFromBodyElement:(id)a3 andAppendInnerTextToStringAccumulator:(id)a4;
- (id)_initWithDocument:(id)a3;
- (id)_jsParser;
- (void)enqueueParagraphJSNode:(id)a3 withTagName:(id)a4;
@end

@implementation MessageBodyDOMParser

- (id)_initWithDocument:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MessageBodyDOMParser;
  v5 = [(MessageBodyDOMParser *)&v9 init];
  if (v5)
  {
    v6 = [JSManagedValue managedValueWithValue:v4];
    document = v5->_document;
    v5->_document = v6;
  }

  return v5;
}

- (id)_jsParser
{
  v3 = +[JSContext currentContext];
  v4 = [JSValue valueWithObject:self inContext:v3];

  return v4;
}

- (BOOL)parse
{
  v2 = [(MessageBodyDOMParser *)self _jsParser];
  v3 = [v2 invokeMethod:@"parse" withArguments:&__NSArray0__struct];
  v4 = [v3 toBool];

  return v4;
}

- (id)_copyConsumableNodesFromBodyElement:(id)a3 andAppendInnerTextToStringAccumulator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MessageBodyDOMParser *)self _jsParser];
  v13[0] = v6;
  v13[1] = v7;
  v9 = [NSArray arrayWithObjects:v13 count:2];
  v10 = [v8 invokeMethod:@"copyConsumableNodesAndAppendInnerTextToStringAccumulator" withArguments:v9];
  v11 = [v10 toArray];

  return v11;
}

- (void)enqueueParagraphJSNode:(id)a3 withTagName:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = +[JSContext currentContext];
  v8 = [WKWebProcessPlugInNodeHandle nodeHandleWithJSValue:v9 inContext:v7];
  [(MessageBodyDOMParser *)self enqueueParagraphNode:v8 withTagName:v6];
}

@end