@interface ICAddCollaboratorsActivity
+ (NSString)defaultActivityTitle;
- (ICAddCollaboratorsActivity)initWithDelegate:(id)a3;
- (ICAddCollaboratorsActivityDelegate)delegate;
- (id)_systemImageName;
- (id)activityTitle;
- (void)performActivity;
@end

@implementation ICAddCollaboratorsActivity

- (ICAddCollaboratorsActivity)initWithDelegate:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ICAddCollaboratorsActivity;
  v5 = [(ICAddCollaboratorsActivity *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v7 = v6;
  }

  return v6;
}

- (id)activityTitle
{
  v3 = [(ICAddCollaboratorsActivity *)self delegate];

  if (!v3 || (-[ICAddCollaboratorsActivity delegate](self, "delegate"), v4 = objc_claimAutoreleasedReturnValue(), [v4 titleForAddCollaboratorsActivity:self], v5 = objc_claimAutoreleasedReturnValue(), v4, !v5))
  {
    v5 = [objc_opt_class() defaultActivityTitle];
  }

  return v5;
}

+ (NSString)defaultActivityTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Add People" value:&stru_100661CF0 table:0];

  return v3;
}

- (id)_systemImageName
{
  v3 = [(ICAddCollaboratorsActivity *)self delegate];

  if (!v3 || (-[ICAddCollaboratorsActivity delegate](self, "delegate"), v4 = objc_claimAutoreleasedReturnValue(), [v4 systemImageNameForAddCollaboratorsActivity:self], v5 = objc_claimAutoreleasedReturnValue(), v4, !v5))
  {
    v5 = [objc_opt_class() defaultSystemImageName];
  }

  return v5;
}

- (void)performActivity
{
  v3 = [(ICAddCollaboratorsActivity *)self delegate];
  [v3 performAddCollaboratorsActivity:self];
}

- (ICAddCollaboratorsActivityDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end