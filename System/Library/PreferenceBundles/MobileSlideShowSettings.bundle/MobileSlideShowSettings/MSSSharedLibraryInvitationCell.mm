@interface MSSSharedLibraryInvitationCell
- (MSSSharedLibraryInvitationCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation MSSSharedLibraryInvitationCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  [(MSSSharedLibraryInvitationCell *)self setSpecifier:specifierCopy];
  userInfo = [specifierCopy userInfo];

  v5 = [userInfo conformsToProtocol:&OBJC_PROTOCOL___PXSharedLibraryParticipant];
  v6 = userInfo;
  if (v5)
  {
    v7 = userInfo == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v5 = [(PXSharedLibraryInvitationContentView *)self->_invitationContentView setOwner:userInfo];
    v6 = userInfo;
  }

  _objc_release_x1(v5, v6);
}

- (MSSSharedLibraryInvitationCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = MSSSharedLibraryInvitationCell;
  v4 = [(MSSSharedLibraryInvitationCell *)&v9 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(PXSharedLibraryInvitationContentView);
    invitationContentView = v4->_invitationContentView;
    v4->_invitationContentView = v5;

    contentView = [(MSSSharedLibraryInvitationCell *)v4 contentView];
    [contentView px_addFullBoundsSubview:v4->_invitationContentView];

    [(MSSSharedLibraryInvitationCell *)v4 setAccessoryType:1];
  }

  return v4;
}

@end