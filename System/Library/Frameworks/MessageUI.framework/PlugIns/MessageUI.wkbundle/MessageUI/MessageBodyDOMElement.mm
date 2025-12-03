@interface MessageBodyDOMElement
- (id)copyConsumableNodesAndAppendInnerTextToStringAccumulator:(id)accumulator;
- (id)jsNodes;
- (void)setJSNodes:(id)nodes;
@end

@implementation MessageBodyDOMElement

- (id)copyConsumableNodesAndAppendInnerTextToStringAccumulator:(id)accumulator
{
  accumulatorCopy = accumulator;
  parser = [(MessageBodyDOMElement *)self parser];
  v6 = [parser _copyConsumableNodesFromBodyElement:self andAppendInnerTextToStringAccumulator:accumulatorCopy];

  return v6;
}

- (id)jsNodes
{
  v3 = +[WKWebProcessPlugInScriptWorld normalWorld];
  nodes = [(MessageBodyDOMElement *)self nodes];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_61D4;
  v8[3] = &unk_186D0;
  v5 = v3;
  v9 = v5;
  v6 = [nodes ef_map:v8];

  return v6;
}

- (void)setJSNodes:(id)nodes
{
  nodesCopy = nodes;
  v4 = [nodesCopy objectForKeyedSubscript:@"length"];
  toUInt32 = [v4 toUInt32];

  v6 = toUInt32;
  v7 = [[NSMutableArray alloc] initWithCapacity:toUInt32];
  v8 = +[JSContext currentContext];
  if (toUInt32)
  {
    v9 = 0;
    do
    {
      v10 = [nodesCopy objectAtIndexedSubscript:v9];
      v11 = [WKWebProcessPlugInNodeHandle nodeHandleWithJSValue:v10 inContext:v8];
      [v7 addObject:v11];

      ++v9;
    }

    while (v6 != v9);
  }

  [(MessageBodyDOMElement *)self setNodes:v7];
}

@end