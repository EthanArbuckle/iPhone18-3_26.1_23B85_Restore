@interface SectionHeaderDisclosureOutlineCellModel
- (SectionHeaderDisclosureOutlineCellModel)initWithTitle:(id)a3 accessoryDelegate:(id)a4;
@end

@implementation SectionHeaderDisclosureOutlineCellModel

- (SectionHeaderDisclosureOutlineCellModel)initWithTitle:(id)a3 accessoryDelegate:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = SectionHeaderDisclosureOutlineCellModel;
  v7 = [(SectionHeaderBasicOutlineCellModel *)&v11 initWithTitle:a3];
  if (v7)
  {
    v8 = [[SectionHeaderOutlineCellAccessoryModel alloc] initWithAccessoryType:3 visibility:1 delegate:v6];
    v12 = v8;
    v9 = [NSArray arrayWithObjects:&v12 count:1];
    [(SectionHeaderBasicOutlineCellModel *)v7 _addAccessoryModels:v9];
  }

  return v7;
}

@end