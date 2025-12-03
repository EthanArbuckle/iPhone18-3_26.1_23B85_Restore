@interface ASKNQMLParser
+ (void)initialize;
- (ASKNQMLParser)delegate;
- (ASKNQMLParser)init;
- (ASKNQMLParser)initWithString:(id)string;
- (void)parse;
- (void)reportErrorWithCode:(unint64_t)code userInfo:(id)info;
- (void)reportParseError:(_xmlError *)error;
- (void)set_parserContext:(_xmlParserCtxt *)context;
@end

@implementation ASKNQMLParser

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    xmlInitParser();
  }

  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___ASKNQMLParser;
  objc_msgSendSuper2(&v3, "initialize");
}

- (ASKNQMLParser)initWithString:(id)string
{
  stringCopy = string;
  v9.receiver = self;
  v9.super_class = ASKNQMLParser;
  v5 = [(ASKNQMLParser *)&v9 init];
  if (v5)
  {
    v6 = [stringCopy copy];
    string = v5->_string;
    v5->_string = v6;
  }

  return v5;
}

- (ASKNQMLParser)init
{
  [(ASKNQMLParser *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)reportErrorWithCode:(unint64_t)code userInfo:(id)info
{
  v6 = [NSError errorWithDomain:@"ShelfKit.NqmlParser.errorDomain" code:code userInfo:info];
  delegate = [(ASKNQMLParser *)self delegate];
  [delegate parser:self parseErrorOccurred:v6];
}

- (void)reportParseError:(_xmlError *)error
{
  if (error->level == XML_ERR_FATAL)
  {
    v9 = objc_alloc_init(NSMutableDictionary);
    v6 = [NSNumber numberWithInt:error->line];
    [v9 setObject:v6 forKeyedSubscript:@"ShelfKit.NqmlParser.errorLineNumber"];

    v7 = [NSNumber numberWithInt:error->int2];
    [v9 setObject:v7 forKeyedSubscript:@"ShelfKit.NqmlParser.errorColumn"];

    v8 = [[NSString alloc] initWithUTF8String:error->message];
    if (v8)
    {
      [v9 setObject:v8 forKeyedSubscript:NSLocalizedDescriptionKey];
    }

    [(ASKNQMLParser *)self reportErrorWithCode:error->code userInfo:v9];
  }
}

- (void)parse
{
  delegate = [(ASKNQMLParser *)self delegate];

  if (!delegate)
  {
    return;
  }

  string = [(ASKNQMLParser *)self string];
  uTF8String = [string UTF8String];

  if (!uTF8String || (-[ASKNQMLParser string](self, "string"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 lengthOfBytesUsingEncoding:4], v6, v7 >> 31))
  {
    selfCopy2 = self;
    v9 = -101;
LABEL_5:

    [(ASKNQMLParser *)selfCopy2 reportErrorWithCode:v9 userInfo:0];
    return;
  }

  MemoryParserCtxt = htmlCreateMemoryParserCtxt(uTF8String, v7);
  if (!MemoryParserCtxt)
  {
    selfCopy2 = self;
    v9 = -100;
    goto LABEL_5;
  }

  v11 = MemoryParserCtxt;
  sax = MemoryParserCtxt->sax;
  sax->startDocument = ASKNQMLParserStartDocument;
  sax->endDocument = ASKNQMLParserEndDocument;
  sax->error = ASKNQMLParserError;
  sax->startElement = ASKNQMLParserStartElement;
  sax->endElement = ASKNQMLParserEndElement;
  sax->characters = ASKNQMLParserCharacters;
  MemoryParserCtxt->userData = self;
  MemoryParserCtxt->encoding = "UTF-8";
  MemoryParserCtxt->charset = 1;
  htmlCtxtUseOptions(MemoryParserCtxt, 10305);
  [(ASKNQMLParser *)self set_parserContext:v11];
  if (htmlParseDocument(v11))
  {
    LastError = xmlCtxtGetLastError([(ASKNQMLParser *)self _parserContext]);
    if (LastError)
    {
      [(ASKNQMLParser *)self reportParseError:LastError];
    }
  }

  [(ASKNQMLParser *)self set_parserContext:0];
}

- (void)set_parserContext:(_xmlParserCtxt *)context
{
  parserContext = self->__parserContext;
  if (parserContext)
  {
    myDoc = parserContext->myDoc;
    if (myDoc)
    {
      xmlFreeDoc(myDoc);
      parserContext->myDoc = 0;
    }

    parserContext->encoding = 0;
    parserContext->userData = 0;
    htmlFreeParserCtxt(parserContext);
  }

  self->__parserContext = context;
}

- (ASKNQMLParser)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end