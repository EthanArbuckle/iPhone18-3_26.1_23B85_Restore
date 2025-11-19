@interface ASKNQMLParser
+ (void)initialize;
- (ASKNQMLParser)delegate;
- (ASKNQMLParser)init;
- (ASKNQMLParser)initWithString:(id)a3;
- (void)parse;
- (void)reportErrorWithCode:(unint64_t)a3 userInfo:(id)a4;
- (void)reportParseError:(_xmlError *)a3;
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
  objc_msgSendSuper2(&v3, sel_initialize);
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
  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AppStoreKit.NqmlParser.errorDomain" code:a3 userInfo:a4];
  v5 = [(ASKNQMLParser *)self delegate];
  [v5 parser:self parseErrorOccurred:v6];
}

- (void)reportParseError:(_xmlError *)a3
{
  if (a3->level == XML_ERR_FATAL)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6 = [MEMORY[0x1E696AD98] numberWithInt:a3->line];
    [v9 setObject:v6 forKeyedSubscript:@"AppStoreKit.NqmlParser.errorLineNumber"];

    v7 = [MEMORY[0x1E696AD98] numberWithInt:a3->int2];
    [v9 setObject:v7 forKeyedSubscript:@"AppStoreKit.NqmlParser.errorColumn"];

    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:a3->message];
    if (v8)
    {
      [v9 setObject:v8 forKeyedSubscript:*MEMORY[0x1E696A578]];
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
  v28 = xmmword_1F5C20430;
  v29 = unk_1F5C20440;
  v30 = xmmword_1F5C20450;
  v31 = unk_1F5C20460;
  v24 = xmmword_1F5C203F0;
  v25 = unk_1F5C20400;
  v26 = xmmword_1F5C20410;
  v27 = *&off_1F5C20420;
  v20 = xmmword_1F5C203B0;
  v21 = unk_1F5C203C0;
  v22 = xmmword_1F5C203D0;
  v23 = *&off_1F5C203E0;
  v16 = xmmword_1F5C20370;
  v17 = unk_1F5C20380;
  v18 = xmmword_1F5C20390;
  v19 = unk_1F5C203A0;
  sax = MemoryParserCtxt->sax;
  if (sax)
  {
    free(sax);
  }

  v11->sax = &v16;
  v11->userData = self;
  v11->encoding = "UTF-8";
  v11->charset = 1;
  htmlCtxtUseOptions(v11, 10305);
  [(ASKNQMLParser *)self set_parserContext:v11, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31];
  v13 = htmlParseDocument(v11);
  myDoc = v11->myDoc;
  if (myDoc)
  {
    xmlFreeDoc(myDoc);
  }

  if (v13)
  {
    LastError = xmlCtxtGetLastError([(ASKNQMLParser *)self _parserContext]);
    if (LastError)
    {
      [(ASKNQMLParser *)self reportParseError:LastError];
    }
  }

  v11->encoding = 0;
  v11->charset = 0;
  v11->sax = 0;
  v11->userData = 0;
  xmlFreeParserCtxt(v11);
  [(ASKNQMLParser *)self set_parserContext:0];
}

- (ASKNQMLParser)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end