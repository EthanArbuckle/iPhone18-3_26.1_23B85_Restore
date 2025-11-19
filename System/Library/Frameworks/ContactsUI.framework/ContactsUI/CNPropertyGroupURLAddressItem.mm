@interface CNPropertyGroupURLAddressItem
- (id)_urlWithUserString:(id)a3;
- (id)defaultActionURL;
- (id)displayStringForValue:(id)a3;
@end

@implementation CNPropertyGroupURLAddressItem

- (id)_urlWithUserString:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = objc_autoreleasePoolPush();
    v5 = [MEMORY[0x1E695DFF8] _web_URLWithUserTypedString:v3];
    v6 = [v5 scheme];

    if (!v6)
    {
      v7 = MEMORY[0x1E695DFF8];
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"http://%@", v3];
      v9 = [v7 _web_URLWithUserTypedString:v8];

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
  v3 = [(CNPropertyGroupItem *)self labeledValue];
  v4 = [v3 value];
  v5 = [(CNPropertyGroupURLAddressItem *)self _urlWithUserString:v4];

  return v5;
}

- (id)displayStringForValue:(id)a3
{
  v3 = [(CNPropertyGroupURLAddressItem *)self _urlWithUserString:a3];
  v4 = [v3 _web_userVisibleString];

  return v4;
}

@end