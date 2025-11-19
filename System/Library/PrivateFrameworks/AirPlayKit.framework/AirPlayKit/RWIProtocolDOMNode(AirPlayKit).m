@interface RWIProtocolDOMNode(AirPlayKit)
- (id)description;
- (uint64_t)depth;
- (void)maximumIndexPathFromIndexPath:()AirPlayKit;
@end

@implementation RWIProtocolDOMNode(AirPlayKit)

- (uint64_t)depth
{
  v2 = [MEMORY[0x277CCAA70] indexPathWithIndex:0];
  v3 = [a1 maximumIndexPathFromIndexPath:v2];
  v4 = [v3 length];

  return v4;
}

- (void)maximumIndexPathFromIndexPath:()AirPlayKit
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
  v6 = [a1 children];
  v7 = [v6 count];

  if (v7)
  {
    v8 = 0;
    do
    {
      v9 = [a1 children];
      v10 = [v9 objectAtIndex:v8];

      v11 = [v4 indexPathByAddingIndex:v8];
      v12 = [v10 maximumIndexPathFromIndexPath:v11];
      [v5 addObject:v12];

      ++v8;
      v13 = [a1 children];
      v14 = [v13 count];
    }

    while (v8 < v14);
  }

  [v5 sortUsingComparator:&__block_literal_global];
  v15 = [v5 firstObject];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
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
  v3 = [a1 nodeId];
  v4 = [a1 nodeType];
  v5 = [a1 nodeName];
  v6 = [a1 localName];
  v7 = [a1 nodeValue];
  v8 = [a1 childNodeCount];
  v9 = [a1 children];
  v10 = [v2 stringWithFormat:@"<RWIProtocolNode: %p> nodeId = %d, nodeType = %d, nodeName = %@, localName = %@, value = %@, childNodeCount = %d, children = %lu", a1, v3, v4, v5, v6, v7, v8, objc_msgSend(v9, "count")];

  return v10;
}

@end