@interface PhotosSeparationSharedResource
- (PhotosSeparationSharedResource)initWithParticipants:(id)participants;
- (void)stopSharingToParticipant:(id)participant withCompletion:(id)completion;
- (void)stopSharingWithCompletion:(id)completion;
- (void)updateVisibility:(int64_t)visibility completion:(id)completion;
@end

@implementation PhotosSeparationSharedResource

- (void)updateVisibility:(int64_t)visibility completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 0);
  }
}

- (void)stopSharingToParticipant:(id)participant withCompletion:(id)completion
{
  v6 = [NSAssertionHandler currentHandler:participant];
  [v6 handleFailureInMethod:a2 object:self file:@"PhotosSeparationSharedResource.m" lineNumber:37 description:{@"%s is an abstract method and requires a subclass to implement it", "-[PhotosSeparationSharedResource stopSharingToParticipant:withCompletion:]"}];
}

- (void)stopSharingWithCompletion:(id)completion
{
  v5 = +[NSAssertionHandler currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"PhotosSeparationSharedResource.m" lineNumber:33 description:{@"%s is an abstract method and requires a subclass to implement it", "-[PhotosSeparationSharedResource stopSharingWithCompletion:]"}];
}

- (PhotosSeparationSharedResource)initWithParticipants:(id)participants
{
  participantsCopy = participants;
  v9.receiver = self;
  v9.super_class = PhotosSeparationSharedResource;
  v6 = [(PhotosSeparationSharedResource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_participants, participants);
  }

  return v7;
}

@end