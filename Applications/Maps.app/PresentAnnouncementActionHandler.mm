@interface PresentAnnouncementActionHandler
+ (void)performAction:(id)action inContext:(id)context;
@end

@implementation PresentAnnouncementActionHandler

+ (void)performAction:(id)action inContext:(id)context
{
  actionCopy = action;
  contextCopy = context;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_26;
  }

  v22 = contextCopy;
  announcement = [actionCopy announcement];
  hasTitle = [announcement hasTitle];
  if (hasTitle && ([announcement title], contextCopy = objc_claimAutoreleasedReturnValue(), objc_msgSend(contextCopy, "length")))
  {
    title = [announcement title];
    v11 = 0;
    v12 = 1;
  }

  else
  {
    v4 = +[NSBundle mainBundle];
    title = [v4 localizedStringForKey:@"Maps Announcement" value:@"localized string not found" table:0];
    v12 = 0;
    v11 = 1;
  }

  userMessage = [announcement userMessage];
  v14 = [UIAlertController alertControllerWithTitle:title message:userMessage preferredStyle:1];

  if (v11)
  {

    if (!v12)
    {
LABEL_8:
      if (!hasTitle)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else if (!v12)
  {
    goto LABEL_8;
  }

  if (hasTitle)
  {
LABEL_9:
  }

LABEL_10:
  contextCopy = v22;
  chrome = [v22 chrome];
  if (([announcement hasButtonOneMessage] & 1) != 0 || objc_msgSend(announcement, "hasButtonOneAppURI"))
  {
    if ([announcement hasButtonOneMessage])
    {
      buttonOneMessage = [announcement buttonOneMessage];
    }

    else
    {
      v17 = +[NSBundle mainBundle];
      buttonOneMessage = [v17 localizedStringForKey:@"OK [announcement-alert]" value:@"localized string not found" table:0];
    }

    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1007A7864;
    v26[3] = &unk_1016383E0;
    v27 = announcement;
    v28 = chrome;
    v18 = [UIAlertAction actionWithTitle:buttonOneMessage style:0 handler:v26];
    [v14 addAction:v18];
  }

  if (([announcement hasButtonTwoMessage] & 1) != 0 || objc_msgSend(announcement, "hasButtonTwoAppURI"))
  {
    if ([announcement hasButtonTwoMessage])
    {
      buttonTwoMessage = [announcement buttonTwoMessage];
    }

    else
    {
      v20 = +[NSBundle mainBundle];
      buttonTwoMessage = [v20 localizedStringForKey:@"Dismiss [announcement-alert]" value:@"localized string not found" table:0];
    }

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1007A7900;
    v23[3] = &unk_1016383E0;
    v24 = announcement;
    v25 = chrome;
    v21 = [UIAlertAction actionWithTitle:buttonTwoMessage style:1 handler:v23];
    [v14 addAction:v21];
  }

  [chrome presentViewController:v14 animated:1 completion:0];

LABEL_26:
}

@end