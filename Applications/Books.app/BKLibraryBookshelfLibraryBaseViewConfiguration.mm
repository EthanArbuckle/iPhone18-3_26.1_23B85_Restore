@interface BKLibraryBookshelfLibraryBaseViewConfiguration
- (NSString)collectionDescriptionPlaceholderText;
- (NSString)infoBarBuy;
- (NSString)infoBarDownloadPaused;
- (NSString)infoBarDownloadWaiting;
- (NSString)infoBarDownloading;
- (NSString)infoBarNew;
- (NSString)infoBarNext;
- (NSString)infoBarPreOrderable;
- (NSString)infoBarPreOrdered;
- (NSString)infoBarProof;
- (NSString)infoBarSample;
- (NSString)infoExpectedDateString;
- (NSString)moreText;
- (NSString)noBooksDescription;
- (NSString)noBooksDescriptionHeader;
- (NSString)readingListButtonText;
@end

@implementation BKLibraryBookshelfLibraryBaseViewConfiguration

- (NSString)moreText
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"More" value:&stru_100A30A68 table:0];

  return v3;
}

- (NSString)collectionDescriptionPlaceholderText
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Description" value:&stru_100A30A68 table:0];

  return v3;
}

- (NSString)noBooksDescriptionHeader
{
  collectionID = [(BKLibraryBookshelfLibraryBaseViewConfiguration *)self collectionID];
  if ([collectionID isEqualToString:kBKCollectionDefaultAll])
  {
    v3 = +[NSBundle mainBundle];
    v4 = v3;
    v5 = @"Library is Empty";
  }

  else if ([collectionID isEqualToString:kBKCollectionDefaultIDAudiobooks])
  {
    v3 = +[NSBundle mainBundle];
    v4 = v3;
    v5 = @"No Audiobooks";
  }

  else if ([collectionID isEqualToString:kBKCollectionDefaultIDPDFs])
  {
    v3 = +[NSBundle mainBundle];
    v4 = v3;
    v5 = @"No PDFs";
  }

  else if ([collectionID isEqualToString:kBKCollectionDefaultIDSamples])
  {
    v3 = +[NSBundle mainBundle];
    v4 = v3;
    v5 = @"No Samples";
  }

  else
  {
    v8 = [collectionID isEqualToString:kBKCollectionDefaultIDDownloaded];
    v3 = +[NSBundle mainBundle];
    v4 = v3;
    if (v8)
    {
      v5 = @"No Downloaded Books";
    }

    else
    {
      v5 = @"No Books";
    }
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_100A30A68 table:0];

  return v6;
}

- (NSString)noBooksDescription
{
  collectionID = [(BKLibraryBookshelfLibraryBaseViewConfiguration *)self collectionID];
  if ([collectionID isEqualToString:kBKCollectionDefaultAll])
  {
    v3 = +[NSBundle mainBundle];
    v4 = v3;
    v5 = @"Visit the store to add books and audiobooks to your library.";
  }

  else if ([collectionID isEqualToString:kBKCollectionDefaultIDWantToRead])
  {
    v3 = +[NSBundle mainBundle];
    v4 = v3;
    v5 = @"To add to this collection, tap any book or audiobook in the store and select Want to Read.";
  }

  else if ([collectionID isEqualToString:kBKCollectionDefaultIDFinished])
  {
    v3 = +[NSBundle mainBundle];
    v4 = v3;
    v5 = @"As you mark books and audiobooks finished, they’ll be added to this collection.";
  }

  else if ([collectionID isEqualToString:kBKCollectionDefaultIDBooks])
  {
    v3 = +[NSBundle mainBundle];
    v4 = v3;
    v5 = @"All the books you purchase will automatically be added to this collection.";
  }

  else if ([collectionID isEqualToString:kBKCollectionDefaultIDAudiobooks])
  {
    v3 = +[NSBundle mainBundle];
    v4 = v3;
    v5 = @"All the audiobooks you purchase will automatically be added to this collection.";
  }

  else if ([collectionID isEqualToString:kBKCollectionDefaultIDPDFs])
  {
    v3 = +[NSBundle mainBundle];
    v4 = v3;
    v5 = @"PDFs in your library will automatically be added to this collection.";
  }

  else if ([collectionID isEqualToString:kBKCollectionDefaultIDSamples])
  {
    v3 = +[NSBundle mainBundle];
    v4 = v3;
    v5 = @"To add to this collection, tap any book in the store and select Sample.";
  }

  else if ([collectionID isEqualToString:kBKCollectionDefaultIDDownloaded])
  {
    v6 = +[BCDevice deviceClass];
    v3 = +[NSBundle mainBundle];
    v4 = v3;
    if (v6 == 3)
    {
      v5 = @"All the books you download to this iPad will automatically be added to this collection.";
    }

    else if (v6 == 2)
    {
      v5 = @"All the books you download to this iPod touch will automatically be added to this collection.";
    }

    else if (v6 == 1)
    {
      v5 = @"All the books you download to this iPhone will automatically be added to this collection.";
    }

    else
    {
      v5 = @"All the books you download to this device will automatically be added to this collection.";
    }
  }

  else
  {
    v3 = +[NSBundle mainBundle];
    v4 = v3;
    v5 = @"To add to this collection, choose Add to Collection from a book or audiobook menu.";
  }

  v7 = [v3 localizedStringForKey:v5 value:&stru_100A30A68 table:0];

  return v7;
}

- (NSString)readingListButtonText
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Collections" value:&stru_100A30A68 table:0];

  return v3;
}

- (NSString)infoBarDownloading
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"DOWNLOADING…" value:&stru_100A30A68 table:0];

  return v3;
}

- (NSString)infoBarDownloadWaiting
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"WAITING…" value:&stru_100A30A68 table:0];

  return v3;
}

- (NSString)infoBarDownloadPaused
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"PAUSED…" value:&stru_100A30A68 table:0];

  return v3;
}

- (NSString)infoBarNew
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"NEW" value:&stru_100A30A68 table:0];

  return v3;
}

- (NSString)infoBarNext
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"NEXT" value:&stru_100A30A68 table:0];

  return v3;
}

- (NSString)infoBarProof
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"PROOF" value:&stru_100A30A68 table:0];

  return v3;
}

- (NSString)infoBarPreOrderable
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"PRE-ORDER" value:&stru_100A30A68 table:0];

  return v3;
}

- (NSString)infoBarPreOrdered
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"PRE-ORDERED" value:&stru_100A30A68 table:0];

  return v3;
}

- (NSString)infoBarSample
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"SAMPLE" value:&stru_100A30A68 table:0];

  return v3;
}

- (NSString)infoBarBuy
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"BUY" value:&stru_100A30A68 table:0];

  return v3;
}

- (NSString)infoExpectedDateString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Expected %@" value:&stru_100A30A68 table:0];

  return v3;
}

@end