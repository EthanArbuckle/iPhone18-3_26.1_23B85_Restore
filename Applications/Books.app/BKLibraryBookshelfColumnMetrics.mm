@interface BKLibraryBookshelfColumnMetrics
- (NSString)description;
- (int64_t)columnsForContainingWidth:(double)width;
- (void)configureWithSection:(id)section;
@end

@implementation BKLibraryBookshelfColumnMetrics

- (void)configureWithSection:(id)section
{
  sectionCopy = section;
  [sectionCopy floatForKey:@"gutter"];
  [(BKLibraryBookshelfColumnMetrics *)self setGutter:?];
  [sectionCopy floatForKey:@"small-gutter"];
  [(BKLibraryBookshelfColumnMetrics *)self setSmallGutter:?];
  [sectionCopy floatForKey:@"margins"];
  [(BKLibraryBookshelfColumnMetrics *)self setMargins:?];
  [sectionCopy floatForKey:@"small-margins"];
  [(BKLibraryBookshelfColumnMetrics *)self setSmallMargins:?];
  [sectionCopy floatForKey:@"vertical"];
  [(BKLibraryBookshelfColumnMetrics *)self setVertical:?];
  [sectionCopy floatForKey:@"max-width"];
  [(BKLibraryBookshelfColumnMetrics *)self setMaxWidth:?];
  v5 = [sectionCopy snapForKey:@"width-snap"];
  [(BKLibraryBookshelfColumnMetrics *)self setWidthSnap:v5];

  v6 = [sectionCopy dictionaryForKey:@"columns"];
  [(BKLibraryBookshelfColumnMetrics *)self setColumns:v6];

  v7 = [sectionCopy integerForKey:@"small-columns"];

  [(BKLibraryBookshelfColumnMetrics *)self setSmallColumns:v7];
}

- (int64_t)columnsForContainingWidth:(double)width
{
  widthSnap = [(BKLibraryBookshelfColumnMetrics *)self widthSnap];
  v6 = [widthSnap identifierForValue:width];

  if (v6 && ((objc_opt_class(), -[BKLibraryBookshelfColumnMetrics columns](self, "columns"), v7 = objc_claimAutoreleasedReturnValue(), [v7 objectForKeyedSubscript:v6], v8 = objc_claimAutoreleasedReturnValue(), BUDynamicCast(), v9 = objc_claimAutoreleasedReturnValue(), v8, v7, v9) || (objc_opt_class(), -[BKLibraryBookshelfColumnMetrics columns](self, "columns"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "objectForKeyedSubscript:", @"*"), v11 = objc_claimAutoreleasedReturnValue(), BUDynamicCast(), v9 = objc_claimAutoreleasedReturnValue(), v11, v10, v9)))
  {
    integerValue = [v9 integerValue];
  }

  else
  {
    integerValue = 4;
  }

  return integerValue;
}

- (NSString)description
{
  [(BKLibraryBookshelfColumnMetrics *)self gutter];
  v4 = v3;
  [(BKLibraryBookshelfColumnMetrics *)self margins];
  v6 = v5;
  [(BKLibraryBookshelfColumnMetrics *)self vertical];
  v8 = v7;
  [(BKLibraryBookshelfColumnMetrics *)self maxWidth];
  v10 = v9;
  widthSnap = [(BKLibraryBookshelfColumnMetrics *)self widthSnap];
  columns = [(BKLibraryBookshelfColumnMetrics *)self columns];
  v13 = [NSString stringWithFormat:@"BKLibraryBookshelfColumnMetrics: gutter: %f, margins: %f, vertical: %f, maxWidth: %f, widthSnap: %@, columns: %@", v4, v6, v8, v10, widthSnap, columns];

  return v13;
}

@end