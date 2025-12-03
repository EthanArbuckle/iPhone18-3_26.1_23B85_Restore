@interface ENMLWriter
+ (BOOL)validateURLComponents:(id)components;
+ (id)emptyNote;
- (BOOL)startElement:(id)element attributes:(id)attributes;
- (ENMLWriter)init;
- (id)validateURLAttribute:(id)attribute inAttributes:(id)attributes;
- (void)endDocument;
- (void)startDocumentWithAttributes:(id)attributes;
- (void)writeEncryptedInfo:(id)info;
- (void)writeResource:(id)resource;
- (void)writeResourceWithDataHash:(id)hash mime:(id)mime attributes:(id)attributes;
- (void)writeTodoWithCheckedState:(BOOL)state;
@end

@implementation ENMLWriter

- (void)writeTodoWithCheckedState:(BOOL)state
{
  if (state)
  {
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObject:@"true" forKey:@"checked"];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [(ENXMLWriter *)self writeElement:@"en-todo" attributes:v4 content:0];
}

- (void)writeEncryptedInfo:(id)info
{
  infoCopy = info;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  cipher = [infoCopy cipher];
  [dictionary setObject:cipher forKey:@"cipher"];

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(infoCopy, "keyLength")}];
  stringValue = [v6 stringValue];

  [dictionary setObject:stringValue forKey:@"length"];
  hint = [infoCopy hint];
  if (hint)
  {
    [dictionary setObject:hint forKey:@"hint"];
  }

  cipherText = [infoCopy cipherText];
  [(ENXMLWriter *)self writeElement:@"en-crypt" attributes:dictionary content:cipherText];
}

- (void)writeResource:(id)resource
{
  resourceCopy = resource;
  data = [resourceCopy data];
  bodyHash = [data bodyHash];
  mime = [resourceCopy mime];

  [(ENMLWriter *)self writeResourceWithDataHash:bodyHash mime:mime attributes:0];
}

- (void)writeResourceWithDataHash:(id)hash mime:(id)mime attributes:(id)attributes
{
  mimeCopy = mime;
  v8 = MEMORY[0x277CBEB38];
  hashCopy = hash;
  v10 = [v8 dictionaryWithDictionary:attributes];
  if (!mimeCopy)
  {
    mimeCopy = @"application/octet-stream";
    v11 = @"application/octet-stream";
  }

  [v10 setObject:mimeCopy forKey:@"type"];
  enlowercaseHexDigits = [hashCopy enlowercaseHexDigits];

  [v10 setObject:enlowercaseHexDigits forKey:@"hash"];
  [(ENXMLWriter *)self writeElement:@"en-media" attributes:v10 content:0];
}

- (BOOL)startElement:(id)element attributes:(id)attributes
{
  v26 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  attributesCopy = attributes;
  if ([elementCopy isEqualToString:@"a"])
  {
    v8 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:attributesCopy];
    allKeys = [attributesCopy allKeys];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = [allKeys countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(allKeys);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          if ([v14 hasPrefix:@"x-apple-"])
          {
            [v8 removeObjectForKey:v14];
          }
        }

        v11 = [allKeys countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }

    v15 = [(ENMLWriter *)self validateURLAttribute:@"href" inAttributes:v8];

    attributesCopy = v15;
  }

  else if ([elementCopy isEqualToString:@"img"])
  {
    v16 = [(ENMLWriter *)self validateURLAttribute:@"src" inAttributes:attributesCopy];

    attributesCopy = v16;
  }

  v20.receiver = self;
  v20.super_class = ENMLWriter;
  v17 = [(ENXMLWriter *)&v20 startElement:elementCopy attributes:attributesCopy];

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (id)validateURLAttribute:(id)attribute inAttributes:(id)attributes
{
  attributeCopy = attribute;
  attributesCopy = attributes;
  v7 = [attributesCopy objectForKey:attributeCopy];
  if (v7)
  {
    v8 = [MEMORY[0x277CBEBC0] URLWithString:v7];
    v9 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:attributesCopy];
    if ([ENMLWriter validateURLComponents:v8])
    {
      absoluteString = [v8 absoluteString];
      [v9 setObject:absoluteString forKey:attributeCopy];
    }

    else
    {
      NSLog(&cfstr_UnableToValida.isa, v7, attributesCopy);
      [v9 removeObjectForKey:attributeCopy];
    }
  }

  else
  {
    v9 = attributesCopy;
  }

  return v9;
}

- (void)endDocument
{
  [(ENXMLWriter *)self endElement];
  v3.receiver = self;
  v3.super_class = ENMLWriter;
  [(ENXMLWriter *)&v3 endDocument];
}

- (void)startDocumentWithAttributes:(id)attributes
{
  v5.receiver = self;
  v5.super_class = ENMLWriter;
  attributesCopy = attributes;
  [(ENXMLWriter *)&v5 startDocument];
  [(ENMLWriter *)self startElement:@"en-note" attributes:attributesCopy, v5.receiver, v5.super_class];
}

- (ENMLWriter)init
{
  v5.receiver = self;
  v5.super_class = ENMLWriter;
  v2 = [(ENXMLWriter *)&v5 init];
  if (v2)
  {
    v3 = +[ENXMLDTD enml2dtd];
    [(ENXMLWriter *)v2 setDtd:v3];
  }

  return v2;
}

+ (id)emptyNote
{
  v2 = objc_alloc_init(ENMLWriter);
  [(ENMLWriter *)v2 startDocument];
  [(ENMLWriter *)v2 endDocument];
  contents = [(ENXMLWriter *)v2 contents];

  return contents;
}

+ (BOOL)validateURLComponents:(id)components
{
  componentsCopy = components;
  v4 = componentsCopy;
  if (componentsCopy)
  {
    scheme = [componentsCopy scheme];
    if ([scheme rangeOfString:@"script"] != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_7;
    }

    if ([scheme isEqualToString:@"file"])
    {
LABEL_4:
      v6 = 1;
LABEL_8:

      goto LABEL_9;
    }

    if ([scheme isEqualToString:@"x-apple-data-detectors"])
    {
LABEL_7:
      v6 = 0;
      goto LABEL_8;
    }

    if ([scheme isEqualToString:@"tel"])
    {
      goto LABEL_4;
    }

    v8 = [MEMORY[0x277CCAC68] enRegexWithPattern:@"^(([^:/?#]+):)?(//([^/?#]*))?([^?#]*)(\\?([^#]*))?(#(.*))?"];
    absoluteString = [v4 absoluteString];
    v10 = [v8 enCapturedSubstringsOfString:absoluteString];

    if (!v10 || [v10 count] != 10)
    {
      v6 = 0;
LABEL_45:

      goto LABEL_8;
    }

    v11 = [v10 objectAtIndex:2];

    scheme2 = [v4 scheme];
    v6 = [v11 enIsEqualToStringOrNil:scheme2];

    if ((v6 & 1) == 0)
    {
      scheme3 = [v4 scheme];
      NSLog(&cfstr_SchemeDoesNotM.isa, v11, scheme3);
    }

    v14 = [v10 objectAtIndex:4];
    string = [MEMORY[0x277CCAB68] string];
    user = [v4 user];
    if (user)
    {
    }

    else
    {
      password = [v4 password];

      if (!password)
      {
        goto LABEL_24;
      }
    }

    user2 = [v4 user];

    if (user2)
    {
      user3 = [v4 user];
      [string appendString:user3];
    }

    password2 = [v4 password];

    if (password2)
    {
      [string appendString:@":"];
      password3 = [v4 password];
      [string appendString:password3];
    }

    [string appendString:@"@"];
LABEL_24:
    host = [v4 host];

    if (host)
    {
      host2 = [v4 host];
      [string appendString:host2];
    }

    port = [v4 port];

    if (port)
    {
      [string appendString:@":"];
      port2 = [v4 port];
      [string appendFormat:@"%@", port2];
    }

    if (([v14 enIsEqualToStringOrNil:string] & 1) == 0)
    {
      NSLog(&cfstr_AuthorityDoesN.isa, v14, string);
      v6 = 0;
    }

    v26 = [v10 objectAtIndex:5];
    v27 = [v26 stringByReplacingPercentEscapesUsingEncoding:4];

    path = [v4 path];
    v41 = path;
    v42 = v14;
    if ([v27 enIsEqualToStringOrNil:path])
    {
      goto LABEL_40;
    }

    if ([v11 caseInsensitiveCompare:@"mailto"])
    {
      if ([v27 hasSuffix:@"/"])
      {
        v29 = [v27 substringToIndex:{objc_msgSend(v27, "length") - 1}];

        if (([v29 enIsEqualToStringOrNil:path] & 1) == 0)
        {
          NSLog(&cfstr_PathDoesNotMat_0.isa, v29, path);
          v6 = 0;
        }

        v27 = v29;
        goto LABEL_40;
      }

      NSLog(&cfstr_PathDoesNotMat_0.isa, v27, path);
    }

    else
    {
      resourceSpecifier = [v4 resourceSpecifier];
      v31 = [v27 enIsEqualToStringOrNil:resourceSpecifier];

      if (v31)
      {
LABEL_40:
        v43 = v11;
        v33 = [v10 objectAtIndex:7];
        query = [v4 query];
        v35 = [v33 enIsEqualToStringOrNil:query];

        if ((v35 & 1) == 0)
        {
          query2 = [v4 query];
          NSLog(&cfstr_QueryDoesNotMa.isa, v33, query2);

          v6 = 0;
        }

        v37 = [v10 objectAtIndex:9];
        fragment = [v4 fragment];
        v39 = [v37 enIsEqualToStringOrNil:fragment];

        if ((v39 & 1) == 0)
        {
          fragment2 = [v4 fragment];
          NSLog(&cfstr_FragmentDoesNo.isa, v37, fragment2);

          v6 = 0;
        }

        scheme = v43;
        goto LABEL_45;
      }

      resourceSpecifier2 = [v4 resourceSpecifier];
      NSLog(&cfstr_PathDoesNotMat.isa, v27, resourceSpecifier2);
    }

    v6 = 0;
    goto LABEL_40;
  }

  v6 = 0;
LABEL_9:

  return v6;
}

@end