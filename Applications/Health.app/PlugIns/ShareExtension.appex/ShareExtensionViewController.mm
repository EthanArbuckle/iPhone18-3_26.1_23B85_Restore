@interface ShareExtensionViewController
- (BOOL)_containsPasswordProtectedData:(id)data;
- (BOOL)_preflightForCDA:(id)a;
- (id)_extractFirstOccurrenceOfTagRule:(id)rule extactor:(id)extactor;
- (void)_addDocumentForPreview:(id)preview;
- (void)_allShareProvidersFinished;
- (void)_dismissShareExtension;
- (void)_extractZipContent:(id)content;
- (void)_fetchShareData;
- (void)_importAlertWithTitle:(id)title message:(id)message doneHandler:(id)handler;
- (void)_incomingDocument;
- (void)_logError:(id)error message:(id)message;
- (void)_passwordProtectedZip;
- (void)_postDocumentPreview;
- (void)_prepareXMLData:(id)data;
- (void)_saveDocumentsAction:(id)action;
- (void)_shareProviderFinished;
- (void)_shareProviderLoading;
- (void)viewDidLoad;
@end

@implementation ShareExtensionViewController

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = ShareExtensionViewController;
  [(ShareExtensionViewController *)&v11 viewDidLoad];
  v3 = +[UIColor systemBackgroundColor];
  view = [(ShareExtensionViewController *)self view];
  [view setBackgroundColor:v3];

  v5 = [[HKLoadingShareViewController alloc] initWithNibName:0 bundle:0];
  loadingShareViewController = self->_loadingShareViewController;
  self->_loadingShareViewController = v5;

  documentPickerController = self->_documentPickerController;
  self->_documentPickerController = 0;

  v12 = self->_loadingShareViewController;
  v8 = [NSArray arrayWithObjects:&v12 count:1];
  [(ShareExtensionViewController *)self setViewControllers:v8];

  view2 = [(ShareExtensionViewController *)self view];
  v10 = HKHealthTintColor();
  [view2 setTintColor:v10];

  [(ShareExtensionViewController *)self _fetchShareData];
}

- (void)_fetchShareData
{
  v3 = objc_alloc_init(NSMutableArray);
  documentsForPreview = self->_documentsForPreview;
  self->_documentsForPreview = v3;

  self->_providerLoadingCount = 0;
  self->_incomingDocumentCount = 0;
  self->_passwordProtectedZipCount = 0;
  extensionContext = [(ShareExtensionViewController *)self extensionContext];
  v6 = extensionContext;
  if (!extensionContext)
  {
    [(ShareExtensionViewController *)self _logError:0 message:@"No extension context present"];
    goto LABEL_25;
  }

  v19 = extensionContext;
  [extensionContext inputItems];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v33 = 0u;
  v22 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (!v22)
  {
    goto LABEL_23;
  }

  v21 = *v31;
  do
  {
    v7 = 0;
    do
    {
      if (*v31 != v21)
      {
        objc_enumerationMutation(obj);
      }

      v23 = v7;
      attachments = [*(*(&v30 + 1) + 8 * v7) attachments];
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v9 = [attachments countByEnumeratingWithState:&v26 objects:v34 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v27;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v27 != v11)
            {
              objc_enumerationMutation(attachments);
            }

            v13 = *(*(&v26 + 1) + 8 * i);
            if ([v13 hasItemConformingToTypeIdentifier:@"public.zip-archive"] && objc_msgSend(v13, "hasItemConformingToTypeIdentifier:", @"public.file-url"))
            {
              [(ShareExtensionViewController *)self _shareProviderLoading];
              v25[0] = _NSConcreteStackBlock;
              v25[1] = 3221225472;
              v25[2] = sub_100001188;
              v25[3] = &unk_100008200;
              v25[4] = self;
              v14 = v25;
              v15 = v13;
              v16 = @"public.file-url";
LABEL_17:
              [v15 loadItemForTypeIdentifier:v16 options:0 completionHandler:v14];
              continue;
            }

            if ([v13 hasItemConformingToTypeIdentifier:@"public.xml"])
            {
              [(ShareExtensionViewController *)self _shareProviderLoading];
              v24[0] = _NSConcreteStackBlock;
              v24[1] = 3221225472;
              v24[2] = sub_10000122C;
              v24[3] = &unk_100008228;
              v24[4] = self;
              v14 = v24;
              v15 = v13;
              v16 = @"public.xml";
              goto LABEL_17;
            }

            registeredTypeIdentifiers = [v13 registeredTypeIdentifiers];
            v18 = [NSString stringWithFormat:@"Unable to handle item: %@", registeredTypeIdentifiers];

            [(ShareExtensionViewController *)self _logError:0 message:v18];
          }

          v10 = [attachments countByEnumeratingWithState:&v26 objects:v34 count:16];
        }

        while (v10);
      }

      v7 = v23 + 1;
    }

    while ((v23 + 1) != v22);
    v22 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  }

  while (v22);
LABEL_23:

  v6 = v19;
LABEL_25:
}

- (void)_extractZipContent:(id)content
{
  path = [content path];
  v5 = [[_HKZipArchiveExtractor alloc] initWithPathname:path];
  v9[4] = self;
  v10 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000013D0;
  v9[3] = &unk_100008250;
  v6 = [v5 enumerateEntriesWithError:&v10 block:v9];
  v7 = v10;
  if ((v6 & 1) == 0)
  {
    _HKInitializeLogging();
    v8 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100002B18(v5, v7, v8);
    }
  }
}

- (BOOL)_containsPasswordProtectedData:(id)data
{
  dataCopy = data;
  v4 = dataCopy;
  if (dataCopy)
  {
    v5 = [dataCopy subdataWithRange:{0, 50}];
    v6 = [[NSString alloc] initWithData:v5 encoding:4];
    v7 = v6;
    if (v6 && [v6 length])
    {
      v8 = 0;
      while (![v7 characterAtIndex:v8])
      {
        if (++v8 >= [v7 length])
        {
          goto LABEL_7;
        }
      }

      v9 = 0;
    }

    else
    {
LABEL_7:
      v9 = 1;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)_prepareXMLData:(id)data
{
  dataCopy = data;
  if ([(ShareExtensionViewController *)self _preflightForCDA:dataCopy])
  {
    [(ShareExtensionViewController *)self _incomingDocument];
    v5 = +[NSDate date];
    v8 = 0;
    v6 = [HKCDADocumentSample CDADocumentSampleWithData:dataCopy startDate:v5 endDate:v5 metadata:0 validationError:&v8];
    v7 = v8;
    if (v6)
    {
      [(ShareExtensionViewController *)self _addDocumentForPreview:v6];
    }

    else
    {
      [(ShareExtensionViewController *)self _logError:v7 message:@"Document did not pass validation"];
    }
  }

  else
  {
    [(ShareExtensionViewController *)self _logError:0 message:@"Document did not pass preflight checks"];
  }
}

- (BOOL)_preflightForCDA:(id)a
{
  aCopy = a;
  v5 = objc_alloc_init(_HKXMLExtractor);
  [v5 addTagSpecificationForExtraction:@"ClinicalDocument/title"];
  [v5 addTagSpecificationForExtraction:@"ClinicalDocument/component/structuredBody/component/section/templateId/@root"];
  [v5 parseWithData:aCopy];
  v6 = [(ShareExtensionViewController *)self _extractFirstOccurrenceOfTagRule:@"ClinicalDocument/title" extactor:v5];
  v7 = [(ShareExtensionViewController *)self _extractFirstOccurrenceOfTagRule:@"ClinicalDocument/component/structuredBody/component/section/templateId/@root" extactor:v5];
  v8 = [aCopy length];

  v9 = 0;
  if (v8 <= 0x4C4B3E)
  {
    if (v6)
    {
      v9 = 0;
      if ([v6 length])
      {
        if (v7)
        {
          v9 = [v7 length] != 0;
        }
      }
    }
  }

  return v9;
}

- (id)_extractFirstOccurrenceOfTagRule:(id)rule extactor:(id)extactor
{
  v4 = [extactor getDataForTagSpecification:rule];
  if ([v4 count])
  {
    v5 = [v4 objectAtIndex:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_allShareProvidersFinished
{
  v3 = [(NSMutableArray *)self->_documentsForPreview count];
  incomingDocumentCount = self->_incomingDocumentCount;
  if (v3 < 1)
  {
    if (incomingDocumentCount < 1)
    {
      passwordProtectedZipCount = self->_passwordProtectedZipCount;
      v7 = [NSBundle bundleWithIdentifier:@"com.apple.HealthUI"];
      v9 = [v7 localizedStringForKey:@"CDA_SHARE_ALERT_TITLE" value:&stru_100008520 table:@"HealthUI-Localizable"];
      v17 = [NSBundle bundleWithIdentifier:@"com.apple.HealthUI"];
      v12 = v17;
      if (passwordProtectedZipCount < 1)
      {
        v13 = [v17 localizedStringForKey:@"CDA_SHARE_NO_DOCUMENTS" value:&stru_100008520 table:@"HealthUI-Localizable"];
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_100001C20;
        v18[3] = &unk_100008278;
        v18[4] = self;
        v15 = v18;
      }

      else
      {
        v13 = [v17 localizedStringForKey:@"CDA_SHARE_PASSWORD_PROTECTED" value:&stru_100008520 table:@"HealthUI-Localizable"];
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_100001C18;
        v19[3] = &unk_100008278;
        v19[4] = self;
        v15 = v19;
      }
    }

    else
    {
      v7 = [NSBundle bundleWithIdentifier:@"com.apple.HealthUI"];
      v9 = [v7 localizedStringForKey:@"CDA_SHARE_ALERT_TITLE" value:&stru_100008520 table:@"HealthUI-Localizable"];
      v12 = [NSBundle bundleWithIdentifier:@"com.apple.HealthUI"];
      v13 = [v12 localizedStringForKey:@"CDA_SHARE_NO_VALID_DOCUMENTS" value:&stru_100008520 table:@"HealthUI-Localizable"];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100001C10;
      v20[3] = &unk_100008278;
      v20[4] = self;
      v15 = v20;
    }

    [(ShareExtensionViewController *)self _importAlertWithTitle:v9 message:v13 doneHandler:v15];
    goto LABEL_13;
  }

  v5 = incomingDocumentCount - v3;
  if (incomingDocumentCount > v3)
  {
    v6 = [NSNumber numberWithInteger:v5];
    v7 = HKLocalizedStringForNumberWithTemplate();

    v8 = [NSNumber numberWithInteger:self->_incomingDocumentCount];
    v9 = HKLocalizedStringForNumberWithTemplate();

    v10 = [NSBundle bundleWithIdentifier:@"com.apple.HealthUI"];
    v11 = [v10 localizedStringForKey:@"CDA_SHARE_SOME_INVALID_DOCUMENTS %@ %@" value:&stru_100008520 table:@"HealthUI-Localizable"];
    v12 = [NSString stringWithFormat:v11, v7, v9];

    v13 = [NSBundle bundleWithIdentifier:@"com.apple.HealthUI"];
    v14 = [v13 localizedStringForKey:@"CDA_SHARE_ALERT_TITLE" value:&stru_100008520 table:@"HealthUI-Localizable"];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100001C08;
    v21[3] = &unk_100008278;
    v21[4] = self;
    [(ShareExtensionViewController *)self _importAlertWithTitle:v14 message:v12 doneHandler:v21];

LABEL_13:
    return;
  }

  [(ShareExtensionViewController *)self _postDocumentPreview];
}

- (void)_postDocumentPreview
{
  v3 = [[HKDocumentPickerViewController alloc] initWithDocuments:self->_documentsForPreview presentationStyle:2];
  documentPickerController = self->_documentPickerController;
  self->_documentPickerController = v3;

  v5 = +[HKSource defaultSource];
  [(HKDocumentPickerViewController *)self->_documentPickerController setSource:v5];

  v6 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_dismissShareExtension"];
  v7 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:3 target:self action:"_saveDocumentsAction:"];
  navigationItem = [(HKDocumentPickerViewController *)self->_documentPickerController navigationItem];
  [navigationItem setLeftBarButtonItem:v6];
  [navigationItem setRightBarButtonItem:v7];
  v9 = [(NSMutableArray *)self->_documentsForPreview count]== 1;
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:v9];

  v11 = [NSBundle bundleWithIdentifier:@"com.apple.HealthUI"];
  v12 = [v11 localizedStringForKey:@"CDA_SHARE_DOCUMENT_TITLE" value:&stru_100008520 table:@"HealthUI-Localizable"];
  [navigationItem setTitle:v12];

  v20 = self->_documentPickerController;
  v13 = [NSArray arrayWithObjects:&v20 count:1];
  [(ShareExtensionViewController *)self setViewControllers:v13];

  view = [(ShareExtensionViewController *)self view];
  [view frame];
  CGAffineTransformMakeTranslation(&v19, 0.0, v15);
  view2 = [(ShareExtensionViewController *)self view];
  v18 = v19;
  [view2 setTransform:&v18];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100001EC8;
  v17[3] = &unk_100008278;
  v17[4] = self;
  [UIView animateWithDuration:v17 animations:0.2];
}

- (void)_saveDocumentsAction:(id)action
{
  enabledSamples = [(HKDocumentPickerViewController *)self->_documentPickerController enabledSamples];
  allObjects = [enabledSamples allObjects];

  if ([allObjects count])
  {
    v6 = objc_alloc_init(HKHealthStore);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100001FFC;
    v7[3] = &unk_1000082C8;
    v7[4] = self;
    [v6 saveObjects:allObjects withCompletion:v7];
  }

  else
  {
    [(ShareExtensionViewController *)self _dismissShareExtension];
  }
}

- (void)_dismissShareExtension
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000022BC;
  v3[3] = &unk_100008278;
  v3[4] = self;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100002338;
  v2[3] = &unk_1000082F0;
  v2[4] = self;
  [UIView animateWithDuration:v3 animations:v2 completion:0.2];
}

- (void)_importAlertWithTitle:(id)title message:(id)message doneHandler:(id)handler
{
  handlerCopy = handler;
  v9 = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:1];
  v10 = [NSBundle bundleWithIdentifier:@"com.apple.HealthUI"];
  v11 = [v10 localizedStringForKey:@"SHARE_ALERT_OK" value:&stru_100008520 table:@"HealthUI-Localizable"];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000024DC;
  v14[3] = &unk_100008318;
  v15 = handlerCopy;
  v12 = handlerCopy;
  v13 = [UIAlertAction actionWithTitle:v11 style:0 handler:v14];

  [v9 addAction:v13];
  [(ShareExtensionViewController *)self presentViewController:v9 animated:1 completion:0];
}

- (void)_logError:(id)error message:(id)message
{
  errorCopy = error;
  messageCopy = message;
  _HKInitializeLogging();
  v7 = HKLogWellnessDashboard();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
  if (errorCopy && messageCopy)
  {
    if (v8)
    {
      sub_100002CB0(messageCopy, errorCopy, v7);
    }
  }

  else if (errorCopy)
  {
    if (v8)
    {
      sub_100002C18(errorCopy, v7);
    }
  }

  else if (v8)
  {
    sub_100002BA0(messageCopy, v7);
  }
}

- (void)_shareProviderLoading
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002610;
  block[3] = &unk_100008278;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_shareProviderFinished
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000026A0;
  block[3] = &unk_100008278;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_addDocumentForPreview:(id)preview
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100002768;
  v4[3] = &unk_100008340;
  v4[4] = self;
  previewCopy = preview;
  v3 = previewCopy;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)_incomingDocument
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000027F0;
  block[3] = &unk_100008278;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_passwordProtectedZip
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002880;
  block[3] = &unk_100008278;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

@end