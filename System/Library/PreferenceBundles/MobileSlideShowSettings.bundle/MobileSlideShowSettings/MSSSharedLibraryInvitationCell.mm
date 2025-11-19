@interface MSSSharedLibraryInvitationCell
- (MSSSharedLibraryInvitationCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation MSSSharedLibraryInvitationCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4 = a3;
  [(MSSSharedLibraryInvitationCell *)self setSpecifier:v4];
  v8 = [v4 userInfo];

  v5 = [v8 conformsToProtocol:&OBJC_PROTOCOL___PXSharedLibraryParticipant];
  v6 = v8;
  if (v5)
  {
    v7 = v8 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v5 = [(PXSharedLibraryInvitationContentView *)self->_invitationContentView setOwner:v8];
    v6 = v8;
  }

  _objc_release_x1(v5, v6);
}

- (MSSSharedLibraryInvitationCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v9.receiver = self;
  v9.super_class = MSSSharedLibraryInvitationCell;
  v4 = [(MSSSharedLibraryInvitationCell *)&v9 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_alloc_init(PXSharedLibraryInvitationContentView);
    invitationContentView = v4->_invitationContentView;
    v4->_invitationContentView = v5;

    v7 = [(MSSSharedLibraryInvitationCell *)v4 contentView];
    [v7 px_addFullBoundsSubview:v4->_invitationContentView];

    [(MSSSharedLibraryInvitationCell *)v4 setAccessoryType:1];
  }

  return v4;
}

@end