@interface TCXmlUtilities
+ (id)bundlePathForXmlResource:(id)a3;
+ (void)checkStreamNamespaceAndName:(_xmlTextReader *)a3 name:(const char *)a4 ns:(id)a5;
@end

@implementation TCXmlUtilities

+ (id)bundlePathForXmlResource:(id)a3
{
  v4 = TCBundle();
  result = [v4 pathForResource:a3 ofType:@"xml.gz"];
  if (!result)
  {

    return [v4 pathForResource:a3 ofType:@"xml"];
  }

  return result;
}

+ (void)checkStreamNamespaceAndName:(_xmlTextReader *)a3 name:(const char *)a4 ns:(id)a5
{
  [a1 checkStreamNamespace:a3 ns:a5];

  [a1 checkStreamName:a3 name:a4];
}

@end