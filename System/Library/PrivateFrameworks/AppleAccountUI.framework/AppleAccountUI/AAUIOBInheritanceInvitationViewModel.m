@interface AAUIOBInheritanceInvitationViewModel
- (AAUIOBInheritanceInvitationViewModel)initWithAcceptedViewForBenefactorInfo:(id)a3;
- (AAUIOBInheritanceInvitationViewModel)initWithBenefactorInfo:(id)a3;
- (AAUIOBInheritanceInvitationViewModel)initWithModel:(id)a3;
- (void)_setInheritanceInvitationImageIfNecessary;
@end

@implementation AAUIOBInheritanceInvitationViewModel

- (AAUIOBInheritanceInvitationViewModel)initWithBenefactorInfo:(id)a3
{
  v6.receiver = self;
  v6.super_class = AAUIOBInheritanceInvitationViewModel;
  v3 = [(AAOBInheritanceInvitationModel *)&v6 initWithBenefactorInfo:a3];
  v4 = v3;
  if (v3)
  {
    [(AAUIOBInheritanceInvitationViewModel *)v3 _setInheritanceInvitationImageIfNecessary];
    v4->_contentViewLayout = 2;
  }

  return v4;
}

- (AAUIOBInheritanceInvitationViewModel)initWithAcceptedViewForBenefactorInfo:(id)a3
{
  v6.receiver = self;
  v6.super_class = AAUIOBInheritanceInvitationViewModel;
  v3 = [(AAOBInheritanceInvitationModel *)&v6 initWithAcceptedViewForBenefactorInfo:a3];
  v4 = v3;
  if (v3)
  {
    [(AAUIOBInheritanceInvitationViewModel *)v3 _setInheritanceInvitationImageIfNecessary];
    v4->_contentViewLayout = 2;
  }

  return v4;
}

- (AAUIOBInheritanceInvitationViewModel)initWithModel:(id)a3
{
  v6.receiver = self;
  v6.super_class = AAUIOBInheritanceInvitationViewModel;
  v3 = [(AAOBInheritanceInvitationModel *)&v6 initWithModel:a3];
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
  v3 = [(AAOBInheritanceInvitationModel *)self imageName];
  v4 = [v3 length];

  if (v4)
  {
    v5 = MEMORY[0x1E69DCAB8];
    v8 = [(AAOBInheritanceInvitationModel *)self imageName];
    v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v7 = [v5 imageNamed:v8 inBundle:v6];
    [(AAUIOBInheritanceInvitationViewModel *)self setImage:v7];
  }
}

@end