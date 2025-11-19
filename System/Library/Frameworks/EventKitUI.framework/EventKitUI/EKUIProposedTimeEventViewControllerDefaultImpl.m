@interface EKUIProposedTimeEventViewControllerDefaultImpl
- (BOOL)shouldShowEditButtonInline;
- (EKViewControllerRemoteUIDelegate)remoteUIDelegate;
- (id)items;
- (id)proposedTime;
- (id)statusButtonActions;
- (id)viewTitle;
- (void)bottomStatusButtonTappedWithAction:(int64_t)a3 eventStatusButtonsView:(id)a4;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation EKUIProposedTimeEventViewControllerDefaultImpl

- (void)viewWillAppear:(BOOL)a3
{
  v11.receiver = self;
  v11.super_class = EKUIProposedTimeEventViewControllerDefaultImpl;
  [(EKEventViewControllerDefaultImpl *)&v11 viewWillAppear:a3];
  v4 = [(EKUIProposedTimeEventViewControllerDefaultImpl *)self statusButtonActions];
  v5 = [(EKUIProposedTimeEventViewControllerDefaultImpl *)self remoteUIDelegate];
  if (v5)
  {
    v6 = v5;
    v7 = [(EKUIProposedTimeEventViewControllerDefaultImpl *)self remoteUIDelegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(EKUIProposedTimeEventViewControllerDefaultImpl *)self remoteUIDelegate];
      v10 = [(EKUIProposedTimeEventViewControllerDefaultImpl *)self _proposedTimeEventViewController];
      [v9 viewController:v10 didChangeBottomStatusButtons:v4];
    }
  }
}

- (id)proposedTime
{
  v2 = [(EKUIProposedTimeEventViewControllerDefaultImpl *)self proposedTimeAttendee];
  v3 = [v2 proposedStartDate];

  return v3;
}

- (id)viewTitle
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"Proposed Time" value:&stru_1F4EF6790 table:0];

  return v3;
}

- (BOOL)shouldShowEditButtonInline
{
  v4.receiver = self;
  v4.super_class = EKUIProposedTimeEventViewControllerDefaultImpl;
  v2 = [(EKEventViewControllerDefaultImpl *)&v4 shouldShowEditButtonInline];
  return !+[SwappableViewControllerImplementationFactory shouldUseOutOfProcessUI]& v2;
}

- (id)items
{
  v13[3] = *MEMORY[0x1E69E9840];
  items = self->super._items;
  if (!items)
  {
    v4 = objc_alloc_init(EKEventTitleDetailItem);
    [(EKEventTitleDetailItem *)v4 setEditDelegate:self];
    v5 = [(EKUIProposedTimeEventViewControllerDefaultImpl *)self proposedTime];
    [(EKEventTitleDetailItem *)v4 setProposedTime:v5];

    v6 = objc_alloc_init(EKEventPreviewDetailItem);
    v7 = [(EKUIProposedTimeEventViewControllerDefaultImpl *)self proposedTime];
    [(EKEventPreviewDetailItem *)v6 setProposedTime:v7];

    v8 = objc_alloc_init(EKEventOrganizerDetailItem);
    v9 = [(EKUIProposedTimeEventViewControllerDefaultImpl *)self proposedTimeAttendee];
    [(EKEventOrganizerDetailItem *)v8 setOrganizerOverride:v9];

    v13[0] = v4;
    v13[1] = v6;
    v13[2] = v8;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:3];
    v11 = self->super._items;
    self->super._items = v10;

    items = self->super._items;
  }

  return items;
}

- (id)statusButtonActions
{
  v29 = *MEMORY[0x1E69E9840];
  v23 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v3 = [(EKEventViewControllerDefaultImpl *)self event];
  v4 = [v3 attendees];

  v5 = [v4 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [(EKUIProposedTimeEventViewControllerDefaultImpl *)self proposedTimeAttendee];
          v11 = [v10 URL];
          v12 = [v11 resourceSpecifier];

          v13 = [v9 URL];
          v14 = [v13 resourceSpecifier];

          if ([v12 isEqualToString:v14])
          {
            [v23 addObject:v9];

            goto LABEL_13;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v15 = [(EKEventViewControllerDefaultImpl *)self event];
  v16 = [EKUIEmailCompositionManager canShowViewControllerForEvent:v15 withParticipantRecipients:v23];

  v17 = [(EKEventViewControllerDefaultImpl *)self event];
  v18 = [v17 calendar];
  v19 = [v18 allowsContentModifications];

  v20 = &unk_1F4F32170;
  if (v16)
  {
    v20 = &unk_1F4F32158;
  }

  if (v19)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (void)bottomStatusButtonTappedWithAction:(int64_t)a3 eventStatusButtonsView:(id)a4
{
  v92 = *MEMORY[0x1E69E9840];
  v65 = a4;
  val = self;
  v67 = [(EKEventViewControllerDefaultImpl *)self event];
  v6 = [(UIResponder *)self EKUI_editor];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __108__EKUIProposedTimeEventViewControllerDefaultImpl_bottomStatusButtonTappedWithAction_eventStatusButtonsView___block_invoke;
  aBlock[3] = &unk_1E843F9C0;
  v64 = v6;
  v88 = v64;
  v66 = _Block_copy(aBlock);
  switch(a3)
  {
    case 0x4000:
      v63 = objc_opt_new();
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v42 = [v67 attendees];
      v43 = [v42 countByEnumeratingWithState:&v76 objects:v90 count:16];
      if (v43)
      {
        v44 = *v77;
        while (2)
        {
          for (i = 0; i != v43; ++i)
          {
            if (*v77 != v44)
            {
              objc_enumerationMutation(v42);
            }

            v46 = *(*(&v76 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v47 = v46;
              v48 = [(EKUIProposedTimeEventViewControllerDefaultImpl *)val proposedTimeAttendee];
              v49 = [v48 emailAddress];
              v50 = [v47 emailAddress];
              v51 = [v49 isEqual:v50];

              if (v51)
              {
                [v63 addObject:v47];

                goto LABEL_42;
              }
            }
          }

          v43 = [v42 countByEnumeratingWithState:&v76 objects:v90 count:16];
          if (v43)
          {
            continue;
          }

          break;
        }
      }

LABEL_42:

      v52 = EventKitUIBundle();
      v53 = [v52 localizedStringForKey:@"RE:" value:&stru_1F4EF6790 table:0];

      v54 = [[EKUIEmailCompositionManager alloc] initWithEvent:v67 participantRecipients:v63 subjectPrefix:v53 bodyPrefix:0];
      [(EKUIProposedTimeEventViewControllerDefaultImpl *)val setMessageSendingManager:v54];

      objc_initWeak(&location, val);
      v73[0] = MEMORY[0x1E69E9820];
      v73[1] = 3221225472;
      v73[2] = __108__EKUIProposedTimeEventViewControllerDefaultImpl_bottomStatusButtonTappedWithAction_eventStatusButtonsView___block_invoke_3;
      v73[3] = &unk_1E843F7E8;
      objc_copyWeak(&v74, &location);
      v55 = [(EKUIProposedTimeEventViewControllerDefaultImpl *)val messageSendingManager];
      [v55 setMessageSendingComplete:v73];

      v56 = [(EKUIProposedTimeEventViewControllerDefaultImpl *)val messageSendingManager];
      v57 = [v56 viewController];
      [v57 setModalPresentationStyle:2];

      v58 = [(EKEventViewControllerDefaultImpl *)val presentationNavigationDelegate];
      v59 = [(EKUIProposedTimeEventViewControllerDefaultImpl *)val messageSendingManager];
      v60 = [v59 viewController];
      [v58 presentViewController:v60 animated:1 completion:0];

      objc_destroyWeak(&v74);
      objc_destroyWeak(&location);

      break;
    case 0x2000:
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v31 = [v67 attendees];
      v32 = [v31 countByEnumeratingWithState:&v69 objects:v89 count:16];
      if (v32)
      {
        v33 = *v70;
        do
        {
          for (j = 0; j != v32; ++j)
          {
            if (*v70 != v33)
            {
              objc_enumerationMutation(v31);
            }

            v35 = *(*(&v69 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v36 = v35;
              v37 = [(EKUIProposedTimeEventViewControllerDefaultImpl *)val proposedTimeAttendee];
              v38 = [v37 emailAddress];
              v39 = [v36 emailAddress];
              v40 = [v38 isEqual:v39];

              if (v40)
              {
                [v36 setCommentChanged:0];
                [v36 setStatusChanged:0];
                [v36 setProposedStartDateChanged:0];
                [v36 setProposedStartDateStatus:3];
              }
            }
          }

          v32 = [v31 countByEnumeratingWithState:&v69 objects:v89 count:16];
        }

        while (v32);
      }

      if ([v67 isOrWasPartOfRecurringSeries])
      {
        v41 = 4;
      }

      else
      {
        v41 = 0;
      }

      v66[2](v66, v67, v41);
      [(EKEventViewControllerDefaultImpl *)val completeWithAction:0];
      break;
    case 0x1000:
      v7 = [v67 endDateUnadjustedForLegacyClients];
      v8 = [v67 startDate];
      [v7 timeIntervalSinceDate:v8];
      v10 = v9;

      v11 = [(EKUIProposedTimeEventViewControllerDefaultImpl *)val proposedTime];
      [v67 setStartDate:v11];

      v12 = [(EKUIProposedTimeEventViewControllerDefaultImpl *)val proposedTime];
      v13 = [v12 dateByAddingTimeInterval:v10];
      [v67 setEndDateUnadjustedForLegacyClients:v13];

      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v14 = [v67 attendees];
      v15 = [v14 countByEnumeratingWithState:&v83 objects:v91 count:16];
      if (v15)
      {
        v16 = *v84;
        do
        {
          for (k = 0; k != v15; ++k)
          {
            if (*v84 != v16)
            {
              objc_enumerationMutation(v14);
            }

            v18 = *(*(&v83 + 1) + 8 * k);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v19 = v18;
              [v19 setCommentChanged:0];
              [v19 setStatusChanged:0];
              [v19 setProposedStartDateChanged:0];
            }
          }

          v15 = [v14 countByEnumeratingWithState:&v83 objects:v91 count:16];
        }

        while (v15);
      }

      [v67 dismissAcceptedProposeNewTimeNotification];
      v20 = [v65 buttonForAction:4096];
      if ([v67 isOrWasPartOfRecurringSeries])
      {
        v21 = [(EKEventViewControllerDefaultImpl *)val presentationSourceViewController];
        [v20 bounds];
        v23 = v22;
        v25 = v24;
        v27 = v26;
        v29 = v28;
        v80[0] = MEMORY[0x1E69E9820];
        v80[1] = 3221225472;
        v80[2] = __108__EKUIProposedTimeEventViewControllerDefaultImpl_bottomStatusButtonTappedWithAction_eventStatusButtonsView___block_invoke_2;
        v80[3] = &unk_1E843FA60;
        v80[4] = val;
        v82 = v66;
        v81 = v67;
        v30 = [EKUIRecurrenceAlertController presentDetachAlertWithOptions:0 viewController:v21 sourceView:v20 sourceRect:v81 forEvent:v80 withCompletionHandler:v23, v25, v27, v29];
        [(EKUIProposedTimeEventViewControllerDefaultImpl *)val setRecurrenceAlertController:v30];
      }

      else
      {
        v66[2](v66, v67, 0);
        [(EKEventViewControllerDefaultImpl *)val completeWithAction:0];
      }

      break;
  }

  v61 = [(EKUIProposedTimeEventViewControllerDefaultImpl *)val completionBlock];

  if (v61)
  {
    v62 = [(EKUIProposedTimeEventViewControllerDefaultImpl *)val completionBlock];
    v62[2]();
  }
}

void __108__EKUIProposedTimeEventViewControllerDefaultImpl_bottomStatusButtonTappedWithAction_eventStatusButtonsView___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if ((a2 - 3) >= 3)
  {
    (*(*(a1 + 48) + 16))();
    [*(a1 + 32) setRecurrenceAlertController:0];
    v5 = *(a1 + 32);

    [v5 completeWithAction:0];
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 1424);
    *(v3 + 1424) = 0;
  }
}

void __108__EKUIProposedTimeEventViewControllerDefaultImpl_bottomStatusButtonTappedWithAction_eventStatusButtonsView___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained messageSendingManager];
  v2 = [v1 viewController];
  v3 = [v2 presentingViewController];

  if (v3)
  {
    [v3 dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    v4 = [WeakRetained presentationNavigationDelegate];
    [v4 dismissViewControllerAnimated:1 completion:0];
  }
}

- (EKViewControllerRemoteUIDelegate)remoteUIDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_remoteUIDelegate);

  return WeakRetained;
}

@end