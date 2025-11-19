@interface BKLibraryRightsParser
- (BKLibraryRightsParser)init;
- (void)parser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6;
- (void)parser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7;
- (void)parser:(id)a3 foundCDATA:(id)a4;
- (void)parser:(id)a3 foundCharacters:(id)a4;
@end

@implementation BKLibraryRightsParser

- (BKLibraryRightsParser)init
{
  v8.receiver = self;
  v8.super_class = BKLibraryRightsParser;
  v2 = [(BKLibraryRightsParser *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    rightsInfo = v2->_rightsInfo;
    v2->_rightsInfo = v3;

    v5 = objc_alloc_init(NSMutableString);
    foundText = v2->_foundText;
    v2->_foundText = v5;
  }

  return v2;
}

- (void)parser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7
{
  v10 = a5;
  if ([a4 isEqualToString:@"sinf"] && objc_msgSend(v10, "isEqualToString:", @"http://itunes.apple.com/ns/epub"))
  {
    [(BKLibraryRightsParser *)self setRightsId:0];
    [(BKLibraryRightsParser *)self setSinfData:0];
  }

  v9 = [(BKLibraryRightsParser *)self foundText];
  [v9 setString:&stru_D8298];
}

- (void)parser:(id)a3 foundCharacters:(id)a4
{
  v5 = a4;
  v6 = [(BKLibraryRightsParser *)self foundText];
  [v6 appendString:v5];
}

- (void)parser:(id)a3 foundCDATA:(id)a4
{
  v5 = a4;
  v7 = [[NSString alloc] initWithData:v5 encoding:4];

  if ([v7 length])
  {
    v6 = [(BKLibraryRightsParser *)self foundText];
    [v6 appendString:v7];
  }
}

- (void)parser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6
{
  v20 = a4;
  v8 = a5;
  if ([v20 isEqualToString:@"sID"] && objc_msgSend(v8, "isEqualToString:", @"http://itunes.apple.com/ns/epub"))
  {
    v9 = [(BKLibraryRightsParser *)self foundText];
    [(BKLibraryRightsParser *)self setRightsId:v9];

    goto LABEL_17;
  }

  if ([v20 isEqualToString:@"sData"] && objc_msgSend(v8, "isEqualToString:", @"http://itunes.apple.com/ns/epub"))
  {
    v10 = [(BKLibraryRightsParser *)self foundText];
    if ([v10 length])
    {
      v11 = [NSData alloc];
      v12 = [(BKLibraryRightsParser *)self foundText];
      v13 = [v11 initWithBase64EncodedString:v12 options:0];
    }

    else
    {
      v13 = 0;
    }

    [(BKLibraryRightsParser *)self setSinfData:v13];
    goto LABEL_17;
  }

  if ([v20 isEqualToString:@"sinf"] && objc_msgSend(v8, "isEqualToString:", @"http://itunes.apple.com/ns/epub"))
  {
    v14 = [(BKLibraryRightsParser *)self rightsId];
    if ([v14 length])
    {
      v15 = [(BKLibraryRightsParser *)self sinfData];
      v16 = [v15 length];

      if (!v16)
      {
LABEL_14:
        [(BKLibraryRightsParser *)self setRightsId:0];
        [(BKLibraryRightsParser *)self setSinfData:0];
        goto LABEL_17;
      }

      v14 = [(BKLibraryRightsParser *)self sinfData];
      v17 = [(BKLibraryRightsParser *)self rightsInfo];
      v18 = [(BKLibraryRightsParser *)self rightsId];
      [v17 setObject:v14 forKeyedSubscript:v18];
    }

    goto LABEL_14;
  }

LABEL_17:
  v19 = [(BKLibraryRightsParser *)self foundText];
  [v19 setString:&stru_D8298];
}

@end