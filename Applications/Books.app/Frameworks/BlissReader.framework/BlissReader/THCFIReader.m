@interface THCFIReader
+ (_xmlNode)findRefNodeFromRoot:(_xmlNode *)a3 reader:(id)a4 ns:(id)a5 manifest:(_xmlNode *)a6;
+ (_xmlNode)lookupIDFrom:(_xmlNode *)a3 inManifest:(_xmlNode *)a4 ns:(id)a5;
+ (id)getHrefFromNode:(_xmlNode *)a3 ns:(id)a4;
@end

@implementation THCFIReader

+ (id)getHrefFromNode:(_xmlNode *)a3 ns:(id)a4
{
  v8 = 0;
  if (CXOptionalStringAttribute(a3, a4, "media-type", &v8) && [(NSString *)v8 isEqualToString:@"application/xhtml+xml"]&& (v7 = 0, CXOptionalStringAttribute(a3, a4, "href", &v7)))
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

+ (_xmlNode)lookupIDFrom:(_xmlNode *)a3 inManifest:(_xmlNode *)a4 ns:(id)a5
{
  v10 = 0;
  objc_opt_class();
  if (!CXOptionalStringAttribute(a3, CXNoNamespace, "idref", &v10))
  {
    return 0;
  }

  if (a4)
  {
    return CXFindChildWithAttributeValue(a4, a5, "item", "id", [(NSString *)v10 cStringUsingEncoding:4]);
  }

  v8 = CXGetRootElement(a3->doc);
  result = CXFindChild(v8, a5, "manifest");
  a4 = result;
  if (result)
  {
    return CXFindChildWithAttributeValue(a4, a5, "item", "id", [(NSString *)v10 cStringUsingEncoding:4]);
  }

  return result;
}

+ (_xmlNode)findRefNodeFromRoot:(_xmlNode *)a3 reader:(id)a4 ns:(id)a5 manifest:(_xmlNode *)a6
{
  v10 = [a4 componentCount];
  if (v10)
  {
    v11 = v10;
    for (i = 0; i != v11; ++i)
    {
      v21 = 0;
      v13 = [a4 componentAtIndex:i identifier:&v21];
@end