@interface CalendarSeparationSharedResource
- (void)makePrivateWithCompletion:(id)completion;
- (void)stopSharingWithParticipant:(id)participant completion:(id)completion;
@end

@implementation CalendarSeparationSharedResource

- (void)makePrivateWithCompletion:(id)completion
{
  v7 = NSLocalizedDescriptionKey;
  v8 = @"Not supported on this resource type";
  completionCopy = completion;
  v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v6 = [NSError errorWithDomain:@"CalendarSeparationErrorDomain" code:0 userInfo:v5];
  (*(completion + 2))(completionCopy, 0, v6);
}

- (void)stopSharingWithParticipant:(id)participant completion:(id)completion
{
  v6 = objc_opt_class();

  _NSRequestConcreteImplementation(self, a2, v6);
}

@end