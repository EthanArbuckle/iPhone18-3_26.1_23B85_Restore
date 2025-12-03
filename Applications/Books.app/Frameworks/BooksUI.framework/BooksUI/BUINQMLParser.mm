@interface BUINQMLParser
+ (void)initialize;
- (BUINQMLParser)delegate;
- (BUINQMLParser)init;
- (BUINQMLParser)initWithString:(id)string;
- (void)parse;
- (void)reportErrorWithCode:(unint64_t)code userInfo:(id)info;
- (void)reportParseError:(_xmlError *)error;
@end

@implementation BUINQMLParser

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    xmlInitParser();
  }

  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___BUINQMLParser;
  objc_msgSendSuper2(&v3, "initialize");
}

- (BUINQMLParser)initWithString:(id)string
{
  stringCopy = string;
  v9.receiver = self;
  v9.super_class = BUINQMLParser;
  v5 = [(BUINQMLParser *)&v9 init];
  if (v5)
  {
    v6 = [stringCopy copy];
    string = v5->_string;
    v5->_string = v6;
  }

  return v5;
}

- (BUINQMLParser)init
{
  [(BUINQMLParser *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)reportErrorWithCode:(unint64_t)code userInfo:(id)info
{
  v6 = [NSError errorWithDomain:@"BooksUI.NQMLParser.errorDomain" code:code userInfo:info];
  delegate = [(BUINQMLParser *)self delegate];
  [delegate parser:self parseErrorOccurred:v6];
}

- (void)reportParseError:(_xmlError *)error
{
  if (error->level == XML_ERR_FATAL)
  {
    v9 = objc_alloc_init(NSMutableDictionary);
    v6 = [NSNumber numberWithInt:error->line];
    [v9 setObject:v6 forKeyedSubscript:@"BooksUI.NQMLParser.errorLineNumber"];

    v7 = [NSNumber numberWithInt:error->int2];
    [v9 setObject:v7 forKeyedSubscript:@"BooksUI.NQMLParser.errorColumn"];

    v8 = [[NSString alloc] initWithUTF8String:error->message];
    if (v8)
    {
      [v9 setObject:v8 forKeyedSubscript:NSLocalizedDescriptionKey];
    }

    [(BUINQMLParser *)self reportErrorWithCode:error->code userInfo:v9];
  }
}

- (void)parse
{
  delegate = [(BUINQMLParser *)self delegate];

  if (!delegate)
  {
    return;
  }

  string = [(BUINQMLParser *)self string];
  uTF8String = [string UTF8String];

  if (!uTF8String || (-[BUINQMLParser string](self, "string"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 lengthOfBytesUsingEncoding:4], v6, v7 >> 31))
  {
    selfCopy2 = self;
    v9 = -101;
LABEL_5:

    [(BUINQMLParser *)selfCopy2 reportErrorWithCode:v9 userInfo:0];
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
  v27 = xmmword_2FF160;
  v28 = unk_2FF170;
  v29 = xmmword_2FF180;
  v30 = unk_2FF190;
  v23 = unk_2FF120;
  v24 = unk_2FF130;
  v25 = xmmword_2FF140;
  v26 = *&off_2FF150;
  v19 = xmmword_2FF0E0;
  v20 = unk_2FF0F0;
  v21 = *off_2FF100;
  v22 = *off_2FF110;
  v15 = xmmword_2FF0A0;
  v16 = *algn_2FF0B0;
  v17 = xmmword_2FF0C0;
  v18 = unk_2FF0D0;
  sax = MemoryParserCtxt->sax;
  if (sax)
  {
    free(sax);
  }

  v11->sax = &v15;
  v11->userData = self;
  v11->encoding = "UTF-8";
  v11->charset = 1;
  htmlCtxtUseOptions(v11, 10305);
  [(BUINQMLParser *)self set_parserContext:v11, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30];
  if (htmlParseDocument(v11))
  {
    LastError = xmlCtxtGetLastError([(BUINQMLParser *)self _parserContext]);
    if (LastError)
    {
      [(BUINQMLParser *)self reportParseError:LastError];
    }
  }

  myDoc = v11->myDoc;
  if (myDoc)
  {
    xmlFreeDoc(myDoc);
    v11->myDoc = 0;
  }

  v11->encoding = 0;
  v11->charset = 0;
  v11->sax = 0;
  v11->userData = 0;
  htmlFreeParserCtxt(v11);
  [(BUINQMLParser *)self set_parserContext:0];
}

- (BUINQMLParser)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end