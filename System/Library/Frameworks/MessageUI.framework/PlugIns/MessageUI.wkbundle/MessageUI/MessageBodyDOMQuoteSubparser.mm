@interface MessageBodyDOMQuoteSubparser
- (void)dealloc;
- (void)messageBodyParser:(id)parser foundMessageBodyElement:(id)element;
@end

@implementation MessageBodyDOMQuoteSubparser

- (void)messageBodyParser:(id)parser foundMessageBodyElement:(id)element
{
  parserCopy = parser;
  elementCopy = element;
  v8 = +[JSContext currentContext];
  v9 = [JSValue valueWithObject:self inContext:v8];
  v12[0] = parserCopy;
  v12[1] = elementCopy;
  v10 = [NSArray arrayWithObjects:v12 count:2];
  v11 = [v9 invokeMethod:@"messageBodyParserFoundMessageBodyElement" withArguments:v10];
}

- (void)dealloc
{
  [(ECMessageBodyElement_Private *)self->_lastUnindentedElement releaseExternally];
  [(ECMessageBodyElement_Private *)self->_lastUnindentedAttributionHint releaseExternally];
  v3.receiver = self;
  v3.super_class = MessageBodyDOMQuoteSubparser;
  [(MessageBodyDOMQuoteSubparser *)&v3 dealloc];
}

@end