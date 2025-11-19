@interface SiriReferenceResolutionDonation
- (_TtC14AnnounceDaemon31SiriReferenceResolutionDonation)init;
- (void)makePlaybackDonationWithAnnouncementID:(id)a3;
@end

@implementation SiriReferenceResolutionDonation

- (_TtC14AnnounceDaemon31SiriReferenceResolutionDonation)init
{
  v3 = sub_23F5881D4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = ANLogWithCategory();
  sub_23F5881E4();
  (*(v4 + 32))(self + OBJC_IVAR____TtC14AnnounceDaemon31SiriReferenceResolutionDonation_logger, v7, v3);
  v9 = type metadata accessor for SiriReferenceResolutionDonation();
  v11.receiver = self;
  v11.super_class = v9;
  return [(SiriReferenceResolutionDonation *)&v11 init];
}

- (void)makePlaybackDonationWithAnnouncementID:(id)a3
{
  v4 = sub_23F5882D4();
  v6 = v5;
  v7 = self;
  sub_23F57DF00(v4, v6);
}

@end