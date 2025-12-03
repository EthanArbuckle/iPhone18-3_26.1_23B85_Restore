@interface BKLibraryBookshelfCellMetrics
+ (id)cellMetricsForSectionName:(id)name;
+ (id)sectionNameForCollectionType:(unint64_t)type layoutMode:(unint64_t)mode;
+ (id)sectionNames;
- (id)backgroundConfigurationForState:(id)state isInEditMode:(BOOL)mode;
- (void)configureWithSection:(id)section;
@end

@implementation BKLibraryBookshelfCellMetrics

+ (id)cellMetricsForSectionName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"bookCellGrid"])
  {
    v4 = off_1009F8568;
LABEL_9:
    v5 = objc_alloc_init(*v4);
    goto LABEL_10;
  }

  if ([nameCopy isEqualToString:@"bookCellListUser"])
  {
    v4 = off_1009F8570;
    goto LABEL_9;
  }

  if ([nameCopy isEqualToString:@"bookCellListFinished"])
  {
    v4 = off_1009F8560;
    goto LABEL_9;
  }

  if ([nameCopy isEqualToString:@"bookCellListWantToRead"])
  {
    v4 = off_1009F8578;
    goto LABEL_9;
  }

  v5 = 0;
LABEL_10:

  return v5;
}

+ (id)sectionNameForCollectionType:(unint64_t)type layoutMode:(unint64_t)mode
{
  result = @"bookCellGrid";
  if (mode == 2 && type <= 3)
  {
    return off_100A04530[type];
  }

  return result;
}

+ (id)sectionNames
{
  v4[0] = @"bookCellGrid";
  v4[1] = @"bookCellListUser";
  v4[2] = @"bookCellListFinished";
  v4[3] = @"bookCellListWantToRead";
  v2 = [NSArray arrayWithObjects:v4 count:4];

  return v2;
}

- (void)configureWithSection:(id)section
{
  sectionCopy = section;
  v13 = +[UIBackgroundConfiguration listPlainCellConfiguration];
  [sectionCopy floatForKey:@"background-corner-radius"];
  [v13 setCornerRadius:?];
  [sectionCopy insetsForKey:@"background-insets"];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v13 setBackgroundInsets:{v6, v8, v10, v12}];
  [v13 setBackgroundColorTransformer:&stru_100A04510];
  [(BKLibraryBookshelfCellMetrics *)self setBackgroundConfiguration:v13];
}

- (id)backgroundConfigurationForState:(id)state isInEditMode:(BOOL)mode
{
  stateCopy = state;
  backgroundConfiguration = [(BKLibraryBookshelfCellMetrics *)self backgroundConfiguration];
  v8 = [backgroundConfiguration updatedConfigurationForState:stateCopy];

  LODWORD(backgroundConfiguration) = [stateCopy isSelected];
  if (!backgroundConfiguration || mode)
  {
    v9 = v8;
    v8 = 0;
  }

  else
  {
    v9 = +[UIColor bc_booksKeyColor];
    [v8 setBackgroundColor:v9];
  }

  return v8;
}

@end