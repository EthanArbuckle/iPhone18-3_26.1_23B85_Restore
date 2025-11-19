@interface BKPDFActionController
- (BOOL)_bookHasCapability:(id)a3;
- (BOOL)_isEmailAllowedForBook:(id)a3;
- (BOOL)_isPrintingAllowedForBook:(id)a3;
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
  v3 = [(BKActionController *)&v8 activityItems];
  v4 = [BKActivityPDFLinkPresentationItemSource alloc];
  v5 = [(BKActionController *)self bookInfo];
  v6 = [(BKActivityPDFLinkPresentationItemSource *)v4 initWithBookInfo:v5];

  [v3 addObject:v6];

  return v3;
}

- (BOOL)_isPrintingAllowedForBook:(id)a3
{
  v3 = [a3 url];
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

- (BOOL)_bookHasCapability:(id)a3
{
  if ([a3 isManagedBook])
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  return [MFMailComposeViewController canSendMailSourceAccountManagement:v3];
}

- (BOOL)_isEmailAllowedForBook:(id)a3
{
  v4 = a3;
  if ([(BKPDFActionController *)self _bookHasCapability:v4])
  {
    v5 = [v4 bookBundlePath];
    v6 = [NSURL fileURLWithPath:v5];
    v7 = +[NSFileManager defaultManager];
    v8 = v7;
    if (v6 && [v7 fileExistsAtPath:v5])
    {
      v9 = [v8 attributesOfItemAtPath:v5 error:0];
      v10 = v9;
      v13 = 0;
      if (v9)
      {
        v11 = [v9 objectForKey:NSFileSize];
        v12 = [v11 unsignedLongLongValue];

        if (v12 < 0x12C0001)
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
    v3 = [(BKActionController *)self bookInfo];
    [(BKPDFActionController *)self setIsPrintingAllowed:[(BKPDFActionController *)self _isPrintingAllowedForBook:v3]];
  }

  v6.receiver = self;
  v6.super_class = BKPDFActionController;
  v4 = [(BKActionController *)&v6 canPrintBook];
  if (v4)
  {
    LOBYTE(v4) = [(BKPDFActionController *)self isPrintingAllowed];
  }

  return v4;
}

- (BOOL)canEmailBook
{
  if (![(BKPDFActionController *)self didComputeMailingAllowed])
  {
    [(BKPDFActionController *)self setDidComputeMailingAllowed:1];
    v3 = [(BKActionController *)self bookInfo];
    [(BKPDFActionController *)self setIsMailingAllowed:[(BKPDFActionController *)self _isEmailAllowedForBook:v3]];
  }

  return [(BKPDFActionController *)self isMailingAllowed];
}

- (BOOL)canAirDrop
{
  v2 = [(BKActionController *)self bookInfo];
  v3 = [v2 isManagedBook];

  return v3 ^ 1;
}

- (void)_setActivities
{
  if ([(BKPDFActionController *)self canEmailBook])
  {
    v3 = [(BKActionController *)self includedActivityTypes];
    [v3 addObject:UIActivityTypeMail];

    v4 = [(BKActionController *)self includedActivityTypes];
    [v4 addObject:UIActivityTypeMessage];
  }

  if ([(BKPDFActionController *)self canPrintBook])
  {
    v5 = [(BKActionController *)self includedActivityTypes];
    [v5 addObject:UIActivityTypePrint];
  }

  v6 = +[BCProgressKitController sharedController];
  v7 = [(BKActionController *)self bookInfo];
  v8 = [v7 assetID];
  v9 = [v6 isTrackingAssetID:v8];

  if (v9)
  {
    v10 = [(BKActionController *)self includedActivityTypes];
    [v10 addObject:IMActivityTypeSaveToClassKitApp];

    v11 = [(BKActionController *)self includedActivityTypes];
    [v11 addObject:IMActivityTypeShareToClassKitApp];
  }

  if (![(BKPDFActionController *)self canMarkupAsPDF])
  {
    v12 = [(BKActionController *)self excludedActivityTypes];
    [v12 addObject:UIActivityTypeMarkupAsPDF];
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