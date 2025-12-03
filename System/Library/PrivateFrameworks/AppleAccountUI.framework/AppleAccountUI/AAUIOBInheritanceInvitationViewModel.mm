@interface AAUIOBInheritanceInvitationViewModel
- (AAUIOBInheritanceInvitationViewModel)initWithAcceptedViewForBenefactorInfo:(id)info;
- (AAUIOBInheritanceInvitationViewModel)initWithBenefactorInfo:(id)info;
- (AAUIOBInheritanceInvitationViewModel)initWithModel:(id)model;
- (void)_setInheritanceInvitationImageIfNecessary;
@end

@implementation AAUIOBInheritanceInvitationViewModel

- (AAUIOBInheritanceInvitationViewModel)initWithBenefactorInfo:(id)info
{
  v6.receiver = self;
  v6.super_class = AAUIOBInheritanceInvitationViewModel;
  v3 = [(AAOBInheritanceInvitationModel *)&v6 initWithBenefactorInfo:info];
  v4 = v3;
  if (v3)
  {
    [(AAUIOBInheritanceInvitationViewModel *)v3 _setInheritanceInvitationImageIfNecessary];
    v4->_contentViewLayout = 2;
  }

  return v4;
}

- (AAUIOBInheritanceInvitationViewModel)initWithAcceptedViewForBenefactorInfo:(id)info
{
  v6.receiver = self;
  v6.super_class = AAUIOBInheritanceInvitationViewModel;
  v3 = [(AAOBInheritanceInvitationModel *)&v6 initWithAcceptedViewForBenefactorInfo:info];
  v4 = v3;
  if (v3)
  {
    [(AAUIOBInheritanceInvitationViewModel *)v3 _setInheritanceInvitationImageIfNecessary];
    v4->_contentViewLayout = 2;
  }

  return v4;
}

- (AAUIOBInheritanceInvitationViewModel)initWithModel:(id)model
{
  v6.receiver = self;
  v6.super_class = AAUIOBInheritanceInvitationViewModel;
  v3 = [(AAOBInheritanceInvitationModel *)&v6 initWithModel:model];
  v4 = v3;
  if (v3)
  {
    [(AAUIOBInheritanceInvitationViewModel *)v3 _setInheritanceInvitationImageIfNecessary];
    v4->_contentViewLayout = 2;
  }

  return v4;
}

- (void)_setInheritanceInvitationImageIfNecessary
{
  imageName = [(AAOBInheritanceInvitationModel *)self imageName];
  v4 = [imageName length];

  if (v4)
  {
    v5 = MEMORY[0x1E69DCAB8];
    imageName2 = [(AAOBInheritanceInvitationModel *)self imageName];
    v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v7 = [v5 imageNamed:imageName2 inBundle:v6];
    [(AAUIOBInheritanceInvitationViewModel *)self setImage:v7];
  }
}

@end