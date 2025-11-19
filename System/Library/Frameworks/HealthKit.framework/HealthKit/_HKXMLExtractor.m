@interface _HKXMLExtractor
- (_HKXMLExtractor)init;
- (id)_matchSpecificationWithAttributes:(id)a3;
- (id)getDataForTagSpecification:(id)a3;
- (void)_parseWithXMLParser:(id)a3;
- (void)_resetScanningState;
- (void)addTagSpecificationForExtraction:(id)a3;
- (void)parseWithData:(id)a3;
- (void)parseWithStream:(id)a3;
- (void)parser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6;
- (void)parser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7;
- (void)parser:(id)a3 foundCharacters:(id)a4;
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

- (void)addTagSpecificationForExtraction:(id)a3
{
  v4 = a3;
  v5 = [[_HKXMLExtractorSpecification alloc] initWithSpecificationString:v4];

  [(NSMutableArray *)self->_allTagSpecifications addObject:v5];
}

- (void)parseWithData:(id)a3
{
  v4 = MEMORY[0x1E696B0A8];
  v5 = a3;
  v6 = [[v4 alloc] initWithData:v5];

  [(_HKXMLExtractor *)self _parseWithXMLParser:v6];
}

- (void)parseWithStream:(id)a3
{
  v4 = MEMORY[0x1E696B0A8];
  v5 = a3;
  v6 = [[v4 alloc] initWithStream:v5];

  [(_HKXMLExtractor *)self _parseWithXMLParser:v6];
}

- (id)getDataForTagSpecification:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_resultTagContent objectForKeyedSubscript:a3];
  if (!v3)
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  return v3;
}

- (void)_parseWithXMLParser:(id)a3
{
  v4 = a3;
  [v4 setShouldProcessNamespaces:1];
  [v4 setDelegate:self];
  [(_HKXMLExtractor *)self _resetScanningState];
  [v4 parse];
}

- (void)_resetScanningState
{
  [(NSMutableArray *)self->_stackOfElements removeAllObjects];
  [(NSMutableDictionary *)self->_resultTagContent removeAllObjects];
  matchedTagSpecification = self->_matchedTagSpecification;
  self->_matchedTagSpecification = 0;
}

- (id)_matchSpecificationWithAttributes:(id)a3
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
          v10 = [v9 specificationString];
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

  v10 = 0;
LABEL_11:

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)parser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7
{
  v10 = a3;
  matchedTagSpecification = self->_matchedTagSpecification;
  self->_matchedTagSpecification = 0;
  v12 = a7;
  v13 = a4;

  v14 = [[_HKXMLExtractorElement alloc] initWithElementName:v13 attributes:v12];
  [(NSMutableArray *)self->_stackOfElements addObject:v14];
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __80___HKXMLExtractor_parser_didStartElement_namespaceURI_qualifiedName_attributes___block_invoke;
  v21 = &unk_1E7383B98;
  v22 = self;
  v23 = v10;
  v15 = v10;
  [v12 enumerateKeysAndObjectsUsingBlock:&v18];
  v16 = [(_HKXMLExtractor *)self _matchSpecificationWithAttributes:v12, v18, v19, v20, v21, v22];

  v17 = self->_matchedTagSpecification;
  self->_matchedTagSpecification = v16;
}

- (void)parser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6
{
  matchedTagSpecification = self->_matchedTagSpecification;
  self->_matchedTagSpecification = 0;

  stackOfElements = self->_stackOfElements;

  [(NSMutableArray *)stackOfElements removeLastObject];
}

- (void)parser:(id)a3 foundCharacters:(id)a4
{
  v5 = a4;
  if (v5 && self->_matchedTagSpecification)
  {
    v7 = v5;
    v6 = [(NSMutableDictionary *)self->_resultTagContent objectForKeyedSubscript:?];
    if (!v6)
    {
      v6 = [MEMORY[0x1E695DF70] array];
      [(NSMutableDictionary *)self->_resultTagContent setObject:v6 forKey:self->_matchedTagSpecification];
    }

    [v6 addObject:v7];

    v5 = v7;
  }
}

@end