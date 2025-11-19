@interface EKEventAttendeeCommentsDetailItem
- (BOOL)configureWithEvent:(id)a3 calendar:(id)a4 preview:(BOOL)a5;
- (id)cellForSubitemAtIndex:(unint64_t)a3;
- (id)detailViewControllerWithFrame:(CGRect)a3 forSubitemAtIndex:(unint64_t)a4;
- (unint64_t)_numComments;
@end

@implementation EKEventAttendeeCommentsDetailItem

- (BOOL)configureWithEvent:(id)a3 calendar:(id)a4 preview:(BOOL)a5
{
  v6 = [(EKEvent *)self->super._event isSelfOrganized:a3];
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
  v2 = [(EKEvent *)self->super._event attendees];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v2);
        }

        v8 = [*(*(&v11 + 1) + 8 * i) comment];
        v9 = [MEMORY[0x1E6993410] stringWithAutoCommentRemoved:v8];

        if ([v9 length])
        {
          ++v5;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)cellForSubitemAtIndex:(unint64_t)a3
{
  v4 = [[EKUITableViewCell alloc] initWithStyle:1 reuseIdentifier:0];
  v5 = EventKitUIBundle();
  v6 = [v5 localizedStringForKey:@"Comments" value:&stru_1F4EF6790 table:0];
  v7 = [(EKUITableViewCell *)v4 textLabel];
  [v7 setText:v6];

  [(EKEventAttendeeCommentsDetailItem *)self _numComments];
  v8 = CUIKLocalizedStringForInteger();
  v9 = [(EKUITableViewCell *)v4 detailTextLabel];
  [v9 setText:v8];

  [(EKUITableViewCell *)v4 setAccessoryType:1];

  return v4;
}

- (id)detailViewControllerWithFrame:(CGRect)a3 forSubitemAtIndex:(unint64_t)a4
{
  v5 = [[EKEventAttendeeCommentsEditViewController alloc] initWithEKEvent:self->super._event];
  v6 = [(EKEventDetailItem *)self viewControllerToPresentFrom];
  v7 = [v6 navigationDelegate];
  [(EKEventAttendeeCommentsEditViewController *)v5 setNavigationDelegate:v7];

  return v5;
}

@end