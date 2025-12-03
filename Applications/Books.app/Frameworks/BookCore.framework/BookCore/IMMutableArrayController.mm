@interface IMMutableArrayController
- (IMMutableArrayController)initWithContent:(id)content;
- (void)rearrangeObjects;
@end

@implementation IMMutableArrayController

- (IMMutableArrayController)initWithContent:(id)content
{
  contentCopy = content;
  v9.receiver = self;
  v9.super_class = IMMutableArrayController;
  v6 = [(IMMutableArrayController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_content, content);
  }

  return v7;
}

- (void)rearrangeObjects
{
  content = [(IMMutableArrayController *)self content];
  v3 = [content copy];
  v4 = [(IMMutableArrayController *)self arrangeObjects:v3];
  [(IMArrayController *)self setArrangedObjects:v4];
}

@end