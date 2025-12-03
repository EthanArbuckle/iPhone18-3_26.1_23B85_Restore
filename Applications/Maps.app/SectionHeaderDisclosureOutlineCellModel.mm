@interface SectionHeaderDisclosureOutlineCellModel
- (SectionHeaderDisclosureOutlineCellModel)initWithTitle:(id)title accessoryDelegate:(id)delegate;
@end

@implementation SectionHeaderDisclosureOutlineCellModel

- (SectionHeaderDisclosureOutlineCellModel)initWithTitle:(id)title accessoryDelegate:(id)delegate
{
  delegateCopy = delegate;
  v11.receiver = self;
  v11.super_class = SectionHeaderDisclosureOutlineCellModel;
  v7 = [(SectionHeaderBasicOutlineCellModel *)&v11 initWithTitle:title];
  if (v7)
  {
    v8 = [[SectionHeaderOutlineCellAccessoryModel alloc] initWithAccessoryType:3 visibility:1 delegate:delegateCopy];
    v12 = v8;
    v9 = [NSArray arrayWithObjects:&v12 count:1];
    [(SectionHeaderBasicOutlineCellModel *)v7 _addAccessoryModels:v9];
  }

  return v7;
}

@end