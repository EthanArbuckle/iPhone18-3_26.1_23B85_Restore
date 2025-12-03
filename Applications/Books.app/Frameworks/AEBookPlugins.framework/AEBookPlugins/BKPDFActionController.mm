@interface BKPDFActionController
- (BOOL)_bookHasCapability:(id)capability;
- (BOOL)_isEmailAllowedForBook:(id)book;
- (BOOL)_isPrintingAllowedForBook:(id)book;
- (BOOL)canAirDrop;
- (BOOL)canEmailBook;
- (BOOL)canPrintBook;
- (id)activityItems;
- (void)_setActivities;
@end

@implementation BKPDFActionController

- (id)activityItems
{
  v8.receiver = self;
  v8.super_class = BKPDFActionController;
  activityItems = [(BKActionController *)&v8 activityItems];
  v4 = [BKActivityPDFLinkPresentationItemSource alloc];
  bookInfo = [(BKActionController *)self bookInfo];
  v6 = [(BKActivityPDFLinkPresentationItemSource *)v4 initWithBookInfo:bookInfo];

  [activityItems addObject:v6];

  return activityItems;
}

- (BOOL)_isPrintingAllowedForBook:(id)book
{
  v3 = [book url];
  v4 = NSClassFromString(@"UIPrintInteractionController");
  if (v4 && [(objc_class *)v4 canPrintURL:v3])
  {
    v5 = [[NSData alloc] initWithContentsOfURL:v3 options:1 error:0];
    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_bookHasCapability:(id)capability
{
  if ([capability isManagedBook])
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  return [MFMailComposeViewController canSendMailSourceAccountManagement:v3];
}

- (BOOL)_isEmailAllowedForBook:(id)book
{
  bookCopy = book;
  if ([(BKPDFActionController *)self _bookHasCapability:bookCopy])
  {
    bookBundlePath = [bookCopy bookBundlePath];
    v6 = [NSURL fileURLWithPath:bookBundlePath];
    v7 = +[NSFileManager defaultManager];
    v8 = v7;
    if (v6 && [v7 fileExistsAtPath:bookBundlePath])
    {
      v9 = [v8 attributesOfItemAtPath:bookBundlePath error:0];
      v10 = v9;
      v13 = 0;
      if (v9)
      {
        v11 = [v9 objectForKey:NSFileSize];
        unsignedLongLongValue = [v11 unsignedLongLongValue];

        if (unsignedLongLongValue < 0x12C0001)
        {
          v13 = 1;
        }
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)canPrintBook
{
  if (![(BKPDFActionController *)self didComputePrintingAllowed])
  {
    [(BKPDFActionController *)self setDidComputePrintingAllowed:1];
    bookInfo = [(BKActionController *)self bookInfo];
    [(BKPDFActionController *)self setIsPrintingAllowed:[(BKPDFActionController *)self _isPrintingAllowedForBook:bookInfo]];
  }

  v6.receiver = self;
  v6.super_class = BKPDFActionController;
  canPrintBook = [(BKActionController *)&v6 canPrintBook];
  if (canPrintBook)
  {
    LOBYTE(canPrintBook) = [(BKPDFActionController *)self isPrintingAllowed];
  }

  return canPrintBook;
}

- (BOOL)canEmailBook
{
  if (![(BKPDFActionController *)self didComputeMailingAllowed])
  {
    [(BKPDFActionController *)self setDidComputeMailingAllowed:1];
    bookInfo = [(BKActionController *)self bookInfo];
    [(BKPDFActionController *)self setIsMailingAllowed:[(BKPDFActionController *)self _isEmailAllowedForBook:bookInfo]];
  }

  return [(BKPDFActionController *)self isMailingAllowed];
}

- (BOOL)canAirDrop
{
  bookInfo = [(BKActionController *)self bookInfo];
  isManagedBook = [bookInfo isManagedBook];

  return isManagedBook ^ 1;
}

- (void)_setActivities
{
  if ([(BKPDFActionController *)self canEmailBook])
  {
    includedActivityTypes = [(BKActionController *)self includedActivityTypes];
    [includedActivityTypes addObject:UIActivityTypeMail];

    includedActivityTypes2 = [(BKActionController *)self includedActivityTypes];
    [includedActivityTypes2 addObject:UIActivityTypeMessage];
  }

  if ([(BKPDFActionController *)self canPrintBook])
  {
    includedActivityTypes3 = [(BKActionController *)self includedActivityTypes];
    [includedActivityTypes3 addObject:UIActivityTypePrint];
  }

  v6 = +[BCProgressKitController sharedController];
  bookInfo = [(BKActionController *)self bookInfo];
  assetID = [bookInfo assetID];
  v9 = [v6 isTrackingAssetID:assetID];

  if (v9)
  {
    includedActivityTypes4 = [(BKActionController *)self includedActivityTypes];
    [includedActivityTypes4 addObject:IMActivityTypeSaveToClassKitApp];

    includedActivityTypes5 = [(BKActionController *)self includedActivityTypes];
    [includedActivityTypes5 addObject:IMActivityTypeShareToClassKitApp];
  }

  if (![(BKPDFActionController *)self canMarkupAsPDF])
  {
    excludedActivityTypes = [(BKActionController *)self excludedActivityTypes];
    [excludedActivityTypes addObject:UIActivityTypeMarkupAsPDF];
  }

  if ([(BKPDFActionController *)self canAirDrop])
  {
    [(BKActionController *)self includedActivityTypes];
  }

  else
  {
    [(BKActionController *)self excludedActivityTypes];
  }
  v13 = ;
  [v13 addObject:UIActivityTypeAirDrop];
}

@end