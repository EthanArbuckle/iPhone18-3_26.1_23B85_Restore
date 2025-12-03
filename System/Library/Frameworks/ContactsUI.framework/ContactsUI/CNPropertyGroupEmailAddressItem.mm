@interface CNPropertyGroupEmailAddressItem
- (id)defaultActionURL;
@end

@implementation CNPropertyGroupEmailAddressItem

- (id)defaultActionURL
{
  v2 = MEMORY[0x1E696AEC0];
  labeledValue = [(CNPropertyGroupItem *)self labeledValue];
  value = [labeledValue value];
  uRLPathAllowedCharacterSet = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
  v6 = [value stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet];
  v7 = [v2 stringWithFormat:@"mailto:%@", v6];

  v8 = [MEMORY[0x1E695DFF8] URLWithString:v7];

  return v8;
}

@end