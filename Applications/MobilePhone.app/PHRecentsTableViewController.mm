@interface PHRecentsTableViewController
+ (id)contactViewControllerForRecentCall:(id)a3 contact:(id)a4 recentsController:(id)a5;
+ (id)contactViewControllerForRecentCall:(id)a3 recentsController:(id)a4;
@end

@implementation PHRecentsTableViewController

+ (id)contactViewControllerForRecentCall:(id)a3 recentsController:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[PHContactViewController descriptorForRequiredKeys];
  v13 = v7;
  v8 = [NSArray arrayWithObjects:&v13 count:1];
  v9 = [v6 contactForRecentCall:v5 keyDescriptors:v8];

  if (v9 || (v9 = objc_alloc_init(CNContact)) != 0)
  {
    v10 = [PHRecentsTableViewController contactViewControllerForRecentCall:v5 contact:v9 recentsController:v6];
  }

  else
  {
    v10 = 0;
  }

  v11 = [v5 imageURL];

  if (v11)
  {
    [v10 setUsesBrandedCallHeaderFormat:1];
  }

  return v10;
}

+ (id)contactViewControllerForRecentCall:(id)a3 contact:(id)a4 recentsController:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  if ([v9 hasBeenPersisted])
  {
    v10 = [PHContactViewController viewControllerForContact:v9];

    [v10 setShouldShowLinkedContacts:1];
  }

  else
  {
    v10 = [PHContactViewController viewControllerForUnknownContact:v9];
  }

  v11 = [v7 validRemoteParticipantHandles];
  v12 = [v11 anyObject];
  v13 = [v12 value];
  v14 = [v13 length];

  if (v14)
  {
    [v10 setActions:{objc_msgSend(v10, "actions") | 0x80}];
    v15 = [v8 suggestedContactStore];
    [v10 setContactStore:v15];

    [v10 setRecentCall:v7];
  }

  else
  {
    [v10 setAllowsActions:0];
    [v10 setAllowsEditing:0];
    v16 = [v7 callerIdIsBlocked];
    v17 = +[NSBundle mainBundle];
    v18 = v17;
    if (v16)
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
  [(MPRecentsContactHeaderViewController *)v21 setRecentCall:v7];
  [v10 setContactHeaderViewController:v21];

  return v10;
}

@end