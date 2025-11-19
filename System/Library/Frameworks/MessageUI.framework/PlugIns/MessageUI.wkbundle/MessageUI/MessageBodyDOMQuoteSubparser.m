@interface MessageBodyDOMQuoteSubparser
- (void)dealloc;
- (void)messageBodyParser:(id)a3 foundMessageBodyElement:(id)a4;
@end

@implementation MessageBodyDOMQuoteSubparser

- (void)messageBodyParser:(id)a3 foundMessageBodyElement:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[JSContext currentContext];
  v9 = [JSValue valueWithObject:self inContext:v8];
  v12[0] = v6;
  v12[1] = v7;
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