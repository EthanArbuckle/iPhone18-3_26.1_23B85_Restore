@interface KSHTMLWriter
+ (BOOL)isDocTypeXHTML:(id)a3;
- (BOOL)canWriteElementInline:(id)a3;
- (BOOL)elementCanBeEmpty:(id)a3;
- (BOOL)hasCurrentAttributes;
- (BOOL)topElementIsList;
- (BOOL)validateElement:(id)a3;
- (KSHTMLWriter)initWithOutputWriter:(id)a3;
- (KSHTMLWriter)initWithOutputWriter:(id)a3 docType:(id)a4 encoding:(unint64_t)a5;
- (id)currentAttributes;
- (id)currentElementClassName;
- (id)validateAttribute:(id)a3 value:(id)a4 ofElement:(id)a5;
- (void)closeEmptyElementTag;
- (void)pushAttribute:(id)a3 value:(id)a4;
- (void)setDocType:(id)a3;
- (void)startAnchorElementWithHref:(id)a3 title:(id)a4 target:(id)a5 rel:(id)a6;
- (void)startDocumentWithDocType:(id)a3 encoding:(unint64_t)a4;
- (void)startElement:(id)a3 idName:(id)a4 className:(id)a5;
- (void)startJavascriptElementWithSrc:(id)a3;
- (void)startStyleElementWithType:(id)a3;
- (void)writeHTMLFormat:(id)a3;
- (void)writeImageWithSrc:(id)a3 alt:(id)a4 width:(id)a5 height:(id)a6;
- (void)writeJavascript:(id)a3 useCDATA:(BOOL)a4;
- (void)writeJavascriptWithSrc:(id)a3 charset:(id)a4;
- (void)writeJavascriptWithSrc:(id)a3 encoding:(unint64_t)a4;
- (void)writeLineBreak;
- (void)writeLinkWithHref:(id)a3 type:(id)a4 rel:(id)a5 title:(id)a6 media:(id)a7;
- (void)writeParamElementWithName:(id)a3 value:(id)a4;
- (void)writeStyleElementWithCSSString:(id)a3;
@end

@implementation KSHTMLWriter

- (void)closeEmptyElementTag
{
  if ([(KSHTMLWriter *)self isXHTML])
  {
    v3.receiver = self;
    v3.super_class = KSHTMLWriter;
    [(KSXMLWriter *)&v3 closeEmptyElementTag];
  }

  else
  {

    [(KSXMLWriter *)self writeString:@">"];
  }
}

- (id)validateAttribute:(id)a3 value:(id)a4 ofElement:(id)a5
{
  v8 = a3;
  v9 = a5;
  v14.receiver = self;
  v14.super_class = KSHTMLWriter;
  v10 = [(KSXMLWriter *)&v14 validateAttribute:v8 value:a4 ofElement:v9];
  if (v10)
  {
    if ([v9 isEqualToString:@"li"])
    {
      if ([v8 isEqualToString:@"value"])
      {
        v11 = [(KSXMLWriter *)self topElement];
        v12 = [v11 isEqualToString:@"ol"];

        if ((v12 & 1) == 0)
        {

          v10 = 0;
        }
      }
    }
  }

  return v10;
}

- (BOOL)validateElement:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = KSHTMLWriter;
  if ([(KSXMLWriter *)&v7 validateElement:v4])
  {
    if ([(KSHTMLWriter *)self topElementIsList])
    {
      v5 = [v4 isEqualToString:@"li"];
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)canWriteElementInline:(id)a3
{
  v4 = a3;
  v5 = [v4 length];
  if (v5 > 4)
  {
    if (v5 <= 6)
    {
      if (v5 == 5)
      {
        if ([v4 isEqualToString:@"small"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"input"))
        {
          goto LABEL_47;
        }

        v6 = @"label";
      }

      else
      {
        if ([v4 isEqualToString:@"strong"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"select") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"button") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"object") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"applet"))
        {
          goto LABEL_47;
        }

        v6 = @"script";
      }

      goto LABEL_46;
    }

    if (v5 == 7)
    {
      v6 = @"acronym";
      goto LABEL_46;
    }

    if (v5 == 8)
    {
      v6 = @"textarea";
      goto LABEL_46;
    }

    goto LABEL_48;
  }

  if (v5 > 2)
  {
    if (v5 == 3)
    {
      if ([v4 isEqualToString:@"img"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"sup") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"sub") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"big") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"del") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"ins") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"dfn") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"map") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"var") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"bdo"))
      {
        goto LABEL_47;
      }

      v6 = @"kbd";
    }

    else
    {
      if ([v4 isEqualToString:@"span"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"font") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"abbr") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"cite") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"code"))
      {
        goto LABEL_47;
      }

      v6 = @"samp";
    }

    goto LABEL_46;
  }

  if (v5 == 1)
  {
    if ([v4 isEqualToString:@"a"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"b") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"i") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"u"))
    {
      goto LABEL_47;
    }

    v6 = @"q";
    goto LABEL_46;
  }

  if (v5 != 2)
  {
LABEL_48:
    v9.receiver = self;
    v9.super_class = KSHTMLWriter;
    v7 = [(KSXMLWriter *)&v9 canWriteElementInline:v4];
    goto LABEL_49;
  }

  if ([v4 isEqualToString:@"br"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"em"))
  {
    goto LABEL_47;
  }

  v6 = @"tt";
LABEL_46:
  if (([v4 isEqualToString:v6] & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_47:
  v7 = 1;
LABEL_49:

  return v7;
}

- (BOOL)elementCanBeEmpty:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"br"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"img") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"hr") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"meta") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"link") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"input") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"base") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"basefont") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"param") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"area"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"source"];
  }

  return v4;
}

- (BOOL)topElementIsList
{
  v2 = [(KSXMLWriter *)self topElement];
  if ([v2 isEqualToString:@"ul"])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isEqualToString:@"ol"];
  }

  return v3;
}

- (void)startStyleElementWithType:(id)a3
{
  if (a3)
  {
    [(KSHTMLWriter *)self pushAttribute:@"type" value:a3];
  }

  [(KSXMLWriter *)self startElement:@"style"];
}

- (void)writeStyleElementWithCSSString:(id)a3
{
  v4 = a3;
  [(KSHTMLWriter *)self startStyleElementWithType:@"text/css"];
  [(KSXMLWriter *)self writeString:v4];

  [(KSXMLWriter *)self endElement];
}

- (void)writeParamElementWithName:(id)a3 value:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (v7)
  {
    [(KSHTMLWriter *)self pushAttribute:@"name" value:v7];
  }

  if (v6)
  {
    [(KSHTMLWriter *)self pushAttribute:@"value" value:v6];
  }

  [(KSXMLWriter *)self startElement:@"param"];
  [(KSXMLWriter *)self endElement];
}

- (void)startJavascriptElementWithSrc:(id)a3
{
  v6 = a3;
  v4 = [(KSHTMLWriter *)self docType];
  v5 = [v4 isEqualToString:KSHTMLWriterDocTypeHTML_5];

  if ((v5 & 1) == 0)
  {
    [(KSHTMLWriter *)self pushAttribute:@"type" value:@"text/javascript"];
  }

  if (v6)
  {
    [(KSHTMLWriter *)self pushAttribute:@"src" value:v6];
    [(KSXMLWriter *)self startElement:@"script"];
  }

  else
  {
    [(KSXMLWriter *)self startElement:@"script"];
    [(KSXMLWriter *)self writeString:@"\n"];
    [(KSXMLWriter *)self stopWritingInline];
  }
}

- (void)writeJavascript:(id)a3 useCDATA:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(KSHTMLWriter *)self startJavascriptElementWithSrc:0];
  if (v4)
  {
    [(KSHTMLWriter *)self startJavascriptCDATA];
    [(KSXMLWriter *)self writeString:v6];
    [(KSHTMLWriter *)self endJavascriptCDATA];
  }

  else
  {
    [(KSXMLWriter *)self writeString:v6];
  }

  [(KSXMLWriter *)self endElement];
}

- (void)writeJavascriptWithSrc:(id)a3 charset:(id)a4
{
  v6 = a3;
  if (a4)
  {
    [(KSHTMLWriter *)self pushAttribute:@"charset" value:a4];
  }

  [(KSHTMLWriter *)self startJavascriptElementWithSrc:v6];
  [(KSXMLWriter *)self endElement];
}

- (void)writeJavascriptWithSrc:(id)a3 encoding:(unint64_t)a4
{
  v8 = a3;
  if ([(KSXMLWriter *)self encoding]== a4)
  {
    v6 = 0;
  }

  else
  {
    v7 = CFStringConvertNSStringEncodingToEncoding(a4);
    v6 = CFStringConvertEncodingToIANACharSetName(v7);
  }

  [(KSHTMLWriter *)self writeJavascriptWithSrc:v8 charset:v6];
}

- (void)writeLinkWithHref:(id)a3 type:(id)a4 rel:(id)a5 title:(id)a6 media:(id)a7
{
  v16 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (v13)
  {
    [(KSHTMLWriter *)self pushAttribute:@"rel" value:v13];
  }

  if (!v12)
  {
    v12 = @"text/css";
  }

  [(KSHTMLWriter *)self pushAttribute:@"type" value:v12];
  [(KSHTMLWriter *)self pushAttribute:@"href" value:v16];
  if (v14)
  {
    [(KSHTMLWriter *)self pushAttribute:@"title" value:v14];
  }

  if (v15)
  {
    [(KSHTMLWriter *)self pushAttribute:@"media" value:v15];
  }

  [(KSXMLWriter *)self startElement:@"link"];
  [(KSXMLWriter *)self endElement];
}

- (void)writeImageWithSrc:(id)a3 alt:(id)a4 width:(id)a5 height:(id)a6
{
  v12 = a5;
  v10 = a6;
  v11 = a4;
  [(KSHTMLWriter *)self pushAttribute:@"src" value:a3];
  [(KSHTMLWriter *)self pushAttribute:@"alt" value:v11];

  if (v12)
  {
    [(KSHTMLWriter *)self pushAttribute:@"width" value:v12];
  }

  if (v10)
  {
    [(KSHTMLWriter *)self pushAttribute:@"height" value:v10];
  }

  [(KSXMLWriter *)self startElement:@"img"];
  [(KSXMLWriter *)self endElement];
}

- (void)startAnchorElementWithHref:(id)a3 title:(id)a4 target:(id)a5 rel:(id)a6
{
  v13 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (v13)
  {
    [(KSHTMLWriter *)self pushAttribute:@"href" value:v13];
  }

  if (v11)
  {
    [(KSHTMLWriter *)self pushAttribute:@"target" value:v11];
  }

  if (v10)
  {
    [(KSHTMLWriter *)self pushAttribute:@"title" value:v10];
  }

  if (v12)
  {
    [(KSHTMLWriter *)self pushAttribute:@"rel" value:v12];
  }

  [(KSXMLWriter *)self startElement:@"a"];
}

- (void)writeLineBreak
{
  [(KSXMLWriter *)self startElement:@"br"];

  [(KSXMLWriter *)self endElement];
}

- (void)startElement:(id)a3 idName:(id)a4 className:(id)a5
{
  v10 = a3;
  v8 = a4;
  v9 = a5;
  if (v8)
  {
    [(KSHTMLWriter *)self pushAttribute:@"id" value:v8];
  }

  if (v9)
  {
    [(KSHTMLWriter *)self pushAttribute:@"class" value:v9];
  }

  [(KSXMLWriter *)self startElement:v10];
}

- (void)writeHTMLFormat:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = [[v4 alloc] initWithFormat:v5 arguments:&v7];

  [(KSHTMLWriter *)self writeHTMLString:v6];
}

- (BOOL)hasCurrentAttributes
{
  v4.receiver = self;
  v4.super_class = KSHTMLWriter;
  return [(KSXMLWriter *)&v4 hasCurrentAttributes]|| [(NSMutableArray *)self->_classNames count]!= 0;
}

- (id)currentAttributes
{
  v6.receiver = self;
  v6.super_class = KSHTMLWriter;
  v3 = [(KSXMLWriter *)&v6 currentAttributes];
  v4 = [(KSHTMLWriter *)self currentElementClassName];
  if (v4)
  {
    [v3 addAttribute:@"class" value:v4];
  }

  return v3;
}

- (void)pushAttribute:(id)a3 value:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isEqualToString:@"class"])
  {
    [(KSHTMLWriter *)self pushClassName:v7];
  }

  else
  {
    if ([v6 isEqualToString:@"id"])
    {
      [(NSMutableSet *)self->_IDs addObject:v7];
    }

    v8.receiver = self;
    v8.super_class = KSHTMLWriter;
    [(KSXMLWriter *)&v8 pushAttribute:v6 value:v7];
  }
}

- (id)currentElementClassName
{
  v3 = [(NSMutableArray *)self->_classNames count];
  if (v3)
  {
    v3 = [(NSMutableArray *)self->_classNames componentsJoinedByString:@" "];
  }

  return v3;
}

- (void)setDocType:(id)a3
{
  v4 = [a3 copy];
  docType = self->_docType;
  self->_docType = v4;
  v6 = v4;

  LOBYTE(docType) = [objc_opt_class() isDocTypeXHTML:v6];
  self->_isXHTML = docType;
}

- (void)startDocumentWithDocType:(id)a3 encoding:(unint64_t)a4
{
  v6 = a3;
  [(KSHTMLWriter *)self setDocType:v6];
  v7.receiver = self;
  v7.super_class = KSHTMLWriter;
  [(KSXMLWriter *)&v7 startDocumentWithDocType:v6 encoding:a4];
}

- (KSHTMLWriter)initWithOutputWriter:(id)a3 docType:(id)a4 encoding:(unint64_t)a5
{
  v8 = a4;
  v9 = [(KSXMLWriter *)self initWithOutputWriter:a3 encoding:a5];
  v10 = v9;
  if (v9)
  {
    [(KSHTMLWriter *)v9 setDocType:v8];
  }

  return v10;
}

- (KSHTMLWriter)initWithOutputWriter:(id)a3
{
  v10.receiver = self;
  v10.super_class = KSHTMLWriter;
  v3 = [(KSXMLWriter *)&v10 initWithOutputWriter:a3];
  v4 = v3;
  if (v3)
  {
    [(KSHTMLWriter *)v3 setDocType:KSHTMLWriterDocTypeHTML_5];
    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    IDs = v4->_IDs;
    v4->_IDs = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    classNames = v4->_classNames;
    v4->_classNames = v7;
  }

  return v4;
}

+ (BOOL)isDocTypeXHTML:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:KSHTMLWriterDocTypeHTML_4_01_Strict] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", KSHTMLWriterDocTypeHTML_4_01_Transitional))
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:KSHTMLWriterDocTypeHTML_4_01_Frameset] ^ 1;
  }

  return v4;
}

@end