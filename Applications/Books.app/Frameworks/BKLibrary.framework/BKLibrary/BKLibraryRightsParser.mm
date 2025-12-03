@interface BKLibraryRightsParser
- (BKLibraryRightsParser)init;
- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name;
- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes;
- (void)parser:(id)parser foundCDATA:(id)a;
- (void)parser:(id)parser foundCharacters:(id)characters;
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

- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes
{
  iCopy = i;
  if ([element isEqualToString:@"sinf"] && objc_msgSend(iCopy, "isEqualToString:", @"http://itunes.apple.com/ns/epub"))
  {
    [(BKLibraryRightsParser *)self setRightsId:0];
    [(BKLibraryRightsParser *)self setSinfData:0];
  }

  foundText = [(BKLibraryRightsParser *)self foundText];
  [foundText setString:&stru_D8298];
}

- (void)parser:(id)parser foundCharacters:(id)characters
{
  charactersCopy = characters;
  foundText = [(BKLibraryRightsParser *)self foundText];
  [foundText appendString:charactersCopy];
}

- (void)parser:(id)parser foundCDATA:(id)a
{
  aCopy = a;
  v7 = [[NSString alloc] initWithData:aCopy encoding:4];

  if ([v7 length])
  {
    foundText = [(BKLibraryRightsParser *)self foundText];
    [foundText appendString:v7];
  }
}

- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name
{
  elementCopy = element;
  iCopy = i;
  if ([elementCopy isEqualToString:@"sID"] && objc_msgSend(iCopy, "isEqualToString:", @"http://itunes.apple.com/ns/epub"))
  {
    foundText = [(BKLibraryRightsParser *)self foundText];
    [(BKLibraryRightsParser *)self setRightsId:foundText];

    goto LABEL_17;
  }

  if ([elementCopy isEqualToString:@"sData"] && objc_msgSend(iCopy, "isEqualToString:", @"http://itunes.apple.com/ns/epub"))
  {
    foundText2 = [(BKLibraryRightsParser *)self foundText];
    if ([foundText2 length])
    {
      v11 = [NSData alloc];
      foundText3 = [(BKLibraryRightsParser *)self foundText];
      v13 = [v11 initWithBase64EncodedString:foundText3 options:0];
    }

    else
    {
      v13 = 0;
    }

    [(BKLibraryRightsParser *)self setSinfData:v13];
    goto LABEL_17;
  }

  if ([elementCopy isEqualToString:@"sinf"] && objc_msgSend(iCopy, "isEqualToString:", @"http://itunes.apple.com/ns/epub"))
  {
    rightsId = [(BKLibraryRightsParser *)self rightsId];
    if ([rightsId length])
    {
      sinfData = [(BKLibraryRightsParser *)self sinfData];
      v16 = [sinfData length];

      if (!v16)
      {
LABEL_14:
        [(BKLibraryRightsParser *)self setRightsId:0];
        [(BKLibraryRightsParser *)self setSinfData:0];
        goto LABEL_17;
      }

      rightsId = [(BKLibraryRightsParser *)self sinfData];
      rightsInfo = [(BKLibraryRightsParser *)self rightsInfo];
      rightsId2 = [(BKLibraryRightsParser *)self rightsId];
      [rightsInfo setObject:rightsId forKeyedSubscript:rightsId2];
    }

    goto LABEL_14;
  }

LABEL_17:
  foundText4 = [(BKLibraryRightsParser *)self foundText];
  [foundText4 setString:&stru_D8298];
}

@end