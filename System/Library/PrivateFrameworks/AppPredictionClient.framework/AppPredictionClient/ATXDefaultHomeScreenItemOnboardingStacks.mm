@interface ATXDefaultHomeScreenItemOnboardingStacks
- (ATXDefaultHomeScreenItemOnboardingStacks)initWithOnboardingStack1:(id)stack1 stack2:(id)stack2 sortedThirdPartyWidgets:(id)widgets;
- (ATXDefaultHomeScreenItemOnboardingStacks)initWithOnboardingStacks:(id)stacks sortedThirdPartyWidgets:(id)widgets;
@end

@implementation ATXDefaultHomeScreenItemOnboardingStacks

- (ATXDefaultHomeScreenItemOnboardingStacks)initWithOnboardingStack1:(id)stack1 stack2:(id)stack2 sortedThirdPartyWidgets:(id)widgets
{
  stack1Copy = stack1;
  stack2Copy = stack2;
  widgetsCopy = widgets;
  array = [MEMORY[0x1E695DF70] array];
  v12 = array;
  if (stack1Copy)
  {
    [array addObject:stack1Copy];
  }

  if (stack2Copy)
  {
    [v12 addObject:stack2Copy];
  }

  v13 = [(ATXDefaultHomeScreenItemOnboardingStacks *)self initWithOnboardingStacks:v12 sortedThirdPartyWidgets:widgetsCopy];

  return v13;
}

- (ATXDefaultHomeScreenItemOnboardingStacks)initWithOnboardingStacks:(id)stacks sortedThirdPartyWidgets:(id)widgets
{
  stacksCopy = stacks;
  widgetsCopy = widgets;
  v18.receiver = self;
  v18.super_class = ATXDefaultHomeScreenItemOnboardingStacks;
  v8 = [(ATXDefaultHomeScreenItemOnboardingStacks *)&v18 init];
  if (v8)
  {
    v9 = [stacksCopy copy];
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

    v15 = [widgetsCopy copy];
    sortedThirdPartyWidgets = v8->_sortedThirdPartyWidgets;
    v8->_sortedThirdPartyWidgets = v15;
  }

  return v8;
}

@end