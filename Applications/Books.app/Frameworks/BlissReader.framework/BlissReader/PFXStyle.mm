@interface PFXStyle
- (BOOL)mapStartElementWithState:(id)state;
- (void)mapEndElementWithState:(id)state;
@end

@implementation PFXStyle

- (BOOL)mapStartElementWithState:(id)state
{
  currentXmlStackEntry = [state currentXmlStackEntry];
  v6 = [currentXmlStackEntry valueForAttribute:"type"];
  if ([PFXCommonCssMimeType isEqualToString:v6])
  {
    supportedMediaTypes = [(PFXStyle *)self supportedMediaTypes];
    v8 = [currentXmlStackEntry valueForAttribute:"media"];
    if (!v8 || [supportedMediaTypes containsObject:v8])
    {
      v9 = [NSMutableString stringWithCapacity:0];
      streamAPI = [state streamAPI];
      v11 = xmlTextReaderDepth(streamAPI);
      while (xmlTextReaderRead(streamAPI) == 1)
      {
        if (xmlTextReaderDepth(streamAPI) == v11 && xmlTextReaderNodeType(streamAPI) == 15)
        {
          break;
        }

        if (xmlTextReaderNodeType(streamAPI) == 3)
        {
          [(NSMutableString *)v9 appendFormat:@"%@ %s", v9, xmlTextReaderConstValue(streamAPI)];
        }
      }

      if (-[NSMutableString length](v9, "length") && !+[PFXStylesheet readStylesheetFromStyleNodeContents:sourceURL:readerState:](PFXStylesheet, "readStylesheetFromStyleNodeContents:sourceURL:readerState:", v9, [state entryNSURL], state))
      {
        [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      }
    }
  }

  return 0;
}

- (void)mapEndElementWithState:(id)state
{
  v3 = +[TSUAssertionHandler currentHandler];
  v4 = [NSString stringWithUTF8String:"[PFXStyle mapEndElementWithState:]"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/compatibility/Publication/Common/Readers/PFXStyle.mm"];

  [v3 handleFailureInFunction:v4 file:v5 lineNumber:72 description:@"Bad call."];
}

@end