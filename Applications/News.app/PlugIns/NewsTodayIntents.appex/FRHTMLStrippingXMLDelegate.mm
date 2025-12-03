@interface FRHTMLStrippingXMLDelegate
- (FRHTMLStrippingXMLDelegate)init;
- (NSString)strippedString;
- (void)parser:(id)parser foundCharacters:(id)characters;
@end

@implementation FRHTMLStrippingXMLDelegate

- (FRHTMLStrippingXMLDelegate)init
{
  v6.receiver = self;
  v6.super_class = FRHTMLStrippingXMLDelegate;
  v2 = [(FRHTMLStrippingXMLDelegate *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    strings = v2->_strings;
    v2->_strings = v3;
  }

  return v2;
}

- (void)parser:(id)parser foundCharacters:(id)characters
{
  charactersCopy = characters;
  strings = [(FRHTMLStrippingXMLDelegate *)self strings];
  [strings addObject:charactersCopy];
}

- (NSString)strippedString
{
  strings = [(FRHTMLStrippingXMLDelegate *)self strings];
  v3 = [strings componentsJoinedByString:&stru_100021070];

  return v3;
}

@end