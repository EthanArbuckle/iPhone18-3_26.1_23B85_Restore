@interface ComponentMLB
- (BOOL)isPresent;
- (id)serialNumber;
- (void)populateAttributes:(id)attributes;
@end

@implementation ComponentMLB

- (BOOL)isPresent
{
  serialNumber = [(ComponentMLB *)self serialNumber];
  valid = isValidSerialNumber(serialNumber);

  return valid;
}

- (void)populateAttributes:(id)attributes
{
  attributesCopy = attributes;
  serialNumber = [(ComponentMLB *)self serialNumber];
  [attributesCopy setObject:serialNumber forKeyedSubscript:@"serialNumber"];
}

- (id)serialNumber
{
  v2 = MGCopyAnswer();
  v3 = stringOrNull(v2);

  return v3;
}

@end