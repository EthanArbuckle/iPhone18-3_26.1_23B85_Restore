@interface MessageBodyDOMElement
- (id)copyConsumableNodesAndAppendInnerTextToStringAccumulator:(id)a3;
- (id)jsNodes;
- (void)setJSNodes:(id)a3;
@end

@implementation MessageBodyDOMElement

- (id)copyConsumableNodesAndAppendInnerTextToStringAccumulator:(id)a3
{
  v4 = a3;
  v5 = [(MessageBodyDOMElement *)self parser];
  v6 = [v5 _copyConsumableNodesFromBodyElement:self andAppendInnerTextToStringAccumulator:v4];

  return v6;
}

- (id)jsNodes
{
  v3 = +[WKWebProcessPlugInScriptWorld normalWorld];
  v4 = [(MessageBodyDOMElement *)self nodes];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_61D4;
  v8[3] = &unk_186D0;
  v5 = v3;
  v9 = v5;
  v6 = [v4 ef_map:v8];

  return v6;
}

- (void)setJSNodes:(id)a3
{
  v12 = a3;
  v4 = [v12 objectForKeyedSubscript:@"length"];
  v5 = [v4 toUInt32];

  v6 = v5;
  v7 = [[NSMutableArray alloc] initWithCapacity:v5];
  v8 = +[JSContext currentContext];
  if (v5)
  {
    v9 = 0;
    do
    {
      v10 = [v12 objectAtIndexedSubscript:v9];
      v11 = [WKWebProcessPlugInNodeHandle nodeHandleWithJSValue:v10 inContext:v8];
      [v7 addObject:v11];

      ++v9;
    }

    while (v6 != v9);
  }

  [(MessageBodyDOMElement *)self setNodes:v7];
}

@end