@interface AAUIOBInheritanceSetupCompleteViewModel
- (AAUIOBInheritanceSetupCompleteViewModel)initWithBeneficiaryName:(id)name accessKeyShareType:(unint64_t)type;
- (AAUIOBInheritanceSetupCompleteViewModel)initWithBeneficiaryName:(id)name accessKeyShareType:(unint64_t)type inviteType:(unint64_t)inviteType;
- (void)_setInheritanceInvitationImageIfNecessary;
@end

@implementation AAUIOBInheritanceSetupCompleteViewModel

- (AAUIOBInheritanceSetupCompleteViewModel)initWithBeneficiaryName:(id)name accessKeyShareType:(unint64_t)type
{
  v7.receiver = self;
  v7.super_class = AAUIOBInheritanceSetupCompleteViewModel;
  v4 = [(AAOBInheritanceSetupCompleteModel *)&v7 initWithBeneficiaryName:name accessKeyShareType:type];
  v5 = v4;
  if (v4)
  {
    [(AAUIOBInheritanceSetupCompleteViewModel *)v4 _setInheritanceInvitationImageIfNecessary];
    v5->_contentViewLayout = 2;
  }

  return v5;
}

- (AAUIOBInheritanceSetupCompleteViewModel)initWithBeneficiaryName:(id)name accessKeyShareType:(unint64_t)type inviteType:(unint64_t)inviteType
{
  v8.receiver = self;
  v8.super_class = AAUIOBInheritanceSetupCompleteViewModel;
  v5 = [(AAOBInheritanceSetupCompleteModel *)&v8 initWithBeneficiaryName:name accessKeyShareType:type inviteType:inviteType];
  v6 = v5;
  if (v5)
  {
    [(AAUIOBInheritanceSetupCompleteViewModel *)v5 _setInheritanceInvitationImageIfNecessary];
    v6->_contentViewLayout = 2;
  }

  return v6;
}

- (void)_setInheritanceInvitationImageIfNecessary
{
  imageName = [(AAOBInheritanceSetupCompleteModel *)self imageName];
  v4 = [imageName length];

  if (v4)
  {
    v5 = MEMORY[0x1E69DCAB8];
    imageName2 = [(AAOBInheritanceSetupCompleteModel *)self imageName];
    v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v7 = [v5 imageNamed:imageName2 inBundle:v6];
    [(AAUIOBInheritanceSetupCompleteViewModel *)self setImage:v7];
  }
}

@end