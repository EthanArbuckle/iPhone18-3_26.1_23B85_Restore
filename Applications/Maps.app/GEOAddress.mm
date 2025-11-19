@interface GEOAddress
- (id)initWithAddressBookAddress:(id)a3;
@end

@implementation GEOAddress

- (id)initWithAddressBookAddress:(id)a3
{
  v4 = a3;
  v5 = [v4 addressDictionary];
  v6 = [(GEOAddress *)self initWithAddressDictionary:v5];

  if (v6)
  {
    v7 = [v4 singleLineAddress];
    if (v7)
    {
      [(GEOAddress *)v6 addFormattedAddressLine:v7];
    }

    v8 = v6;
  }

  return v6;
}

@end