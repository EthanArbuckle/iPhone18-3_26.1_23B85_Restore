@interface ENXMLDTD
+ (ENXMLDTD)dtdWithBundleResource:(id)resource ofType:(id)type;
+ (ENXMLDTD)enexDTD;
+ (ENXMLDTD)enml2dtd;
+ (ENXMLDTD)lat1DTD;
+ (ENXMLDTD)specialDTD;
+ (ENXMLDTD)symbolDTD;
+ (void)initialize;
- (BOOL)isAttributeLegal:(id)legal inElement:(id)element;
- (ENXMLDTD)initWithContentsOfFile:(id)file;
- (_xmlElement)xmlElementNamed:(id)named;
- (_xmlEntity)xmlEntityNamed:(id)named;
- (id)sanitizedAttributes:(id)attributes forElement:(id)element;
- (void)dealloc;
@end

@implementation ENXMLDTD

- (BOOL)isAttributeLegal:(id)legal inElement:(id)element
{
  v6 = MEMORY[0x277CBEAC0];
  v7 = MEMORY[0x277CBEB68];
  elementCopy = element;
  legalCopy = legal;
  null = [v7 null];
  v11 = [v6 dictionaryWithObject:null forKey:legalCopy];

  v12 = [(ENXMLDTD *)self sanitizedAttributes:v11 forElement:elementCopy];

  LOBYTE(self) = [v12 count] == 1;
  return self;
}

- (id)sanitizedAttributes:(id)attributes forElement:(id)element
{
  v28 = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  elementCopy = element;
  v8 = [(ENXMLDTD *)self xmlElementNamed:elementCopy];
  if (v8)
  {
    v9 = v8;
    v21 = attributesCopy;
    v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
    allKeys = [attributesCopy allKeys];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v11 = [allKeys countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v24;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(allKeys);
          }

          attributes = v9->attributes;
          if (attributes)
          {
            v16 = *(*(&v23 + 1) + 8 * i);
            while (1)
            {
              name = attributes->name;
              if (name)
              {
                name = [objc_allocWithZone(MEMORY[0x277CCACA8]) initWithBytes:name length:strlen(attributes->name) encoding:4];
                if (name)
                {
                  if (![v16 caseInsensitiveCompare:name])
                  {
                    break;
                  }
                }
              }

              attributes = attributes->nexth;

              if (!attributes)
              {
                goto LABEL_15;
              }
            }

            v18 = [v21 objectForKey:v16];
            [v22 setObject:v18 forKey:v16];
          }

LABEL_15:
          ;
        }

        v12 = [allKeys countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v12);
    }

    attributesCopy = v21;
  }

  else
  {
    NSLog(&cfstr_ErrorRetrievin.isa, elementCopy, self);
    v22 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v22;
}

- (_xmlElement)xmlElementNamed:(id)named
{
  elements = self->_dtd->elements;
  namedCopy = named;
  v6 = [named cStringUsingEncoding:4];

  return xmlHashLookup(elements, v6);
}

- (_xmlEntity)xmlEntityNamed:(id)named
{
  entities = self->_dtd->entities;
  if (!entities)
  {
    return 0;
  }

  v4 = [named cStringUsingEncoding:4];

  return xmlHashLookup(entities, v4);
}

- (void)dealloc
{
  dtd = self->_dtd;
  if (dtd)
  {
    xmlFreeDtd(dtd);
    self->_dtd = 0;
  }

  v4.receiver = self;
  v4.super_class = ENXMLDTD;
  [(ENXMLDTD *)&v4 dealloc];
}

- (ENXMLDTD)initWithContentsOfFile:(id)file
{
  fileCopy = file;
  v13.receiver = self;
  v13.super_class = ENXMLDTD;
  v5 = [(ENXMLDTD *)&v13 init];
  if (!v5)
  {
    goto LABEL_4;
  }

  Filename = xmlParserInputBufferCreateFilename([fileCopy fileSystemRepresentation], XML_CHAR_ENCODING_NONE);
  if (!Filename)
  {
    LastError = xmlGetLastError();
    if (LastError)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithCString:LastError->message encoding:4];
    }

    else
    {
      v10 = 0;
    }

    NSLog(&cfstr_Xmlparserinput.isa, fileCopy, v10);
    goto LABEL_13;
  }

  v7 = xmlIOParseDTD(0, Filename, XML_CHAR_ENCODING_NONE);
  v5->_dtd = v7;
  if (!v7)
  {
    v11 = xmlGetLastError();
    if (v11)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithCString:v11->message encoding:4];
    }

    else
    {
      v10 = 0;
    }

    NSLog(&cfstr_XmlioparsedtdR.isa, v10);
LABEL_13:
    xmlResetLastError();

    v8 = 0;
    goto LABEL_14;
  }

LABEL_4:
  v8 = v5;
LABEL_14:

  return v8;
}

+ (ENXMLDTD)specialDTD
{
  if (specialDTD_onceToken != -1)
  {
    dispatch_once(&specialDTD_onceToken, &__block_literal_global_28_6065);
  }

  v3 = specialDTD_dtd;

  return v3;
}

void __22__ENXMLDTD_specialDTD__block_invoke()
{
  v0 = [ENXMLDTD dtdWithBundleResource:@"xhtml-special" ofType:@"ent"];
  v1 = specialDTD_dtd;
  specialDTD_dtd = v0;
}

+ (ENXMLDTD)symbolDTD
{
  if (symbolDTD_onceToken != -1)
  {
    dispatch_once(&symbolDTD_onceToken, &__block_literal_global_23);
  }

  v3 = symbolDTD_dtd;

  return v3;
}

void __21__ENXMLDTD_symbolDTD__block_invoke()
{
  v0 = [ENXMLDTD dtdWithBundleResource:@"xhtml-symbol" ofType:@"ent"];
  v1 = symbolDTD_dtd;
  symbolDTD_dtd = v0;
}

+ (ENXMLDTD)lat1DTD
{
  if (lat1DTD_onceToken != -1)
  {
    dispatch_once(&lat1DTD_onceToken, &__block_literal_global_15);
  }

  v3 = lat1DTD_dtd;

  return v3;
}

void __19__ENXMLDTD_lat1DTD__block_invoke()
{
  v0 = [ENXMLDTD dtdWithBundleResource:@"xhtml-lat1" ofType:@"ent"];
  v1 = lat1DTD_dtd;
  lat1DTD_dtd = v0;
}

+ (ENXMLDTD)enml2dtd
{
  if (enml2dtd_onceToken != -1)
  {
    dispatch_once(&enml2dtd_onceToken, &__block_literal_global_7);
  }

  v3 = enml2dtd_dtd;

  return v3;
}

uint64_t __20__ENXMLDTD_enml2dtd__block_invoke()
{
  v0 = [ENXMLDTD dtdWithBundleResource:@"enml2" ofType:@"dtd"];
  v1 = enml2dtd_dtd;
  enml2dtd_dtd = v0;

  v2 = enml2dtd_dtd;

  return [v2 setDocTypeDeclaration:@"<!DOCTYPE en-note SYSTEM http://xml.evernote.com/pub/enml2.dtd>"];
}

+ (ENXMLDTD)enexDTD
{
  if (enexDTD_onceToken != -1)
  {
    dispatch_once(&enexDTD_onceToken, &__block_literal_global_6089);
  }

  v3 = enexDTD_dtd;

  return v3;
}

void __19__ENXMLDTD_enexDTD__block_invoke()
{
  v0 = [ENXMLDTD dtdWithBundleResource:@"evernote-export" ofType:@"dtd"];
  v1 = enexDTD_dtd;
  enexDTD_dtd = v0;
}

+ (ENXMLDTD)dtdWithBundleResource:(id)resource ofType:(id)type
{
  v4 = [ENSDKResourceLoader pathToResourceNamed:resource extension:type];
  v5 = [[ENXMLDTD alloc] initWithContentsOfFile:v4];

  return v5;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    defaultExternalEntityLoader = xmlGetExternalEntityLoader();

    xmlSetExternalEntityLoader(enxmlExternalEntityLoader);
  }
}

@end