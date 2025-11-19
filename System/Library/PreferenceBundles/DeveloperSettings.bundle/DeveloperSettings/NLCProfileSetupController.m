@interface NLCProfileSetupController
- (NLCProfileSetupController)init;
- (void)navigationBar:(id)a3 buttonClicked:(int)a4;
- (void)setupController;
@end

@implementation NLCProfileSetupController

- (NLCProfileSetupController)init
{
  if (dword_49FB0)
  {
    NSLog(@"NLCProfileSetupController init %p", a2, self);
  }

  v4.receiver = self;
  v4.super_class = NLCProfileSetupController;
  return [(NLCProfileSetupController *)&v4 init];
}

- (void)setupController
{
  v4.receiver = self;
  v4.super_class = NLCProfileSetupController;
  [(NLCProfileSetupController *)&v4 setupController];
  if (dword_49FB0)
  {
    WeakRetained = objc_loadWeakRetained(&self->PSSetupController_opaque[OBJC_IVAR___PSSetupController__parentController]);
    NSLog(@"NLCProfileSetupController setupController %p parent %p", self, WeakRetained);
  }
}

- (void)navigationBar:(id)a3 buttonClicked:(int)a4
{
  v7 = a3;
  if (dword_49FB0)
  {
    NSLog(@"NLCProfileSetupController navigationBar buttonClicked");
  }

  if (!a4)
  {
    v6 = [(NLCProfileSetupController *)self topViewController];
    [v6 performSelector:"saveButtonClicked:" withObject:0];
  }

  [(NLCProfileSetupController *)self dismiss];
}

@end