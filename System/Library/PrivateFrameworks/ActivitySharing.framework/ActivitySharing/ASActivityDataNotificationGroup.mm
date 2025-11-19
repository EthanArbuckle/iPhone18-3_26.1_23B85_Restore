@interface ASActivityDataNotificationGroup
- (NSSet)allNotifications;
- (unint64_t)notificationCount;
@end

@implementation ASActivityDataNotificationGroup

- (unint64_t)notificationCount
{
  v3 = [(NSSet *)self->_goalCompletionNotifications count];
  v4 = [(NSSet *)self->_workoutNotifications count]+ v3;
  return v4 + [(NSSet *)self->_achievementNotifications count];
}

- (NSSet)allNotifications
{
  v3 = [MEMORY[0x277CBEB98] set];
  v4 = v3;
  if (self->_goalCompletionNotifications)
  {
    v5 = [v3 setByAddingObjectsFromSet:?];

    v4 = v5;
  }

  if (self->_workoutNotifications)
  {
    v6 = [v4 setByAddingObjectsFromSet:?];

    v4 = v6;
  }

  if (self->_achievementNotifications)
  {
    v7 = [v4 setByAddingObjectsFromSet:?];

    v4 = v7;
  }

  return v4;
}

@end