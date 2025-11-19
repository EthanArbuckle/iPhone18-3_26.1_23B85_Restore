@interface RAPLayoutDownloader
- (RAPLayoutDownloader)initWithLayoutOptions:(id)a3;
- (id)_extractLayoutFormFromResponse:(id)a3;
- (id)_generateRequestParams;
- (int)_geoFormTypeForOptions;
- (void)cancel;
- (void)fetchLayoutConfig:(id)a3;
@end

@implementation RAPLayoutDownloader

- (int)_geoFormTypeForOptions
{
  v2 = [(RAPLayoutOptions *)self->_options layoutType];
  if (v2 > 5)
  {
    return 0;
  }

  else
  {
    return dword_101215538[v2];
  }
}

- (id)_extractLayoutFormFromResponse:(id)a3
{
  v4 = a3;
  v5 = [(RAPLayoutDownloader *)self _geoFormTypeForOptions];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [v4 feedbackResult];
  v7 = [v6 layoutConfigResult];
  v8 = [v7 forms];

  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if ([v13 formType] == v5)
        {
          v14 = v13;
          goto LABEL_11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (void)fetchLayoutConfig:(id)a3
{
  v4 = a3;
  BOOL = GEOConfigGetBOOL();
  v6 = BOOL;
  if (BOOL && ([RAPLayoutCache configForLayoutType:[(RAPLayoutOptions *)self->_options layoutType]], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
    v4[2](v4, v7, 0);
  }

  else
  {
    if (self->_ticket)
    {
      [(RAPLayoutDownloader *)self cancel];
    }

    v9 = [(RAPLayoutDownloader *)self _generateRequestParams];
    v10 = [(RAPLayoutOptions *)self->_options reportedMapItem];
    v11 = [v10 _geoMapItem];
    v12 = [MSPFeedbackSubmissionTicket ticketForFeedbackRequestParameters:v9 mapItem:v11 traits:self->_traits];
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
    v16 = v4;
    [(GEOMapServiceFeedbackReportTicket *)v14 submitWithHandler:v15 networkActivity:0];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

- (id)_generateRequestParams
{
  v3 = objc_alloc_init(GEORPFeedbackRequestParameters);
  v4 = [(RAPLayoutOptions *)self->_options initialLayoutParameters];
  [v3 setLayoutConfigParameters:v4];

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

- (RAPLayoutDownloader)initWithLayoutOptions:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = RAPLayoutDownloader;
  v6 = [(RAPLayoutDownloader *)&v11 init];
  if (v6)
  {
    v7 = +[MKMapService sharedService];
    v8 = [v7 defaultTraits];
    traits = v6->_traits;
    v6->_traits = v8;

    objc_storeStrong(&v6->_options, a3);
  }

  return v6;
}

@end