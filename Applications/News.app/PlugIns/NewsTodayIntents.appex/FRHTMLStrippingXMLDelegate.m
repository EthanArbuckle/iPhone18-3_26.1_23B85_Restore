@interface FRHTMLStrippingXMLDelegate
- (FRHTMLStrippingXMLDelegate)init;
- (NSString)strippedString;
- (void)parser:(id)a3 foundCharacters:(id)a4;
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

- (void)parser:(id)a3 foundCharacters:(id)a4
{
  v5 = a4;
  v6 = [(FRHTMLStrippingXMLDelegate *)self strings];
  [v6 addObject:v5];
}

- (NSString)strippedString
{
  v2 = [(FRHTMLStrippingXMLDelegate *)self strings];
  v3 = [v2 componentsJoinedByString:&stru_100021070];

  return v3;
}

@end