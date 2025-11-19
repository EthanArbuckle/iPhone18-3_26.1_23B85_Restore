@interface AAUIOBInheritanceSetupCompleteViewModel
- (AAUIOBInheritanceSetupCompleteViewModel)initWithBeneficiaryName:(id)a3 accessKeyShareType:(unint64_t)a4;
- (AAUIOBInheritanceSetupCompleteViewModel)initWithBeneficiaryName:(id)a3 accessKeyShareType:(unint64_t)a4 inviteType:(unint64_t)a5;
- (void)_setInheritanceInvitationImageIfNecessary;
@end

@implementation AAUIOBInheritanceSetupCompleteViewModel

- (AAUIOBInheritanceSetupCompleteViewModel)initWithBeneficiaryName:(id)a3 accessKeyShareType:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = AAUIOBInheritanceSetupCompleteViewModel;
  v4 = [(AAOBInheritanceSetupCompleteModel *)&v7 initWithBeneficiaryName:a3 accessKeyShareType:a4];
  v5 = v4;
  if (v4)
  {
    [(AAUIOBInheritanceSetupCompleteViewModel *)v4 _setInheritanceInvitationImageIfNecessary];
    v5->_contentViewLayout = 2;
  }

  return v5;
}

- (AAUIOBInheritanceSetupCompleteViewModel)initWithBeneficiaryName:(id)a3 accessKeyShareType:(unint64_t)a4 inviteType:(unint64_t)a5
{
  v8.receiver = self;
  v8.super_class = AAUIOBInheritanceSetupCompleteViewModel;
  v5 = [(AAOBInheritanceSetupCompleteModel *)&v8 initWithBeneficiaryName:a3 accessKeyShareType:a4 inviteType:a5];
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
  v3 = [(AAOBInheritanceSetupCompleteModel *)self imageName];
  v4 = [v3 length];

  if (v4)
  {
    v5 = MEMORY[0x1E69DCAB8];
    v8 = [(AAOBInheritanceSetupCompleteModel *)self imageName];
    v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v7 = [v5 imageNamed:v8 inBundle:v6];
    [(AAUIOBInheritanceSetupCompleteViewModel *)self setImage:v7];
  }
}

@end