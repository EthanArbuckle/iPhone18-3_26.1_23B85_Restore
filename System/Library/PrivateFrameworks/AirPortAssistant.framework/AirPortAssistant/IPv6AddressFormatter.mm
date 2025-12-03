@interface IPv6AddressFormatter
- (BOOL)isPartialStringValid:(id)valid newEditingString:(id *)string errorDescription:(id *)description;
@end

@implementation IPv6AddressFormatter

- (BOOL)isPartialStringValid:(id)valid newEditingString:(id *)string errorDescription:(id *)description
{
  v6.receiver = self;
  v6.super_class = IPv6AddressFormatter;
  return [(APFormatter *)&v6 isPartialStringValid:valid newEditingString:string errorDescription:description];
}

@end