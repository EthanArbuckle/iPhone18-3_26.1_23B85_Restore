@interface SSSScreenshotGroupImageIdentifierUpdateTracker
- (BOOL)successful;
- (SSSScreenshotGroupImageIdentifierUpdateTracker)init;
- (SSSScreenshotGroupImageIdentifierUpdateTrackerDelegate)delegate;
- (void)_progressChanged;
- (void)addScreenshotToGroup:(id)a3;
- (void)screenshotReceivedImageIdentifierUpdate:(id)a3;
@end

@implementation SSSScreenshotGroupImageIdentifierUpdateTracker

- (void)addScreenshotToGroup:(id)a3
{
  environmentDescriptionIdentifierForScreenshotsAwaitingImageIdentifierUpdates = self->_environmentDescriptionIdentifierForScreenshotsAwaitingImageIdentifierUpdates;
  ++self->_totalScreenshotsInGroup;
  v5 = [a3 environmentDescription];
  v6 = [v5 identifier];
  [(NSMutableArray *)environmentDescriptionIdentifierForScreenshotsAwaitingImageIdentifierUpdates addObject:v6];

  [(SSSScreenshotGroupImageIdentifierUpdateTracker *)self _progressChanged];
}

- (void)screenshotReceivedImageIdentifierUpdate:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];

  if (v5)
  {
    ++self->_totalValidScreenshotsInGroup;
  }

  environmentDescriptionIdentifierForScreenshotsAwaitingImageIdentifierUpdates = self->_environmentDescriptionIdentifierForScreenshotsAwaitingImageIdentifierUpdates;
  v7 = [v4 environmentDescription];
  v8 = [v7 identifier];
  [(NSMutableArray *)environmentDescriptionIdentifierForScreenshotsAwaitingImageIdentifierUpdates removeObject:v8];

  [(SSSScreenshotGroupImageIdentifierUpdateTracker *)self _progressChanged];
  v10 = [(SSSScreenshotGroupImageIdentifierUpdateTracker *)self delegate];
  v9 = [v4 identifier];

  [v10 groupImageIdentifierUpdateTrackerDidReceiveNewScreenshotIdentifier:v9];
}

- (void)_progressChanged
{
  v3 = [(SSSScreenshotGroupImageIdentifierUpdateTracker *)self delegate];
  [v3 groupImageIdentifierUpdateTrackerChangedProgressTowardsReceivingAllImageIdentifierUpdates:self];
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