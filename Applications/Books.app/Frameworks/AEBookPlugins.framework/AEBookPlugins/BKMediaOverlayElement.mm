@interface BKMediaOverlayElement
+ (id)newMediaOverlayElement:(id)element withParserInfo:(__CFDictionary *)info;
+ (int)parseSMIL:(id)l contentSubpath:(id)subpath bookBasePath:(id)path bookDatabaseKey:(id)key managedObjectContext:(id)context;
@end

@implementation BKMediaOverlayElement

+ (id)newMediaOverlayElement:(id)element withParserInfo:(__CFDictionary *)info
{
  elementCopy = element;
  v7 = ITEpubMediaOverlayParser::audioStartForElement(info, v6);
  v9 = ITEpubMediaOverlayParser::audioEndForElement(info, v8);
  [v7 doubleValue];
  v11 = v10;
  [v9 doubleValue];
  if (v11 <= v12)
  {
    v13 = [elementCopy newByClass:objc_opt_class()];
    [v13 setAudioHref:{ITEpubMediaOverlayParser::audioHrefForElement(info, v14)}];
    [v13 setAudioStart:v7];
    [v13 setAudioEnd:v9];
    [v13 setIndentationLevel:{ITEpubMediaOverlayParser::indentationLevelForElement(info, v15)}];
    [v13 setCategory:{ITEpubMediaOverlayParser::categoryForElement(info, v16)}];
    [v13 setElementId:{ITEpubMediaOverlayParser::textElementIdForElement(info, v17)}];
    [v13 setDocumentHref:{ITEpubMediaOverlayParser::textHrefForElement(info, v18)}];
    [v13 setSequenceSource:{ITEpubMediaOverlayParser::sequenceSourceForElement(info, v19)}];
    indentationLevel = [v13 indentationLevel];

    if (!indentationLevel)
    {
      v21 = [[NSNumber alloc] initWithInt:0];
      [v13 setIndentationLevel:v21];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (int)parseSMIL:(id)l contentSubpath:(id)subpath bookBasePath:(id)path bookDatabaseKey:(id)key managedObjectContext:(id)context
{
  lCopy = l;
  subpathCopy = subpath;
  pathCopy = path;
  key;
  context;
  operator new();
}

@end