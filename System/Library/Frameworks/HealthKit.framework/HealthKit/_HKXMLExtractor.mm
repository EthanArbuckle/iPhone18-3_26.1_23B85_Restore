@interface _HKXMLExtractor
- (_HKXMLExtractor)init;
- (id)_matchSpecificationWithAttributes:(id)attributes;
- (id)getDataForTagSpecification:(id)specification;
- (void)_parseWithXMLParser:(id)parser;
- (void)_resetScanningState;
- (void)addTagSpecificationForExtraction:(id)extraction;
- (void)parseWithData:(id)data;
- (void)parseWithStream:(id)stream;
- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name;
- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes;
- (void)parser:(id)parser foundCharacters:(id)characters;
@end

@implementation _HKXMLExtractor

- (_HKXMLExtractor)init
{
  v11.receiver = self;
  v11.super_class = _HKXMLExtractor;
  v2 = [(_HKXMLExtractor *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    allTagSpecifications = v2->_allTagSpecifications;
    v2->_allTagSpecifications = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    stackOfElements = v2->_stackOfElements;
    v2->_stackOfElements = v5;

    matchedTagSpecification = v2->_matchedTagSpecification;
    v2->_matchedTagSpecification = 0;

    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    resultTagContent = v2->_resultTagContent;
    v2->_resultTagContent = v8;
  }

  return v2;
}

- (void)addTagSpecificationForExtraction:(id)extraction
{
  extractionCopy = extraction;
  v5 = [[_HKXMLExtractorSpecification alloc] initWithSpecificationString:extractionCopy];

  [(NSMutableArray *)self->_allTagSpecifications addObject:v5];
}

- (void)parseWithData:(id)data
{
  v4 = MEMORY[0x1E696B0A8];
  dataCopy = data;
  v6 = [[v4 alloc] initWithData:dataCopy];

  [(_HKXMLExtractor *)self _parseWithXMLParser:v6];
}

- (void)parseWithStream:(id)stream
{
  v4 = MEMORY[0x1E696B0A8];
  streamCopy = stream;
  v6 = [[v4 alloc] initWithStream:streamCopy];

  [(_HKXMLExtractor *)self _parseWithXMLParser:v6];
}

- (id)getDataForTagSpecification:(id)specification
{
  v3 = [(NSMutableDictionary *)self->_resultTagContent objectForKeyedSubscript:specification];
  if (!v3)
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  return v3;
}

- (void)_parseWithXMLParser:(id)parser
{
  parserCopy = parser;
  [parserCopy setShouldProcessNamespaces:1];
  [parserCopy setDelegate:self];
  [(_HKXMLExtractor *)self _resetScanningState];
  [parserCopy parse];
}

- (void)_resetScanningState
{
  [(NSMutableArray *)self->_stackOfElements removeAllObjects];
  [(NSMutableDictionary *)self->_resultTagContent removeAllObjects];
  matchedTagSpecification = self->_matchedTagSpecification;
  self->_matchedTagSpecification = 0;
}

- (id)_matchSpecificationWithAttributes:(id)attributes
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_allTagSpecifications;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 matchesElementStack:{self->_stackOfElements, v13}])
        {
          specificationString = [v9 specificationString];
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  specificationString = 0;
LABEL_11:

  v11 = *MEMORY[0x1E69E9840];

  return specificationString;
}

- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes
{
  parserCopy = parser;
  matchedTagSpecification = self->_matchedTagSpecification;
  self->_matchedTagSpecification = 0;
  attributesCopy = attributes;
  elementCopy = element;

  v14 = [[_HKXMLExtractorElement alloc] initWithElementName:elementCopy attributes:attributesCopy];
  [(NSMutableArray *)self->_stackOfElements addObject:v14];
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __80___HKXMLExtractor_parser_didStartElement_namespaceURI_qualifiedName_attributes___block_invoke;
  v21 = &unk_1E7383B98;
  selfCopy = self;
  v23 = parserCopy;
  v15 = parserCopy;
  [attributesCopy enumerateKeysAndObjectsUsingBlock:&v18];
  selfCopy = [(_HKXMLExtractor *)self _matchSpecificationWithAttributes:attributesCopy, v18, v19, v20, v21, selfCopy];

  v17 = self->_matchedTagSpecification;
  self->_matchedTagSpecification = selfCopy;
}

- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name
{
  matchedTagSpecification = self->_matchedTagSpecification;
  self->_matchedTagSpecification = 0;

  stackOfElements = self->_stackOfElements;

  [(NSMutableArray *)stackOfElements removeLastObject];
}

- (void)parser:(id)parser foundCharacters:(id)characters
{
  charactersCopy = characters;
  if (charactersCopy && self->_matchedTagSpecification)
  {
    v7 = charactersCopy;
    array = [(NSMutableDictionary *)self->_resultTagContent objectForKeyedSubscript:?];
    if (!array)
    {
      array = [MEMORY[0x1E695DF70] array];
      [(NSMutableDictionary *)self->_resultTagContent setObject:array forKey:self->_matchedTagSpecification];
    }

    [array addObject:v7];

    charactersCopy = v7;
  }
}

@end