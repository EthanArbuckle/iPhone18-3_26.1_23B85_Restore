@interface THWStackedControlContainer
- (THWStackedControlContainer)initWithDelegate:(id)delegate;
@end

@implementation THWStackedControlContainer

- (THWStackedControlContainer)initWithDelegate:(id)delegate
{
  v4.receiver = self;
  v4.super_class = THWStackedControlContainer;
  return [(THWControlContainer *)&v4 initWithDelegate:delegate];
}

@end