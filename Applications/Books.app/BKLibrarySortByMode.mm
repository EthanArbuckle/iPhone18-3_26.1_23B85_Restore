@interface BKLibrarySortByMode
- (id)description;
- (id)predicate;
@end

@implementation BKLibrarySortByMode

- (id)predicate
{
  allowExplicitPredicate = [(BKLibrarySortByMode *)self allowExplicitPredicate];
  v4 = +[BKLibraryManager defaultManager];
  isExplicitMaterialAllowed = [v4 isExplicitMaterialAllowed];

  if ((isExplicitMaterialAllowed & 1) == 0)
  {
    hideExplicitPredicate = [(BKLibrarySortByMode *)self hideExplicitPredicate];

    allowExplicitPredicate = hideExplicitPredicate;
  }

  return allowExplicitPredicate;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@ %p title=%@ label=%@ sortMode=%tu>", v4, self, self->_title, self->_label, self->_sortMode];

  return v5;
}

@end