@interface WFContentItemViewController
- (WFContentItemViewController)initWithContentItem:(id)item;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation WFContentItemViewController

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  contentItem = self->_contentItem;
  pathCopy = path;
  supportedTypes = [(WFContentItem *)contentItem supportedTypes];
  v8 = [pathCopy row];

  v9 = [supportedTypes objectAtIndex:v8];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
    v11 = self->_contentItem;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __65__WFContentItemViewController_tableView_didSelectRowAtIndexPath___block_invoke;
    v16[3] = &unk_278C37430;
    v12 = &v17;
    v16[4] = self;
    v17 = v10;
    [(WFContentItem *)v11 getFileRepresentation:v16 forType:?];
LABEL_5:

    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v9;
    v12 = &v15;
    -[WFContentItem getObjectRepresentation:forClass:](self->_contentItem, "getObjectRepresentation:forClass:", &v14, [v13 objectClass]);
    goto LABEL_5;
  }

LABEL_6:
}

void __65__WFContentItemViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__WFContentItemViewController_tableView_didSelectRowAtIndexPath___block_invoke_2;
  v11[3] = &unk_278C37690;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v12 = v5;
  v13 = v7;
  v14 = v6;
  v15 = v8;
  v9 = v6;
  v10 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v11);
}

void __65__WFContentItemViewController_tableView_didSelectRowAtIndexPath___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__WFContentItemViewController_tableView_didSelectRowAtIndexPath___block_invoke_4;
  v12[3] = &unk_278C37690;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v15 = v7;
  v16 = v9;
  v10 = v7;
  v11 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v12);
}

void __65__WFContentItemViewController_tableView_didSelectRowAtIndexPath___block_invoke_4(uint64_t a1)
{
  v21[1] = *MEMORY[0x277D85DE8];
  if (!*(a1 + 32))
  {
    v2 = *(a1 + 40);
    v20 = WFUserInterfaceFromViewController();
    v3 = [MEMORY[0x277CFC218] alertWithError:*(a1 + 48)];
    [v20 presentAlert:v3];
LABEL_7:

    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = [MEMORY[0x277CFC248] sharedContext];
    [v20 openURL:*(a1 + 32)];
    goto LABEL_8;
  }

  v4 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = objc_alloc_init(MEMORY[0x277D75D28]);
    v5 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:*(a1 + 32)];
    [v20 setView:v5];

    v6 = [*(a1 + 56) typeDescription];
    [v20 setTitle:v6];

    v3 = [*(a1 + 40) navigationController];
    [v3 pushViewController:v20 animated:1];
    goto LABEL_7;
  }

  v8 = *(a1 + 32);
  objc_opt_class();
  LOBYTE(v8) = objc_opt_isKindOfClass();
  v20 = objc_alloc_init(MEMORY[0x277D75D28]);
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CD4EC8]);
    v10 = [objc_alloc(MEMORY[0x277CD4F00]) initWithPlacemark:*(a1 + 32)];
    [v9 addAnnotation:v10];
    v21[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    [v9 showAnnotations:v11 animated:0];

    [v20 setView:v9];
    v12 = [*(a1 + 56) typeDescription];
    [v20 setTitle:v12];

    v13 = [*(a1 + 40) navigationController];
    [v13 pushViewController:v20 animated:1];

    v14 = *MEMORY[0x277D85DE8];
    return;
  }

  v15 = objc_alloc_init(MEMORY[0x277D75C40]);
  v16 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v15 setAttributedText:*(a1 + 32)];
  }

  else
  {
    v17 = [*(a1 + 32) description];
    [v15 setText:v17];
  }

  [v20 setView:v15];
  v18 = [*(a1 + 56) typeDescription];
  [v20 setTitle:v18];

  v19 = [*(a1 + 40) navigationController];
  [v19 pushViewController:v20 animated:1];

LABEL_8:
  v7 = *MEMORY[0x277D85DE8];
}

void __65__WFContentItemViewController_tableView_didSelectRowAtIndexPath___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 56);
    v3 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1ED8]];
    LODWORD(v2) = [v2 isEqual:v3];

    if (v2)
    {
      v4 = objc_alloc_init(MEMORY[0x277D75D28]);
      v21 = 0;
      v22 = &v21;
      v23 = 0x2050000000;
      v5 = getWKWebViewClass_softClass_5067;
      v24 = getWKWebViewClass_softClass_5067;
      if (!getWKWebViewClass_softClass_5067)
      {
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __getWKWebViewClass_block_invoke_5068;
        v20[3] = &unk_278C37610;
        v20[4] = &v21;
        __getWKWebViewClass_block_invoke_5068(v20);
        v5 = v22[3];
      }

      v6 = v5;
      _Block_object_dispose(&v21, 8);
      v7 = objc_alloc_init(v5);
      [v4 setView:v7];
      v8 = [*(a1 + 56) typeDescription];
      [v4 setTitle:v8];

      v9 = MEMORY[0x277CCAD20];
      v10 = [*(a1 + 32) fileURL];
      v11 = [v9 requestWithURL:v10];
      v12 = [v7 loadRequest:v11];

      v13 = [*(a1 + 40) navigationController];
      [v13 pushViewController:v4 animated:1];

      return;
    }

    v16 = MEMORY[0x277D546E8];
    v17 = [*(a1 + 32) fileURL];
    v19 = [v16 interactionControllerWithURL:v17];

    v18 = [*(a1 + 56) typeDescription];
    [v19 setName:v18];

    [v19 setDelegate:*(a1 + 40)];
    [v19 presentPreviewAnimated:1];
  }

  else
  {
    v14 = *(a1 + 40);
    v19 = WFUserInterfaceFromViewController();
    v15 = [MEMORY[0x277CFC218] alertWithError:*(a1 + 48)];
    [v19 presentAlert:v15];
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"WFOutputTypeCellIdentifier" forIndexPath:pathCopy];
  supportedTypes = [(WFContentItem *)self->_contentItem supportedTypes];
  v9 = [pathCopy row];

  v10 = [supportedTypes objectAtIndex:v9];

  [v7 setAccessoryType:1];
  typeDescription = [v10 typeDescription];
  textLabel = [v7 textLabel];
  [textLabel setText:typeDescription];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    documentIcon = [v10 documentIcon];
    uIImage = [documentIcon UIImage];
    imageView = [v7 imageView];
    [imageView setImage:uIImage];
  }

  return v7;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(WFContentItem *)self->_contentItem supportedTypes:view];
  v5 = [v4 count];

  return v5;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = WFContentItemViewController;
  [(WFContentItemViewController *)&v4 viewDidLoad];
  tableView = [(WFContentItemViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"WFOutputTypeCellIdentifier"];
}

- (WFContentItemViewController)initWithContentItem:(id)item
{
  itemCopy = item;
  if (!itemCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFContentItemViewController.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"contentItem"}];
  }

  v12.receiver = self;
  v12.super_class = WFContentItemViewController;
  v7 = [(WFContentItemViewController *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_contentItem, item);
    v9 = WFLocalizedString(@"Supported Types");
    [(WFContentItemViewController *)v8 setTitle:v9];
  }

  return v8;
}

@end