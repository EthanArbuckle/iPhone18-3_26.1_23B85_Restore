@interface SWCollaborationView
- (BOOL)_shouldOverrideSymbolConfigForIWork;
- (BOOL)_shouldOverrideSymbolConfigForVisionFreeform;
- (SWCollaborationView)initWithButtonView:(id)a3;
- (SWCollaborationView)initWithItemProvider:(NSItemProvider *)itemProvider;
- (id)cloudSharingControllerDelegate;
- (id)cloudSharingDelegate;
- (id)delegate;
- (void)dismissPopover:(void *)completion;
- (void)setActiveParticipantCount:(NSUInteger)activeParticipantCount;
- (void)setContentView:(UIView *)detailViewListContentView;
- (void)setDelegate:(id)delegate;
- (void)setHeaderImage:(UIImage *)headerImage;
- (void)setHeaderSubtitle:(NSString *)headerSubtitle;
- (void)setHeaderTitle:(NSString *)headerTitle;
- (void)setManageButtonTitle:(NSString *)manageButtonTitle;
- (void)updatePlaceholderGlyphScale:(int64_t)a3 weight:(int64_t)a4 pointSize:(double)a5;
@end

@implementation SWCollaborationView

- (SWCollaborationView)initWithButtonView:(id)a3
{
  v25[4] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v24.receiver = self;
  v24.super_class = SWCollaborationView;
  v6 = [(SWCollaborationView *)&v24 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v6)
  {
    [v5 setOuterButton:v6];
    v23 = v5;
    objc_storeStrong(&v6->_typeErasedButtonView, a3);
    [(SWCollaborationView *)v6 addSubview:v6->_typeErasedButtonView];
    [(UIView *)v6->_typeErasedButtonView setTranslatesAutoresizingMaskIntoConstraints:0];
    v18 = MEMORY[0x1E696ACD8];
    v22 = [(UIView *)v6->_typeErasedButtonView leadingAnchor];
    v21 = [(SWCollaborationView *)v6 leadingAnchor];
    v20 = [v22 constraintEqualToAnchor:v21];
    v25[0] = v20;
    v19 = [(UIView *)v6->_typeErasedButtonView trailingAnchor];
    v7 = [(SWCollaborationView *)v6 trailingAnchor];
    v8 = [v19 constraintEqualToAnchor:v7];
    v25[1] = v8;
    v9 = [(UIView *)v6->_typeErasedButtonView topAnchor];
    v10 = [(SWCollaborationView *)v6 topAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];
    v25[2] = v11;
    v12 = [(UIView *)v6->_typeErasedButtonView bottomAnchor];
    v13 = [(SWCollaborationView *)v6 bottomAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];
    v25[3] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:4];
    [v18 activateConstraints:v15];

    v5 = v23;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)_shouldOverrideSymbolConfigForVisionFreeform
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 bundleIdentifier];

  return 0;
}

- (BOOL)_shouldOverrideSymbolConfigForIWork
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 bundleIdentifier];

  v4 = [MEMORY[0x1E695DF70] array];
  if ([v3 length])
  {
    v5 = [v4 containsObject:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (SWCollaborationView)initWithItemProvider:(NSItemProvider *)itemProvider
{
  v4 = itemProvider;
  v5 = [[_SWCollaborationButtonViewImpl alloc] initWithItemProvider:v4];

  v6 = [(SWCollaborationView *)self initWithButtonView:v5];
  return v6;
}

- (void)setDelegate:(id)delegate
{
  v4 = delegate;
  v5 = sub_1BBC2EF14(self, "buttonView");
  [v5 setDelegate:v4];
}

- (void)dismissPopover:(void *)completion
{
  v4 = completion;
  v5 = sub_1BBC2EF14(self, "buttonView");
  [v5 dismissPopoverAnimated:1 completion:v4];
}

- (void)setContentView:(UIView *)detailViewListContentView
{
  v4 = detailViewListContentView;
  v5 = sub_1BBC2EF14(self, "buttonView");
  [v5 setDetailViewListContent:v4];
}

- (void)setActiveParticipantCount:(NSUInteger)activeParticipantCount
{
  v4 = sub_1BBC2EF14(self, "buttonView");
  [v4 setActiveParticipantCount:activeParticipantCount];
}

- (void)setManageButtonTitle:(NSString *)manageButtonTitle
{
  v8 = manageButtonTitle;
  if (!v8 || (v4 = v8, ![(NSString *)v8 length]))
  {
    v5 = SWFrameworkBundle();
    v4 = [v5 localizedStringForKey:@"Manage Share" value:&stru_1F3ABB850 table:@"SharedWithYou"];
  }

  v6 = sub_1BBC2EF14(self, "buttonView");
  [v6 setManageButtonTitle:v4];

  v7 = self->_manageButtonTitle;
  self->_manageButtonTitle = v4;
}

- (void)setHeaderTitle:(NSString *)headerTitle
{
  v4 = headerTitle;
  v5 = sub_1BBC2EF14(self, "buttonView");
  [v5 setHeaderTitle:v4];
}

- (void)setHeaderSubtitle:(NSString *)headerSubtitle
{
  v4 = headerSubtitle;
  v5 = sub_1BBC2EF14(self, "buttonView");
  [v5 setHeaderSubtitle:v4];
}

- (void)setHeaderImage:(UIImage *)headerImage
{
  v4 = headerImage;
  v5 = sub_1BBC2EF14(self, "buttonView");
  [v5 setHeaderImage:v4];
}

- (void)updatePlaceholderGlyphScale:(int64_t)a3 weight:(int64_t)a4 pointSize:(double)a5
{
  v8 = sub_1BBC2EF14(self, "buttonView");
  [v8 updatePlaceHolderSymbolScale:a3 weight:a4 pointSize:a5];
}

- (id)cloudSharingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_cloudSharingDelegate);

  return WeakRetained;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)cloudSharingControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_cloudSharingControllerDelegate);

  return WeakRetained;
}

@end