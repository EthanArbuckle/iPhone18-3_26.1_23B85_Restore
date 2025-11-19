@interface CNPropertyGroupEmailAddressItem
- (id)defaultActionURL;
@end

@implementation CNPropertyGroupEmailAddressItem

- (id)defaultActionURL
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(CNPropertyGroupItem *)self labeledValue];
  v4 = [v3 value];
  v5 = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
  v6 = [v4 stringByAddingPercentEncodingWithAllowedCharacters:v5];
  v7 = [v2 stringWithFormat:@"mailto:%@", v6];

  v8 = [MEMORY[0x1E695DFF8] URLWithString:v7];

  return v8;
}

@end