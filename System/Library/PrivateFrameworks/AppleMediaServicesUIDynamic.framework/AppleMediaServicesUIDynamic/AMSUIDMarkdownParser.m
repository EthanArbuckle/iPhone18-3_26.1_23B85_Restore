@interface AMSUIDMarkdownParser
+ (void)initialize;
- (AMSUIDMarkdownParser)delegate;
- (AMSUIDMarkdownParser)init;
- (AMSUIDMarkdownParser)initWithString:(id)a3;
- (void)parse;
- (void)reportErrorWithCode:(unint64_t)a3 userInfo:(id)a4;
- (void)reportParseError:(_xmlError *)a3;
@end

@implementation AMSUIDMarkdownParser

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    xmlInitParser();
  }

  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS___AMSUIDMarkdownParser;
  objc_msgSendSuper2(&v3, sel_initialize);
}

- (AMSUIDMarkdownParser)initWithString:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AMSUIDMarkdownParser;
  v5 = [(AMSUIDMarkdownParser *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    string = v5->_string;
    v5->_string = v6;
  }

  return v5;
}

- (AMSUIDMarkdownParser)init
{
  [(AMSUIDMarkdownParser *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)reportErrorWithCode:(unint64_t)a3 userInfo:(id)a4
{
  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AppleMediaServicesUIDynamic.MarkdownParser.errorDomain" code:a3 userInfo:a4];
  v5 = [(AMSUIDMarkdownParser *)self delegate];
  [v5 parser:self parseErrorOccurred:v6];
}

- (void)reportParseError:(_xmlError *)a3
{
  if (a3->level == XML_ERR_FATAL)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6 = [MEMORY[0x1E696AD98] numberWithInt:a3->line];
    [v9 setObject:v6 forKeyedSubscript:@"AppleMediaServicesUIDynamic.MarkdownParser.errorLineNumber"];

    v7 = [MEMORY[0x1E696AD98] numberWithInt:a3->int2];
    [v9 setObject:v7 forKeyedSubscript:@"AppleMediaServicesUIDynamic.MarkdownParser.errorColumn"];

    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:a3->message];
    if (v8)
    {
      [v9 setObject:v8 forKeyedSubscript:*MEMORY[0x1E696A578]];
    }

    [(AMSUIDMarkdownParser *)self reportErrorWithCode:a3->code userInfo:v9];
  }
}

- (void)parse
{
  v3 = [(AMSUIDMarkdownParser *)self delegate];

  if (!v3)
  {
    return;
  }

  v4 = [(AMSUIDMarkdownParser *)self string];
  v5 = [v4 UTF8String];

  if (!v5 || (-[AMSUIDMarkdownParser string](self, "string"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 lengthOfBytesUsingEncoding:4], v6, v7 >> 31))
  {
    v8 = self;
    v9 = -101;
LABEL_5:

    [(AMSUIDMarkdownParser *)v8 reportErrorWithCode:v9 userInfo:0];
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
  v27 = xmmword_1F49D34E8;
  v28 = unk_1F49D34F8;
  v29 = xmmword_1F49D3508;
  v30 = unk_1F49D3518;
  v23 = xmmword_1F49D34A8;
  v24 = unk_1F49D34B8;
  v25 = xmmword_1F49D34C8;
  v26 = *&off_1F49D34D8;
  v19 = xmmword_1F49D3468;
  v20 = unk_1F49D3478;
  v21 = xmmword_1F49D3488;
  v22 = *&off_1F49D3498;
  v15 = xmmword_1F49D3428;
  v16 = unk_1F49D3438;
  v17 = xmmword_1F49D3448;
  v18 = unk_1F49D3458;
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
  [(AMSUIDMarkdownParser *)self set_parserContext:v11, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30];
  if (htmlParseDocument(v11))
  {
    LastError = xmlCtxtGetLastError([(AMSUIDMarkdownParser *)self _parserContext]);
    if (LastError)
    {
      [(AMSUIDMarkdownParser *)self reportParseError:LastError];
    }
  }

  myDoc = v11->myDoc;
  if (myDoc)
  {
    xmlFreeDoc(myDoc);
  }

  v11->encoding = 0;
  v11->charset = 0;
  v11->sax = 0;
  v11->userData = 0;
  xmlFreeParserCtxt(v11);
  [(AMSUIDMarkdownParser *)self set_parserContext:0];
}

- (AMSUIDMarkdownParser)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end