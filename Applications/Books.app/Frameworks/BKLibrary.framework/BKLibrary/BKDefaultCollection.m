@interface BKDefaultCollection
- (BOOL)isDefaultCollection;
- (BOOL)isEqualToCollection:(id)a3;
- (BOOL)isSeriesCollection;
- (NSString)description;
- (NSString)title;
@end

@implementation BKDefaultCollection

- (NSString)title
{
  title = self->_title;
  if (!title)
  {
    v4 = BKLibraryFrameworkBundle();
    v5 = [v4 localizedStringForKey:@"Collections_AllBooks" value:@"All Books" table:&stru_D8298];
    v6 = self->_title;
    self->_title = v5;

    title = self->_title;
  }

  return title;
}

- (BOOL)isSeriesCollection
{
  v2 = [(BKDefaultCollection *)self seriesID];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)isEqualToCollection:(id)a3
{
  v4 = a3;
  v5 = [(BKDefaultCollection *)self collectionID];
  v6 = [v4 collectionID];

  LOBYTE(v4) = [v5 isEqualToString:v6];
  return v4;
}

- (BOOL)isDefaultCollection
{
  v2 = [(BKDefaultCollection *)self seriesID];
  v3 = v2 == 0;

  return v3;
}

- (NSString)description
{
  v14 = [(BKDefaultCollection *)self title];
  v15 = [(BKDefaultCollection *)self collectionID];
  v3 = [(BKDefaultCollection *)self sortKey];
  v4 = [(BKDefaultCollection *)self sortMode];
  v5 = [(BKDefaultCollection *)self viewMode];
  v13 = [(BKDefaultCollection *)self deletedFlag];
  v6 = [(BKDefaultCollection *)self hidden];
  v7 = [(BKDefaultCollection *)self lastModification];
  v8 = [(BKDefaultCollection *)self members];
  v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 count]);
  v10 = [(BKDefaultCollection *)self seriesID];
  v11 = [NSString stringWithFormat:@"   %@ (%p) \n title: %@\n collectionID: %@\n sortKey: %@\n sortMode: %@\n viewMode: %@\n deletedFlag: %@\n hidden: %@\n lastModification: %@\n member count: %@\n seriesID: %@", @"self", self, v14, v15, v3, v4, v5, v13, v6, v7, v9, v10];

  return v11;
}

@end