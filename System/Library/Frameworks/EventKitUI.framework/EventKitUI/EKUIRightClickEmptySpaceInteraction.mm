@interface EKUIRightClickEmptySpaceInteraction
+ (id)localizedPasteStringForEventCount:(unint64_t)count includeHere:(BOOL)here;
- (EKUIRightClickEmptySpaceInteraction)initWithDelegate:(id)delegate;
- (EKUIRightClickEmptySpaceInteractionDelegate)delegate;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
@end

@implementation EKUIRightClickEmptySpaceInteraction

- (EKUIRightClickEmptySpaceInteraction)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = EKUIRightClickEmptySpaceInteraction;
  v5 = [(EKUIRightClickEmptySpaceInteraction *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(EKUIRightClickEmptySpaceInteraction *)v5 setDelegate:delegateCopy];
    v7 = [objc_alloc(MEMORY[0x1E69DC8E0]) initWithDelegate:v6];
    interaction = v6->_interaction;
    v6->_interaction = v7;
  }

  return v6;
}

+ (id)localizedPasteStringForEventCount:(unint64_t)count includeHere:(BOOL)here
{
  hereCopy = here;
  v6 = MEMORY[0x1E696AEC0];
  v7 = EventKitUIBundle();
  v8 = v7;
  if (hereCopy)
  {
    v9 = @"num_events_to_paste_here";
  }

  else
  {
    v9 = @"num_events_to_paste";
  }

  v10 = [v7 localizedStringForKey:v9 value:&stru_1F4EF6790 table:0];
  v11 = [v6 localizedStringWithFormat:v10, count];

  return v11;
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  interactionCopy = interaction;
  view = [(EKUIRightClickEmptySpaceInteraction *)self view];
  [interactionCopy locationInView:view];
  v8 = v7;
  v10 = v9;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [interactionCopy locationInView:view];
  v12 = [WeakRetained interaction:self shouldShowMenuAtPoint:view inView:?];

  if (v12 && [interactionCopy menuAppearance] != 1)
  {
    v14 = MEMORY[0x1E69DC8D8];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __93__EKUIRightClickEmptySpaceInteraction_contextMenuInteraction_configurationForMenuAtLocation___block_invoke;
    v16[3] = &unk_1E8441E68;
    v16[4] = self;
    v18 = v8;
    v19 = v10;
    v17 = view;
    v13 = [v14 configurationWithIdentifier:0 previewProvider:0 actionProvider:v16];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

id __93__EKUIRightClickEmptySpaceInteraction_contextMenuInteraction_configurationForMenuAtLocation___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v6 = (a1 + 48);
  v7 = [WeakRetained interaction:*(a1 + 32) canCreateEventAtPoint:*(a1 + 40) inView:{*(a1 + 48), *(a1 + 56)}];

  if (v7)
  {
    v8 = EventKitUIBundle();
    v9 = [v8 localizedStringForKey:@"New Event - context menu" value:@"New Event" table:0];

    objc_initWeak(&location, *(a1 + 32));
    v10 = MEMORY[0x1E69DC628];
    v11 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"plus"];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __93__EKUIRightClickEmptySpaceInteraction_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_2;
    v39[3] = &unk_1E8441E40;
    objc_copyWeak(&v41, &location);
    v42 = *v6;
    v40 = *(a1 + 40);
    v12 = [v10 actionWithTitle:v9 image:v11 identifier:0 handler:v39];

    [v4 addObject:v12];
    objc_destroyWeak(&v41);
    objc_destroyWeak(&location);
  }

  v13 = objc_loadWeakRetained((*(a1 + 32) + 16));
  v14 = [v13 interaction:*(a1 + 32) canCreateReminderAtPoint:*(a1 + 40) inView:{*(a1 + 48), *(a1 + 56)}];

  if (v14)
  {
    v15 = EventKitUIBundle();
    v16 = [v15 localizedStringForKey:@"New Reminder - context menu" value:@"New Reminder" table:0];

    objc_initWeak(&location, *(a1 + 32));
    v17 = MEMORY[0x1E69DC628];
    v18 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checklist"];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __93__EKUIRightClickEmptySpaceInteraction_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_3;
    v35[3] = &unk_1E8441E40;
    objc_copyWeak(&v37, &location);
    v38 = *v6;
    v36 = *(a1 + 40);
    v19 = [v17 actionWithTitle:v16 image:v18 identifier:0 handler:v35];

    [v4 addObject:v19];
    objc_destroyWeak(&v37);
    objc_destroyWeak(&location);
  }

  v20 = objc_loadWeakRetained((*(a1 + 32) + 16));
  v21 = [v20 interaction:*(a1 + 32) canPasteEventAtPoint:*(a1 + 40) inView:{*(a1 + 48), *(a1 + 56)}];

  if (v21)
  {
    v22 = objc_loadWeakRetained((*(a1 + 32) + 16));
    v23 = [v22 interaction:*(a1 + 32) titleForPasteActionAtPoint:*(a1 + 40) inView:{*(a1 + 48), *(a1 + 56)}];

    v24 = objc_loadWeakRetained((*(a1 + 32) + 16));
    v25 = [v24 interaction:*(a1 + 32) subtitleForPasteActionAtPoint:*(a1 + 40) inView:{*(a1 + 48), *(a1 + 56)}];

    objc_initWeak(&location, *(a1 + 32));
    v26 = MEMORY[0x1E69DC628];
    v27 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"doc.on.clipboard"];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __93__EKUIRightClickEmptySpaceInteraction_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_4;
    v31[3] = &unk_1E8441E40;
    objc_copyWeak(&v33, &location);
    v34 = *v6;
    v32 = *(a1 + 40);
    v28 = [v26 actionWithTitle:v23 image:v27 identifier:0 handler:v31];

    if ([v25 length])
    {
      [v28 setDiscoverabilityTitle:v25];
    }

    [v4 addObject:v28];

    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
  }

  v29 = [MEMORY[0x1E69DCC60] menuWithChildren:v4];

  return v29;
}

void __93__EKUIRightClickEmptySpaceInteraction_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = objc_loadWeakRetained(WeakRetained + 2);
    [v3 interaction:v4 createEventAtPoint:*(a1 + 32) inView:{*(a1 + 48), *(a1 + 56)}];

    WeakRetained = v4;
  }
}

void __93__EKUIRightClickEmptySpaceInteraction_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = objc_loadWeakRetained(WeakRetained + 2);
    [v3 interaction:v4 createReminderAtPoint:*(a1 + 32) inView:{*(a1 + 48), *(a1 + 56)}];

    WeakRetained = v4;
  }
}

void __93__EKUIRightClickEmptySpaceInteraction_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = objc_loadWeakRetained(WeakRetained + 2);
    [v3 interaction:v4 pasteEventAtPoint:*(a1 + 32) inView:{*(a1 + 48), *(a1 + 56)}];

    WeakRetained = v4;
  }
}

- (EKUIRightClickEmptySpaceInteractionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end