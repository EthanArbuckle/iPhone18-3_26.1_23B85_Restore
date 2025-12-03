@interface MSPSharedTripService
- (void)_ds_stopSharingWithParticipant:(id)participant completion:(id)completion;
@end

@implementation MSPSharedTripService

- (void)_ds_stopSharingWithParticipant:(id)participant completion:(id)completion
{
  participantCopy = participant;
  completionCopy = completion;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MSPSharedTripService *)self stopSharingWithContact:participantCopy reason:1 completion:completionCopy];
  }
}

@end