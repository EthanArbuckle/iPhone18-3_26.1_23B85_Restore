@interface MSPSharedTripContact
- (NSString)emailAddress;
- (NSString)phoneNumber;
- (NSString)unifiedContactIdentifier;
@end

@implementation MSPSharedTripContact

- (NSString)unifiedContactIdentifier
{
  v2 = [(MSPSharedTripContact *)self contact];
  v3 = [v2 identifier];

  return v3;
}

- (NSString)emailAddress
{
  if (([(MSPSharedTripContact *)self isPhoneNumber]& 1) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(MSPSharedTripContact *)self stringValue];
  }

  return v3;
}

- (NSString)phoneNumber
{
  if ([(MSPSharedTripContact *)self isPhoneNumber])
  {
    v3 = [(MSPSharedTripContact *)self stringValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end