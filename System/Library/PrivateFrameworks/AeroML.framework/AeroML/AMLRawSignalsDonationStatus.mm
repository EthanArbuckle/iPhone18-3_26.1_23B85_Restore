@interface AMLRawSignalsDonationStatus
- (AMLRawSignalsDonationStatus)initWithMetadataDonationId:(id)id rawSignalsDonationId:(id)donationId configurationDonationId:(id)configurationDonationId group:(id)group;
- (OS_dispatch_group)group;
- (void)setGroup:(id)group;
@end

@implementation AMLRawSignalsDonationStatus

- (OS_dispatch_group)group
{
  v2 = sub_21AF00B88();

  return v2;
}

- (void)setGroup:(id)group
{
  groupCopy = group;
  selfCopy = self;
  sub_21AF00BF0(groupCopy);
}

- (AMLRawSignalsDonationStatus)initWithMetadataDonationId:(id)id rawSignalsDonationId:(id)donationId configurationDonationId:(id)configurationDonationId group:(id)group
{
  v7 = sub_21AF097CC();
  v9 = v8;
  v10 = sub_21AF097CC();
  v12 = v11;
  v13 = sub_21AF097CC();
  return AMLRawSignalsDonationStatus.init(metadataDonationId:rawSignalsDonationId:configurationDonationId:group:)(v7, v9, v10, v12, v13, v14, group);
}

@end