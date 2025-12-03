@interface SWCollaborationView
- (BOOL)_shouldOverrideSymbolConfigForIWork;
- (BOOL)_shouldOverrideSymbolConfigForVisionFreeform;
- (SWCollaborationView)initWithButtonView:(id)view;
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
- (void)updatePlaceholderGlyphScale:(int64_t)scale weight:(int64_t)weight pointSize:(double)size;
@end

@implementation SWCollaborationView

- (SWCollaborationView)initWithButtonView:(id)view
{
  v25[4] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v24.receiver = self;
  v24.super_class = SWCollaborationView;
  v6 = [(SWCollaborationView *)&v24 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v6)
  {
    [viewCopy setOuterButton:v6];
    v23 = viewCopy;
    objc_storeStrong(&v6->_typeErasedButtonView, view);
    [(SWCollaborationView *)v6 addSubview:v6->_typeErasedButtonView];
    [(UIView *)v6->_typeErasedButtonView setTranslatesAutoresizingMaskIntoConstraints:0];
    v18 = MEMORY[0x1E696ACD8];
    leadingAnchor = [(UIView *)v6->_typeErasedButtonView leadingAnchor];
    leadingAnchor2 = [(SWCollaborationView *)v6 leadingAnchor];
    v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v25[0] = v20;
    trailingAnchor = [(UIView *)v6->_typeErasedButtonView trailingAnchor];
    trailingAnchor2 = [(SWCollaborationView *)v6 trailingAnchor];
    v8 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v25[1] = v8;
    topAnchor = [(UIView *)v6->_typeErasedButtonView topAnchor];
    topAnchor2 = [(SWCollaborationView *)v6 topAnchor];
    v11 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v25[2] = v11;
    bottomAnchor = [(UIView *)v6->_typeErasedButtonView bottomAnchor];
    bottomAnchor2 = [(SWCollaborationView *)v6 bottomAnchor];
    v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v25[3] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:4];
    [v18 activateConstraints:v15];

    viewCopy = v23;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)_shouldOverrideSymbolConfigForVisionFreeform
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  return 0;
}

- (BOOL)_shouldOverrideSymbolConfigForIWork
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  array = [MEMORY[0x1E695DF70] array];
  if ([bundleIdentifier length])
  {
    v5 = [array containsObject:bundleIdentifier];
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

- (void)updatePlaceholderGlyphScale:(int64_t)scale weight:(int64_t)weight pointSize:(double)size
{
  v8 = sub_1BBC2EF14(self, "buttonView");
  [v8 updatePlaceHolderSymbolScale:scale weight:weight pointSize:size];
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