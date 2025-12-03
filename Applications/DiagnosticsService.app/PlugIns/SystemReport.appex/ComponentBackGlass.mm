@interface ComponentBackGlass
- (BOOL)isPresent;
- (id)serialNumber;
- (void)populateAttributes:(id)attributes;
@end

@implementation ComponentBackGlass

- (void)populateAttributes:(id)attributes
{
  attributesCopy = attributes;
  v6.receiver = self;
  v6.super_class = ComponentBackGlass;
  [(ComponentBase *)&v6 populateAttributes:attributesCopy];
  serialNumber = [(ComponentBackGlass *)self serialNumber];
  if (serialNumber)
  {
    [attributesCopy setObject:serialNumber forKeyedSubscript:@"serialNumber"];
  }
}

- (BOOL)isPresent
{
  serialNumber = [(ComponentBackGlass *)self serialNumber];
  v3 = serialNumber;
  if (serialNumber)
  {
    v4 = [serialNumber length] != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)serialNumber
{
  v2 = [DAComponentUtil getIORegistryName:@"product" property:@"backglass-serial-number" optionalKey:0];
  if (v2)
  {
    v3 = [[NSString alloc] initWithData:v2 encoding:4];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end