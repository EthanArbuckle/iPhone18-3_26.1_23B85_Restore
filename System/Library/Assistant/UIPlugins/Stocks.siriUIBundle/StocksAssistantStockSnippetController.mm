@interface StocksAssistantStockSnippetController
+ (unint64_t)infoTypeFromRequestType:(id)type;
- (StocksAssistantStockSnippetController)initWithAceObject:(id)object;
- (double)rowHeight;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)dealloc;
- (void)loadView;
- (void)openStock:(id)stock;
- (void)openStockWebsite:(id)website;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
@end

@implementation StocksAssistantStockSnippetController

+ (unint64_t)infoTypeFromRequestType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:SAStockRequestTypeOPENValue])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:SAStockRequestTypeHIGHValue])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:SAStockRequestTypeLOWValue])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:SAStockRequestTypeVOLUMEValue])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:SAStockRequestTypePE_RATIOValue])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:SAStockRequestTypeMARKET_CAPValue])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:SAStockRequestTypeLOW_52WEEKValue])
  {
    v4 = 7;
  }

  else if ([typeCopy isEqualToString:SAStockRequestTypeHIGH_52WEEKValue])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:SAStockRequestTypeRANGE_52WEEKValue])
  {
    v4 = 11;
  }

  else if ([typeCopy isEqualToString:SAStockRequestTypeAVG_DAILY_VOLUMEValue])
  {
    v4 = 8;
  }

  else if ([typeCopy isEqualToString:SAStockRequestTypeDIVIDEND_YIELDValue])
  {
    v4 = 9;
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (StocksAssistantStockSnippetController)initWithAceObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_541C();
  }

  v38.receiver = self;
  v38.super_class = StocksAssistantStockSnippetController;
  v5 = [(StocksAssistantStockSnippetController *)&v38 init];
  if (v5 && ([objectCopy stocks], v6 = objc_claimAutoreleasedReturnValue(), stocks = v5->_stocks, v5->_stocks = v6, stocks, -[NSArray count](v5->_stocks, "count")))
  {
    v8 = [(NSArray *)v5->_stocks objectAtIndex:0];
    displayStyle = [v8 displayStyle];
    v5->_isCompare = [displayStyle isEqualToString:SAStockDisplayStyleCOMPAREValue];

    requests = [v8 requests];
    v11 = [requests count];

    if (v11)
    {
      requests2 = [v8 requests];
      requestTypes = v5->_requestTypes;
      v5->_requestTypes = requests2;
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v15 = v5->_requestTypes;
    v16 = [(NSArray *)v15 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v16)
    {
      v17 = v16;
      v33 = v8;
      v18 = *v35;
LABEL_9:
      v19 = 0;
      while (1)
      {
        if (*v35 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v34 + 1) + 8 * v19);
        v21 = objc_opt_class();
        requestType = [v20 requestType];
        v23 = [v21 infoTypeFromRequestType:requestType];

        if (v23 != -1)
        {
          break;
        }

        if (v17 == ++v19)
        {
          v17 = [(NSArray *)v15 countByEnumeratingWithState:&v34 objects:v39 count:16];
          if (v17)
          {
            goto LABEL_9;
          }

          v23 = -1;
          break;
        }
      }

      v8 = v33;
    }

    else
    {
      v23 = -1;
    }

    [(StocksAssistantStockSnippetController *)v5 setRequestType:v23];
    if ([(NSArray *)v5->_stocks count]>= 2)
    {
      v24 = [StocksBundles getBundle:1];
      v25 = v24;
      if (v5->_requestType == -1)
      {
        v26 = @"MARKETS";
      }

      else
      {
        v26 = @"STOCKS";
      }

      v27 = [v24 siriUILocalizedStringForKey:v26 table:@"Localizable"];
      [(StocksAssistantStockSnippetController *)v5 setTitle:v27];

      [(StocksAssistantStockSnippetController *)v5 setSubtitle:0];
    }

    v28 = SiriUIPlatterStyle[32];
    v29 = SiriUIPlatterStyle[34];
    v30 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v30 userInterfaceIdiom];

    if (userInterfaceIdiom == &dword_0 + 1)
    {
      [(StocksAssistantStockSnippetController *)v5 setIsFullPadWidth:1];
    }

    [(StocksAssistantStockSnippetController *)v5 setDefaultViewInsets:0.0, v28, 0.0, v29];
    v14 = v5;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)dealloc
{
  +[StockManager clearSharedManager];
  +[NetPreferences clearSharedPreferences];
  +[StocksPreferences clearSharedPreferences];
  v3.receiver = self;
  v3.super_class = StocksAssistantStockSnippetController;
  [(StocksAssistantStockSnippetController *)&v3 dealloc];
}

- (double)rowHeight
{
  v3 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v3 userInterfaceIdiom];

  result = 316.5;
  if (self->_isCompare)
  {
    result = 60.0;
  }

  v6 = 102.0;
  if (self->_isCompare)
  {
    v6 = 50.0;
  }

  if (userInterfaceIdiom != &dword_0 + 1)
  {
    return v6;
  }

  return result;
}

- (void)loadView
{
  v3 = objc_alloc_init(UITableView);
  tableView = self->_tableView;
  self->_tableView = v3;

  [(UITableView *)self->_tableView setDelegate:self];
  [(UITableView *)self->_tableView setDataSource:self];
  v5 = self->_tableView;
  [(StocksAssistantStockSnippetController *)self rowHeight];
  [(UITableView *)v5 setRowHeight:?];
  if (self->_isCompare)
  {
    v6 = +[UIColor siriui_keylineColor];
    [(UITableView *)self->_tableView setSeparatorColor:v6];

    [(UITableView *)self->_tableView _setMarginWidth:0.0];
  }

  else
  {
    [(UITableView *)self->_tableView setSeparatorStyle:0];
  }

  v7 = self->_tableView;
  v8 = +[UIColor clearColor];
  [(UITableView *)v7 setBackgroundColor:v8];

  [(StocksAssistantStockSnippetController *)self setView:self->_tableView];
  v9 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"openStock:"];
  [(UITableView *)self->_tableView addGestureRecognizer:v9];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (self->_isCompare)
  {
    v8 = [viewCopy dequeueReusableCellWithIdentifier:@"StocksCompare"];
    if (v8)
    {
      goto LABEL_8;
    }

    v9 = [[StocksAssistantStockListCell alloc] initWithStyle:0 reuseIdentifier:@"StocksCompare"];
  }

  else
  {
    singleStockCell = self->_singleStockCell;
    if (!singleStockCell)
    {
      v11 = [[StocksAssistantStockDetailCell alloc] initWithStyle:0 reuseIdentifier:0];
      v12 = self->_singleStockCell;
      self->_singleStockCell = v11;

      singleStockCell = self->_singleStockCell;
    }

    v9 = singleStockCell;
  }

  v8 = v9;
LABEL_8:
  stocks = self->_stocks;
  if (self->_isCompare)
  {
    v14 = [pathCopy row];
  }

  else
  {
    v14 = 0;
  }

  v15 = [(NSArray *)stocks objectAtIndex:v14];
  [v8 setStockObject:v15];

  [v8 setRequestType:{-[StocksAssistantStockSnippetController requestType](self, "requestType")}];
  [v8 setSnippetController:self];

  return v8;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  if (self->_isCompare)
  {
    [cell _setShouldHaveFullLengthBottomSeparator:1];
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  if (section)
  {
    sub_5448();
  }

  v7 = viewCopy;
  if (self->_isCompare)
  {
    v8 = [(NSArray *)self->_stocks count];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)openStockWebsite:(id)website
{
  websiteCopy = website;
  if (!self->_singleStockCell || (+[NetPreferences sharedPreferences](NetPreferences, "sharedPreferences"), v4 = objc_claimAutoreleasedReturnValue(), -[StocksAssistantStockCell stock](self->_singleStockCell, "stock"), v5 = objc_claimAutoreleasedReturnValue(), [v4 fullQuoteURLOverrideForStock:v5], backsideLogoURL = objc_claimAutoreleasedReturnValue(), v5, v4, !backsideLogoURL) && (-[StocksAssistantStockCell stock](self->_singleStockCell, "stock"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "infoURL"), backsideLogoURL = objc_claimAutoreleasedReturnValue(), v7, !backsideLogoURL))
  {
    v8 = +[NetPreferences sharedPreferences];
    backsideLogoURL = [v8 backsideLogoURL];
  }

  v9 = +[UIApplication sharedApplication];
  [v9 openURL:backsideLogoURL];
}

- (void)openStock:(id)stock
{
  if (self->_singleStockCell)
  {
    v4 = [(NSArray *)self->_stocks objectAtIndex:0];
  }

  else
  {
    tableView = self->_tableView;
    [stock locationInView:tableView];
    v6 = [(UITableView *)tableView indexPathForRowAtPoint:?];
    v10 = -[NSArray objectAtIndex:](self->_stocks, "objectAtIndex:", [v6 row]);

    v4 = v10;
  }

  v11 = v4;
  symbol = [v4 symbol];
  v8 = [Stock urlForStockSymbol:symbol];

  v9 = +[LSApplicationWorkspace defaultWorkspace];
  [v9 openSensitiveURL:v8 withOptions:0];
}

@end