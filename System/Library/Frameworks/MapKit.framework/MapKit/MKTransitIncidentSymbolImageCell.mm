@interface MKTransitIncidentSymbolImageCell
- (void)_configureWithMessage:(id)a3 referenceDate:(id)a4 lastUpdated:(id)a5 incidentIsBlocking:(BOOL)a6 shouldShowImage:(BOOL)a7 inSiri:(BOOL)a8;
- (void)_updateAppearance;
- (void)configureWithIncident:(id)a3 referenceDate:(id)a4 shouldShowImage:(BOOL)a5 inSiri:(BOOL)a6;
- (void)configureWithIncidentMessage:(id)a3 referenceDate:(id)a4 shouldShowImage:(BOOL)a5 inSiri:(BOOL)a6;
- (void)configureWithMessage:(id)a3 incident:(id)a4 referenceDate:(id)a5 shouldShowImage:(BOOL)a6 inSiri:(BOOL)a7;
- (void)setViewModel:(id)a3;
@end

@implementation MKTransitIncidentSymbolImageCell

- (void)_updateAppearance
{
  v24[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69DCC28] cellConfiguration];
  v4 = [(MKTransitIncidentViewModel *)self->_viewModel message];
  [v3 setText:v4];

  v5 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  LODWORD(v6) = 1058642330;
  [v5 setHyphenationFactor:v6];
  v7 = objc_alloc(MEMORY[0x1E696AAB0]);
  v8 = [(MKTransitIncidentViewModel *)self->_viewModel message];
  v9 = *MEMORY[0x1E69DB688];
  v24[0] = v5;
  v10 = *MEMORY[0x1E69DB648];
  v23[0] = v9;
  v23[1] = v10;
  v11 = [MEMORY[0x1E69DB878] _mapkit_preferredFontForTextStyleInTableViewCell:*MEMORY[0x1E69DDD80]];
  v24[1] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
  v13 = [v7 initWithString:v8 attributes:v12];
  [v3 setAttributedText:v13];

  if ([(MKTransitIncidentViewModel *)self->_viewModel showImage])
  {
    v14 = MEMORY[0x1E69DCAB8];
    v15 = [(MKTransitIncidentViewModel *)self->_viewModel symbolName];
    v16 = [v14 systemImageNamed:v15];
    v17 = [v16 imageWithRenderingMode:1];
    v18 = [(MKTransitIncidentViewModel *)self->_viewModel symbolColor];
    v19 = [v17 imageWithTintColor:v18];
    [v3 setImage:v19];
  }

  [(MKTransitIncidentSymbolImageCell *)self setAccessoryType:1];
  [(MKTransitIncidentSymbolImageCell *)self setContentConfiguration:v3];
  if (!self->_backgroundView)
  {
    v20 = objc_alloc_init(MKTransitIncidentItemCellBackgroundView);
    backgroundView = self->_backgroundView;
    self->_backgroundView = v20;

    [(MKTransitIncidentItemCellBackgroundView *)self->_backgroundView setPosition:2];
    [(MKTransitIncidentSymbolImageCell *)self setBackgroundView:self->_backgroundView];
  }

  v22 = [(MKTransitIncidentViewModel *)self->_viewModel backgroundColor];
  [(MKTransitIncidentItemCellBackgroundView *)self->_backgroundView setFillColor:v22];
}

- (void)_configureWithMessage:(id)a3 referenceDate:(id)a4 lastUpdated:(id)a5 incidentIsBlocking:(BOOL)a6 shouldShowImage:(BOOL)a7 inSiri:(BOOL)a8
{
  v8 = a7;
  v9 = a6;
  v11 = a3;
  v12 = objc_alloc_init(MKTransitIncidentViewModel);
  v14 = v12;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = &stru_1F15B23C0;
  }

  [(MKTransitIncidentViewModel *)v12 setMessage:v13];

  [(MKTransitIncidentViewModel *)v14 setBlocking:v9];
  [(MKTransitIncidentViewModel *)v14 setShowImage:v8];
  [(MKTransitIncidentSymbolImageCell *)self setViewModel:v14];
}

- (void)configureWithIncidentMessage:(id)a3 referenceDate:(id)a4 shouldShowImage:(BOOL)a5 inSiri:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = [v10 transitIncidents];
  v13 = [v12 count];

  if (v13 == 1)
  {
    v14 = [v10 transitIncidents];
    v15 = [v14 firstObject];
    [(MKTransitIncidentSymbolImageCell *)self configureWithIncident:v15 referenceDate:v11 shouldShowImage:v7 inSiri:v6];
  }

  else
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    v16 = [v10 transitIncidents];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __102__MKTransitIncidentSymbolImageCell_configureWithIncidentMessage_referenceDate_shouldShowImage_inSiri___block_invoke;
    v18[3] = &unk_1E76C93B8;
    v18[4] = &v19;
    [v16 enumerateObjectsUsingBlock:v18];

    v17 = [v10 routingMessage];
    [(MKTransitIncidentSymbolImageCell *)self _configureWithMessage:v17 referenceDate:0 lastUpdated:0 incidentIsBlocking:*(v20 + 24) shouldShowImage:v7 inSiri:v6];

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

- (void)configureWithMessage:(id)a3 incident:(id)a4 referenceDate:(id)a5 shouldShowImage:(BOOL)a6 inSiri:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v16 = [v13 lastUpdated];
  v15 = [v13 isBlockingIncident];

  [(MKTransitIncidentSymbolImageCell *)self _configureWithMessage:v14 referenceDate:v12 lastUpdated:v16 incidentIsBlocking:v15 shouldShowImage:v8 inSiri:v7];
}

- (void)configureWithIncident:(id)a3 referenceDate:(id)a4 shouldShowImage:(BOOL)a5 inSiri:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a4;
  v11 = a3;
  v14 = [MKTransitIncidentStringProvider cellTitleForIncident:v11];
  v12 = [v11 lastUpdated];
  v13 = [v11 isBlockingIncident];

  [(MKTransitIncidentSymbolImageCell *)self _configureWithMessage:v14 referenceDate:v10 lastUpdated:v12 incidentIsBlocking:v13 shouldShowImage:v7 inSiri:v6];
}

- (void)setViewModel:(id)a3
{
  v5 = a3;
  if (![(MKTransitIncidentViewModel *)self->_viewModel isEqual:?])
  {
    objc_storeStrong(&self->_viewModel, a3);
    [(MKTransitIncidentSymbolImageCell *)self _updateAppearance];
  }
}

@end