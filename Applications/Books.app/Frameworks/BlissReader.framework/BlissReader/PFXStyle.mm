@interface PFXStyle
- (BOOL)mapStartElementWithState:(id)a3;
- (void)mapEndElementWithState:(id)a3;
@end

@implementation PFXStyle

- (BOOL)mapStartElementWithState:(id)a3
{
  v5 = [a3 currentXmlStackEntry];
  v6 = [v5 valueForAttribute:"type"];
  if ([PFXCommonCssMimeType isEqualToString:v6])
  {
    v7 = [(PFXStyle *)self supportedMediaTypes];
    v8 = [v5 valueForAttribute:"media"];
    if (!v8 || [v7 containsObject:v8])
    {
      v9 = [NSMutableString stringWithCapacity:0];
      v10 = [a3 streamAPI];
      v11 = xmlTextReaderDepth(v10);
      while (xmlTextReaderRead(v10) == 1)
      {
        if (xmlTextReaderDepth(v10) == v11 && xmlTextReaderNodeType(v10) == 15)
        {
          break;
        }

        if (xmlTextReaderNodeType(v10) == 3)
        {
          [(NSMutableString *)v9 appendFormat:@"%@ %s", v9, xmlTextReaderConstValue(v10)];
        }
      }

      if (-[NSMutableString length](v9, "length") && !+[PFXStylesheet readStylesheetFromStyleNodeContents:sourceURL:readerState:](PFXStylesheet, "readStylesheetFromStyleNodeContents:sourceURL:readerState:", v9, [a3 entryNSURL], a3))
      {
        [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      }
    }
  }

  return 0;
}

- (void)mapEndElementWithState:(id)a3
{
  v3 = +[TSUAssertionHandler currentHandler];
  v4 = [NSString stringWithUTF8String:"[PFXStyle mapEndElementWithState:]"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/compatibility/Publication/Common/Readers/PFXStyle.mm"];

  [v3 handleFailureInFunction:v4 file:v5 lineNumber:72 description:@"Bad call."];
}

@end