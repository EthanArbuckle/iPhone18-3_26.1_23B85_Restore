@interface MDLAsset(SCNModelIO)
+ (id)assetWithSCNNode:()SCNModelIO bufferAllocator:;
+ (uint64_t)assetWithSCNNode:()SCNModelIO;
+ (uint64_t)assetWithSCNScene:()SCNModelIO;
+ (uint64_t)assetWithSCNScene:()SCNModelIO bufferAllocator:;
@end

@implementation MDLAsset(SCNModelIO)

+ (uint64_t)assetWithSCNScene:()SCNModelIO
{
  if (!a3 || ![a3 rootNode])
  {
    return 0;
  }

  v5 = [a3 rootNode];

  return [a1 assetWithSCNNode:v5];
}

+ (uint64_t)assetWithSCNScene:()SCNModelIO bufferAllocator:
{
  if (!a3 || ![a3 rootNode])
  {
    return 0;
  }

  v7 = [a3 rootNode];

  return [a1 assetWithSCNNode:v7 bufferAllocator:a4];
}

+ (uint64_t)assetWithSCNNode:()SCNModelIO
{
  if (a3)
  {
    return [a1 assetWithSCNNode:a3 bufferAllocator:0];
  }

  else
  {
    return 0;
  }
}

+ (id)assetWithSCNNode:()SCNModelIO bufferAllocator:
{
  if (!a3)
  {
    return 0;
  }

  v6 = [[a1 alloc] initWithBufferAllocator:a4];
  [v6 addObject:{objc_msgSend(MEMORY[0x277CD7B18], "objectWithSCNNode:bufferAllocator:", a3, a4)}];

  return v6;
}

@end