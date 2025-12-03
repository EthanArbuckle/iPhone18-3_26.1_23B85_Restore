@interface ENWebContentTransformer
- (ENWebContentTransformer)init;
- (id)archiveBaseURLFromURL:(id)l;
- (id)filenameFromURL:(id)l;
- (id)htmlFromWebArchive:(id)archive;
- (id)mimeTypeFromFilename:(id)filename;
- (id)resourceFromWebResource:(id)resource;
- (id)sanitizeURLAttribute:(id)attribute;
- (id)transformedValue:(id)value;
- (void)parser:(id)parser didEndElement:(id)element;
- (void)parser:(id)parser didStartElement:(id)element attributes:(id)attributes;
- (void)parser:(id)parser foundCharacters:(id)characters;
@end

@implementation ENWebContentTransformer

- (void)parser:(id)parser foundCharacters:(id)characters
{
  charactersCopy = characters;
  if ([(ENWebContentTransformer *)self inTitleElement])
  {
    title = [(ENWebContentTransformer *)self title];
    v6 = [title stringByAppendingString:charactersCopy];
    [(ENWebContentTransformer *)self setTitle:v6];
  }

  else
  {
    if ([(ENWebContentTransformer *)self ignoreElementCount])
    {
      goto LABEL_6;
    }

    title = [(ENWebContentTransformer *)self enmlWriter];
    [title writeString:charactersCopy];
  }

LABEL_6:
}

- (void)parser:(id)parser didEndElement:(id)element
{
  elementCopy = element;
  if (-[ENWebContentTransformer inTitleElement](self, "inTitleElement") && [elementCopy isEqualToString:@"title"])
  {
    [(ENWebContentTransformer *)self setInTitleElement:0];
  }

  else if ([(ENWebContentTransformer *)self ignoreElementCount])
  {
    [(ENWebContentTransformer *)self setIgnoreElementCount:[(ENWebContentTransformer *)self ignoreElementCount]- 1];
  }

  else
  {
    skipTags = [(ENWebContentTransformer *)self skipTags];
    v6 = [skipTags containsObject:elementCopy];

    if ((v6 & 1) == 0)
    {
      enmlWriter = [(ENWebContentTransformer *)self enmlWriter];
      [enmlWriter endElement];
    }
  }
}

- (void)parser:(id)parser didStartElement:(id)element attributes:(id)attributes
{
  v72 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  attributesCopy = attributes;
  baseURL = [(ENWebContentTransformer *)self baseURL];
  if (baseURL)
  {
LABEL_2:

    goto LABEL_3;
  }

  if ([elementCopy isEqualToString:@"base"])
  {
    baseURL = [attributesCopy objectForKey:@"href"];
    if (baseURL)
    {
      v11 = [MEMORY[0x277CBEBC0] URLWithString:baseURL];
      [(ENWebContentTransformer *)self setBaseURL:v11];
    }

    goto LABEL_2;
  }

LABEL_3:
  title = [(ENWebContentTransformer *)self title];
  if (title)
  {

    goto LABEL_10;
  }

  if (![elementCopy isEqualToString:@"title"])
  {
LABEL_10:
    if ([(ENWebContentTransformer *)self ignoreElementCount])
    {
      v12 = [(ENWebContentTransformer *)self ignoreElementCount]+ 1;
      selfCopy2 = self;
LABEL_12:
      [(ENWebContentTransformer *)selfCopy2 setIgnoreElementCount:v12];
      goto LABEL_54;
    }

    skipTags = [(ENWebContentTransformer *)self skipTags];
    v15 = [skipTags containsObject:elementCopy];

    if (v15)
    {
      goto LABEL_54;
    }

    ignorableTags = [(ENWebContentTransformer *)self ignorableTags];
    v17 = [ignorableTags containsObject:elementCopy];

    if (v17)
    {
      selfCopy2 = self;
      v12 = 1;
      goto LABEL_12;
    }

    v18 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:attributesCopy];
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v59 = attributesCopy;
    v19 = attributesCopy;
    v20 = [v19 countByEnumeratingWithState:&v66 objects:v71 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v67;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v67 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v66 + 1) + 8 * i);
          ignorableAttributes = [(ENWebContentTransformer *)self ignorableAttributes];
          v26 = [ignorableAttributes containsObject:v24];

          if (v26)
          {
            [v18 removeObjectForKey:v24];
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v66 objects:v71 count:16];
      }

      while (v21);
    }

    v27 = elementCopy;
    if ([(__CFString *)v27 isEqualToString:@"img"])
    {
      enmlWriter2 = [v18 objectForKeyedSubscript:@"src"];
      v61 = [(ENWebContentTransformer *)self sanitizeURLAttribute:enmlWriter2];
      if (!v61)
      {
        [(ENWebContentTransformer *)self setIgnoreElementCount:1];
        attributesCopy = v59;
LABEL_48:

        goto LABEL_53;
      }

      v56 = enmlWriter2;
      v57 = v27;
      v58 = elementCopy;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      webArchive = [(ENWebContentTransformer *)self webArchive];
      subresources = [webArchive subresources];

      obj = subresources;
      v31 = [subresources countByEnumeratingWithState:&v62 objects:v70 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v63;
        while (2)
        {
          for (j = 0; j != v32; ++j)
          {
            if (*v63 != v33)
            {
              objc_enumerationMutation(obj);
            }

            v35 = *(*(&v62 + 1) + 8 * j);
            v36 = [v35 URL];
            absoluteString = [v36 absoluteString];
            absoluteString2 = [v61 absoluteString];
            v39 = [absoluteString isEqualToString:absoluteString2];

            if (v39)
            {
              v40 = [(ENWebContentTransformer *)self resourceFromWebResource:v35];
              if (v40)
              {
                v50 = v40;
                note = [(ENWebContentTransformer *)self note];
                [note addResource:v50];

                [v18 removeObjectForKey:@"src"];
                enmlWriter = [(ENWebContentTransformer *)self enmlWriter];
                dataHash = [v50 dataHash];
                mimeType = [v50 mimeType];
                [enmlWriter writeResourceWithDataHash:dataHash mime:mimeType attributes:v18];

                [(ENWebContentTransformer *)self setIgnoreElementCount:1];
                elementCopy = v58;
                attributesCopy = v59;
                enmlWriter2 = v56;
                v27 = v57;
                goto LABEL_48;
              }
            }
          }

          v32 = [obj countByEnumeratingWithState:&v62 objects:v70 count:16];
          if (v32)
          {
            continue;
          }

          break;
        }
      }

      absoluteString3 = [v61 absoluteString];
      [v18 setObject:absoluteString3 forKeyedSubscript:@"src"];

      elementCopy = v58;
      attributesCopy = v59;
      v27 = v57;
    }

    else if ([(__CFString *)v27 isEqualToString:@"a"])
    {
      v42 = [v19 objectForKey:@"href"];
      attributesCopy = v59;
      if (v42)
      {
        v43 = [(ENWebContentTransformer *)self sanitizeURLAttribute:v42];
        v44 = v43;
        if (v43)
        {
          absoluteString4 = [v43 absoluteString];
          [v18 setObject:absoluteString4 forKeyedSubscript:@"href"];
        }

        else
        {
          [v18 removeObjectForKey:@"href"];
        }
      }
    }

    else
    {
      enmlDTD = [(ENWebContentTransformer *)self enmlDTD];
      v47 = [enmlDTD isElementLegal:v27];

      if ((v47 & 1) == 0)
      {
        inlineElements = [(ENWebContentTransformer *)self inlineElements];
        v49 = [inlineElements containsObject:v27];

        if (v49)
        {
          v27 = @"span";
        }

        else
        {
          v27 = @"div";
        }
      }

      attributesCopy = v59;
    }

    enmlWriter2 = [(ENWebContentTransformer *)self enmlWriter];
    [enmlWriter2 startElement:v27 attributes:v18];
LABEL_53:

    goto LABEL_54;
  }

  [(ENWebContentTransformer *)self setInTitleElement:1];
  [(ENWebContentTransformer *)self setTitle:&stru_2850323E8];
LABEL_54:

  v55 = *MEMORY[0x277D85DE8];
}

- (id)resourceFromWebResource:(id)resource
{
  resourceCopy = resource;
  data = [resourceCopy data];
  v6 = data;
  if (data && [data length])
  {
    v7 = objc_alloc_init(ENResource);
    v8 = [resourceCopy URL];
    absoluteString = [v8 absoluteString];
    [(ENResource *)v7 setSourceUrl:absoluteString];

    v10 = [(ENWebContentTransformer *)self filenameFromURL:v8];
    [(ENResource *)v7 setFilename:v10];

    [(ENResource *)v7 setData:v6];
    mIMEType = [resourceCopy MIMEType];
    v12 = mIMEType;
    if (!mIMEType || ![mIMEType length])
    {
      filename = [(ENResource *)v7 filename];
      v14 = [(ENWebContentTransformer *)self mimeTypeFromFilename:filename];

      v12 = v14;
    }

    [(ENResource *)v7 setMimeType:v12];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)mimeTypeFromFilename:(id)filename
{
  filenameCopy = filename;
  if (!filenameCopy || ([ENMIMEUtils determineMIMETypeForFile:filenameCopy], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v4 = @"application/octet-stream";
    v5 = @"application/octet-stream";
  }

  return v4;
}

- (id)filenameFromURL:(id)l
{
  lCopy = l;
  if (CFURLHasDirectoryPath(lCopy))
  {
    lastPathComponent = 0;
  }

  else
  {
    lastPathComponent = [lCopy lastPathComponent];
  }

  return lastPathComponent;
}

- (id)sanitizeURLAttribute:(id)attribute
{
  v28 = *MEMORY[0x277D85DE8];
  attributeCopy = attribute;
  v5 = attributeCopy;
  if (attributeCopy)
  {
    v6 = [attributeCopy stringByReplacingPercentEscapesUsingEncoding:4];
    v7 = [v6 stringByAddingPercentEscapesUsingEncoding:4];
    v8 = MEMORY[0x277CBEBC0];
    baseURL = [(ENWebContentTransformer *)self baseURL];
    v10 = [v8 URLWithString:v7 relativeToURL:baseURL];

    if ([ENMLWriter validateURLComponents:v10])
    {
      v11 = v10;
    }

    else
    {
      webArchive = [(ENWebContentTransformer *)self webArchive];
      subresources = [webArchive subresources];

      v14 = [MEMORY[0x277CBEBC0] URLWithString:v5];
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v15 = subresources;
      v11 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v11)
      {
        v22 = v6;
        v16 = *v24;
        while (2)
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v24 != v16)
            {
              objc_enumerationMutation(v15);
            }

            v18 = [*(*(&v23 + 1) + 8 * i) URL];
            v19 = [v18 isEqual:v14];

            if (v19)
            {
              v11 = v14;
              goto LABEL_15;
            }
          }

          v11 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }

LABEL_15:
        v6 = v22;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)archiveBaseURLFromURL:(id)l
{
  lCopy = l;
  v4 = lCopy;
  if (!lCopy)
  {
    v8 = 0;
    goto LABEL_12;
  }

  PathComponent = CFURLCopyLastPathComponent(lCopy);
  scheme = [(__CFURL *)v4 scheme];
  if ([@"file" isEqualToString:scheme])
  {
    v7 = [@"/" isEqualToString:PathComponent];

    if (v7)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  if ([(__CFString *)PathComponent length]&& CFURLHasDirectoryPath(v4) != 1)
  {
    v9 = CFURLCreateCopyDeletingLastPathComponent(0, v4);
    goto LABEL_11;
  }

LABEL_9:
  v9 = v4;
LABEL_11:
  v8 = v9;

LABEL_12:

  return v8;
}

- (id)htmlFromWebArchive:(id)archive
{
  mainResource = [archive mainResource];
  textEncodingName = [mainResource textEncodingName];
  if (textEncodingName)
  {
    v5 = textEncodingName;
  }

  else
  {
    v5 = @"UTF-8";
  }

  v6 = CFStringConvertIANACharSetNameToEncoding(v5);
  v7 = CFStringConvertEncodingToNSStringEncoding(v6);
  data = [mainResource data];
  if (data)
  {
    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:data encoding:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)transformedValue:(id)value
{
  valueCopy = value;
  v5 = objc_alloc_init(ENNote);
  [(ENWebContentTransformer *)self setNote:v5];
  v6 = objc_alloc_init(ENMLWriter);
  [(ENMLWriter *)v6 startDocument];
  [(ENWebContentTransformer *)self setEnmlWriter:v6];
  v7 = +[ENXMLDTD enml2dtd];
  [(ENWebContentTransformer *)self setEnmlDTD:v7];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v8 = objc_alloc_init(ENXMLSaxParser);
    [(ENXMLSaxParser *)v8 setIsHTML:1];
    [(ENXMLSaxParser *)v8 setDelegate:self];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    mimeType = valueCopy;
    if (isKindOfClass)
    {
      v11 = [(ENWebContentTransformer *)self htmlFromWebArchive:mimeType];
      mainResource = [mimeType mainResource];
      v13 = [mainResource URL];
      [(ENWebContentTransformer *)self setBaseURL:v13];

      [(ENWebContentTransformer *)self setWebArchive:mimeType];
      mimeType = v11;
    }

    baseURL = [(ENWebContentTransformer *)self baseURL];
    v15 = [(ENWebContentTransformer *)self archiveBaseURLFromURL:baseURL];
    [(ENWebContentTransformer *)self setArchiveBaseURL:v15];

    [(ENXMLSaxParser *)v8 parseContents:mimeType];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v23 = 0;
      goto LABEL_10;
    }

    v8 = objc_alloc_init(ENResource);
    baseURL2 = [(ENWebContentTransformer *)self baseURL];
    absoluteString = [baseURL2 absoluteString];
    [(ENXMLSaxParser *)v8 setSourceUrl:absoluteString];

    baseURL3 = [(ENWebContentTransformer *)self baseURL];
    v28 = [(ENWebContentTransformer *)self filenameFromURL:baseURL3];
    [(ENXMLSaxParser *)v8 setFilename:v28];

    [(ENXMLSaxParser *)v8 setData:valueCopy];
    mimeType = [(ENWebContentTransformer *)self mimeType];
    if (!mimeType)
    {
      filename = [(ENXMLSaxParser *)v8 filename];
      mimeType = [(ENWebContentTransformer *)self mimeTypeFromFilename:filename];
    }

    [(ENXMLSaxParser *)v8 setMimeType:mimeType];
    note = [(ENWebContentTransformer *)self note];
    [note addResource:v8];

    dataHash = [(ENXMLSaxParser *)v8 dataHash];
    mimeType2 = [(ENXMLSaxParser *)v8 mimeType];
    [(ENMLWriter *)v6 writeResourceWithDataHash:dataHash mime:mimeType2 attributes:0];
  }

  [(ENMLWriter *)v6 endDocument];
  v16 = [ENNoteContent alloc];
  contents = [(ENXMLWriter *)v6 contents];
  v18 = [(ENNoteContent *)v16 initWithENML:contents];
  [(ENNote *)v5 setContent:v18];

  baseURL4 = [(ENWebContentTransformer *)self baseURL];
  absoluteString2 = [baseURL4 absoluteString];
  [(ENNote *)v5 setSourceUrl:absoluteString2];

  title = [(ENWebContentTransformer *)self title];
  if (title || ([(ENNote *)v5 sourceUrl], (title = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v22 = title;
  }

  else
  {
    v33 = MEMORY[0x277CCA8D8];
    v34 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v35 = [v34 pathForResource:@"ENSDKResources" ofType:@"bundle"];
    v36 = [v33 bundleWithPath:v35];
    v22 = [v36 localizedStringForKey:@"Untitled" value:&stru_2850323E8 table:0];
  }

  [(ENNote *)v5 setTitle:v22];
  v23 = v5;

LABEL_10:

  return v23;
}

- (ENWebContentTransformer)init
{
  v5.receiver = self;
  v5.super_class = ENWebContentTransformer;
  v2 = [(ENWebContentTransformer *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(ENWebContentTransformer *)v2 setSkipTags:&unk_28509CB60];
    [(ENWebContentTransformer *)v3 setIgnorableTags:&unk_28509CB78];
    [(ENWebContentTransformer *)v3 setIgnorableAttributes:&unk_28509CB90];
    [(ENWebContentTransformer *)v3 setInlineElements:&unk_28509CBA8];
  }

  return v3;
}

@end