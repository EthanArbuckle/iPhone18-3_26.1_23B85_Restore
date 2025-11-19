@interface BKLibraryBookshelfColumnMetrics
- (NSString)description;
- (int64_t)columnsForContainingWidth:(double)a3;
- (void)configureWithSection:(id)a3;
@end

@implementation BKLibraryBookshelfColumnMetrics

- (void)configureWithSection:(id)a3
{
  v4 = a3;
  [v4 floatForKey:@"gutter"];
  [(BKLibraryBookshelfColumnMetrics *)self setGutter:?];
  [v4 floatForKey:@"small-gutter"];
  [(BKLibraryBookshelfColumnMetrics *)self setSmallGutter:?];
  [v4 floatForKey:@"margins"];
  [(BKLibraryBookshelfColumnMetrics *)self setMargins:?];
  [v4 floatForKey:@"small-margins"];
  [(BKLibraryBookshelfColumnMetrics *)self setSmallMargins:?];
  [v4 floatForKey:@"vertical"];
  [(BKLibraryBookshelfColumnMetrics *)self setVertical:?];
  [v4 floatForKey:@"max-width"];
  [(BKLibraryBookshelfColumnMetrics *)self setMaxWidth:?];
  v5 = [v4 snapForKey:@"width-snap"];
  [(BKLibraryBookshelfColumnMetrics *)self setWidthSnap:v5];

  v6 = [v4 dictionaryForKey:@"columns"];
  [(BKLibraryBookshelfColumnMetrics *)self setColumns:v6];

  v7 = [v4 integerForKey:@"small-columns"];

  [(BKLibraryBookshelfColumnMetrics *)self setSmallColumns:v7];
}

- (int64_t)columnsForContainingWidth:(double)a3
{
  v5 = [(BKLibraryBookshelfColumnMetrics *)self widthSnap];
  v6 = [v5 identifierForValue:a3];

  if (v6 && ((objc_opt_class(), -[BKLibraryBookshelfColumnMetrics columns](self, "columns"), v7 = objc_claimAutoreleasedReturnValue(), [v7 objectForKeyedSubscript:v6], v8 = objc_claimAutoreleasedReturnValue(), BUDynamicCast(), v9 = objc_claimAutoreleasedReturnValue(), v8, v7, v9) || (objc_opt_class(), -[BKLibraryBookshelfColumnMetrics columns](self, "columns"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "objectForKeyedSubscript:", @"*"), v11 = objc_claimAutoreleasedReturnValue(), BUDynamicCast(), v9 = objc_claimAutoreleasedReturnValue(), v11, v10, v9)))
  {
    v12 = [v9 integerValue];
  }

  else
  {
    v12 = 4;
  }

  return v12;
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
  v11 = [(BKLibraryBookshelfColumnMetrics *)self widthSnap];
  v12 = [(BKLibraryBookshelfColumnMetrics *)self columns];
  v13 = [NSString stringWithFormat:@"BKLibraryBookshelfColumnMetrics: gutter: %f, margins: %f, vertical: %f, maxWidth: %f, widthSnap: %@, columns: %@", v4, v6, v8, v10, v11, v12];

  return v13;
}

@end