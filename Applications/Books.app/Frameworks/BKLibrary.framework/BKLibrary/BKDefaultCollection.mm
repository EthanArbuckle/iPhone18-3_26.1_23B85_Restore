@interface BKDefaultCollection
- (BOOL)isDefaultCollection;
- (BOOL)isEqualToCollection:(id)collection;
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
  seriesID = [(BKDefaultCollection *)self seriesID];
  v3 = seriesID != 0;

  return v3;
}

- (BOOL)isEqualToCollection:(id)collection
{
  collectionCopy = collection;
  collectionID = [(BKDefaultCollection *)self collectionID];
  collectionID2 = [collectionCopy collectionID];

  LOBYTE(collectionCopy) = [collectionID isEqualToString:collectionID2];
  return collectionCopy;
}

- (BOOL)isDefaultCollection
{
  seriesID = [(BKDefaultCollection *)self seriesID];
  v3 = seriesID == 0;

  return v3;
}

- (NSString)description
{
  title = [(BKDefaultCollection *)self title];
  collectionID = [(BKDefaultCollection *)self collectionID];
  sortKey = [(BKDefaultCollection *)self sortKey];
  sortMode = [(BKDefaultCollection *)self sortMode];
  viewMode = [(BKDefaultCollection *)self viewMode];
  deletedFlag = [(BKDefaultCollection *)self deletedFlag];
  hidden = [(BKDefaultCollection *)self hidden];
  lastModification = [(BKDefaultCollection *)self lastModification];
  members = [(BKDefaultCollection *)self members];
  v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [members count]);
  seriesID = [(BKDefaultCollection *)self seriesID];
  v11 = [NSString stringWithFormat:@"   %@ (%p) \n title: %@\n collectionID: %@\n sortKey: %@\n sortMode: %@\n viewMode: %@\n deletedFlag: %@\n hidden: %@\n lastModification: %@\n member count: %@\n seriesID: %@", @"self", self, title, collectionID, sortKey, sortMode, viewMode, deletedFlag, hidden, lastModification, v9, seriesID];

  return v11;
}

@end