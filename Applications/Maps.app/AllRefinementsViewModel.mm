@interface AllRefinementsViewModel
- (AllRefinementsViewModel)initWithSections:(id)sections displayName:(id)name viewTakesFullHeight:(BOOL)height;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation AllRefinementsViewModel

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [NSMutableArray alloc];
  sections = [(AllRefinementsViewModel *)self sections];
  v6 = [v4 initWithArray:sections copyItems:1];

  v7 = [AllRefinementsViewModel alloc];
  displayName = [(AllRefinementsViewModel *)self displayName];
  v9 = [(AllRefinementsViewModel *)v7 initWithSections:v6 displayName:displayName viewTakesFullHeight:[(AllRefinementsViewModel *)self viewTakesFullHeight]];

  tappedBarButtonIndex = [(AllRefinementsViewModel *)self tappedBarButtonIndex];
  [(AllRefinementsViewModel *)v9 setTappedBarButtonIndex:tappedBarButtonIndex];

  return v9;
}

- (AllRefinementsViewModel)initWithSections:(id)sections displayName:(id)name viewTakesFullHeight:(BOOL)height
{
  sectionsCopy = sections;
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = AllRefinementsViewModel;
  v11 = [(AllRefinementsViewModel *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_sections, sections);
    objc_storeStrong(&v12->_displayName, name);
    v12->_viewTakesFullHeight = height;
  }

  return v12;
}

@end