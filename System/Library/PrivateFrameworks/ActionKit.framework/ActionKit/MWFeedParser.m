@interface MWFeedParser
- (BOOL)createEnclosureFromAttributes:(id)a3 andAddToItem:(id)a4;
- (BOOL)parse;
- (BOOL)processAtomLink:(id)a3 andAddToMWObject:(id)a4;
- (MWFeedParser)init;
- (MWFeedParser)initWithFeedRequest:(id)a3;
- (MWFeedParser)initWithFeedURL:(id)a3;
- (MWFeedParserDelegate)delegate;
- (void)abortParsingEarly;
- (void)dispatchFeedInfoToDelegate;
- (void)dispatchFeedItemToDelegate;
- (void)parser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6;
- (void)parser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7;
- (void)parser:(id)a3 foundCDATA:(id)a4;
- (void)parser:(id)a3 foundCharacters:(id)a4;
- (void)parser:(id)a3 parseErrorOccurred:(id)a4;
- (void)parser:(id)a3 validationErrorOccurred:(id)a4;
- (void)parserDidStartDocument:(id)a3;
- (void)parsingFailedWithErrorCode:(int)a3 andDescription:(id)a4;
- (void)parsingFinished;
- (void)reset;
- (void)setUrl:(id)a3;
- (void)startParsingData:(id)a3 textEncodingName:(id)a4;
- (void)stopParsing;
@end

@implementation MWFeedParser

- (MWFeedParserDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (BOOL)processAtomLink:(id)a3 andAddToMWObject:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [v6 objectForKey:@"rel"];

    if (v8)
    {
      v9 = [v6 objectForKey:@"rel"];
      v10 = [v9 isEqualToString:@"alternate"];

      if (!v10)
      {
        v11 = [v6 objectForKey:@"rel"];
        v12 = [v11 isEqualToString:@"enclosure"];

        if (v12 && [v7 isMemberOfClass:objc_opt_class()])
        {
          [(MWFeedParser *)self createEnclosureFromAttributes:v6 andAddToItem:v7];
LABEL_10:
          LOBYTE(v13) = 1;
          goto LABEL_11;
        }

        goto LABEL_7;
      }
    }

    else
    {
      v13 = [v6 objectForKey:@"href"];

      if (!v13)
      {
        goto LABEL_11;
      }
    }

    v14 = [v6 objectForKey:@"href"];
    [v7 setLink:v14];

    goto LABEL_10;
  }

LABEL_7:
  LOBYTE(v13) = 0;
LABEL_11:

  return v13;
}

- (BOOL)createEnclosureFromAttributes:(id)a3 andAddToItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    goto LABEL_8;
  }

  feedType = self->feedType;
  switch(feedType)
  {
    case 1:
      v9 = @"length";
      v10 = @"type";
      v11 = @"url";
      break;
    case 3:
      v12 = [v6 objectForKey:@"rel"];
      v13 = [v12 isEqualToString:@"enclosure"];

      if (!v13)
      {
        goto LABEL_8;
      }

      v9 = @"length";
      v10 = @"type";
      v11 = @"href";
      break;
    case 2:
      v9 = @"enc:length";
      v10 = @"enc:type";
      v11 = @"rdf:resource";
      break;
    default:
LABEL_8:
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      goto LABEL_22;
  }

  v16 = [v6 objectForKey:v11];
  v17 = [v6 objectForKey:v10];
  v19 = MEMORY[0x277CCABB0];
  v20 = [v6 objectForKey:v9];
  v18 = [v19 numberWithLongLong:{objc_msgSend(v20, "longLongValue")}];

  if (v16)
  {
    v21 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:3];
    [v21 setObject:v16 forKey:@"url"];
    if (v17)
    {
      [v21 setObject:v17 forKey:@"type"];
    }

    if (v18)
    {
      [v21 setObject:v18 forKey:@"length"];
    }

    v15 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v21];

    if (v15)
    {
      v22 = [v7 enclosures];

      if (v22)
      {
        v23 = [v7 enclosures];
        v24 = [v23 arrayByAddingObject:v15];
        [v7 setEnclosures:v24];
      }

      else
      {
        v23 = [MEMORY[0x277CBEA60] arrayWithObject:v15];
        [v7 setEnclosures:v23];
      }

      v14 = 1;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

LABEL_22:

  return v14;
}

- (void)setUrl:(id)a3
{
  v16 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [MEMORY[0x277CBEBC0] URLWithString:v16];

    v5 = v4;
  }

  else
  {
    v5 = v16;
  }

  v17 = v5;
  if (v5)
  {
    v6 = [v5 scheme];
    v7 = [v6 isEqualToString:@"feed"];

    if (v7)
    {
      v8 = MEMORY[0x277CBEBC0];
      v9 = MEMORY[0x277CCACA8];
      v10 = [v17 resourceSpecifier];
      if ([v10 hasPrefix:@"//"])
      {
        v11 = @"http:";
      }

      else
      {
        v11 = &stru_2850323E8;
      }

      v12 = [v17 resourceSpecifier];
      v13 = [v9 stringWithFormat:@"%@%@", v11, v12];
      v14 = [v8 URLWithString:v13];
    }

    else
    {
      v14 = [v17 copy];
    }
  }

  else
  {
    v14 = 0;
  }

  url = self->url;
  self->url = v14;
}

- (void)dispatchFeedItemToDelegate
{
  item = self->item;
  if (!item)
  {
    return;
  }

  v4 = [(MWFeedItem *)item summary];

  if (!v4)
  {
    v5 = [(MWFeedItem *)self->item content];
    [(MWFeedItem *)self->item setSummary:v5];

    [(MWFeedItem *)self->item setContent:0];
  }

  v6 = [(MWFeedItem *)self->item date];
  if (v6)
  {
    goto LABEL_7;
  }

  v7 = [(MWFeedItem *)self->item updated];

  if (v7)
  {
    v6 = [(MWFeedItem *)self->item updated];
    [(MWFeedItem *)self->item setDate:v6];
LABEL_7:
  }

  WeakRetained = objc_loadWeakRetained(&self->delegate);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = objc_loadWeakRetained(&self->delegate);
    [v10 feedParser:self didParseFeedItem:self->item];
  }

  [(MWFeedParser *)self setItem:0];
}

- (void)dispatchFeedInfoToDelegate
{
  if (self->info)
  {
    WeakRetained = objc_loadWeakRetained(&self->delegate);
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = objc_loadWeakRetained(&self->delegate);
      [v5 feedParser:self didParseFeedInfo:self->info];
    }

    [(MWFeedParser *)self setInfo:0];
  }
}

- (void)parser:(id)a3 validationErrorOccurred:(id)a4
{
  v5 = [a4 localizedDescription];
  [(MWFeedParser *)self parsingFailedWithErrorCode:4 andDescription:v5];
}

- (void)parser:(id)a3 parseErrorOccurred:(id)a4
{
  if (!self->aborted)
  {
    v6 = [a4 localizedDescription];
    [(MWFeedParser *)self parsingFailedWithErrorCode:3 andDescription:v6];
  }
}

- (void)parserDidStartDocument:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->delegate);
    [v6 feedParserDidStart:self];
  }
}

- (void)parser:(id)a3 foundCharacters:(id)a4
{
  currentText = self->currentText;
  if (self->parseStructureAsContent)
  {
    v6 = [a4 stringByEncodingHTMLEntities];
    [(NSMutableString *)currentText appendString:v6];
  }

  else
  {
    v5 = self->currentText;

    [(NSMutableString *)v5 appendString:a4];
  }
}

- (void)parser:(id)a3 foundCDATA:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v6 encoding:4];
  if (v7 || (v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v6 encoding:5]) != 0)
  {
    [(NSMutableString *)self->currentText appendString:v7];
  }
}

- (void)parser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6
{
  v33 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = objc_autoreleasePoolPush();
  if (self->parseStructureAsContent)
  {
    v14 = [(NSString *)self->currentPath length];
    if (v14 > [(NSString *)self->pathOfElementWithXHTMLType length])
    {
      if (([v10 isEqualToString:@"br"] & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"img") & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"input") & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"hr") & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"link") & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"base") & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"basefont") & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"frame") & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"meta") & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"area") & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"col") & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"param") & 1) == 0)
      {
        [(NSMutableString *)self->currentText appendFormat:@"</%@>", v10];
      }

      goto LABEL_63;
    }

    self->parseStructureAsContent = 0;
    [(MWFeedParser *)self setPathOfElementWithXHTMLType:0];
  }

  currentText = self->currentText;
  if (currentText)
  {
    v16 = [(NSMutableString *)currentText stringByRemovingNewLinesAndWhitespace];
    feedType = self->feedType;
    if (feedType != 3)
    {
      if (feedType != 2)
      {
        if (feedType != 1)
        {
          goto LABEL_92;
        }

        if (![(NSString *)self->currentPath isEqualToString:@"/rss/channel/item/title"])
        {
          if (![(NSString *)self->currentPath isEqualToString:@"/rss/channel/item/link"])
          {
            if ([(NSString *)self->currentPath isEqualToString:@"/rss/channel/item/author"]|| [(NSString *)self->currentPath isEqualToString:@"/rss/channel/item/dc:creator"])
            {
              goto LABEL_25;
            }

            if (![(NSString *)self->currentPath isEqualToString:@"/rss/channel/item/guid"])
            {
              if (![(NSString *)self->currentPath isEqualToString:@"/rss/channel/item/description"])
              {
                if (![(NSString *)self->currentPath isEqualToString:@"/rss/channel/item/content:encoded"])
                {
                  if ([(NSString *)self->currentPath isEqualToString:@"/rss/channel/item/pubDate"])
                  {
                    if ([v16 length])
                    {
                      v26 = MEMORY[0x277CBEAA8];
                      v27 = v16;
                      v28 = 1;
LABEL_78:
                      v29 = [v26 dateFromInternetDateTimeString:v27 formatHint:v28];
                      [(MWFeedItem *)self->item setDate:v29];
LABEL_79:

                      goto LABEL_62;
                    }

                    goto LABEL_62;
                  }

                  if ([(NSString *)self->currentPath isEqualToString:@"/rss/channel/item/enclosure"])
                  {
LABEL_84:
                    [(MWFeedParser *)self createEnclosureFromAttributes:self->currentElementAttributes andAddToItem:self->item];
                    goto LABEL_62;
                  }

                  if (![(NSString *)self->currentPath isEqualToString:@"/rss/channel/item/dc:date"])
                  {
                    if (self->feedParseType == 1)
                    {
                      goto LABEL_92;
                    }

                    if ([(NSString *)self->currentPath isEqualToString:@"/rss/channel/title"])
                    {
                      goto LABEL_111;
                    }

                    if ([(NSString *)self->currentPath isEqualToString:@"/rss/channel/description"])
                    {
                      goto LABEL_114;
                    }

                    currentPath = self->currentPath;
                    v23 = @"/rss/channel/link";
LABEL_49:
                    if ([(NSString *)currentPath isEqualToString:v23])
                    {
                      if (![v16 length])
                      {
                        goto LABEL_62;
                      }

                      info = self->info;
                      goto LABEL_31;
                    }

LABEL_92:

                    goto LABEL_93;
                  }

LABEL_76:
                  if ([v16 length])
                  {
                    v26 = MEMORY[0x277CBEAA8];
                    v27 = v16;
                    v28 = 2;
                    goto LABEL_78;
                  }

LABEL_62:

LABEL_63:
                  v25 = [(NSString *)self->currentPath stringByDeletingLastPathComponent];
                  [(MWFeedParser *)self setCurrentPath:v25];

                  goto LABEL_64;
                }

LABEL_60:
                if ([v16 length])
                {
                  [(MWFeedItem *)self->item setContent:v16];
                }

                goto LABEL_62;
              }

LABEL_56:
              if (![v16 length])
              {
                goto LABEL_62;
              }

              item = self->item;
LABEL_58:
              [item setSummary:v16];
              goto LABEL_62;
            }

            goto LABEL_53;
          }

LABEL_29:
          if (![v16 length])
          {
            goto LABEL_62;
          }

          info = self->item;
LABEL_31:
          [info setLink:v16];
          goto LABEL_62;
        }

LABEL_33:
        if (![v16 length])
        {
          goto LABEL_62;
        }

        v19 = self->item;
LABEL_35:
        [v19 setTitle:v16];
        goto LABEL_62;
      }

      if ([(NSString *)self->currentPath isEqualToString:@"/rdf:RDF/item/title"])
      {
        goto LABEL_33;
      }

      if ([(NSString *)self->currentPath isEqualToString:@"/rdf:RDF/item/link"])
      {
        goto LABEL_29;
      }

      if ([(NSString *)self->currentPath isEqualToString:@"/rdf:RDF/item/description"])
      {
        goto LABEL_56;
      }

      if ([(NSString *)self->currentPath isEqualToString:@"/rdf:RDF/item/content:encoded"])
      {
        goto LABEL_60;
      }

      if ([(NSString *)self->currentPath isEqualToString:@"/rdf:RDF/item/dc:identifier"])
      {
LABEL_53:
        if ([v16 length])
        {
          [(MWFeedItem *)self->item setIdentifier:v16];
        }

        goto LABEL_62;
      }

      if ([(NSString *)self->currentPath isEqualToString:@"/rdf:RDF/item/dc:creator"])
      {
        goto LABEL_25;
      }

      if ([(NSString *)self->currentPath isEqualToString:@"/rdf:RDF/item/dc:date"])
      {
        goto LABEL_76;
      }

      if ([(NSString *)self->currentPath isEqualToString:@"/rdf:RDF/item/enc:enclosure"])
      {
        goto LABEL_84;
      }

      if (self->feedParseType == 1)
      {
        goto LABEL_92;
      }

      if (![(NSString *)self->currentPath isEqualToString:@"/rdf:RDF/channel/title"])
      {
        if (![(NSString *)self->currentPath isEqualToString:@"/rdf:RDF/channel/description"])
        {
          currentPath = self->currentPath;
          v23 = @"/rdf:RDF/channel/link";
          goto LABEL_49;
        }

LABEL_114:
        if (![v16 length])
        {
          goto LABEL_62;
        }

        item = self->info;
        goto LABEL_58;
      }

LABEL_111:
      if (![v16 length])
      {
        goto LABEL_62;
      }

      v19 = self->info;
      goto LABEL_35;
    }

    if ([(NSString *)self->currentPath isEqualToString:@"/feed/entry/title"])
    {
      goto LABEL_33;
    }

    if ([(NSString *)self->currentPath isEqualToString:@"/feed/entry/link"])
    {
      currentElementAttributes = self->currentElementAttributes;
      v21 = self->item;
    }

    else
    {
      if ([(NSString *)self->currentPath isEqualToString:@"/feed/entry/id"])
      {
        goto LABEL_53;
      }

      if ([(NSString *)self->currentPath isEqualToString:@"/feed/entry/summary"])
      {
        goto LABEL_56;
      }

      if ([(NSString *)self->currentPath isEqualToString:@"/feed/entry/content"])
      {
        goto LABEL_60;
      }

      if ([(NSString *)self->currentPath isEqualToString:@"/feed/entry/author/name"]|| [(NSString *)self->currentPath isEqualToString:@"/feed/entry/dc:creator"])
      {
LABEL_25:
        if ([v16 length])
        {
          [(MWFeedItem *)self->item setAuthor:v16];
        }

        goto LABEL_62;
      }

      if ([(NSString *)self->currentPath isEqualToString:@"/feed/entry/published"])
      {
        goto LABEL_76;
      }

      if ([(NSString *)self->currentPath isEqualToString:@"/feed/entry/updated"])
      {
        if (![v16 length])
        {
          goto LABEL_62;
        }

        v29 = [MEMORY[0x277CBEAA8] dateFromInternetDateTimeString:v16 formatHint:2];
        [(MWFeedItem *)self->item setUpdated:v29];
        goto LABEL_79;
      }

      if (self->feedParseType == 1)
      {
        goto LABEL_92;
      }

      if ([(NSString *)self->currentPath isEqualToString:@"/feed/title"])
      {
        goto LABEL_111;
      }

      if ([(NSString *)self->currentPath isEqualToString:@"/feed/description"])
      {
        goto LABEL_114;
      }

      if (![(NSString *)self->currentPath isEqualToString:@"/feed/link"])
      {
        goto LABEL_92;
      }

      currentElementAttributes = self->currentElementAttributes;
      v21 = self->info;
    }

    [(MWFeedParser *)self processAtomLink:currentElementAttributes andAddToMWObject:v21];
    goto LABEL_62;
  }

LABEL_93:
  v30 = [(NSString *)self->currentPath stringByDeletingLastPathComponent];
  [(MWFeedParser *)self setCurrentPath:v30];

  v31 = self->feedType;
  if ((v31 - 1) <= 1)
  {
    if ([v12 isEqualToString:@"item"])
    {
LABEL_98:
      [(MWFeedParser *)self dispatchFeedItemToDelegate];
      goto LABEL_99;
    }

    v31 = self->feedType;
  }

  if (v31 == 3 && [v12 isEqualToString:@"entry"])
  {
    goto LABEL_98;
  }

LABEL_99:
  v32 = self->feedType;
  if (v32 == 1)
  {
    if ([v12 isEqualToString:@"rss"])
    {
      goto LABEL_107;
    }

    v32 = self->feedType;
  }

  if (v32 != 2)
  {
LABEL_105:
    if (v32 != 3 || ![v12 isEqualToString:@"feed"])
    {
      goto LABEL_64;
    }

    goto LABEL_107;
  }

  if (([v12 isEqualToString:@"rdf:RDF"] & 1) == 0)
  {
    v32 = self->feedType;
    goto LABEL_105;
  }

LABEL_107:
  if (self->info && self->feedParseType != 1)
  {
    [(MWFeedParser *)self dispatchFeedInfoToDelegate];
  }

LABEL_64:
  objc_autoreleasePoolPop(v13);
}

- (void)parser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7
{
  v47 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = objc_autoreleasePoolPush();
  v18 = [(NSString *)self->currentPath stringByAppendingPathComponent:v15];
  [(MWFeedParser *)self setCurrentPath:v18];

  [(MWFeedParser *)self setCurrentElementAttributes:v16];
  if (self->parseStructureAsContent)
  {
    v38 = v15;
    v39 = v14;
    v40 = v13;
    v41 = v12;
    [(NSMutableString *)self->currentText appendFormat:@"<%@", v13];
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v37 = v16;
    v19 = v16;
    v20 = [v19 countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v43;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v43 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v42 + 1) + 8 * i);
          currentText = self->currentText;
          v26 = [v19 objectForKey:v24];
          v27 = [v26 stringByEncodingHTMLEntities];
          [(NSMutableString *)currentText appendFormat:@" %@=%@", v24, v27];
        }

        v21 = [v19 countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v21);
    }

    v13 = v40;
    if (([v40 isEqualToString:@"br"] & 1) != 0 || (objc_msgSend(v40, "isEqualToString:", @"img") & 1) != 0 || (objc_msgSend(v40, "isEqualToString:", @"input") & 1) != 0 || (objc_msgSend(v40, "isEqualToString:", @"hr") & 1) != 0 || (objc_msgSend(v40, "isEqualToString:", @"link") & 1) != 0 || (objc_msgSend(v40, "isEqualToString:", @"base") & 1) != 0 || (objc_msgSend(v40, "isEqualToString:", @"basefont") & 1) != 0 || (objc_msgSend(v40, "isEqualToString:", @"frame") & 1) != 0 || (objc_msgSend(v40, "isEqualToString:", @"meta") & 1) != 0 || (objc_msgSend(v40, "isEqualToString:", @"area") & 1) != 0 || (objc_msgSend(v40, "isEqualToString:", @"col") & 1) != 0 || objc_msgSend(v40, "isEqualToString:", @"param"))
    {
      v28 = self->currentText;
      v29 = @" />";
    }

    else
    {
      v28 = self->currentText;
      v29 = @">";
    }

    [(NSMutableString *)v28 appendString:v29];
    v12 = v41;
    v15 = v38;
    v14 = v39;
    v16 = v37;
    goto LABEL_54;
  }

  v30 = [(MWFeedParser *)self currentText];
  [v30 setString:&stru_2850323E8];

  feedType = self->feedType;
  if (!feedType)
  {
    if ([v15 isEqualToString:@"rss"])
    {
      v32 = 1;
    }

    else if ([v15 isEqualToString:@"rdf:RDF"])
    {
      v32 = 2;
    }

    else
    {
      if (![v15 isEqualToString:@"feed"])
      {
        [(MWFeedParser *)self parsingFailedWithErrorCode:3 andDescription:@"XML document is not a valid web feed document."];
        goto LABEL_54;
      }

      v32 = 3;
    }

    self->feedType = v32;
    goto LABEL_54;
  }

  if (self->feedParseType != 1)
  {
    if (feedType == 1)
    {
      if ([(NSString *)self->currentPath isEqualToString:@"/rss/channel"])
      {
        goto LABEL_54;
      }

      feedType = self->feedType;
    }

    if (feedType == 2)
    {
      if ([(NSString *)self->currentPath isEqualToString:@"/rdf:RDF/channel"])
      {
        goto LABEL_54;
      }

      feedType = self->feedType;
    }

    if (feedType == 3)
    {
      if ([(NSString *)self->currentPath isEqualToString:@"/feed"])
      {
        goto LABEL_54;
      }

      feedType = self->feedType;
    }
  }

  if (feedType == 1)
  {
    if ([(NSString *)self->currentPath isEqualToString:@"/rss/channel/item"])
    {
      goto LABEL_42;
    }

    feedType = self->feedType;
  }

  if (feedType == 2)
  {
    if (![(NSString *)self->currentPath isEqualToString:@"/rdf:RDF/item"])
    {
      feedType = self->feedType;
      goto LABEL_40;
    }

LABEL_42:
    if (self->hasEncounteredItems || (self->hasEncounteredItems = 1, self->feedParseType == 1) || ([(MWFeedParser *)self dispatchFeedInfoToDelegate], self->feedParseType != 2))
    {
      v33 = objc_alloc_init(MWFeedItem);
      [(MWFeedParser *)self setItem:v33];
    }

    else
    {
      [(MWFeedParser *)self abortParsingEarly];
    }

    goto LABEL_54;
  }

LABEL_40:
  if (feedType != 3)
  {
    goto LABEL_54;
  }

  if ([(NSString *)self->currentPath isEqualToString:@"/feed/entry"])
  {
    goto LABEL_42;
  }

  if (self->feedType == 3)
  {
    v35 = [v16 objectForKey:@"type"];
    v36 = v35;
    if (v35 && [v35 isEqualToString:@"xhtml"])
    {
      self->parseStructureAsContent = 1;
      [(MWFeedParser *)self setPathOfElementWithXHTMLType:self->currentPath];
    }
  }

LABEL_54:
  objc_autoreleasePoolPop(v17);

  v34 = *MEMORY[0x277D85DE8];
}

- (void)parsingFailedWithErrorCode:(int)a3 andDescription:(id)a4
{
  if (!self->parsingComplete)
  {
    *&self->failed = 257;
    self->parsing = 0;
    v6 = MEMORY[0x277CCA9B8];
    v7 = a3;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObject:a4 forKey:*MEMORY[0x277CCA450]];
    v13 = [v6 errorWithDomain:@"MWFeedParser" code:v7 userInfo:v8];

    feedParser = self->feedParser;
    if (feedParser)
    {
      self->aborted = 1;
      [(NSXMLParser *)feedParser abortParsing];
    }

    [(MWFeedParser *)self reset];
    WeakRetained = objc_loadWeakRetained(&self->delegate);
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = objc_loadWeakRetained(&self->delegate);
      [v12 feedParser:self didFailWithError:v13];
    }
  }
}

- (void)parsingFinished
{
  if (!self->parsingComplete)
  {
    self->parsing = 0;
    self->parsingComplete = 1;
    WeakRetained = objc_loadWeakRetained(&self->delegate);
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = objc_loadWeakRetained(&self->delegate);
      [v6 feedParserDidFinish:self];
    }

    [(MWFeedParser *)self reset];
  }
}

- (void)stopParsing
{
  if (self->parsing && !self->parsingComplete)
  {
    self->stopped = 1;
    [(NSURLSessionDataTask *)self->urlTask cancel];
    [(MWFeedParser *)self setUrlTask:0];
    self->aborted = 1;
    [(NSXMLParser *)self->feedParser abortParsing];

    [(MWFeedParser *)self parsingFinished];
  }
}

- (void)abortParsingEarly
{
  self->aborted = 1;
  [(NSXMLParser *)self->feedParser abortParsing];

  [(MWFeedParser *)self parsingFinished];
}

- (void)startParsingData:(id)a3 textEncodingName:(id)a4
{
  v25 = a3;
  v6 = a4;
  if (!v25)
  {
    v25 = 0;
    goto LABEL_28;
  }

  if (self->feedParser)
  {
    goto LABEL_28;
  }

  v7 = objc_alloc_init(MWFeedInfo);
  v8 = [(MWFeedParser *)self url];
  [(MWFeedInfo *)v7 setUrl:v8];

  [(MWFeedParser *)self setInfo:v7];
  v9 = [(__CFString *)v6 lowercaseString];
  v10 = [v9 isEqualToString:@"utf-8"];

  if (v10)
  {
    goto LABEL_18;
  }

  if (v6 && (v11 = CFStringConvertIANACharSetNameToEncoding(v6), v11 != -1) && (v12 = CFStringConvertEncodingToNSStringEncoding(v11)) != 0 && (v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v25 encoding:v12]) != 0 || (v13 = objc_msgSend(objc_alloc(MEMORY[0x277CCACA8]), "initWithData:encoding:", v25, 4)) != 0 || (v13 = objc_msgSend(objc_alloc(MEMORY[0x277CCACA8]), "initWithData:encoding:", v25, 5)) != 0)
  {
    v14 = v13;
  }

  else
  {
    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v25 encoding:30];

    if (!v14)
    {
      goto LABEL_26;
    }
  }

  if ([v14 hasPrefix:@"<?xml"])
  {
    v15 = [v14 rangeOfString:@"?>"];
    if (v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = [v14 substringToIndex:v15];
      if ([v16 rangeOfString:@"encoding=UTF-8" options:1] != 0x7FFFFFFFFFFFFFFFLL || (v17 = objc_msgSend(v16, "rangeOfString:", @"encoding="), v17 == 0x7FFFFFFFFFFFFFFFLL) || (v19 = v17, v20 = objc_msgSend(v16, "rangeOfString:options:range:", @", 0, v17 + v18, objc_msgSend(v16, "length"") - (v17 + v18)), v20 == 0x7FFFFFFFFFFFFFFFLL))
      {
      }

      else
      {
        v24 = [v14 stringByReplacingCharactersInRange:v19 withString:{v21 - v19 + v20, @"encoding=UTF-8"}];

        v14 = v24;
        if (!v24)
        {
          goto LABEL_26;
        }
      }
    }
  }

  v25 = [v14 dataUsingEncoding:4];

  if (v25)
  {
LABEL_18:
    v22 = [objc_alloc(MEMORY[0x277CCAE70]) initWithData:v25];
    [(MWFeedParser *)self setFeedParser:v22];
    feedParser = self->feedParser;
    if (feedParser)
    {
      [(NSXMLParser *)feedParser setDelegate:self];
      [(NSXMLParser *)self->feedParser setShouldProcessNamespaces:1];
      [(NSXMLParser *)self->feedParser parse];
      [(MWFeedParser *)self setFeedParser:0];
    }

    else
    {
      [(MWFeedParser *)self parsingFailedWithErrorCode:3 andDescription:@"Feed not a valid XML document"];
    }

    goto LABEL_27;
  }

LABEL_26:
  [(MWFeedParser *)self parsingFailedWithErrorCode:3 andDescription:@"Error with feed encoding"];
  v25 = 0;
LABEL_27:

LABEL_28:
}

- (BOOL)parse
{
  [(MWFeedParser *)self reset];
  if (self->url && (WeakRetained = objc_loadWeakRetained(&self->delegate), WeakRetained, WeakRetained))
  {
    if (!self->parsing)
    {
      *&self->aborted = 256;
      self->parsingComplete = 0;
      v8 = [MEMORY[0x277CBABC8] defaultSessionConfiguration];
      [v8 setURLCache:0];
      v9 = [MEMORY[0x277CBABB8] sessionWithConfiguration:v8];
      v10 = [(MWFeedParser *)self request];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __21__MWFeedParser_parse__block_invoke;
      v13[3] = &unk_278C1BB20;
      v13[4] = self;
      v11 = [v9 dataTaskWithRequest:v10 completionHandler:v13];
      urlTask = self->urlTask;
      self->urlTask = v11;

      [(NSURLSessionDataTask *)self->urlTask resume];
      return 1;
    }

    v4 = @"Cannot start parsing as parsing is already in progress";
    v5 = self;
    v6 = 5;
  }

  else
  {
    v4 = @"Delegate or URL not specified";
    v5 = self;
    v6 = 1;
  }

  [(MWFeedParser *)v5 parsingFailedWithErrorCode:v6 andDescription:v4];
  return 0;
}

void __21__MWFeedParser_parse__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v13 = a2;
  v7 = a3;
  v8 = a4;
  v9 = *(a1 + 32);
  if (!v13 || v8)
  {
    [*(a1 + 32) setUrlTask:0];
    v11 = *(a1 + 32);
    v12 = [v8 localizedDescription];
    [v11 parsingFailedWithErrorCode:2 andDescription:v12];
  }

  else
  {
    if ((v9[74] & 1) == 0)
    {
      v10 = [v7 textEncodingName];
      [v9 startParsingData:v13 textEncodingName:v10];

      v9 = *(a1 + 32);
    }

    [v9 setUrlTask:0];
  }
}

- (void)reset
{
  [(MWFeedParser *)self setUrlTask:0];
  self->feedType = 0;
  [(MWFeedParser *)self setCurrentPath:@"/"];
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [(MWFeedParser *)self setCurrentText:v3];

  [(MWFeedParser *)self setItem:0];
  [(MWFeedParser *)self setInfo:0];
  [(MWFeedParser *)self setCurrentElementAttributes:0];
  self->parseStructureAsContent = 0;
  [(MWFeedParser *)self setPathOfElementWithXHTMLType:0];
  self->hasEncounteredItems = 0;
}

- (MWFeedParser)initWithFeedRequest:(id)a3
{
  v4 = a3;
  v5 = [(MWFeedParser *)self init];
  if (v5)
  {
    v6 = [v4 URL];
    [(MWFeedParser *)v5 setUrl:v6];

    [(MWFeedParser *)v5 setRequest:v4];
  }

  return v5;
}

- (MWFeedParser)initWithFeedURL:(id)a3
{
  v4 = a3;
  v5 = [(MWFeedParser *)self init];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [MEMORY[0x277CBEBC0] URLWithString:v4];

      v4 = v6;
    }

    [(MWFeedParser *)v5 setUrl:v4];
    v7 = [objc_alloc(MEMORY[0x277CBAB50]) initWithURL:v5->url cachePolicy:4 timeoutInterval:60.0];
    [v7 _setNonAppInitiated:1];
    [v7 setValue:@"MWFeedParser" forHTTPHeaderField:@"User-Agent"];
    [(MWFeedParser *)v5 setRequest:v7];
  }

  return v5;
}

- (MWFeedParser)init
{
  v14.receiver = self;
  v14.super_class = MWFeedParser;
  v2 = [(MWFeedParser *)&v14 init];
  v3 = v2;
  if (v2)
  {
    v2->feedParseType = 0;
    v4 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
    v5 = objc_alloc_init(MEMORY[0x277CCA968]);
    dateFormatterRFC822 = v3->dateFormatterRFC822;
    v3->dateFormatterRFC822 = v5;

    v7 = objc_alloc_init(MEMORY[0x277CCA968]);
    dateFormatterRFC3339 = v3->dateFormatterRFC3339;
    v3->dateFormatterRFC3339 = v7;

    [(NSDateFormatter *)v3->dateFormatterRFC822 setLocale:v4];
    [(NSDateFormatter *)v3->dateFormatterRFC3339 setLocale:v4];
    v9 = v3->dateFormatterRFC822;
    v10 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
    [(NSDateFormatter *)v9 setTimeZone:v10];

    v11 = v3->dateFormatterRFC3339;
    v12 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
    [(NSDateFormatter *)v11 setTimeZone:v12];
  }

  return v3;
}

@end