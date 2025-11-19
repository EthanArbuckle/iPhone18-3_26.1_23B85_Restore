@interface StocksAssistantStockSnippetController
+ (unint64_t)infoTypeFromRequestType:(id)a3;
- (StocksAssistantStockSnippetController)initWithAceObject:(id)a3;
- (double)rowHeight;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)dealloc;
- (void)loadView;
- (void)openStock:(id)a3;
- (void)openStockWebsite:(id)a3;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
@end

@implementation StocksAssistantStockSnippetController

+ (unint64_t)infoTypeFromRequestType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:SAStockRequestTypeOPENValue])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:SAStockRequestTypeHIGHValue])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:SAStockRequestTypeLOWValue])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:SAStockRequestTypeVOLUMEValue])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:SAStockRequestTypePE_RATIOValue])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:SAStockRequestTypeMARKET_CAPValue])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:SAStockRequestTypeLOW_52WEEKValue])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:SAStockRequestTypeHIGH_52WEEKValue])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:SAStockRequestTypeRANGE_52WEEKValue])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:SAStockRequestTypeAVG_DAILY_VOLUMEValue])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:SAStockRequestTypeDIVIDEND_YIELDValue])
  {
    v4 = 9;
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (StocksAssistantStockSnippetController)initWithAceObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_541C();
  }

  v38.receiver = self;
  v38.super_class = StocksAssistantStockSnippetController;
  v5 = [(StocksAssistantStockSnippetController *)&v38 init];
  if (v5 && ([v4 stocks], v6 = objc_claimAutoreleasedReturnValue(), stocks = v5->_stocks, v5->_stocks = v6, stocks, -[NSArray count](v5->_stocks, "count")))
  {
    v8 = [(NSArray *)v5->_stocks objectAtIndex:0];
    v9 = [v8 displayStyle];
    v5->_isCompare = [v9 isEqualToString:SAStockDisplayStyleCOMPAREValue];

    v10 = [v8 requests];
    v11 = [v10 count];

    if (v11)
    {
      v12 = [v8 requests];
      requestTypes = v5->_requestTypes;
      v5->_requestTypes = v12;
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
        v22 = [v20 requestType];
        v23 = [v21 infoTypeFromRequestType:v22];

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
    v31 = [v30 userInterfaceIdiom];

    if (v31 == &dword_0 + 1)
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
  v4 = [v3 userInterfaceIdiom];

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

  if (v4 != &dword_0 + 1)
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

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_isCompare)
  {
    v8 = [v6 dequeueReusableCellWithIdentifier:@"StocksCompare"];
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
    v14 = [v7 row];
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

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  if (self->_isCompare)
  {
    [a4 _setShouldHaveFullLengthBottomSeparator:1];
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  if (a4)
  {
    sub_5448();
  }

  v7 = v6;
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

- (void)openStockWebsite:(id)a3
{
  v10 = a3;
  if (!self->_singleStockCell || (+[NetPreferences sharedPreferences](NetPreferences, "sharedPreferences"), v4 = objc_claimAutoreleasedReturnValue(), -[StocksAssistantStockCell stock](self->_singleStockCell, "stock"), v5 = objc_claimAutoreleasedReturnValue(), [v4 fullQuoteURLOverrideForStock:v5], v6 = objc_claimAutoreleasedReturnValue(), v5, v4, !v6) && (-[StocksAssistantStockCell stock](self->_singleStockCell, "stock"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "infoURL"), v6 = objc_claimAutoreleasedReturnValue(), v7, !v6))
  {
    v8 = +[NetPreferences sharedPreferences];
    v6 = [v8 backsideLogoURL];
  }

  v9 = +[UIApplication sharedApplication];
  [v9 openURL:v6];
}

- (void)openStock:(id)a3
{
  if (self->_singleStockCell)
  {
    v4 = [(NSArray *)self->_stocks objectAtIndex:0];
  }

  else
  {
    tableView = self->_tableView;
    [a3 locationInView:tableView];
    v6 = [(UITableView *)tableView indexPathForRowAtPoint:?];
    v10 = -[NSArray objectAtIndex:](self->_stocks, "objectAtIndex:", [v6 row]);

    v4 = v10;
  }

  v11 = v4;
  v7 = [v4 symbol];
  v8 = [Stock urlForStockSymbol:v7];

  v9 = +[LSApplicationWorkspace defaultWorkspace];
  [v9 openSensitiveURL:v8 withOptions:0];
}

@end