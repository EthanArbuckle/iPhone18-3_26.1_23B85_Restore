@interface AMLFeaturesDonationStatus
- (AMLFeaturesDonationStatus)initWithMetadataDonationId:(id)a3 featuresDonationId:(id)a4 configurationDonationId:(id)a5 group:(id)a6;
- (OS_dispatch_group)group;
- (void)setGroup:(id)a3;
@end

@implementation AMLFeaturesDonationStatus

- (OS_dispatch_group)group
{
  v2 = sub_21AEAFE80();

  return v2;
}

- (void)setGroup:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21AEAFEE8(v4);
}

- (AMLFeaturesDonationStatus)initWithMetadataDonationId:(id)a3 featuresDonationId:(id)a4 configurationDonationId:(id)a5 group:(id)a6
{
  v7 = sub_21AF097CC();
  v9 = v8;
  v10 = sub_21AF097CC();
  v12 = v11;
  v13 = sub_21AF097CC();
  return AMLFeaturesDonationStatus.init(metadataDonationId:featuresDonationId:configurationDonationId:group:)(v7, v9, v10, v12, v13, v14, a6);
}

@end