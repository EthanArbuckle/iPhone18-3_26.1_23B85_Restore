@interface PHRecentsTableViewController
+ (id)contactViewControllerForRecentCall:(id)call contact:(id)contact recentsController:(id)controller;
+ (id)contactViewControllerForRecentCall:(id)call recentsController:(id)controller;
@end

@implementation PHRecentsTableViewController

+ (id)contactViewControllerForRecentCall:(id)call recentsController:(id)controller
{
  callCopy = call;
  controllerCopy = controller;
  v7 = +[PHContactViewController descriptorForRequiredKeys];
  v13 = v7;
  v8 = [NSArray arrayWithObjects:&v13 count:1];
  v9 = [controllerCopy contactForRecentCall:callCopy keyDescriptors:v8];

  if (v9 || (v9 = objc_alloc_init(CNContact)) != 0)
  {
    v10 = [PHRecentsTableViewController contactViewControllerForRecentCall:callCopy contact:v9 recentsController:controllerCopy];
  }

  else
  {
    v10 = 0;
  }

  imageURL = [callCopy imageURL];

  if (imageURL)
  {
    [v10 setUsesBrandedCallHeaderFormat:1];
  }

  return v10;
}

+ (id)contactViewControllerForRecentCall:(id)call contact:(id)contact recentsController:(id)controller
{
  callCopy = call;
  controllerCopy = controller;
  contactCopy = contact;
  if ([contactCopy hasBeenPersisted])
  {
    v10 = [PHContactViewController viewControllerForContact:contactCopy];

    [v10 setShouldShowLinkedContacts:1];
  }

  else
  {
    v10 = [PHContactViewController viewControllerForUnknownContact:contactCopy];
  }

  validRemoteParticipantHandles = [callCopy validRemoteParticipantHandles];
  anyObject = [validRemoteParticipantHandles anyObject];
  value = [anyObject value];
  v14 = [value length];

  if (v14)
  {
    [v10 setActions:{objc_msgSend(v10, "actions") | 0x80}];
    suggestedContactStore = [controllerCopy suggestedContactStore];
    [v10 setContactStore:suggestedContactStore];

    [v10 setRecentCall:callCopy];
  }

  else
  {
    [v10 setAllowsActions:0];
    [v10 setAllowsEditing:0];
    callerIdIsBlocked = [callCopy callerIdIsBlocked];
    v17 = +[NSBundle mainBundle];
    v18 = v17;
    if (callerIdIsBlocked)
    {
      v19 = @"NO_CALLER_ID";
    }

    else
    {
      v19 = @"UNKNOWN_CALLER";
    }

    v20 = [v17 localizedStringForKey:v19 value:&stru_10028F310 table:@"PHRecents"];
    [v10 setAlternateName:v20];
  }

  v21 = objc_alloc_init(MPRecentsContactHeaderViewController);
  [(MPRecentsContactHeaderViewController *)v21 setRecentCall:callCopy];
  [v10 setContactHeaderViewController:v21];

  return v10;
}

@end