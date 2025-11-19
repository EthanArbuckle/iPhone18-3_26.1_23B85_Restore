@interface BKLibraryBookshelfCellMetrics
+ (id)cellMetricsForSectionName:(id)a3;
+ (id)sectionNameForCollectionType:(unint64_t)a3 layoutMode:(unint64_t)a4;
+ (id)sectionNames;
- (id)backgroundConfigurationForState:(id)a3 isInEditMode:(BOOL)a4;
- (void)configureWithSection:(id)a3;
@end

@implementation BKLibraryBookshelfCellMetrics

+ (id)cellMetricsForSectionName:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"bookCellGrid"])
  {
    v4 = off_1009F8568;
LABEL_9:
    v5 = objc_alloc_init(*v4);
    goto LABEL_10;
  }

  if ([v3 isEqualToString:@"bookCellListUser"])
  {
    v4 = off_1009F8570;
    goto LABEL_9;
  }

  if ([v3 isEqualToString:@"bookCellListFinished"])
  {
    v4 = off_1009F8560;
    goto LABEL_9;
  }

  if ([v3 isEqualToString:@"bookCellListWantToRead"])
  {
    v4 = off_1009F8578;
    goto LABEL_9;
  }

  v5 = 0;
LABEL_10:

  return v5;
}

+ (id)sectionNameForCollectionType:(unint64_t)a3 layoutMode:(unint64_t)a4
{
  result = @"bookCellGrid";
  if (a4 == 2 && a3 <= 3)
  {
    return off_100A04530[a3];
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

- (void)configureWithSection:(id)a3
{
  v4 = a3;
  v13 = +[UIBackgroundConfiguration listPlainCellConfiguration];
  [v4 floatForKey:@"background-corner-radius"];
  [v13 setCornerRadius:?];
  [v4 insetsForKey:@"background-insets"];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v13 setBackgroundInsets:{v6, v8, v10, v12}];
  [v13 setBackgroundColorTransformer:&stru_100A04510];
  [(BKLibraryBookshelfCellMetrics *)self setBackgroundConfiguration:v13];
}

- (id)backgroundConfigurationForState:(id)a3 isInEditMode:(BOOL)a4
{
  v6 = a3;
  v7 = [(BKLibraryBookshelfCellMetrics *)self backgroundConfiguration];
  v8 = [v7 updatedConfigurationForState:v6];

  LODWORD(v7) = [v6 isSelected];
  if (!v7 || a4)
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