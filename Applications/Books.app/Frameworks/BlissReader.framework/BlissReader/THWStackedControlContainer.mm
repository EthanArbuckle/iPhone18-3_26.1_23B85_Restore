@interface THWStackedControlContainer
- (THWStackedControlContainer)initWithDelegate:(id)a3;
@end

@implementation THWStackedControlContainer

- (THWStackedControlContainer)initWithDelegate:(id)a3
{
  v4.receiver = self;
  v4.super_class = THWStackedControlContainer;
  return [(THWControlContainer *)&v4 initWithDelegate:a3];
}

@end