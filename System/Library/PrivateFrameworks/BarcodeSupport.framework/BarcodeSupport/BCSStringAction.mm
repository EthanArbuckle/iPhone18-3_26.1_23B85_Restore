@interface BCSStringAction
- (BCSStringAction)initWithData:(id)data codePayload:(id)payload;
- (id)actionPickerItems;
- (id)shortDescription;
- (void)performActionWithOptions:(id)options completion:(id)completion;
- (void)performDefaultAction;
@end

@implementation BCSStringAction

- (BCSStringAction)initWithData:(id)data codePayload:(id)payload
{
  dataCopy = data;
  payloadCopy = payload;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_5;
  }

  v11.receiver = self;
  v11.super_class = BCSStringAction;
  v8 = [(BCSAction *)&v11 initWithData:dataCopy codePayload:payloadCopy];
  if (!v8)
  {
    self = 0;
LABEL_5:
    selfCopy = 0;
    goto LABEL_6;
  }

  self = v8;
  selfCopy = self;
LABEL_6:

  return selfCopy;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = _BCSLocalizedString(@"Search “%@”", &_BCSLocalizableStringsBundleOnceToken, &_BCSLocalizableStringsBundle);
  extraPreviewText = [(BCSAction *)self extraPreviewText];
  v6 = [v3 stringWithFormat:v4, extraPreviewText];

  return v6;
}

- (id)actionPickerItems
{
  v12[2] = *MEMORY[0x277D85DE8];
  extraPreviewText = [(BCSAction *)self extraPreviewText];
  v4 = [BCSURLActionPickerItem alloc];
  v5 = _BCSLocalizedString(@"Search Web", &_BCSLocalizableStringsBundleOnceToken, &_BCSLocalizableStringsBundle);
  v6 = [MEMORY[0x277CBEBC0] _bcs_searchURLWithQuery:extraPreviewText];
  v7 = [(BCSURLActionPickerItem *)v4 initWithLabel:v5 action:self url:v6 applicationRecord:0];

  v8 = [[BCSCopyActionPickerItem alloc] initWithAction:self textToCopy:extraPreviewText];
  v12[0] = v7;
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)performDefaultAction
{
  v3 = MEMORY[0x277CBEBC0];
  extraPreviewText = [(BCSAction *)self extraPreviewText];
  v5 = [v3 _bcs_searchURLWithQuery:extraPreviewText];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "BCSStringAction: performing search", v8, 2u);
  }

  sharedApplication = [getUIApplicationClass() sharedApplication];
  [sharedApplication openURL:v5 options:MEMORY[0x277CBEC10] completionHandler:0];

  v7 = +[BCSAWDLogger sharedLogger];
  [v7 logBarcodeActivatedEventForAction:self];
}

- (void)performActionWithOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  actionPickerItems = [(BCSStringAction *)self actionPickerItems];
  firstObject = [actionPickerItems firstObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [firstObject performActionWithFBOptions:optionsCopy];
  }

  completionCopy[2](completionCopy, 0);
}

@end