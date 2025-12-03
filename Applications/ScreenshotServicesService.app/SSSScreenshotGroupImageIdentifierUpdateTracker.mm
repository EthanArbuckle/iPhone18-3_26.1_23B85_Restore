@interface SSSScreenshotGroupImageIdentifierUpdateTracker
- (BOOL)successful;
- (SSSScreenshotGroupImageIdentifierUpdateTracker)init;
- (SSSScreenshotGroupImageIdentifierUpdateTrackerDelegate)delegate;
- (void)_progressChanged;
- (void)addScreenshotToGroup:(id)group;
- (void)screenshotReceivedImageIdentifierUpdate:(id)update;
@end

@implementation SSSScreenshotGroupImageIdentifierUpdateTracker

- (void)addScreenshotToGroup:(id)group
{
  environmentDescriptionIdentifierForScreenshotsAwaitingImageIdentifierUpdates = self->_environmentDescriptionIdentifierForScreenshotsAwaitingImageIdentifierUpdates;
  ++self->_totalScreenshotsInGroup;
  environmentDescription = [group environmentDescription];
  identifier = [environmentDescription identifier];
  [(NSMutableArray *)environmentDescriptionIdentifierForScreenshotsAwaitingImageIdentifierUpdates addObject:identifier];

  [(SSSScreenshotGroupImageIdentifierUpdateTracker *)self _progressChanged];
}

- (void)screenshotReceivedImageIdentifierUpdate:(id)update
{
  updateCopy = update;
  identifier = [updateCopy identifier];

  if (identifier)
  {
    ++self->_totalValidScreenshotsInGroup;
  }

  environmentDescriptionIdentifierForScreenshotsAwaitingImageIdentifierUpdates = self->_environmentDescriptionIdentifierForScreenshotsAwaitingImageIdentifierUpdates;
  environmentDescription = [updateCopy environmentDescription];
  identifier2 = [environmentDescription identifier];
  [(NSMutableArray *)environmentDescriptionIdentifierForScreenshotsAwaitingImageIdentifierUpdates removeObject:identifier2];

  [(SSSScreenshotGroupImageIdentifierUpdateTracker *)self _progressChanged];
  delegate = [(SSSScreenshotGroupImageIdentifierUpdateTracker *)self delegate];
  identifier3 = [updateCopy identifier];

  [delegate groupImageIdentifierUpdateTrackerDidReceiveNewScreenshotIdentifier:identifier3];
}

- (void)_progressChanged
{
  delegate = [(SSSScreenshotGroupImageIdentifierUpdateTracker *)self delegate];
  [delegate groupImageIdentifierUpdateTrackerChangedProgressTowardsReceivingAllImageIdentifierUpdates:self];
}

- (BOOL)successful
{
  totalScreenshotsInGroup = self->_totalScreenshotsInGroup;
  totalValidScreenshotsInGroup = self->_totalValidScreenshotsInGroup;
  if (totalValidScreenshotsInGroup > totalScreenshotsInGroup)
  {
    v5 = os_log_create("com.apple.screenshotservices", "ShareSheet");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100074AC8(v5);
    }

    totalScreenshotsInGroup = self->_totalScreenshotsInGroup;
    totalValidScreenshotsInGroup = self->_totalValidScreenshotsInGroup;
  }

  return totalValidScreenshotsInGroup >= totalScreenshotsInGroup;
}

- (SSSScreenshotGroupImageIdentifierUpdateTracker)init
{
  v6.receiver = self;
  v6.super_class = SSSScreenshotGroupImageIdentifierUpdateTracker;
  v2 = [(SSSScreenshotGroupImageIdentifierUpdateTracker *)&v6 init];
  v3 = +[NSMutableArray array];
  environmentDescriptionIdentifierForScreenshotsAwaitingImageIdentifierUpdates = v2->_environmentDescriptionIdentifierForScreenshotsAwaitingImageIdentifierUpdates;
  v2->_environmentDescriptionIdentifierForScreenshotsAwaitingImageIdentifierUpdates = v3;

  return v2;
}

- (SSSScreenshotGroupImageIdentifierUpdateTrackerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end