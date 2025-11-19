@interface ENWebContentTransformer
- (ENWebContentTransformer)init;
- (id)archiveBaseURLFromURL:(id)a3;
- (id)filenameFromURL:(id)a3;
- (id)htmlFromWebArchive:(id)a3;
- (id)mimeTypeFromFilename:(id)a3;
- (id)resourceFromWebResource:(id)a3;
- (id)sanitizeURLAttribute:(id)a3;
- (id)transformedValue:(id)a3;
- (void)parser:(id)a3 didEndElement:(id)a4;
- (void)parser:(id)a3 didStartElement:(id)a4 attributes:(id)a5;
- (void)parser:(id)a3 foundCharacters:(id)a4;
@end

@implementation ENWebContentTransformer

- (void)parser:(id)a3 foundCharacters:(id)a4
{
  v7 = a4;
  if ([(ENWebContentTransformer *)self inTitleElement])
  {
    v5 = [(ENWebContentTransformer *)self title];
    v6 = [v5 stringByAppendingString:v7];
    [(ENWebContentTransformer *)self setTitle:v6];
  }

  else
  {
    if ([(ENWebContentTransformer *)self ignoreElementCount])
    {
      goto LABEL_6;
    }

    v5 = [(ENWebContentTransformer *)self enmlWriter];
    [v5 writeString:v7];
  }

LABEL_6:
}

- (void)parser:(id)a3 didEndElement:(id)a4
{
  v8 = a4;
  if (-[ENWebContentTransformer inTitleElement](self, "inTitleElement") && [v8 isEqualToString:@"title"])
  {
    [(ENWebContentTransformer *)self setInTitleElement:0];
  }

  else if ([(ENWebContentTransformer *)self ignoreElementCount])
  {
    [(ENWebContentTransformer *)self setIgnoreElementCount:[(ENWebContentTransformer *)self ignoreElementCount]- 1];
  }

  else
  {
    v5 = [(ENWebContentTransformer *)self skipTags];
    v6 = [v5 containsObject:v8];

    if ((v6 & 1) == 0)
    {
      v7 = [(ENWebContentTransformer *)self enmlWriter];
      [v7 endElement];
    }
  }
}

- (void)parser:(id)a3 didStartElement:(id)a4 attributes:(id)a5
{
  v72 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = [(ENWebContentTransformer *)self baseURL];
  if (v9)
  {
LABEL_2:

    goto LABEL_3;
  }

  if ([v7 isEqualToString:@"base"])
  {
    v9 = [v8 objectForKey:@"href"];
    if (v9)
    {
      v11 = [MEMORY[0x277CBEBC0] URLWithString:v9];
      [(ENWebContentTransformer *)self setBaseURL:v11];
    }

    goto LABEL_2;
  }

LABEL_3:
  v10 = [(ENWebContentTransformer *)self title];
  if (v10)
  {

    goto LABEL_10;
  }

  if (![v7 isEqualToString:@"title"])
  {
LABEL_10:
    if ([(ENWebContentTransformer *)self ignoreElementCount])
    {
      v12 = [(ENWebContentTransformer *)self ignoreElementCount]+ 1;
      v13 = self;
LABEL_12:
      [(ENWebContentTransformer *)v13 setIgnoreElementCount:v12];
      goto LABEL_54;
    }

    v14 = [(ENWebContentTransformer *)self skipTags];
    v15 = [v14 containsObject:v7];

    if (v15)
    {
      goto LABEL_54;
    }

    v16 = [(ENWebContentTransformer *)self ignorableTags];
    v17 = [v16 containsObject:v7];

    if (v17)
    {
      v13 = self;
      v12 = 1;
      goto LABEL_12;
    }

    v18 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v8];
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v59 = v8;
    v19 = v8;
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
          v25 = [(ENWebContentTransformer *)self ignorableAttributes];
          v26 = [v25 containsObject:v24];

          if (v26)
          {
            [v18 removeObjectForKey:v24];
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v66 objects:v71 count:16];
      }

      while (v21);
    }

    v27 = v7;
    if ([(__CFString *)v27 isEqualToString:@"img"])
    {
      v28 = [v18 objectForKeyedSubscript:@"src"];
      v61 = [(ENWebContentTransformer *)self sanitizeURLAttribute:v28];
      if (!v61)
      {
        [(ENWebContentTransformer *)self setIgnoreElementCount:1];
        v8 = v59;
LABEL_48:

        goto LABEL_53;
      }

      v56 = v28;
      v57 = v27;
      v58 = v7;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v29 = [(ENWebContentTransformer *)self webArchive];
      v30 = [v29 subresources];

      obj = v30;
      v31 = [v30 countByEnumeratingWithState:&v62 objects:v70 count:16];
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
            v37 = [v36 absoluteString];
            v38 = [v61 absoluteString];
            v39 = [v37 isEqualToString:v38];

            if (v39)
            {
              v40 = [(ENWebContentTransformer *)self resourceFromWebResource:v35];
              if (v40)
              {
                v50 = v40;
                v51 = [(ENWebContentTransformer *)self note];
                [v51 addResource:v50];

                [v18 removeObjectForKey:@"src"];
                v52 = [(ENWebContentTransformer *)self enmlWriter];
                v53 = [v50 dataHash];
                v54 = [v50 mimeType];
                [v52 writeResourceWithDataHash:v53 mime:v54 attributes:v18];

                [(ENWebContentTransformer *)self setIgnoreElementCount:1];
                v7 = v58;
                v8 = v59;
                v28 = v56;
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

      v41 = [v61 absoluteString];
      [v18 setObject:v41 forKeyedSubscript:@"src"];

      v7 = v58;
      v8 = v59;
      v27 = v57;
    }

    else if ([(__CFString *)v27 isEqualToString:@"a"])
    {
      v42 = [v19 objectForKey:@"href"];
      v8 = v59;
      if (v42)
      {
        v43 = [(ENWebContentTransformer *)self sanitizeURLAttribute:v42];
        v44 = v43;
        if (v43)
        {
          v45 = [v43 absoluteString];
          [v18 setObject:v45 forKeyedSubscript:@"href"];
        }

        else
        {
          [v18 removeObjectForKey:@"href"];
        }
      }
    }

    else
    {
      v46 = [(ENWebContentTransformer *)self enmlDTD];
      v47 = [v46 isElementLegal:v27];

      if ((v47 & 1) == 0)
      {
        v48 = [(ENWebContentTransformer *)self inlineElements];
        v49 = [v48 containsObject:v27];

        if (v49)
        {
          v27 = @"span";
        }

        else
        {
          v27 = @"div";
        }
      }

      v8 = v59;
    }

    v28 = [(ENWebContentTransformer *)self enmlWriter];
    [v28 startElement:v27 attributes:v18];
LABEL_53:

    goto LABEL_54;
  }

  [(ENWebContentTransformer *)self setInTitleElement:1];
  [(ENWebContentTransformer *)self setTitle:&stru_2850323E8];
LABEL_54:

  v55 = *MEMORY[0x277D85DE8];
}

- (id)resourceFromWebResource:(id)a3
{
  v4 = a3;
  v5 = [v4 data];
  v6 = v5;
  if (v5 && [v5 length])
  {
    v7 = objc_alloc_init(ENResource);
    v8 = [v4 URL];
    v9 = [v8 absoluteString];
    [(ENResource *)v7 setSourceUrl:v9];

    v10 = [(ENWebContentTransformer *)self filenameFromURL:v8];
    [(ENResource *)v7 setFilename:v10];

    [(ENResource *)v7 setData:v6];
    v11 = [v4 MIMEType];
    v12 = v11;
    if (!v11 || ![v11 length])
    {
      v13 = [(ENResource *)v7 filename];
      v14 = [(ENWebContentTransformer *)self mimeTypeFromFilename:v13];

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

- (id)mimeTypeFromFilename:(id)a3
{
  v3 = a3;
  if (!v3 || ([ENMIMEUtils determineMIMETypeForFile:v3], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v4 = @"application/octet-stream";
    v5 = @"application/octet-stream";
  }

  return v4;
}

- (id)filenameFromURL:(id)a3
{
  v3 = a3;
  if (CFURLHasDirectoryPath(v3))
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 lastPathComponent];
  }

  return v4;
}

- (id)sanitizeURLAttribute:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 stringByReplacingPercentEscapesUsingEncoding:4];
    v7 = [v6 stringByAddingPercentEscapesUsingEncoding:4];
    v8 = MEMORY[0x277CBEBC0];
    v9 = [(ENWebContentTransformer *)self baseURL];
    v10 = [v8 URLWithString:v7 relativeToURL:v9];

    if ([ENMLWriter validateURLComponents:v10])
    {
      v11 = v10;
    }

    else
    {
      v12 = [(ENWebContentTransformer *)self webArchive];
      v13 = [v12 subresources];

      v14 = [MEMORY[0x277CBEBC0] URLWithString:v5];
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v15 = v13;
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

- (id)archiveBaseURLFromURL:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    v8 = 0;
    goto LABEL_12;
  }

  PathComponent = CFURLCopyLastPathComponent(v3);
  v6 = [(__CFURL *)v4 scheme];
  if ([@"file" isEqualToString:v6])
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

- (id)htmlFromWebArchive:(id)a3
{
  v3 = [a3 mainResource];
  v4 = [v3 textEncodingName];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"UTF-8";
  }

  v6 = CFStringConvertIANACharSetNameToEncoding(v5);
  v7 = CFStringConvertEncodingToNSStringEncoding(v6);
  v8 = [v3 data];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v8 encoding:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)transformedValue:(id)a3
{
  v4 = a3;
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
    v10 = v4;
    if (isKindOfClass)
    {
      v11 = [(ENWebContentTransformer *)self htmlFromWebArchive:v10];
      v12 = [v10 mainResource];
      v13 = [v12 URL];
      [(ENWebContentTransformer *)self setBaseURL:v13];

      [(ENWebContentTransformer *)self setWebArchive:v10];
      v10 = v11;
    }

    v14 = [(ENWebContentTransformer *)self baseURL];
    v15 = [(ENWebContentTransformer *)self archiveBaseURLFromURL:v14];
    [(ENWebContentTransformer *)self setArchiveBaseURL:v15];

    [(ENXMLSaxParser *)v8 parseContents:v10];
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
    v25 = [(ENWebContentTransformer *)self baseURL];
    v26 = [v25 absoluteString];
    [(ENXMLSaxParser *)v8 setSourceUrl:v26];

    v27 = [(ENWebContentTransformer *)self baseURL];
    v28 = [(ENWebContentTransformer *)self filenameFromURL:v27];
    [(ENXMLSaxParser *)v8 setFilename:v28];

    [(ENXMLSaxParser *)v8 setData:v4];
    v10 = [(ENWebContentTransformer *)self mimeType];
    if (!v10)
    {
      v29 = [(ENXMLSaxParser *)v8 filename];
      v10 = [(ENWebContentTransformer *)self mimeTypeFromFilename:v29];
    }

    [(ENXMLSaxParser *)v8 setMimeType:v10];
    v30 = [(ENWebContentTransformer *)self note];
    [v30 addResource:v8];

    v31 = [(ENXMLSaxParser *)v8 dataHash];
    v32 = [(ENXMLSaxParser *)v8 mimeType];
    [(ENMLWriter *)v6 writeResourceWithDataHash:v31 mime:v32 attributes:0];
  }

  [(ENMLWriter *)v6 endDocument];
  v16 = [ENNoteContent alloc];
  v17 = [(ENXMLWriter *)v6 contents];
  v18 = [(ENNoteContent *)v16 initWithENML:v17];
  [(ENNote *)v5 setContent:v18];

  v19 = [(ENWebContentTransformer *)self baseURL];
  v20 = [v19 absoluteString];
  [(ENNote *)v5 setSourceUrl:v20];

  v21 = [(ENWebContentTransformer *)self title];
  if (v21 || ([(ENNote *)v5 sourceUrl], (v21 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v22 = v21;
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