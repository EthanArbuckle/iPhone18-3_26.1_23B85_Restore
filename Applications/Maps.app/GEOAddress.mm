@interface GEOAddress
- (id)initWithAddressBookAddress:(id)address;
@end

@implementation GEOAddress

- (id)initWithAddressBookAddress:(id)address
{
  addressCopy = address;
  addressDictionary = [addressCopy addressDictionary];
  v6 = [(GEOAddress *)self initWithAddressDictionary:addressDictionary];

  if (v6)
  {
    singleLineAddress = [addressCopy singleLineAddress];
    if (singleLineAddress)
    {
      [(GEOAddress *)v6 addFormattedAddressLine:singleLineAddress];
    }

    v8 = v6;
  }

  return v6;
}

@end