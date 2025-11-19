@interface BKLibrarySortByMode
- (id)description;
- (id)predicate;
@end

@implementation BKLibrarySortByMode

- (id)predicate
{
  v3 = [(BKLibrarySortByMode *)self allowExplicitPredicate];
  v4 = +[BKLibraryManager defaultManager];
  v5 = [v4 isExplicitMaterialAllowed];

  if ((v5 & 1) == 0)
  {
    v6 = [(BKLibrarySortByMode *)self hideExplicitPredicate];

    v3 = v6;
  }

  return v3;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@ %p title=%@ label=%@ sortMode=%tu>", v4, self, self->_title, self->_label, self->_sortMode];

  return v5;
}

@end