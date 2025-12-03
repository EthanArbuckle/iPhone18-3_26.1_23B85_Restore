@interface MessageBodyDOMParser
- (BOOL)parse;
- (id)_copyConsumableNodesFromBodyElement:(id)element andAppendInnerTextToStringAccumulator:(id)accumulator;
- (id)_initWithDocument:(id)document;
- (id)_jsParser;
- (void)enqueueParagraphJSNode:(id)node withTagName:(id)name;
@end

@implementation MessageBodyDOMParser

- (id)_initWithDocument:(id)document
{
  documentCopy = document;
  v9.receiver = self;
  v9.super_class = MessageBodyDOMParser;
  v5 = [(MessageBodyDOMParser *)&v9 init];
  if (v5)
  {
    v6 = [JSManagedValue managedValueWithValue:documentCopy];
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
  _jsParser = [(MessageBodyDOMParser *)self _jsParser];
  v3 = [_jsParser invokeMethod:@"parse" withArguments:&__NSArray0__struct];
  toBool = [v3 toBool];

  return toBool;
}

- (id)_copyConsumableNodesFromBodyElement:(id)element andAppendInnerTextToStringAccumulator:(id)accumulator
{
  elementCopy = element;
  accumulatorCopy = accumulator;
  _jsParser = [(MessageBodyDOMParser *)self _jsParser];
  v13[0] = elementCopy;
  v13[1] = accumulatorCopy;
  v9 = [NSArray arrayWithObjects:v13 count:2];
  v10 = [_jsParser invokeMethod:@"copyConsumableNodesAndAppendInnerTextToStringAccumulator" withArguments:v9];
  toArray = [v10 toArray];

  return toArray;
}

- (void)enqueueParagraphJSNode:(id)node withTagName:(id)name
{
  nodeCopy = node;
  nameCopy = name;
  v7 = +[JSContext currentContext];
  v8 = [WKWebProcessPlugInNodeHandle nodeHandleWithJSValue:nodeCopy inContext:v7];
  [(MessageBodyDOMParser *)self enqueueParagraphNode:v8 withTagName:nameCopy];
}

@end