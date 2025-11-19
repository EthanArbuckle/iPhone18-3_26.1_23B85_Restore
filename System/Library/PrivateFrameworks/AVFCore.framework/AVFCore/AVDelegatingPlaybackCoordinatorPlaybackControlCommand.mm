@interface AVDelegatingPlaybackCoordinatorPlaybackControlCommand
- (AVCoordinatedPlaybackParticipant)originator;
- (NSString)expectedCurrentItemIdentifier;
- (id)initInternal;
@end

@implementation AVDelegatingPlaybackCoordinatorPlaybackControlCommand

- (id)initInternal
{
  v3.receiver = self;
  v3.super_class = AVDelegatingPlaybackCoordinatorPlaybackControlCommand;
  return [(AVDelegatingPlaybackCoordinatorPlaybackControlCommand *)&v3 init];
}

- (AVCoordinatedPlaybackParticipant)originator
{
  v4 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v4);
  return 0;
}

- (NSString)expectedCurrentItemIdentifier
{
  v4 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v4);
  return 0;
}

@end