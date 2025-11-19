@interface AVDelegatingPlaybackCoordinatorBufferingCommand
- (AVDelegatingPlaybackCoordinatorBufferingCommand)initWithCoordinator:(id)a3 originator:(id)a4 expectedCurrentItemIdentifier:(id)a5 commandOrderIndex:(int64_t)a6 anticipatedPlaybackRate:(float)a7 completionDueDate:(id)a8;
- (void)dealloc;
@end

@implementation AVDelegatingPlaybackCoordinatorBufferingCommand

- (AVDelegatingPlaybackCoordinatorBufferingCommand)initWithCoordinator:(id)a3 originator:(id)a4 expectedCurrentItemIdentifier:(id)a5 commandOrderIndex:(int64_t)a6 anticipatedPlaybackRate:(float)a7 completionDueDate:(id)a8
{
  v16.receiver = self;
  v16.super_class = AVDelegatingPlaybackCoordinatorBufferingCommand;
  v14 = [(AVDelegatingPlaybackCoordinatorPlaybackControlCommand *)&v16 initInternal];
  if (v14)
  {
    v14->_coordinator = a3;
    v14->_originator = a4;
    v14->_expectedCurrentItemIdentifier = [a5 copy];
    v14->_commandOrderIndex = a6;
    v14->_anticipatedPlaybackRate = a7;
    v14->_completionDueDate = a8;
  }

  return v14;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVDelegatingPlaybackCoordinatorBufferingCommand;
  [(AVDelegatingPlaybackCoordinatorBufferingCommand *)&v3 dealloc];
}

@end