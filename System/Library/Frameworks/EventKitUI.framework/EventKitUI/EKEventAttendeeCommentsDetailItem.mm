@interface EKEventAttendeeCommentsDetailItem
- (BOOL)configureWithEvent:(id)event calendar:(id)calendar preview:(BOOL)preview;
- (id)cellForSubitemAtIndex:(unint64_t)index;
- (id)detailViewControllerWithFrame:(CGRect)frame forSubitemAtIndex:(unint64_t)index;
- (unint64_t)_numComments;
@end

@implementation EKEventAttendeeCommentsDetailItem

- (BOOL)configureWithEvent:(id)event calendar:(id)calendar preview:(BOOL)preview
{
  v6 = [(EKEvent *)self->super._event isSelfOrganized:event];
  if (v6)
  {
    LOBYTE(v6) = [(EKEventAttendeeCommentsDetailItem *)self _numComments]!= 0;
  }

  return v6;
}

- (unint64_t)_numComments
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  attendees = [(EKEvent *)self->super._event attendees];
  v3 = [attendees countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(attendees);
        }

        comment = [*(*(&v11 + 1) + 8 * i) comment];
        v9 = [MEMORY[0x1E6993410] stringWithAutoCommentRemoved:comment];

        if ([v9 length])
        {
          ++v5;
        }
      }

      v4 = [attendees countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)cellForSubitemAtIndex:(unint64_t)index
{
  v4 = [[EKUITableViewCell alloc] initWithStyle:1 reuseIdentifier:0];
  v5 = EventKitUIBundle();
  v6 = [v5 localizedStringForKey:@"Comments" value:&stru_1F4EF6790 table:0];
  textLabel = [(EKUITableViewCell *)v4 textLabel];
  [textLabel setText:v6];

  [(EKEventAttendeeCommentsDetailItem *)self _numComments];
  v8 = CUIKLocalizedStringForInteger();
  detailTextLabel = [(EKUITableViewCell *)v4 detailTextLabel];
  [detailTextLabel setText:v8];

  [(EKUITableViewCell *)v4 setAccessoryType:1];

  return v4;
}

- (id)detailViewControllerWithFrame:(CGRect)frame forSubitemAtIndex:(unint64_t)index
{
  v5 = [[EKEventAttendeeCommentsEditViewController alloc] initWithEKEvent:self->super._event];
  viewControllerToPresentFrom = [(EKEventDetailItem *)self viewControllerToPresentFrom];
  navigationDelegate = [viewControllerToPresentFrom navigationDelegate];
  [(EKEventAttendeeCommentsEditViewController *)v5 setNavigationDelegate:navigationDelegate];

  return v5;
}

@end