@interface ONOXPathFunctionResult
- (NSNumber)numberValue;
- (NSString)stringValue;
- (void)dealloc;
@end

@implementation ONOXPathFunctionResult

- (NSString)stringValue
{
  v3 = [(ONOXPathFunctionResult *)self xmlXPath];
  if (v3)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithCString:-[ONOXPathFunctionResult xmlXPath](self encoding:{"xmlXPath")[32], 4}];
  }

  return v3;
}

- (NSNumber)numberValue
{
  v3 = [(ONOXPathFunctionResult *)self xmlXPath];
  if (v3)
  {
    v3 = [MEMORY[0x277CCABB0] numberWithDouble:{-[ONOXPathFunctionResult xmlXPath](self, "xmlXPath")[24]}];
  }

  return v3;
}

- (void)dealloc
{
  xmlXPath = self->_xmlXPath;
  if (xmlXPath)
  {
    xmlXPathFreeObject(xmlXPath);
  }

  v4.receiver = self;
  v4.super_class = ONOXPathFunctionResult;
  [(ONOXPathFunctionResult *)&v4 dealloc];
}

@end