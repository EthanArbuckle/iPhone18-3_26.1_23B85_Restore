@interface ASKNQMLParser
+ (void)initialize;
- (ASKNQMLParser)delegate;
- (ASKNQMLParser)init;
- (ASKNQMLParser)initWithString:(id)a3;
- (void)parse;
- (void)reportErrorWithCode:(unint64_t)a3 userInfo:(id)a4;
- (void)reportParseError:(_xmlError *)a3;
- (void)set_parserContext:(_xmlParserCtxt *)a3;
@end

@implementation ASKNQMLParser

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    xmlInitParser();
  }

  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS___ASKNQMLParser;
  objc_msgSendSuper2(&v3, "initialize");
}

- (ASKNQMLParser)initWithString:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ASKNQMLParser;
  v5 = [(ASKNQMLParser *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
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

- (void)reportErrorWithCode:(unint64_t)a3 userInfo:(id)a4
{
  v6 = [NSError errorWithDomain:@"ShelfKit.NqmlParser.errorDomain" code:a3 userInfo:a4];
  v5 = [(ASKNQMLParser *)self delegate];
  [v5 parser:self parseErrorOccurred:v6];
}

- (void)reportParseError:(_xmlError *)a3
{
  if (a3->level == XML_ERR_FATAL)
  {
    v9 = objc_alloc_init(NSMutableDictionary);
    v6 = [NSNumber numberWithInt:a3->line];
    [v9 setObject:v6 forKeyedSubscript:@"ShelfKit.NqmlParser.errorLineNumber"];

    v7 = [NSNumber numberWithInt:a3->int2];
    [v9 setObject:v7 forKeyedSubscript:@"ShelfKit.NqmlParser.errorColumn"];

    v8 = [[NSString alloc] initWithUTF8String:a3->message];
    if (v8)
    {
      [v9 setObject:v8 forKeyedSubscript:NSLocalizedDescriptionKey];
    }

    [(ASKNQMLParser *)self reportErrorWithCode:a3->code userInfo:v9];
  }
}

- (void)parse
{
  v3 = [(ASKNQMLParser *)self delegate];

  if (!v3)
  {
    return;
  }

  v4 = [(ASKNQMLParser *)self string];
  v5 = [v4 UTF8String];

  if (!v5 || (-[ASKNQMLParser string](self, "string"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 lengthOfBytesUsingEncoding:4], v6, v7 >> 31))
  {
    v8 = self;
    v9 = -101;
LABEL_5:

    [(ASKNQMLParser *)v8 reportErrorWithCode:v9 userInfo:0];
    return;
  }

  MemoryParserCtxt = htmlCreateMemoryParserCtxt(v5, v7);
  if (!MemoryParserCtxt)
  {
    v8 = self;
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

- (void)set_parserContext:(_xmlParserCtxt *)a3
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

  self->__parserContext = a3;
}

- (ASKNQMLParser)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end