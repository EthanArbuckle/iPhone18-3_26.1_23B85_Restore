@interface IMMutableArrayController
- (IMMutableArrayController)initWithContent:(id)a3;
- (void)rearrangeObjects;
@end

@implementation IMMutableArrayController

- (IMMutableArrayController)initWithContent:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IMMutableArrayController;
  v6 = [(IMMutableArrayController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_content, a3);
  }

  return v7;
}

- (void)rearrangeObjects
{
  v5 = [(IMMutableArrayController *)self content];
  v3 = [v5 copy];
  v4 = [(IMMutableArrayController *)self arrangeObjects:v3];
  [(IMArrayController *)self setArrangedObjects:v4];
}

@end