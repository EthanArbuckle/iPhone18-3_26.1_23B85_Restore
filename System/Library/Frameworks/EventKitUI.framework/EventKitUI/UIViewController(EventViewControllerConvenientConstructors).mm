@interface UIViewController(EventViewControllerConvenientConstructors)
+ (EKEventViewController)eventDetailViewControllerWithEvent:()EventViewControllerConvenientConstructors delegate:context:canvasView:allowInlinePreview:previewInline:minimalMode:;
@end

@implementation UIViewController(EventViewControllerConvenientConstructors)

+ (EKEventViewController)eventDetailViewControllerWithEvent:()EventViewControllerConvenientConstructors delegate:context:canvasView:allowInlinePreview:previewInline:minimalMode:
{
  v37[1] = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  calendar = [v13 calendar];
  type = [calendar type];

  v18 = EKWeakLinkClass();
  v19 = EKWeakLinkClass();
  if (type == 4 && (v20 = v19, [v18 authorizationStatusForEntityType:0] == 3))
  {
    v21 = EKWeakLinkClass();
    v22 = objc_alloc_init(v20);
    v23 = [objc_msgSend(v18 "alloc")];
    birthdayContactIdentifier = [v13 birthdayContactIdentifier];
    descriptorForRequiredKeys = [v21 descriptorForRequiredKeys];
    v37[0] = descriptorForRequiredKeys;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:1];
    v27 = [v23 unifiedContactWithIdentifier:birthdayContactIdentifier keysToFetch:v26 error:0];

    v28 = [v21 viewControllerForContact:v27];
    [(EKEventViewController *)v28 setContactStore:v23];
    [(EKEventViewController *)v28 setShouldShowLinkedContacts:1];
    [(EKEventViewController *)v28 setDisplayMode:1];
    [(EKEventViewController *)v28 setActions:[(EKEventViewController *)v28 actions]| 0x400];
    [(EKEventViewController *)v28 setAllowsEditing:0];
    if ([v14 conformsToProtocol:&unk_1F4F7A080])
    {
      [(EKEventViewController *)v28 setDelegate:v14];
    }
  }

  else
  {
    v28 = -[EKEventViewController initWithIsReminder:]([EKEventViewController alloc], "initWithIsReminder:", [v13 isReminderIntegrationEvent]);
    [(EKEventViewController *)v28 setContext:v15];
    v29 = [v15 objectForKeyedSubscript:@"EKUIEventDetailsContext_AllowsCalendarPreview"];
    v30 = v29;
    if (v29)
    {
      -[EKEventViewController setAllowsCalendarPreview:](v28, "setAllowsCalendarPreview:", [v29 BOOLValue]);
    }

    v31 = [v15 objectForKeyedSubscript:@"EKUIEventDetailsContext_CalendarPreviewIsInlineDayView"];

    if (v31)
    {
      -[EKEventViewController setCalendarPreviewIsInlineDayView:](v28, "setCalendarPreviewIsInlineDayView:", [v31 BOOLValue]);
    }

    v32 = [v15 objectForKeyedSubscript:@"EKUIEventDetailsContext_MinimalMode"];

    if (v32)
    {
      -[EKEventViewController setMinimalMode:](v28, "setMinimalMode:", [v32 BOOLValue]);
    }

    v33 = [v15 objectForKeyedSubscript:@"EKUIEventDetailsContext_AllowsConferenceItem"];

    if (v33)
    {
      -[EKEventViewController setShowsDetectedConferenceItem:](v28, "setShowsDetectedConferenceItem:", [v33 BOOLValue]);
    }

    v34 = [v15 objectForKeyedSubscript:@"EKUIEventDetailsContext_ShowsDoneButton"];

    if (v34)
    {
      -[EKEventViewController setShowsDoneButton:](v28, "setShowsDoneButton:", [v34 BOOLValue]);
    }

    if ([v14 conformsToProtocol:&unk_1F4F9E0F0])
    {
      [(EKEventViewController *)v28 setDelegate:v14];
    }

    [(EKEventViewController *)v28 setAllowsCalendarPreview:a7];
    [(EKEventViewController *)v28 setCalendarPreviewIsInlineDayView:a8];
    [(EKEventViewController *)v28 setMinimalMode:a9];
    [(EKEventViewController *)v28 setAllowsEditing:1];
    if (objc_opt_respondsToSelector())
    {
      -[EKEventViewController setEditorShowTransition:](v28, "setEditorShowTransition:", [v14 editorShowTransition]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[EKEventViewController setEditorHideTransition:](v28, "setEditorHideTransition:", [v14 editorHideTransition]);
    }

    [(EKEventViewController *)v28 setEvent:v13];
    [(EKEventViewController *)v28 setCanvasView:a6];
  }

  return v28;
}

@end