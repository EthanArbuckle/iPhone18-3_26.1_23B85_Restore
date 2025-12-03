@interface AVDelegatingPlaybackCoordinatorBufferingCommand
- (AVDelegatingPlaybackCoordinatorBufferingCommand)initWithCoordinator:(id)coordinator originator:(id)originator expectedCurrentItemIdentifier:(id)identifier commandOrderIndex:(int64_t)index anticipatedPlaybackRate:(float)rate completionDueDate:(id)date;
- (void)dealloc;
@end

@implementation AVDelegatingPlaybackCoordinatorBufferingCommand

- (AVDelegatingPlaybackCoordinatorBufferingCommand)initWithCoordinator:(id)coordinator originator:(id)originator expectedCurrentItemIdentifier:(id)identifier commandOrderIndex:(int64_t)index anticipatedPlaybackRate:(float)rate completionDueDate:(id)date
{
  v16.receiver = self;
  v16.super_class = AVDelegatingPlaybackCoordinatorBufferingCommand;
  initInternal = [(AVDelegatingPlaybackCoordinatorPlaybackControlCommand *)&v16 initInternal];
  if (initInternal)
  {
    initInternal->_coordinator = coordinator;
    initInternal->_originator = originator;
    initInternal->_expectedCurrentItemIdentifier = [identifier copy];
    initInternal->_commandOrderIndex = index;
    initInternal->_anticipatedPlaybackRate = rate;
    initInternal->_completionDueDate = date;
  }

  return initInternal;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVDelegatingPlaybackCoordinatorBufferingCommand;
  [(AVDelegatingPlaybackCoordinatorBufferingCommand *)&v3 dealloc];
}

@end