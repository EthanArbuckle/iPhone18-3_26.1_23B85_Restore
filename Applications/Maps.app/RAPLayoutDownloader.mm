@interface RAPLayoutDownloader
- (RAPLayoutDownloader)initWithLayoutOptions:(id)options;
- (id)_extractLayoutFormFromResponse:(id)response;
- (id)_generateRequestParams;
- (int)_geoFormTypeForOptions;
- (void)cancel;
- (void)fetchLayoutConfig:(id)config;
@end

@implementation RAPLayoutDownloader

- (int)_geoFormTypeForOptions
{
  layoutType = [(RAPLayoutOptions *)self->_options layoutType];
  if (layoutType > 5)
  {
    return 0;
  }

  else
  {
    return dword_101215538[layoutType];
  }
}

- (id)_extractLayoutFormFromResponse:(id)response
{
  responseCopy = response;
  _geoFormTypeForOptions = [(RAPLayoutDownloader *)self _geoFormTypeForOptions];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  feedbackResult = [responseCopy feedbackResult];
  layoutConfigResult = [feedbackResult layoutConfigResult];
  forms = [layoutConfigResult forms];

  v9 = [forms countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(forms);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if ([v13 formType] == _geoFormTypeForOptions)
        {
          v14 = v13;
          goto LABEL_11;
        }
      }

      v10 = [forms countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (void)fetchLayoutConfig:(id)config
{
  configCopy = config;
  BOOL = GEOConfigGetBOOL();
  v6 = BOOL;
  if (BOOL && ([RAPLayoutCache configForLayoutType:[(RAPLayoutOptions *)self->_options layoutType]], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
    configCopy[2](configCopy, v7, 0);
  }

  else
  {
    if (self->_ticket)
    {
      [(RAPLayoutDownloader *)self cancel];
    }

    _generateRequestParams = [(RAPLayoutDownloader *)self _generateRequestParams];
    reportedMapItem = [(RAPLayoutOptions *)self->_options reportedMapItem];
    _geoMapItem = [reportedMapItem _geoMapItem];
    v12 = [MSPFeedbackSubmissionTicket ticketForFeedbackRequestParameters:_generateRequestParams mapItem:_geoMapItem traits:self->_traits];
    ticket = self->_ticket;
    self->_ticket = v12;

    objc_initWeak(&location, self);
    v14 = self->_ticket;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1009041D0;
    v15[3] = &unk_10162E4B8;
    objc_copyWeak(&v17, &location);
    v18 = v6;
    v16 = configCopy;
    [(GEOMapServiceFeedbackReportTicket *)v14 submitWithHandler:v15 networkActivity:0];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

- (id)_generateRequestParams
{
  v3 = objc_alloc_init(GEORPFeedbackRequestParameters);
  initialLayoutParameters = [(RAPLayoutOptions *)self->_options initialLayoutParameters];
  [v3 setLayoutConfigParameters:initialLayoutParameters];

  return v3;
}

- (void)cancel
{
  ticket = self->_ticket;
  if (ticket)
  {
    [(GEOMapServiceFeedbackReportTicket *)ticket cancel];
    v4 = self->_ticket;
    self->_ticket = 0;
  }
}

- (RAPLayoutDownloader)initWithLayoutOptions:(id)options
{
  optionsCopy = options;
  v11.receiver = self;
  v11.super_class = RAPLayoutDownloader;
  v6 = [(RAPLayoutDownloader *)&v11 init];
  if (v6)
  {
    v7 = +[MKMapService sharedService];
    defaultTraits = [v7 defaultTraits];
    traits = v6->_traits;
    v6->_traits = defaultTraits;

    objc_storeStrong(&v6->_options, options);
  }

  return v6;
}

@end