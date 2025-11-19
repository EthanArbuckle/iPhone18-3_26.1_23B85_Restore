@interface HKXMLExtractor
@end

@implementation HKXMLExtractor

void __80___HKXMLExtractor_parser_didStartElement_namespaceURI_qualifiedName_attributes___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  if ([v5 length])
  {
    v6 = *(a1 + 32);
    v7 = *(v6 + 24);
    *(v6 + 24) = 0;

    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"@%@", v15];
    v9 = [[_HKXMLExtractorElement alloc] initWithElementName:v8 attributes:0];
    [*(*(a1 + 32) + 16) addObject:v9];
    v10 = [*(a1 + 32) _matchSpecificationWithAttributes:0];
    v11 = *(a1 + 32);
    v12 = *(v11 + 24);
    *(v11 + 24) = v10;

    [*(a1 + 32) parser:*(a1 + 40) foundCharacters:v5];
    [*(*(a1 + 32) + 16) removeLastObject];
    v13 = *(a1 + 32);
    v14 = *(v13 + 24);
    *(v13 + 24) = 0;
  }
}

@end