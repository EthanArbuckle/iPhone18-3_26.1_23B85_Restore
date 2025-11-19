@interface CNCardContactContainerGroup
- (id)editingItems;
@end

@implementation CNCardContactContainerGroup

- (id)editingItems
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = [CNCardContactContainerGroupItem alloc];
  v4 = [(CNCardContactContainerGroup *)self containers];
  v5 = [(CNCardContactContainerGroupItem *)v3 initWithContainers:v4];

  v8[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];

  return v6;
}

@end