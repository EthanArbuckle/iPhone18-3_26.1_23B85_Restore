@interface CalendarSeparationSharedResource
- (void)makePrivateWithCompletion:(id)a3;
- (void)stopSharingWithParticipant:(id)a3 completion:(id)a4;
@end

@implementation CalendarSeparationSharedResource

- (void)makePrivateWithCompletion:(id)a3
{
  v7 = NSLocalizedDescriptionKey;
  v8 = @"Not supported on this resource type";
  v4 = a3;
  v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v6 = [NSError errorWithDomain:@"CalendarSeparationErrorDomain" code:0 userInfo:v5];
  (*(a3 + 2))(v4, 0, v6);
}

- (void)stopSharingWithParticipant:(id)a3 completion:(id)a4
{
  v6 = objc_opt_class();

  _NSRequestConcreteImplementation(self, a2, v6);
}

@end