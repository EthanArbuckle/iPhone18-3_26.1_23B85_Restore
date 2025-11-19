@interface NSXMLParser
+ (id)currentParser;
+ (void)setCurrentParser:(id)a3;
- (BOOL)_handleParseResult:(int64_t)a3;
- (BOOL)finishIncrementalParse;
- (BOOL)parseData:(id)a3;
- (BOOL)parseFromStream;
- (NSError)parserError;
- (NSInteger)columnNumber;
- (NSInteger)lineNumber;
- (NSXMLParser)initWithContentsOfURL:(NSURL *)url;
- (NSXMLParser)initWithData:(NSData *)data;
- (NSXMLParser)initWithStream:(NSInputStream *)stream;
- (_xmlParserInput)_xmlExternalEntityWithURL:(const char *)a3 identifier:(const char *)a4 context:(_xmlParserCtxt *)a5 originalLoaderFunction:(void *)a6;
- (id)initForIncrementalParsing;
- (void)_initializeSAX2Callbacks;
- (void)_popNamespaces;
- (void)_pushNamespaces:(id)a3;
- (void)_setExpandedParserError:(id)a3;
- (void)_setParserError:(int64_t)a3;
- (void)abortParsing;
- (void)dealloc;
- (void)setAllowedExternalEntityURLs:(NSSet *)allowedExternalEntityURLs;
- (void)setDelegate:(id)delegate;
- (void)setShouldContinueAfterFatalError:(BOOL)a3;
- (void)setShouldProcessNamespaces:(BOOL)shouldProcessNamespaces;
- (void)setShouldReportNamespacePrefixes:(BOOL)shouldReportNamespacePrefixes;
- (void)setShouldResolveExternalEntities:(BOOL)shouldResolveExternalEntities;
@end

@implementation NSXMLParser

- (void)_popNamespaces
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableArray *)self->_namespaces count]- 1;
  v4 = [(NSMutableArray *)self->_namespaces objectAtIndex:v3];
  if ([v4 isEqual:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}] & 1) == 0 && (objc_opt_respondsToSelector())
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v9 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [self->_delegate parser:self didEndMappingPrefix:*(*(&v10 + 1) + 8 * v8++)];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v9 count:16];
      }

      while (v6);
    }
  }

  [(NSMutableArray *)self->_namespaces removeObjectAtIndex:v3];
}

- (BOOL)parseFromStream
{
  v3 = self;
  [NSXMLParser setCurrentParser:self];
  xmlParserStream = self->xmlParserStream;
  if (xmlParserStream)
  {
    [(NSInputStream *)xmlParserStream open];
    chunkSize = self->_chunkSize;
    v6 = malloc_type_malloc(chunkSize, 0x100004077774924uLL);
    v7 = [(NSInputStream *)self->xmlParserStream read:v6 maxLength:chunkSize];
    if (v7 == -1)
    {
      v9 = 0;
    }

    else
    {
      while (v7 >= 1)
      {
        v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v6 length:v7 freeWhenDone:0];
        [(NSXMLParser *)self parseData:v8];

        v7 = [(NSInputStream *)self->xmlParserStream read:v6 maxLength:chunkSize];
      }

      v9 = [(NSXMLParser *)self finishIncrementalParse];
    }

    free(v6);
    [(NSInputStream *)self->xmlParserStream close];
  }

  else
  {
    -[NSXMLParser _setExpandedParserError:](self, "_setExpandedParserError:", +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", -1, [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"Could not open data stream", @"NSXMLParserErrorMessage", 0}]));
    v9 = 0;
  }

  [NSXMLParser setCurrentParser:0];

  return v9;
}

- (BOOL)finishIncrementalParse
{
  v3 = xmlParseChunk(self->_parserContext, 0, 0, 1);

  return [(NSXMLParser *)self _handleParseResult:v3];
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  parserFlags = self->_parserFlags;

  free(self->_saxHandler);
  parserContext = self->_parserContext;
  if (parserContext)
  {
    if (parserContext->myDoc)
    {
      xmlFreeDoc(parserContext->myDoc);
      parserContext = self->_parserContext;
    }

    xmlFreeParserCtxt(parserContext);
  }

  slowStringMap = self->_slowStringMap;
  if (slowStringMap)
  {
    CFRelease(slowStringMap);
  }

  if ((parserFlags & 0x80) != 0)
  {
  }

  v6.receiver = self;
  v6.super_class = NSXMLParser;
  [(NSXMLParser *)&v6 dealloc];
}

- (void)_initializeSAX2Callbacks
{
  saxHandler = self->_saxHandler;
  *&saxHandler->internalSubset = 0u;
  *&saxHandler->hasInternalSubset = 0u;
  *&saxHandler->resolveEntity = 0u;
  *&saxHandler->entityDecl = 0u;
  *&saxHandler->attributeDecl = 0u;
  *&saxHandler->unparsedEntityDecl = 0u;
  *&saxHandler->startDocument = 0u;
  *&saxHandler->startElement = 0u;
  *&saxHandler->_private = 0u;
  *&saxHandler->endElementNs = 0u;
  *&saxHandler->getParameterEntity = 0u;
  *&saxHandler->externalSubset = 0u;
  *&saxHandler->comment = 0u;
  *&saxHandler->error = 0u;
  *&saxHandler->reference = 0u;
  *&saxHandler->ignorableWhitespace = 0u;
  saxHandler->internalSubset = _internalSubset2;
  saxHandler->isStandalone = _isStandalone;
  saxHandler->hasInternalSubset = _hasInternalSubset2;
  saxHandler->hasExternalSubset = _hasExternalSubset2;
  saxHandler->getEntity = _getEntity;
  saxHandler->entityDecl = _entityDecl;
  saxHandler->notationDecl = _notationDecl;
  saxHandler->attributeDecl = _attributeDecl;
  saxHandler->elementDecl = _elementDecl;
  saxHandler->unparsedEntityDecl = _unparsedEntityDecl;
  saxHandler->setDocumentLocator = 0;
  saxHandler->startDocument = _startDocument;
  saxHandler->startElement = 0;
  saxHandler->endElement = 0;
  saxHandler->endDocument = _endDocument;
  saxHandler->startElementNs = _startElementNs;
  saxHandler->endElementNs = _endElementNs;
  saxHandler->serror = 0;
  saxHandler->reference = 0;
  saxHandler->characters = _characters;
  saxHandler->ignorableWhitespace = 0;
  saxHandler->processingInstruction = _processingInstruction;
  saxHandler->warning = 0;
  saxHandler->error = _errorCallback;
  saxHandler->fatalError = 0;
  saxHandler->cdataBlock = _cdataBlock;
  saxHandler->comment = _comment;
  saxHandler->externalSubset = _externalSubset2;
  saxHandler->initialized = -554844497;
}

- (NSXMLParser)initWithContentsOfURL:(NSURL *)url
{
  if ([(NSXMLParser *)self isMemberOfClass:NSXMLParser]&& [(NSURL *)url isFileURL])
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF48]) initWithURL:url];
    v6 = [(NSXMLParser *)self initWithStream:v5];
  }

  else
  {
    v7 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:url];
    if (!v7)
    {
      v7 = [MEMORY[0x1E695DEF0] data];
    }

    v6 = [(NSXMLParser *)self initWithData:v7];
  }

  v6->_url = url;
  return v6;
}

- (NSXMLParser)initWithData:(NSData *)data
{
  v10 = *MEMORY[0x1E69E9840];
  if (_NSSetupLibXML_xmlInitGuard != -1)
  {
    dispatch_once(&_NSSetupLibXML_xmlInitGuard, &__block_literal_global_57);
  }

  v8.receiver = self;
  v8.super_class = NSXMLParser;
  v5 = [(NSXMLParser *)&v8 init];
  if (v5)
  {
    v5->_saxHandler = malloc_type_malloc(0x100uLL, 0x1080040AADF51B8uLL);
    v5->_parserContext = 0;
    v5->_parserFlags = 0;
    v5->_error = 0;
    keyCallBacks = *byte_1EEEFCE08;
    v5->_slowStringMap = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, &keyCallBacks, MEMORY[0x1E695E9E8]);
    if (!_CFExecutableLinkedOnOrAfter())
    {
      v5->_parserFlags |= 0x20uLL;
    }

    [(NSXMLParser *)v5 _initializeSAX2Callbacks];
    v5->_parserFlags |= 0xC0uLL;
    v5->_namespaces = 0;
    if (data)
    {
      v5->xmlParserStream = [MEMORY[0x1E695DF48] inputStreamWithData:data];
      if ([(NSData *)data length]>> 20)
      {
        v6 = 0x100000;
      }

      else
      {
        v6 = [(NSData *)data length];
      }
    }

    else
    {
      v6 = 32 * *MEMORY[0x1E69E9AC8];
    }

    v5->_chunkSize = v6;
  }

  return v5;
}

- (id)initForIncrementalParsing
{
  result = [(NSXMLParser *)self initWithData:0];
  if (result)
  {
    *(result + 5) &= ~0x80uLL;
  }

  return result;
}

- (NSXMLParser)initWithStream:(NSInputStream *)stream
{
  v4 = [(NSXMLParser *)self initForIncrementalParsing];
  v5 = v4;
  if (v4)
  {
    v4->_parserFlags |= 0x80uLL;
    v4->xmlParserStream = stream;
  }

  return v5;
}

- (void)setDelegate:(id)delegate
{
  self->_delegate = delegate;
  v4 = objc_opt_respondsToSelector();
  v5 = 0xFFFFFFFF80000000;
  if ((v4 & 1) == 0)
  {
    v5 = 0;
  }

  self->_parserFlags = v5 & 0xFFFFFFFF80000000 | self->_parserFlags & 0x7FFFFFFF;
  v6 = objc_opt_respondsToSelector();
  v7 = 0x40000000;
  if ((v6 & 1) == 0)
  {
    v7 = 0;
  }

  self->_parserFlags = self->_parserFlags & 0xFFFFFFFFBFFFFFFFLL | v7;
  v8 = objc_opt_respondsToSelector();
  v9 = 0x20000000;
  if ((v8 & 1) == 0)
  {
    v9 = 0;
  }

  self->_parserFlags = self->_parserFlags & 0xFFFFFFFFDFFFFFFFLL | v9;
}

- (void)setShouldProcessNamespaces:(BOOL)shouldProcessNamespaces
{
  if (!self->_parserContext)
  {
    v3 = 4;
    if (!shouldProcessNamespaces)
    {
      v3 = 0;
    }

    self->_parserFlags = self->_parserFlags & 0xFFFFFFFFFFFFFFFBLL | v3;
  }
}

- (void)setShouldReportNamespacePrefixes:(BOOL)shouldReportNamespacePrefixes
{
  if (!self->_parserContext)
  {
    v3 = 8;
    if (!shouldReportNamespacePrefixes)
    {
      v3 = 0;
    }

    self->_parserFlags = self->_parserFlags & 0xFFFFFFFFFFFFFFF7 | v3;
  }
}

- (void)setShouldResolveExternalEntities:(BOOL)shouldResolveExternalEntities
{
  if (!self->_parserContext)
  {
    v3 = 16;
    if (!shouldResolveExternalEntities)
    {
      v3 = 0;
    }

    self->_parserFlags = self->_parserFlags & 0xFFFFFFFFFFFFFFEFLL | v3;
  }
}

- (void)setAllowedExternalEntityURLs:(NSSet *)allowedExternalEntityURLs
{
  allowedEntityURLs = self->_allowedEntityURLs;
  if (allowedEntityURLs != allowedExternalEntityURLs)
  {
    v6 = allowedEntityURLs;
    self->_allowedEntityURLs = [(NSSet *)allowedExternalEntityURLs copy];
  }
}

- (_xmlParserInput)_xmlExternalEntityWithURL:(const char *)a3 identifier:(const char *)a4 context:(_xmlParserCtxt *)a5 originalLoaderFunction:(void *)a6
{
  v10 = [(NSXMLParser *)self externalEntityResolvingPolicy];
  if ([objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")])
  {
    v11 = 3;
  }

  else
  {
    v11 = v10;
  }

  v12 = [(NSXMLParser *)self allowedExternalEntityURLs];
  if (v12)
  {
    v13 = v12;
    v14 = [[NSString alloc] initWithUTF8String:a3];
    v15 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v14];
    if ([objc_msgSend(v15 "scheme")])
    {
      v16 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:{objc_msgSend(v15, "path")}];

      v15 = v16;
    }

    if (v15)
    {
      v17 = [(NSSet *)v13 member:v15];
      if (!v17 && v11 == 2)
      {
        url = self->_url;
        if (!url)
        {
          goto LABEL_30;
        }

LABEL_18:
        if (![objc_msgSend(v15 "host")] || (objc_msgSend(v15, "port") || -[NSURL port](url, "port")) && (objc_msgSend(objc_msgSend(v15, "port"), "isEqualToNumber:", -[NSURL port](url, "port")) & 1) == 0)
        {
        }

        else
        {
          v20 = [objc_msgSend(v15 "scheme")];

          if (v20)
          {
            goto LABEL_31;
          }
        }

        return 0;
      }

      if (v17)
      {
LABEL_31:

        return (a6)(a3, a4, a5);
      }
    }
  }

  if (!v11)
  {
    return 0;
  }

  if (v11 != 1)
  {
    if (v11 == 2)
    {
      url = self->_url;
      if (!url)
      {
        v15 = 0;
LABEL_30:

        goto LABEL_31;
      }

      v19 = [[NSString alloc] initWithUTF8String:a3];
      v15 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v19];

      if (v15)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_31;
  }

  return xmlNoNetExternalEntityLoader(a3, a4, a5);
}

+ (void)setCurrentParser:(id)a3
{
  v4 = [+[NSThread currentThread](NSThread threadDictionary];
  v5 = v4;
  if (a3)
  {
    if (dyld_program_sdk_at_least() && [(NSMutableDictionary *)v5 objectForKey:@"__CurrentNSXMLParser"])
    {
      v7 = [NSString stringWithFormat:@"%@", @"NSXMLParser does not support reentrant parsing."];
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v7 userInfo:0]);
    }

    v6 = [+[NSThread currentThread](NSThread threadDictionary];

    [(NSMutableDictionary *)v6 setObject:a3 forKey:@"__CurrentNSXMLParser"];
  }

  else
  {

    [(NSMutableDictionary *)v4 removeObjectForKey:@"__CurrentNSXMLParser"];
  }
}

+ (id)currentParser
{
  v2 = [+[NSThread currentThread](NSThread threadDictionary];

  return [(NSMutableDictionary *)v2 objectForKey:@"__CurrentNSXMLParser"];
}

- (void)setShouldContinueAfterFatalError:(BOOL)a3
{
  if (!self->_parserContext)
  {
    v3 = 32;
    if (!a3)
    {
      v3 = 0;
    }

    self->_parserFlags = self->_parserFlags & 0xFFFFFFFFFFFFFFDFLL | v3;
  }
}

- (BOOL)_handleParseResult:(int64_t)a3
{
  if (!a3)
  {
    return 1;
  }

  if (a3 != -1)
  {
    goto LABEL_7;
  }

  if (_CFExecutableLinkedOnOrAfter())
  {
    if (self->_delegateAborted)
    {
      v5 = [NSError errorWithDomain:@"NSXMLParserErrorDomain" code:512 userInfo:0];
      [(NSXMLParser *)self _setExpandedParserError:v5];
      [(NSXMLParser *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        [-[NSXMLParser delegate](self "delegate")];
      }

      return 0;
    }

LABEL_7:
    LastError = xmlCtxtGetLastError(self->_parserContext);
    if (LastError && LastError->code == a3)
    {
      [(NSXMLParser *)self _setExpandedParserError:_NSErrorFromXMLError(LastError, self)];
    }

    else
    {
      [(NSXMLParser *)self _setParserError:a3];
    }

    return 0;
  }

  return 1;
}

- (BOOL)parseData:(id)a3
{
  if ((self->_parserFlags & 0x40) == 0)
  {
    v20 = +[NSAssertionHandler currentHandler];
    Name = sel_getName(a2);
    v22 = objc_opt_class();
    [(NSAssertionHandler *)v20 handleFailureInMethod:a2 object:self file:@"NSXMLParser.m" lineNumber:488 description:@"%s should only be called on an incremental %@", Name, NSStringFromClass(v22)];
  }

  xmlSetStructuredErrorFunc(self, _structuredErrorFunc);
  if (self->_haveDetectedEncoding)
  {
    v5 = xmlParseChunk(self->_parserContext, [a3 bytes], objc_msgSend(a3, "length"), 0);
    if (self->_shouldStopXMLParser)
    {
      self->_shouldStopXMLParser = 0;
      xmlStopParser(self->_parserContext);
      if (v5 >= -1)
      {
        v5 = -1;
      }
    }

    v6 = [(NSXMLParser *)self _handleParseResult:v5];
  }

  else
  {
    v7 = [(NSData *)self->_bomChunk length];
    v8 = [a3 length] + v7;
    bomChunk = self->_bomChunk;
    if (v8 > 3)
    {
      if (bomChunk)
      {
        v11 = objc_alloc_init(MEMORY[0x1E695DF88]);
        [v11 appendData:self->_bomChunk];
        [v11 appendData:a3];
      }

      else
      {
        v11 = a3;
      }

      if (self->_delegate)
      {
        saxHandler = self->_saxHandler;
      }

      else
      {
        saxHandler = 0;
      }

      PushParserCtxt = xmlCreatePushParserCtxt(saxHandler, self, [v11 bytes], 4, 0);
      self->_parserContext = PushParserCtxt;
      if ([(NSXMLParser *)self shouldResolveExternalEntities])
      {
        v14 = 7;
      }

      else
      {
        v14 = 3;
      }

      if (saxHandler)
      {
        v15 = v14;
      }

      else
      {
        v15 = v14 | 0x60;
      }

      xmlCtxtUseOptions(PushParserCtxt, v15);
      self->_haveDetectedEncoding = 1;

      self->_bomChunk = 0;
      if (v8 != 4)
      {
        v16 = [v11 bytes];
        v17 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v16 + 4 length:(v8 - 4) freeWhenDone:0];
        [(NSXMLParser *)self parseData:v17];
      }
    }

    else if (bomChunk)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF88]);
      [(NSData *)v10 appendData:self->_bomChunk];
      [(NSData *)v10 appendData:a3];

      self->_bomChunk = v10;
    }

    else
    {
      self->_bomChunk = a3;
    }

    v6 = 1;
  }

  xmlSetStructuredErrorFunc(0, 0);
  return v6;
}

- (void)abortParsing
{
  parserContext = self->_parserContext;
  if (parserContext)
  {
    xmlStopParser(parserContext);
    self->_delegateAborted = 1;
  }
}

- (NSError)parserError
{
  v2 = self->_error;

  return v2;
}

- (NSInteger)lineNumber
{
  result = self->_parserContext;
  if (result)
  {
    return xmlSAX2GetLineNumber(result);
  }

  return result;
}

- (NSInteger)columnNumber
{
  result = self->_parserContext;
  if (result)
  {
    return xmlSAX2GetColumnNumber(result);
  }

  return result;
}

- (void)_setExpandedParserError:(id)a3
{
  error = self->_error;
  if (error)
  {
    v6 = error;
  }

  self->_error = a3;
}

- (void)_setParserError:(int64_t)a3
{
  v4 = [[NSError alloc] initWithDomain:@"NSXMLParserErrorDomain" code:a3 userInfo:0];

  [(NSXMLParser *)self _setExpandedParserError:v4];
}

- (void)_pushNamespaces:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  namespaces = self->_namespaces;
  if (namespaces)
  {
    if (a3)
    {
LABEL_3:
      [(NSMutableArray *)namespaces addObject:a3];
      if (objc_opt_respondsToSelector())
      {
        v14 = 0u;
        v15 = 0u;
        v12 = 0u;
        v13 = 0u;
        v6 = [a3 countByEnumeratingWithState:&v12 objects:v11 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v13;
          do
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v13 != v8)
              {
                objc_enumerationMutation(a3);
              }

              [self->_delegate parser:self didStartMappingPrefix:*(*(&v12 + 1) + 8 * i) toURI:{objc_msgSend(a3, "objectForKey:", *(*(&v12 + 1) + 8 * i))}];
            }

            v7 = [a3 countByEnumeratingWithState:&v12 objects:v11 count:16];
          }

          while (v7);
        }
      }

      return;
    }
  }

  else
  {
    namespaces = objc_alloc_init(MEMORY[0x1E695DF70]);
    self->_namespaces = namespaces;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v10 = [MEMORY[0x1E695DFB0] null];

  [(NSMutableArray *)namespaces addObject:v10];
}

@end