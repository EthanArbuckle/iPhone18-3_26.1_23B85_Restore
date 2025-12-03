@interface MKTransitIncidentSymbolImageCell
- (void)_configureWithMessage:(id)message referenceDate:(id)date lastUpdated:(id)updated incidentIsBlocking:(BOOL)blocking shouldShowImage:(BOOL)image inSiri:(BOOL)siri;
- (void)_updateAppearance;
- (void)configureWithIncident:(id)incident referenceDate:(id)date shouldShowImage:(BOOL)image inSiri:(BOOL)siri;
- (void)configureWithIncidentMessage:(id)message referenceDate:(id)date shouldShowImage:(BOOL)image inSiri:(BOOL)siri;
- (void)configureWithMessage:(id)message incident:(id)incident referenceDate:(id)date shouldShowImage:(BOOL)image inSiri:(BOOL)siri;
- (void)setViewModel:(id)model;
@end

@implementation MKTransitIncidentSymbolImageCell

- (void)_updateAppearance
{
  v24[2] = *MEMORY[0x1E69E9840];
  cellConfiguration = [MEMORY[0x1E69DCC28] cellConfiguration];
  message = [(MKTransitIncidentViewModel *)self->_viewModel message];
  [cellConfiguration setText:message];

  v5 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  LODWORD(v6) = 1058642330;
  [v5 setHyphenationFactor:v6];
  v7 = objc_alloc(MEMORY[0x1E696AAB0]);
  message2 = [(MKTransitIncidentViewModel *)self->_viewModel message];
  v9 = *MEMORY[0x1E69DB688];
  v24[0] = v5;
  v10 = *MEMORY[0x1E69DB648];
  v23[0] = v9;
  v23[1] = v10;
  v11 = [MEMORY[0x1E69DB878] _mapkit_preferredFontForTextStyleInTableViewCell:*MEMORY[0x1E69DDD80]];
  v24[1] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
  v13 = [v7 initWithString:message2 attributes:v12];
  [cellConfiguration setAttributedText:v13];

  if ([(MKTransitIncidentViewModel *)self->_viewModel showImage])
  {
    v14 = MEMORY[0x1E69DCAB8];
    symbolName = [(MKTransitIncidentViewModel *)self->_viewModel symbolName];
    v16 = [v14 systemImageNamed:symbolName];
    v17 = [v16 imageWithRenderingMode:1];
    symbolColor = [(MKTransitIncidentViewModel *)self->_viewModel symbolColor];
    v19 = [v17 imageWithTintColor:symbolColor];
    [cellConfiguration setImage:v19];
  }

  [(MKTransitIncidentSymbolImageCell *)self setAccessoryType:1];
  [(MKTransitIncidentSymbolImageCell *)self setContentConfiguration:cellConfiguration];
  if (!self->_backgroundView)
  {
    v20 = objc_alloc_init(MKTransitIncidentItemCellBackgroundView);
    backgroundView = self->_backgroundView;
    self->_backgroundView = v20;

    [(MKTransitIncidentItemCellBackgroundView *)self->_backgroundView setPosition:2];
    [(MKTransitIncidentSymbolImageCell *)self setBackgroundView:self->_backgroundView];
  }

  backgroundColor = [(MKTransitIncidentViewModel *)self->_viewModel backgroundColor];
  [(MKTransitIncidentItemCellBackgroundView *)self->_backgroundView setFillColor:backgroundColor];
}

- (void)_configureWithMessage:(id)message referenceDate:(id)date lastUpdated:(id)updated incidentIsBlocking:(BOOL)blocking shouldShowImage:(BOOL)image inSiri:(BOOL)siri
{
  imageCopy = image;
  blockingCopy = blocking;
  messageCopy = message;
  v12 = objc_alloc_init(MKTransitIncidentViewModel);
  v14 = v12;
  if (messageCopy)
  {
    v13 = messageCopy;
  }

  else
  {
    v13 = &stru_1F15B23C0;
  }

  [(MKTransitIncidentViewModel *)v12 setMessage:v13];

  [(MKTransitIncidentViewModel *)v14 setBlocking:blockingCopy];
  [(MKTransitIncidentViewModel *)v14 setShowImage:imageCopy];
  [(MKTransitIncidentSymbolImageCell *)self setViewModel:v14];
}

- (void)configureWithIncidentMessage:(id)message referenceDate:(id)date shouldShowImage:(BOOL)image inSiri:(BOOL)siri
{
  siriCopy = siri;
  imageCopy = image;
  messageCopy = message;
  dateCopy = date;
  transitIncidents = [messageCopy transitIncidents];
  v13 = [transitIncidents count];

  if (v13 == 1)
  {
    transitIncidents2 = [messageCopy transitIncidents];
    firstObject = [transitIncidents2 firstObject];
    [(MKTransitIncidentSymbolImageCell *)self configureWithIncident:firstObject referenceDate:dateCopy shouldShowImage:imageCopy inSiri:siriCopy];
  }

  else
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    transitIncidents3 = [messageCopy transitIncidents];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __102__MKTransitIncidentSymbolImageCell_configureWithIncidentMessage_referenceDate_shouldShowImage_inSiri___block_invoke;
    v18[3] = &unk_1E76C93B8;
    v18[4] = &v19;
    [transitIncidents3 enumerateObjectsUsingBlock:v18];

    routingMessage = [messageCopy routingMessage];
    [(MKTransitIncidentSymbolImageCell *)self _configureWithMessage:routingMessage referenceDate:0 lastUpdated:0 incidentIsBlocking:*(v20 + 24) shouldShowImage:imageCopy inSiri:siriCopy];

    _Block_object_dispose(&v19, 8);
  }
}

uint64_t __102__MKTransitIncidentSymbolImageCell_configureWithIncidentMessage_referenceDate_shouldShowImage_inSiri___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isBlockingIncident];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (void)configureWithMessage:(id)message incident:(id)incident referenceDate:(id)date shouldShowImage:(BOOL)image inSiri:(BOOL)siri
{
  siriCopy = siri;
  imageCopy = image;
  dateCopy = date;
  incidentCopy = incident;
  messageCopy = message;
  lastUpdated = [incidentCopy lastUpdated];
  isBlockingIncident = [incidentCopy isBlockingIncident];

  [(MKTransitIncidentSymbolImageCell *)self _configureWithMessage:messageCopy referenceDate:dateCopy lastUpdated:lastUpdated incidentIsBlocking:isBlockingIncident shouldShowImage:imageCopy inSiri:siriCopy];
}

- (void)configureWithIncident:(id)incident referenceDate:(id)date shouldShowImage:(BOOL)image inSiri:(BOOL)siri
{
  siriCopy = siri;
  imageCopy = image;
  dateCopy = date;
  incidentCopy = incident;
  v14 = [MKTransitIncidentStringProvider cellTitleForIncident:incidentCopy];
  lastUpdated = [incidentCopy lastUpdated];
  isBlockingIncident = [incidentCopy isBlockingIncident];

  [(MKTransitIncidentSymbolImageCell *)self _configureWithMessage:v14 referenceDate:dateCopy lastUpdated:lastUpdated incidentIsBlocking:isBlockingIncident shouldShowImage:imageCopy inSiri:siriCopy];
}

- (void)setViewModel:(id)model
{
  modelCopy = model;
  if (![(MKTransitIncidentViewModel *)self->_viewModel isEqual:?])
  {
    objc_storeStrong(&self->_viewModel, model);
    [(MKTransitIncidentSymbolImageCell *)self _updateAppearance];
  }
}

@end