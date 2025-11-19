@interface AllRefinementsViewModel
- (AllRefinementsViewModel)initWithSections:(id)a3 displayName:(id)a4 viewTakesFullHeight:(BOOL)a5;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation AllRefinementsViewModel

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [NSMutableArray alloc];
  v5 = [(AllRefinementsViewModel *)self sections];
  v6 = [v4 initWithArray:v5 copyItems:1];

  v7 = [AllRefinementsViewModel alloc];
  v8 = [(AllRefinementsViewModel *)self displayName];
  v9 = [(AllRefinementsViewModel *)v7 initWithSections:v6 displayName:v8 viewTakesFullHeight:[(AllRefinementsViewModel *)self viewTakesFullHeight]];

  v10 = [(AllRefinementsViewModel *)self tappedBarButtonIndex];
  [(AllRefinementsViewModel *)v9 setTappedBarButtonIndex:v10];

  return v9;
}

- (AllRefinementsViewModel)initWithSections:(id)a3 displayName:(id)a4 viewTakesFullHeight:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = AllRefinementsViewModel;
  v11 = [(AllRefinementsViewModel *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_sections, a3);
    objc_storeStrong(&v12->_displayName, a4);
    v12->_viewTakesFullHeight = a5;
  }

  return v12;
}

@end