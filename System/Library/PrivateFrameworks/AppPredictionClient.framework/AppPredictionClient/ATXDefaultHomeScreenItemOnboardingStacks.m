@interface ATXDefaultHomeScreenItemOnboardingStacks
- (ATXDefaultHomeScreenItemOnboardingStacks)initWithOnboardingStack1:(id)a3 stack2:(id)a4 sortedThirdPartyWidgets:(id)a5;
- (ATXDefaultHomeScreenItemOnboardingStacks)initWithOnboardingStacks:(id)a3 sortedThirdPartyWidgets:(id)a4;
@end

@implementation ATXDefaultHomeScreenItemOnboardingStacks

- (ATXDefaultHomeScreenItemOnboardingStacks)initWithOnboardingStack1:(id)a3 stack2:(id)a4 sortedThirdPartyWidgets:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E695DF70] array];
  v12 = v11;
  if (v8)
  {
    [v11 addObject:v8];
  }

  if (v9)
  {
    [v12 addObject:v9];
  }

  v13 = [(ATXDefaultHomeScreenItemOnboardingStacks *)self initWithOnboardingStacks:v12 sortedThirdPartyWidgets:v10];

  return v13;
}

- (ATXDefaultHomeScreenItemOnboardingStacks)initWithOnboardingStacks:(id)a3 sortedThirdPartyWidgets:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = ATXDefaultHomeScreenItemOnboardingStacks;
  v8 = [(ATXDefaultHomeScreenItemOnboardingStacks *)&v18 init];
  if (v8)
  {
    v9 = [v6 copy];
    onboardingStacks = v8->_onboardingStacks;
    v8->_onboardingStacks = v9;

    v11 = [(NSArray *)v8->_onboardingStacks count];
    if (v11)
    {
      v11 = [(NSArray *)v8->_onboardingStacks objectAtIndexedSubscript:0];
    }

    stack1 = v8->_stack1;
    v8->_stack1 = v11;

    if ([(NSArray *)v8->_onboardingStacks count]< 2)
    {
      v13 = 0;
    }

    else
    {
      v13 = [(NSArray *)v8->_onboardingStacks objectAtIndexedSubscript:1];
    }

    stack2 = v8->_stack2;
    v8->_stack2 = v13;

    v15 = [v7 copy];
    sortedThirdPartyWidgets = v8->_sortedThirdPartyWidgets;
    v8->_sortedThirdPartyWidgets = v15;
  }

  return v8;
}

@end