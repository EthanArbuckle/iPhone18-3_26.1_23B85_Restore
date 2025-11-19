@interface BCSStringAction
- (BCSStringAction)initWithData:(id)a3 codePayload:(id)a4;
- (id)actionPickerItems;
- (id)shortDescription;
- (void)performActionWithOptions:(id)a3 completion:(id)a4;
- (void)performDefaultAction;
@end

@implementation BCSStringAction

- (BCSStringAction)initWithData:(id)a3 codePayload:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_5;
  }

  v11.receiver = self;
  v11.super_class = BCSStringAction;
  v8 = [(BCSAction *)&v11 initWithData:v6 codePayload:v7];
  if (!v8)
  {
    self = 0;
LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  self = v8;
  v9 = self;
LABEL_6:

  return v9;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = _BCSLocalizedString(@"Search “%@”", &_BCSLocalizableStringsBundleOnceToken, &_BCSLocalizableStringsBundle);
  v5 = [(BCSAction *)self extraPreviewText];
  v6 = [v3 stringWithFormat:v4, v5];

  return v6;
}

- (id)actionPickerItems
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = [(BCSAction *)self extraPreviewText];
  v4 = [BCSURLActionPickerItem alloc];
  v5 = _BCSLocalizedString(@"Search Web", &_BCSLocalizableStringsBundleOnceToken, &_BCSLocalizableStringsBundle);
  v6 = [MEMORY[0x277CBEBC0] _bcs_searchURLWithQuery:v3];
  v7 = [(BCSURLActionPickerItem *)v4 initWithLabel:v5 action:self url:v6 applicationRecord:0];

  v8 = [[BCSCopyActionPickerItem alloc] initWithAction:self textToCopy:v3];
  v12[0] = v7;
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)performDefaultAction
{
  v3 = MEMORY[0x277CBEBC0];
  v4 = [(BCSAction *)self extraPreviewText];
  v5 = [v3 _bcs_searchURLWithQuery:v4];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "BCSStringAction: performing search", v8, 2u);
  }

  v6 = [getUIApplicationClass() sharedApplication];
  [v6 openURL:v5 options:MEMORY[0x277CBEC10] completionHandler:0];

  v7 = +[BCSAWDLogger sharedLogger];
  [v7 logBarcodeActivatedEventForAction:self];
}

- (void)performActionWithOptions:(id)a3 completion:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(BCSStringAction *)self actionPickerItems];
  v8 = [v7 firstObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v8 performActionWithFBOptions:v9];
  }

  v6[2](v6, 0);
}

@end