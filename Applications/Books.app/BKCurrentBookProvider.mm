@interface BKCurrentBookProvider
- (BKCurrentBookProvider)init;
- (void)setSquareCover:(BOOL)cover;
@end

@implementation BKCurrentBookProvider

- (BKCurrentBookProvider)init
{
  v14.receiver = self;
  v14.super_class = BKCurrentBookProvider;
  v2 = [(BKCurrentBookProvider *)&v14 init];
  if (v2)
  {
    v3 = [[BSUIDynamicValue alloc] initWithValue:&__kCFBooleanFalse options:&off_100A43C28];
    generatingCurrentBookSnapshot = v2->_generatingCurrentBookSnapshot;
    v2->_generatingCurrentBookSnapshot = v3;

    v5 = [[BSUIDynamicValue alloc] initWithValue:&__kCFBooleanTrue options:&off_100A43C50];
    showBookCover = v2->_showBookCover;
    v2->_showBookCover = v5;

    v7 = [[BSUIDynamicValue alloc] initWithValue:&off_100A43620 options:&off_100A43C78];
    spreadPageCount = v2->_spreadPageCount;
    v2->_spreadPageCount = v7;

    v9 = [[BSUIDynamicValue alloc] initWithValue:&__kCFBooleanFalse options:&off_100A43CA0];
    portraitSpread = v2->_portraitSpread;
    v2->_portraitSpread = v9;

    v11 = [[BSUIDynamicValue alloc] initWithValue:&__kCFBooleanTrue options:&off_100A43CC8];
    showSquareCover = v2->_showSquareCover;
    v2->_showSquareCover = v11;
  }

  return v2;
}

- (void)setSquareCover:(BOOL)cover
{
  coverCopy = cover;
  self->_squareCover = cover;
  showSquareCover = [(BKCurrentBookProvider *)self showSquareCover];
  v4 = [NSNumber numberWithBool:coverCopy];
  [showSquareCover updateValue:v4];
}

@end