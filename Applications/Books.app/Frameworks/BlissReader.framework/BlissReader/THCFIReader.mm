@interface THCFIReader
+ (_xmlNode)findRefNodeFromRoot:(_xmlNode *)root reader:(id)reader ns:(id)ns manifest:(_xmlNode *)manifest;
+ (_xmlNode)lookupIDFrom:(_xmlNode *)from inManifest:(_xmlNode *)manifest ns:(id)ns;
+ (id)getHrefFromNode:(_xmlNode *)node ns:(id)ns;
@end

@implementation THCFIReader

+ (id)getHrefFromNode:(_xmlNode *)node ns:(id)ns
{
  v8 = 0;
  if (CXOptionalStringAttribute(node, ns, "media-type", &v8) && [(NSString *)v8 isEqualToString:@"application/xhtml+xml"]&& (v7 = 0, CXOptionalStringAttribute(node, ns, "href", &v7)))
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

+ (_xmlNode)lookupIDFrom:(_xmlNode *)from inManifest:(_xmlNode *)manifest ns:(id)ns
{
  v10 = 0;
  objc_opt_class();
  if (!CXOptionalStringAttribute(from, CXNoNamespace, "idref", &v10))
  {
    return 0;
  }

  if (manifest)
  {
    return CXFindChildWithAttributeValue(manifest, ns, "item", "id", [(NSString *)v10 cStringUsingEncoding:4]);
  }

  v8 = CXGetRootElement(from->doc);
  result = CXFindChild(v8, ns, "manifest");
  manifest = result;
  if (result)
  {
    return CXFindChildWithAttributeValue(manifest, ns, "item", "id", [(NSString *)v10 cStringUsingEncoding:4]);
  }

  return result;
}

+ (_xmlNode)findRefNodeFromRoot:(_xmlNode *)root reader:(id)reader ns:(id)ns manifest:(_xmlNode *)manifest
{
  componentCount = [reader componentCount];
  if (componentCount)
  {
    v11 = componentCount;
    for (i = 0; i != v11; ++i)
    {
      v21 = 0;
      v13 = [reader componentAtIndex:i identifier:&v21];
@end