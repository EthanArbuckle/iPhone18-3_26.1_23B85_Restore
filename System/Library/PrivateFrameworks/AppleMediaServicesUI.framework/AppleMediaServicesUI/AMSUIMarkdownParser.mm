@interface AMSUIMarkdownParser
+ (void)initialize;
- (AMSUIMarkdownParser)init;
- (AMSUIMarkdownParser)initWithString:(id)string;
- (AMSUIMarkdownParserDelegate)delegate;
- (void)parse;
- (void)reportErrorWithCode:(unint64_t)code userInfo:(id)info;
- (void)reportParseError:(_xmlError *)error;
@end

@implementation AMSUIMarkdownParser

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    xmlInitParser();
  }

  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___AMSUIMarkdownParser;
  objc_msgSendSuper2(&v3, sel_initialize);
}

- (AMSUIMarkdownParser)initWithString:(id)string
{
  stringCopy = string;
  v9.receiver = self;
  v9.super_class = AMSUIMarkdownParser;
  v5 = [(AMSUIMarkdownParser *)&v9 init];
  if (v5)
  {
    v6 = [stringCopy copy];
    string = v5->_string;
    v5->_string = v6;
  }

  return v5;
}

- (AMSUIMarkdownParser)init
{
  [(AMSUIMarkdownParser *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)reportErrorWithCode:(unint64_t)code userInfo:(id)info
{
  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AppleMediaServicesUI.MarkdownParser.errorDomain" code:code userInfo:info];
  delegate = [(AMSUIMarkdownParser *)self delegate];
  [delegate parser:self parseErrorOccurred:v6];
}

- (void)reportParseError:(_xmlError *)error
{
  if (error->level == XML_ERR_FATAL)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6 = [MEMORY[0x1E696AD98] numberWithInt:error->line];
    [v9 setObject:v6 forKeyedSubscript:@"AppleMediaServicesUI.MarkdownParser.errorLineNumber"];

    v7 = [MEMORY[0x1E696AD98] numberWithInt:error->int2];
    [v9 setObject:v7 forKeyedSubscript:@"AppleMediaServicesUI.MarkdownParser.errorColumn"];

    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:error->message];
    if (v8)
    {
      [v9 setObject:v8 forKeyedSubscript:*MEMORY[0x1E696A578]];
    }

    [(AMSUIMarkdownParser *)self reportErrorWithCode:error->code userInfo:v9];
  }
}

- (void)parse
{
  delegate = [(AMSUIMarkdownParser *)self delegate];

  if (!delegate)
  {
    return;
  }

  string = [(AMSUIMarkdownParser *)self string];
  uTF8String = [string UTF8String];

  if (!uTF8String || (-[AMSUIMarkdownParser string](self, "string"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 lengthOfBytesUsingEncoding:4], v6, v7 >> 31))
  {
    selfCopy2 = self;
    v9 = -101;
LABEL_5:

    [(AMSUIMarkdownParser *)selfCopy2 reportErrorWithCode:v9 userInfo:0];
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
  v27 = xmmword_1F391AD10;
  v28 = unk_1F391AD20;
  v29 = xmmword_1F391AD30;
  v30 = unk_1F391AD40;
  v23 = xmmword_1F391ACD0;
  v24 = unk_1F391ACE0;
  v25 = xmmword_1F391ACF0;
  v26 = *&off_1F391AD00;
  v19 = xmmword_1F391AC90;
  v20 = unk_1F391ACA0;
  v21 = xmmword_1F391ACB0;
  v22 = *&off_1F391ACC0;
  v15 = xmmword_1F391AC50;
  v16 = unk_1F391AC60;
  v17 = xmmword_1F391AC70;
  v18 = unk_1F391AC80;
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
  [(AMSUIMarkdownParser *)self set_parserContext:v11, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30];
  if (htmlParseDocument(v11))
  {
    LastError = xmlCtxtGetLastError([(AMSUIMarkdownParser *)self _parserContext]);
    if (LastError)
    {
      [(AMSUIMarkdownParser *)self reportParseError:LastError];
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
  [(AMSUIMarkdownParser *)self set_parserContext:0];
}

- (AMSUIMarkdownParserDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end