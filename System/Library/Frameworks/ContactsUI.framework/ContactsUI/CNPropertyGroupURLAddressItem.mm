@interface CNPropertyGroupURLAddressItem
- (id)_urlWithUserString:(id)string;
- (id)defaultActionURL;
- (id)displayStringForValue:(id)value;
@end

@implementation CNPropertyGroupURLAddressItem

- (id)_urlWithUserString:(id)string
{
  stringCopy = string;
  if ([stringCopy length])
  {
    v4 = objc_autoreleasePoolPush();
    v5 = [MEMORY[0x1E695DFF8] _web_URLWithUserTypedString:stringCopy];
    scheme = [v5 scheme];

    if (!scheme)
    {
      v7 = MEMORY[0x1E695DFF8];
      stringCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"http://%@", stringCopy];
      v9 = [v7 _web_URLWithUserTypedString:stringCopy];

      v5 = v9;
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)defaultActionURL
{
  labeledValue = [(CNPropertyGroupItem *)self labeledValue];
  value = [labeledValue value];
  v5 = [(CNPropertyGroupURLAddressItem *)self _urlWithUserString:value];

  return v5;
}

- (id)displayStringForValue:(id)value
{
  v3 = [(CNPropertyGroupURLAddressItem *)self _urlWithUserString:value];
  _web_userVisibleString = [v3 _web_userVisibleString];

  return _web_userVisibleString;
}

@end