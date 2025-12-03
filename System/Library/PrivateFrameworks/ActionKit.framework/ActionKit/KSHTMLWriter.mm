@interface KSHTMLWriter
+ (BOOL)isDocTypeXHTML:(id)l;
- (BOOL)canWriteElementInline:(id)inline;
- (BOOL)elementCanBeEmpty:(id)empty;
- (BOOL)hasCurrentAttributes;
- (BOOL)topElementIsList;
- (BOOL)validateElement:(id)element;
- (KSHTMLWriter)initWithOutputWriter:(id)writer;
- (KSHTMLWriter)initWithOutputWriter:(id)writer docType:(id)type encoding:(unint64_t)encoding;
- (id)currentAttributes;
- (id)currentElementClassName;
- (id)validateAttribute:(id)attribute value:(id)value ofElement:(id)element;
- (void)closeEmptyElementTag;
- (void)pushAttribute:(id)attribute value:(id)value;
- (void)setDocType:(id)type;
- (void)startAnchorElementWithHref:(id)href title:(id)title target:(id)target rel:(id)rel;
- (void)startDocumentWithDocType:(id)type encoding:(unint64_t)encoding;
- (void)startElement:(id)element idName:(id)name className:(id)className;
- (void)startJavascriptElementWithSrc:(id)src;
- (void)startStyleElementWithType:(id)type;
- (void)writeHTMLFormat:(id)format;
- (void)writeImageWithSrc:(id)src alt:(id)alt width:(id)width height:(id)height;
- (void)writeJavascript:(id)javascript useCDATA:(BOOL)a;
- (void)writeJavascriptWithSrc:(id)src charset:(id)charset;
- (void)writeJavascriptWithSrc:(id)src encoding:(unint64_t)encoding;
- (void)writeLineBreak;
- (void)writeLinkWithHref:(id)href type:(id)type rel:(id)rel title:(id)title media:(id)media;
- (void)writeParamElementWithName:(id)name value:(id)value;
- (void)writeStyleElementWithCSSString:(id)string;
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

- (id)validateAttribute:(id)attribute value:(id)value ofElement:(id)element
{
  attributeCopy = attribute;
  elementCopy = element;
  v14.receiver = self;
  v14.super_class = KSHTMLWriter;
  v10 = [(KSXMLWriter *)&v14 validateAttribute:attributeCopy value:value ofElement:elementCopy];
  if (v10)
  {
    if ([elementCopy isEqualToString:@"li"])
    {
      if ([attributeCopy isEqualToString:@"value"])
      {
        topElement = [(KSXMLWriter *)self topElement];
        v12 = [topElement isEqualToString:@"ol"];

        if ((v12 & 1) == 0)
        {

          v10 = 0;
        }
      }
    }
  }

  return v10;
}

- (BOOL)validateElement:(id)element
{
  elementCopy = element;
  v7.receiver = self;
  v7.super_class = KSHTMLWriter;
  if ([(KSXMLWriter *)&v7 validateElement:elementCopy])
  {
    if ([(KSHTMLWriter *)self topElementIsList])
    {
      v5 = [elementCopy isEqualToString:@"li"];
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

- (BOOL)canWriteElementInline:(id)inline
{
  inlineCopy = inline;
  v5 = [inlineCopy length];
  if (v5 > 4)
  {
    if (v5 <= 6)
    {
      if (v5 == 5)
      {
        if ([inlineCopy isEqualToString:@"small"] & 1) != 0 || (objc_msgSend(inlineCopy, "isEqualToString:", @"input"))
        {
          goto LABEL_47;
        }

        v6 = @"label";
      }

      else
      {
        if ([inlineCopy isEqualToString:@"strong"] & 1) != 0 || (objc_msgSend(inlineCopy, "isEqualToString:", @"select") & 1) != 0 || (objc_msgSend(inlineCopy, "isEqualToString:", @"button") & 1) != 0 || (objc_msgSend(inlineCopy, "isEqualToString:", @"object") & 1) != 0 || (objc_msgSend(inlineCopy, "isEqualToString:", @"applet"))
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
      if ([inlineCopy isEqualToString:@"img"] & 1) != 0 || (objc_msgSend(inlineCopy, "isEqualToString:", @"sup") & 1) != 0 || (objc_msgSend(inlineCopy, "isEqualToString:", @"sub") & 1) != 0 || (objc_msgSend(inlineCopy, "isEqualToString:", @"big") & 1) != 0 || (objc_msgSend(inlineCopy, "isEqualToString:", @"del") & 1) != 0 || (objc_msgSend(inlineCopy, "isEqualToString:", @"ins") & 1) != 0 || (objc_msgSend(inlineCopy, "isEqualToString:", @"dfn") & 1) != 0 || (objc_msgSend(inlineCopy, "isEqualToString:", @"map") & 1) != 0 || (objc_msgSend(inlineCopy, "isEqualToString:", @"var") & 1) != 0 || (objc_msgSend(inlineCopy, "isEqualToString:", @"bdo"))
      {
        goto LABEL_47;
      }

      v6 = @"kbd";
    }

    else
    {
      if ([inlineCopy isEqualToString:@"span"] & 1) != 0 || (objc_msgSend(inlineCopy, "isEqualToString:", @"font") & 1) != 0 || (objc_msgSend(inlineCopy, "isEqualToString:", @"abbr") & 1) != 0 || (objc_msgSend(inlineCopy, "isEqualToString:", @"cite") & 1) != 0 || (objc_msgSend(inlineCopy, "isEqualToString:", @"code"))
      {
        goto LABEL_47;
      }

      v6 = @"samp";
    }

    goto LABEL_46;
  }

  if (v5 == 1)
  {
    if ([inlineCopy isEqualToString:@"a"] & 1) != 0 || (objc_msgSend(inlineCopy, "isEqualToString:", @"b") & 1) != 0 || (objc_msgSend(inlineCopy, "isEqualToString:", @"i") & 1) != 0 || (objc_msgSend(inlineCopy, "isEqualToString:", @"u"))
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
    v7 = [(KSXMLWriter *)&v9 canWriteElementInline:inlineCopy];
    goto LABEL_49;
  }

  if ([inlineCopy isEqualToString:@"br"] & 1) != 0 || (objc_msgSend(inlineCopy, "isEqualToString:", @"em"))
  {
    goto LABEL_47;
  }

  v6 = @"tt";
LABEL_46:
  if (([inlineCopy isEqualToString:v6] & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_47:
  v7 = 1;
LABEL_49:

  return v7;
}

- (BOOL)elementCanBeEmpty:(id)empty
{
  emptyCopy = empty;
  if ([emptyCopy isEqualToString:@"br"] & 1) != 0 || (objc_msgSend(emptyCopy, "isEqualToString:", @"img") & 1) != 0 || (objc_msgSend(emptyCopy, "isEqualToString:", @"hr") & 1) != 0 || (objc_msgSend(emptyCopy, "isEqualToString:", @"meta") & 1) != 0 || (objc_msgSend(emptyCopy, "isEqualToString:", @"link") & 1) != 0 || (objc_msgSend(emptyCopy, "isEqualToString:", @"input") & 1) != 0 || (objc_msgSend(emptyCopy, "isEqualToString:", @"base") & 1) != 0 || (objc_msgSend(emptyCopy, "isEqualToString:", @"basefont") & 1) != 0 || (objc_msgSend(emptyCopy, "isEqualToString:", @"param") & 1) != 0 || (objc_msgSend(emptyCopy, "isEqualToString:", @"area"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [emptyCopy isEqualToString:@"source"];
  }

  return v4;
}

- (BOOL)topElementIsList
{
  topElement = [(KSXMLWriter *)self topElement];
  if ([topElement isEqualToString:@"ul"])
  {
    v3 = 1;
  }

  else
  {
    v3 = [topElement isEqualToString:@"ol"];
  }

  return v3;
}

- (void)startStyleElementWithType:(id)type
{
  if (type)
  {
    [(KSHTMLWriter *)self pushAttribute:@"type" value:type];
  }

  [(KSXMLWriter *)self startElement:@"style"];
}

- (void)writeStyleElementWithCSSString:(id)string
{
  stringCopy = string;
  [(KSHTMLWriter *)self startStyleElementWithType:@"text/css"];
  [(KSXMLWriter *)self writeString:stringCopy];

  [(KSXMLWriter *)self endElement];
}

- (void)writeParamElementWithName:(id)name value:(id)value
{
  nameCopy = name;
  valueCopy = value;
  if (nameCopy)
  {
    [(KSHTMLWriter *)self pushAttribute:@"name" value:nameCopy];
  }

  if (valueCopy)
  {
    [(KSHTMLWriter *)self pushAttribute:@"value" value:valueCopy];
  }

  [(KSXMLWriter *)self startElement:@"param"];
  [(KSXMLWriter *)self endElement];
}

- (void)startJavascriptElementWithSrc:(id)src
{
  srcCopy = src;
  docType = [(KSHTMLWriter *)self docType];
  v5 = [docType isEqualToString:KSHTMLWriterDocTypeHTML_5];

  if ((v5 & 1) == 0)
  {
    [(KSHTMLWriter *)self pushAttribute:@"type" value:@"text/javascript"];
  }

  if (srcCopy)
  {
    [(KSHTMLWriter *)self pushAttribute:@"src" value:srcCopy];
    [(KSXMLWriter *)self startElement:@"script"];
  }

  else
  {
    [(KSXMLWriter *)self startElement:@"script"];
    [(KSXMLWriter *)self writeString:@"\n"];
    [(KSXMLWriter *)self stopWritingInline];
  }
}

- (void)writeJavascript:(id)javascript useCDATA:(BOOL)a
{
  aCopy = a;
  javascriptCopy = javascript;
  [(KSHTMLWriter *)self startJavascriptElementWithSrc:0];
  if (aCopy)
  {
    [(KSHTMLWriter *)self startJavascriptCDATA];
    [(KSXMLWriter *)self writeString:javascriptCopy];
    [(KSHTMLWriter *)self endJavascriptCDATA];
  }

  else
  {
    [(KSXMLWriter *)self writeString:javascriptCopy];
  }

  [(KSXMLWriter *)self endElement];
}

- (void)writeJavascriptWithSrc:(id)src charset:(id)charset
{
  srcCopy = src;
  if (charset)
  {
    [(KSHTMLWriter *)self pushAttribute:@"charset" value:charset];
  }

  [(KSHTMLWriter *)self startJavascriptElementWithSrc:srcCopy];
  [(KSXMLWriter *)self endElement];
}

- (void)writeJavascriptWithSrc:(id)src encoding:(unint64_t)encoding
{
  srcCopy = src;
  if ([(KSXMLWriter *)self encoding]== encoding)
  {
    v6 = 0;
  }

  else
  {
    v7 = CFStringConvertNSStringEncodingToEncoding(encoding);
    v6 = CFStringConvertEncodingToIANACharSetName(v7);
  }

  [(KSHTMLWriter *)self writeJavascriptWithSrc:srcCopy charset:v6];
}

- (void)writeLinkWithHref:(id)href type:(id)type rel:(id)rel title:(id)title media:(id)media
{
  hrefCopy = href;
  typeCopy = type;
  relCopy = rel;
  titleCopy = title;
  mediaCopy = media;
  if (relCopy)
  {
    [(KSHTMLWriter *)self pushAttribute:@"rel" value:relCopy];
  }

  if (!typeCopy)
  {
    typeCopy = @"text/css";
  }

  [(KSHTMLWriter *)self pushAttribute:@"type" value:typeCopy];
  [(KSHTMLWriter *)self pushAttribute:@"href" value:hrefCopy];
  if (titleCopy)
  {
    [(KSHTMLWriter *)self pushAttribute:@"title" value:titleCopy];
  }

  if (mediaCopy)
  {
    [(KSHTMLWriter *)self pushAttribute:@"media" value:mediaCopy];
  }

  [(KSXMLWriter *)self startElement:@"link"];
  [(KSXMLWriter *)self endElement];
}

- (void)writeImageWithSrc:(id)src alt:(id)alt width:(id)width height:(id)height
{
  widthCopy = width;
  heightCopy = height;
  altCopy = alt;
  [(KSHTMLWriter *)self pushAttribute:@"src" value:src];
  [(KSHTMLWriter *)self pushAttribute:@"alt" value:altCopy];

  if (widthCopy)
  {
    [(KSHTMLWriter *)self pushAttribute:@"width" value:widthCopy];
  }

  if (heightCopy)
  {
    [(KSHTMLWriter *)self pushAttribute:@"height" value:heightCopy];
  }

  [(KSXMLWriter *)self startElement:@"img"];
  [(KSXMLWriter *)self endElement];
}

- (void)startAnchorElementWithHref:(id)href title:(id)title target:(id)target rel:(id)rel
{
  hrefCopy = href;
  titleCopy = title;
  targetCopy = target;
  relCopy = rel;
  if (hrefCopy)
  {
    [(KSHTMLWriter *)self pushAttribute:@"href" value:hrefCopy];
  }

  if (targetCopy)
  {
    [(KSHTMLWriter *)self pushAttribute:@"target" value:targetCopy];
  }

  if (titleCopy)
  {
    [(KSHTMLWriter *)self pushAttribute:@"title" value:titleCopy];
  }

  if (relCopy)
  {
    [(KSHTMLWriter *)self pushAttribute:@"rel" value:relCopy];
  }

  [(KSXMLWriter *)self startElement:@"a"];
}

- (void)writeLineBreak
{
  [(KSXMLWriter *)self startElement:@"br"];

  [(KSXMLWriter *)self endElement];
}

- (void)startElement:(id)element idName:(id)name className:(id)className
{
  elementCopy = element;
  nameCopy = name;
  classNameCopy = className;
  if (nameCopy)
  {
    [(KSHTMLWriter *)self pushAttribute:@"id" value:nameCopy];
  }

  if (classNameCopy)
  {
    [(KSHTMLWriter *)self pushAttribute:@"class" value:classNameCopy];
  }

  [(KSXMLWriter *)self startElement:elementCopy];
}

- (void)writeHTMLFormat:(id)format
{
  v4 = MEMORY[0x277CCACA8];
  formatCopy = format;
  v6 = [[v4 alloc] initWithFormat:formatCopy arguments:&v7];

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
  currentAttributes = [(KSXMLWriter *)&v6 currentAttributes];
  currentElementClassName = [(KSHTMLWriter *)self currentElementClassName];
  if (currentElementClassName)
  {
    [currentAttributes addAttribute:@"class" value:currentElementClassName];
  }

  return currentAttributes;
}

- (void)pushAttribute:(id)attribute value:(id)value
{
  attributeCopy = attribute;
  valueCopy = value;
  if ([attributeCopy isEqualToString:@"class"])
  {
    [(KSHTMLWriter *)self pushClassName:valueCopy];
  }

  else
  {
    if ([attributeCopy isEqualToString:@"id"])
    {
      [(NSMutableSet *)self->_IDs addObject:valueCopy];
    }

    v8.receiver = self;
    v8.super_class = KSHTMLWriter;
    [(KSXMLWriter *)&v8 pushAttribute:attributeCopy value:valueCopy];
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

- (void)setDocType:(id)type
{
  v4 = [type copy];
  docType = self->_docType;
  self->_docType = v4;
  v6 = v4;

  LOBYTE(docType) = [objc_opt_class() isDocTypeXHTML:v6];
  self->_isXHTML = docType;
}

- (void)startDocumentWithDocType:(id)type encoding:(unint64_t)encoding
{
  typeCopy = type;
  [(KSHTMLWriter *)self setDocType:typeCopy];
  v7.receiver = self;
  v7.super_class = KSHTMLWriter;
  [(KSXMLWriter *)&v7 startDocumentWithDocType:typeCopy encoding:encoding];
}

- (KSHTMLWriter)initWithOutputWriter:(id)writer docType:(id)type encoding:(unint64_t)encoding
{
  typeCopy = type;
  v9 = [(KSXMLWriter *)self initWithOutputWriter:writer encoding:encoding];
  v10 = v9;
  if (v9)
  {
    [(KSHTMLWriter *)v9 setDocType:typeCopy];
  }

  return v10;
}

- (KSHTMLWriter)initWithOutputWriter:(id)writer
{
  v10.receiver = self;
  v10.super_class = KSHTMLWriter;
  v3 = [(KSXMLWriter *)&v10 initWithOutputWriter:writer];
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

+ (BOOL)isDocTypeXHTML:(id)l
{
  lCopy = l;
  if ([lCopy isEqualToString:KSHTMLWriterDocTypeHTML_4_01_Strict] & 1) != 0 || (objc_msgSend(lCopy, "isEqualToString:", KSHTMLWriterDocTypeHTML_4_01_Transitional))
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [lCopy isEqualToString:KSHTMLWriterDocTypeHTML_4_01_Frameset] ^ 1;
  }

  return v4;
}

@end