@interface CNCardContactContainerGroupItem
- (CNCardContactContainerGroupItem)initWithContainers:(id)containers;
@end

@implementation CNCardContactContainerGroupItem

- (CNCardContactContainerGroupItem)initWithContainers:(id)containers
{
  containersCopy = containers;
  v10.receiver = self;
  v10.super_class = CNCardContactContainerGroupItem;
  v6 = [(CNCardContactContainerGroupItem *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_containers, containers);
    v8 = v7;
  }

  return v7;
}

@end