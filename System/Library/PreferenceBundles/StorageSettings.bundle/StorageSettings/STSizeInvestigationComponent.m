@interface STSizeInvestigationComponent
- (STSizeInvestigationComponent)initWithPaths:(id)a3;
- (id)calculatedString;
- (id)reportedString;
- (id)sizeFormatter:(id)a3 withSign:(BOOL)a4;
- (id)specifier;
- (void)fetchSize;
@end

@implementation STSizeInvestigationComponent

- (STSizeInvestigationComponent)initWithPaths:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = STSizeInvestigationComponent;
  v6 = [(STSizeInvestigationComponent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_filePaths, a3);
    *&v7->_isFetched = 0;
    v7->_hasPathSizingError = 0;
  }

  return v7;
}

- (id)sizeFormatter:(id)a3 withSign:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  [v5 longLongValue];
  v6 = STFormattedSize();
  if ([v5 longLongValue] >= 1 && v4)
  {
    v7 = [NSString stringWithFormat:@"+%@", v6];

    v6 = v7;
  }

  if (![v5 longLongValue])
  {

    v6 = @"0B";
  }

  return v6;
}

- (void)fetchSize
{
  v3 = [(STStorageApp *)self->_app appSize];
  v4 = [v3 fixed];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_filePaths;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        STMSizeOfFileTree();
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  self->_realSize.used_space = v4;
  self->_realSize.num_files = 0;
  self->_realSize.purgeable_space = 0;
  self->_realSize.num_clones = 0;
  self->_realSize.hasSizingError = 0;
  *(&self->_realSize.hasSizingError + 1) = 0;
  *(&self->_realSize.hasSizingError + 1) = 0;
  v11 = [NSNumber numberWithLongLong:v4];
  realSizeComputed = self->_realSizeComputed;
  self->_realSizeComputed = v11;

  v13 = [NSNumber numberWithLongLong:[(NSNumber *)self->_realSizeComputed longLongValue]- [(NSNumber *)self->_reportedSize longLongValue]];
  diff = self->_diff;
  self->_diff = v13;

  self->_isFetched = 1;
}

- (id)specifier
{
  v3 = [PSSpecifier preferenceSpecifierNamed:&stru_2D2D0 target:0 set:0 get:0 detail:0 cell:-1 edit:0];
  [v3 setProperty:objc_opt_class() forKey:PSCellClassKey];
  [v3 setProperty:self forKey:@"APP_CASE"];

  return v3;
}

- (id)reportedString
{
  v3 = [(STSizeInvestigationComponent *)self sizeFormatter:self->_reportedSize];
  v4 = [NSNumber numberWithLongLong:[(STStorageApp *)self->_app dataContainerSize]];
  v5 = [(STSizeInvestigationComponent *)self sizeFormatter:v4];

  v6 = [NSNumber numberWithLongLong:[(STStorageApp *)self->_app sharedContainerSize]];
  v7 = [(STSizeInvestigationComponent *)self sizeFormatter:v6];

  v8 = [NSNumber numberWithLongLong:[(STStorageApp *)self->_app externalSize]];
  v9 = [(STSizeInvestigationComponent *)self sizeFormatter:v8];

  v10 = [NSNumber numberWithLongLong:[(STStorageApp *)self->_app dataPurgeableSize]+ [(STStorageApp *)self->_app sharedPurgeableSize]+ [(STStorageApp *)self->_app externalPurgeableSize]+ [(STStorageApp *)self->_app assetPurgeableSize]];
  v11 = [(STSizeInvestigationComponent *)self sizeFormatter:v10];

  v12 = [NSString stringWithFormat:@"Reported : %@ (D: %@ / S: %@ / E: %@ / P: %@)", v3, v5, v7, v9, v11];

  return v12;
}

- (id)calculatedString
{
  v3 = [(STSizeInvestigationComponent *)self sizeFormatter:self->_realSizeComputed];
  v4 = [NSNumber numberWithLongLong:self->_realSize.used_space];
  v5 = [(STSizeInvestigationComponent *)self sizeFormatter:v4];

  v6 = [NSNumber numberWithLongLong:self->_realSize.purgeable_space];
  v7 = [(STSizeInvestigationComponent *)self sizeFormatter:v6];

  if (self->_realSize.hasSizingError)
  {
    v8 = @"/ Potential error";
  }

  else
  {
    v8 = &stru_2D2D0;
  }

  v9 = [NSString stringWithFormat:@"Calculated : %@ (Size: %@ / FSPRG: %@ %@)", v3, v5, v7, v8];

  return v9;
}

@end