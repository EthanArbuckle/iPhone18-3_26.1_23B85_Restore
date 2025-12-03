@interface RWIProtocolDOMNode(AirPlayKit)
- (id)description;
- (uint64_t)depth;
- (void)maximumIndexPathFromIndexPath:()AirPlayKit;
@end

@implementation RWIProtocolDOMNode(AirPlayKit)

- (uint64_t)depth
{
  v2 = [MEMORY[0x277CCAA70] indexPathWithIndex:0];
  v3 = [self maximumIndexPathFromIndexPath:v2];
  v4 = [v3 length];

  return v4;
}

- (void)maximumIndexPathFromIndexPath:()AirPlayKit
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
  children = [self children];
  v7 = [children count];

  if (v7)
  {
    v8 = 0;
    do
    {
      children2 = [self children];
      v10 = [children2 objectAtIndex:v8];

      v11 = [v4 indexPathByAddingIndex:v8];
      v12 = [v10 maximumIndexPathFromIndexPath:v11];
      [v5 addObject:v12];

      ++v8;
      children3 = [self children];
      v14 = [children3 count];
    }

    while (v8 < v14);
  }

  [v5 sortUsingComparator:&__block_literal_global];
  firstObject = [v5 firstObject];
  v16 = firstObject;
  if (firstObject)
  {
    v17 = firstObject;
  }

  else
  {
    v17 = v4;
  }

  v18 = v17;

  return v17;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  nodeId = [self nodeId];
  nodeType = [self nodeType];
  nodeName = [self nodeName];
  localName = [self localName];
  nodeValue = [self nodeValue];
  childNodeCount = [self childNodeCount];
  children = [self children];
  v10 = [v2 stringWithFormat:@"<RWIProtocolNode: %p> nodeId = %d, nodeType = %d, nodeName = %@, localName = %@, value = %@, childNodeCount = %d, children = %lu", self, nodeId, nodeType, nodeName, localName, nodeValue, childNodeCount, objc_msgSend(children, "count")];

  return v10;
}

@end