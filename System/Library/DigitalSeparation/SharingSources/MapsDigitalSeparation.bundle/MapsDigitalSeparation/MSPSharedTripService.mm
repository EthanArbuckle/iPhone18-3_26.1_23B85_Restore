@interface MSPSharedTripService
- (void)_ds_stopSharingWithParticipant:(id)a3 completion:(id)a4;
@end

@implementation MSPSharedTripService

- (void)_ds_stopSharingWithParticipant:(id)a3 completion:(id)a4
{
  v7 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MSPSharedTripService *)self stopSharingWithContact:v7 reason:1 completion:v6];
  }
}

@end