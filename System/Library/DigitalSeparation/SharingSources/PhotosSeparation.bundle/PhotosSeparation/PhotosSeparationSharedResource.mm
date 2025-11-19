@interface PhotosSeparationSharedResource
- (PhotosSeparationSharedResource)initWithParticipants:(id)a3;
- (void)stopSharingToParticipant:(id)a3 withCompletion:(id)a4;
- (void)stopSharingWithCompletion:(id)a3;
- (void)updateVisibility:(int64_t)a3 completion:(id)a4;
@end

@implementation PhotosSeparationSharedResource

- (void)updateVisibility:(int64_t)a3 completion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4, 0);
  }
}

- (void)stopSharingToParticipant:(id)a3 withCompletion:(id)a4
{
  v6 = [NSAssertionHandler currentHandler:a3];
  [v6 handleFailureInMethod:a2 object:self file:@"PhotosSeparationSharedResource.m" lineNumber:37 description:{@"%s is an abstract method and requires a subclass to implement it", "-[PhotosSeparationSharedResource stopSharingToParticipant:withCompletion:]"}];
}

- (void)stopSharingWithCompletion:(id)a3
{
  v5 = +[NSAssertionHandler currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"PhotosSeparationSharedResource.m" lineNumber:33 description:{@"%s is an abstract method and requires a subclass to implement it", "-[PhotosSeparationSharedResource stopSharingWithCompletion:]"}];
}

- (PhotosSeparationSharedResource)initWithParticipants:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PhotosSeparationSharedResource;
  v6 = [(PhotosSeparationSharedResource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_participants, a3);
  }

  return v7;
}

@end