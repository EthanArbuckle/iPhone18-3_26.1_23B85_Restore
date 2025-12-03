@interface ICAddCollaboratorsActivity
+ (NSString)defaultActivityTitle;
- (ICAddCollaboratorsActivity)initWithDelegate:(id)delegate;
- (ICAddCollaboratorsActivityDelegate)delegate;
- (id)_systemImageName;
- (id)activityTitle;
- (void)performActivity;
@end

@implementation ICAddCollaboratorsActivity

- (ICAddCollaboratorsActivity)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v9.receiver = self;
  v9.super_class = ICAddCollaboratorsActivity;
  v5 = [(ICAddCollaboratorsActivity *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v7 = v6;
  }

  return v6;
}

- (id)activityTitle
{
  delegate = [(ICAddCollaboratorsActivity *)self delegate];

  if (!delegate || (-[ICAddCollaboratorsActivity delegate](self, "delegate"), v4 = objc_claimAutoreleasedReturnValue(), [v4 titleForAddCollaboratorsActivity:self], defaultActivityTitle = objc_claimAutoreleasedReturnValue(), v4, !defaultActivityTitle))
  {
    defaultActivityTitle = [objc_opt_class() defaultActivityTitle];
  }

  return defaultActivityTitle;
}

+ (NSString)defaultActivityTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Add People" value:&stru_100661CF0 table:0];

  return v3;
}

- (id)_systemImageName
{
  delegate = [(ICAddCollaboratorsActivity *)self delegate];

  if (!delegate || (-[ICAddCollaboratorsActivity delegate](self, "delegate"), v4 = objc_claimAutoreleasedReturnValue(), [v4 systemImageNameForAddCollaboratorsActivity:self], defaultSystemImageName = objc_claimAutoreleasedReturnValue(), v4, !defaultSystemImageName))
  {
    defaultSystemImageName = [objc_opt_class() defaultSystemImageName];
  }

  return defaultSystemImageName;
}

- (void)performActivity
{
  delegate = [(ICAddCollaboratorsActivity *)self delegate];
  [delegate performAddCollaboratorsActivity:self];
}

- (ICAddCollaboratorsActivityDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end