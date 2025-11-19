@interface IPv6AddressFormatter
- (BOOL)isPartialStringValid:(id)a3 newEditingString:(id *)a4 errorDescription:(id *)a5;
@end

@implementation IPv6AddressFormatter

- (BOOL)isPartialStringValid:(id)a3 newEditingString:(id *)a4 errorDescription:(id *)a5
{
  v6.receiver = self;
  v6.super_class = IPv6AddressFormatter;
  return [(APFormatter *)&v6 isPartialStringValid:a3 newEditingString:a4 errorDescription:a5];
}

@end