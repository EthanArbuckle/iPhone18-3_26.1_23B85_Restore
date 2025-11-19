void sub_29C9D5CE8(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) dismissModule];
  v3 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4);
    v3 = v4;
  }
}

ControlsModuleRootViewController)contentViewController
{
  contentViewController = self->_contentViewController;
  if (!contentViewController)
  {
    v4 = [(MediaControlsModule *)self contentModuleContext];
    v5 = [MEMORY[0x29EDC5900] sharedProvider];
    v6 = [v5 rootViewController];
    v7 = self->_contentViewController;
    self->_contentViewController = v6;

    v17[0] = MEMORY[0x29EDCA5F8];
    v17[1] = 3221225472;
    v17[2] = sub_29C9D5CE8;
    v17[3] = &unk_29F33D5A0;
    v8 = v4;
    v18 = v8;
    [(MRUMediaControlsModuleRootViewController *)self->_contentViewController setDismissModuleBlock:v17];
    v15[0] = MEMORY[0x29EDCA5F8];
    v15[1] = 3221225472;
    v15[2] = sub_29C9D5D48;
    v15[3] = &unk_29F33D5C8;
    v9 = v8;
    v16 = v9;
    [(MRUMediaControlsModuleRootViewController *)self->_contentViewController setExpandModuleBlock:v15];
    v13[0] = MEMORY[0x29EDCA5F8];
    v13[1] = 3221225472;
    v13[2] = sub_29C9D5B20;
    v13[3] = &unk_29F33D5C8;
    v14 = v9;
    v10 = self->_contentViewController;
    v11 = v9;
    [(MRUMediaControlsModuleRootViewController *)v10 setInvalidateContainerViewsBlock:v13];

    contentViewController = self->_contentViewController;
  }

  return contentViewController;
}

@end