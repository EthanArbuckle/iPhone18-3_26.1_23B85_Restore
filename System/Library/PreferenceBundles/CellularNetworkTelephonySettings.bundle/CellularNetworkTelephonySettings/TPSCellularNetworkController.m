@interface TPSCellularNetworkController
- (BOOL)isNetworkSelectionEnabled;
- (TPSCellularNetworkController)init;
- (TPSCellularNetworkController)initWithSubscriptionContext:(id)a3;
- (id)networkItemAtIndex:(int64_t)a3;
- (id)networkItemForNetwork:(id)a3;
- (void)networkSelectionInfoChangedForRegistrationController:(id)a3;
- (void)networksChangedForRegistrationController:(id)a3;
- (void)selectNetworkItemAtIndex:(unint64_t)a3;
- (void)setNetworkItems:(id)a3;
- (void)setNetworkSelectionMode:(int64_t)a3;
- (void)setNetworks:(id)a3;
- (void)setSelectedNetworkItem:(id)a3;
- (void)updateNetworkSelectionModeForNetworkSelectionInfo:(id)a3;
- (void)updateSelectedNetworkForNetworkSelectionInfo:(id)a3;
@end

@implementation TPSCellularNetworkController

- (TPSCellularNetworkController)init
{
  [(TPSCellularNetworkController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (TPSCellularNetworkController)initWithSubscriptionContext:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = TPSCellularNetworkController;
  v6 = [(TPSCellularNetworkController *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_subscriptionContext, a3);
    v8 = [[TPSRegistrationTelephonyController alloc] initWithSubscriptionContext:v5];
    registrationController = v7->_registrationController;
    v7->_registrationController = v8;

    [(TPSRegistrationTelephonyController *)v7->_registrationController addDelegate:v7 queue:&_dispatch_main_q];
    v10 = [(TPSRegistrationTelephonyController *)v7->_registrationController networkSelectionInfo];
    networkSelectionInfo = v7->_networkSelectionInfo;
    v7->_networkSelectionInfo = v10;

    [(TPSCellularNetworkController *)v7 updateSelectedNetworkForNetworkSelectionInfo:v7->_networkSelectionInfo];
    [(TPSCellularNetworkController *)v7 updateNetworkSelectionModeForNetworkSelectionInfo:v7->_networkSelectionInfo];
  }

  return v7;
}

- (void)setNetworkItems:(id)a3
{
  v5 = a3;
  p_networkItems = &self->_networkItems;
  if (self->_networkItems != v5)
  {
    v8 = v5;
    objc_storeStrong(p_networkItems, a3);
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 postNotificationName:@"TPSCellularNetworkControllerNetworkItemsDidChangeNotification" object:self];

    v5 = v8;
  }

  _objc_release_x1(p_networkItems, v5);
}

- (BOOL)isNetworkSelectionEnabled
{
  v2 = [(TPSCellularNetworkController *)self networkSelectionInfo];
  v3 = [v2 selectionMode] != 0;

  return v3;
}

- (void)setNetworkSelectionMode:(int64_t)a3
{
  if (self->_networkSelectionMode == a3)
  {
    return;
  }

  self->_networkSelectionMode = a3;
  if (a3 == 2)
  {
    v6 = [(TPSCellularNetworkController *)self registrationController];
    [v6 fetchNetworkList];
    goto LABEL_9;
  }

  if (a3 != 1)
  {
    if (!a3)
    {
      [(TPSCellularNetworkController *)self setNetworks:?];
    }

    goto LABEL_10;
  }

  [(TPSCellularNetworkController *)self setNetworks:0];
  v5 = [(TPSCellularNetworkController *)self selectedNetworkItem];

  if (v5)
  {
    v6 = [(TPSCellularNetworkController *)self registrationController];
    [v6 automaticallySelectNetwork];
LABEL_9:
  }

LABEL_10:
  v7 = +[NSNotificationCenter defaultCenter];
  [v7 postNotificationName:@"TPSCellularNetworkControllerNetworkSelectionModeDidChangeNotification" object:self];
}

- (void)setSelectedNetworkItem:(id)a3
{
  v5 = a3;
  p_selectedNetworkItem = &self->_selectedNetworkItem;
  if (self->_selectedNetworkItem != v5)
  {
    v8 = v5;
    objc_storeStrong(p_selectedNetworkItem, a3);
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 postNotificationName:@"TPSCellularNetworkControllerSelectedNetworkItemDidChangeNotification" object:self];

    v5 = v8;
  }

  _objc_release_x1(p_selectedNetworkItem, v5);
}

- (void)setNetworks:(id)a3
{
  v5 = a3;
  if (self->_networks != v5)
  {
    objc_storeStrong(&self->_networks, a3);
    if (v5)
    {
      v6 = [NSMutableArray arrayWithCapacity:[(NSArray *)v5 count]];
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v7 = v5;
      v8 = [(NSArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v14;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v14 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = [(TPSCellularNetworkController *)self networkItemForNetwork:*(*(&v13 + 1) + 8 * i), v13];
            [v6 addObject:v12];
          }

          v9 = [(NSArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v9);
      }
    }

    else
    {
      v6 = 0;
    }

    [(TPSCellularNetworkController *)self setNetworkItems:v6, v13];
  }
}

- (void)updateNetworkSelectionModeForNetworkSelectionInfo:(id)a3
{
  if ([a3 selectionMode] == &dword_0 + 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  [(TPSCellularNetworkController *)self setNetworkSelectionMode:v4];
}

- (void)updateSelectedNetworkForNetworkSelectionInfo:(id)a3
{
  v4 = [a3 selection];
  if (v4)
  {
    v5 = [(TPSCellularNetworkController *)self networkItemForNetwork:v4];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  [(TPSCellularNetworkController *)self setSelectedNetworkItem:v5];
}

- (id)networkItemAtIndex:(int64_t)a3
{
  v4 = [(TPSCellularNetworkController *)self networkItems];
  v5 = v4;
  if (a3 < 0 || [v4 count] <= a3)
  {
    v7 = TPSCellularNetworkLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_2FB0(a3, v7);
    }

    v6 = 0;
  }

  else
  {
    v6 = [v5 objectAtIndexedSubscript:a3];
  }

  return v6;
}

- (void)selectNetworkItemAtIndex:(unint64_t)a3
{
  v5 = [(TPSCellularNetworkController *)self networks];
  v6 = [v5 objectAtIndexedSubscript:a3];

  if (v6)
  {
    v7 = TPSCellularNetworkLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Requesting manual selection of network %@.", &v9, 0xCu);
    }

    v8 = [(TPSCellularNetworkController *)self registrationController];
    [v8 selectNetwork:v6];
  }
}

- (id)networkItemForNetwork:(id)a3
{
  v3 = a3;
  v4 = [TPSCellularNetworkItem alloc];
  v5 = [v3 plmn];
  v6 = [v3 name];
  v7 = [v3 tps_localizedName];

  v8 = [(TPSCellularNetworkItem *)v4 initWithIdentifier:v5 name:v6 localizedName:v7];

  return v8;
}

- (void)networksChangedForRegistrationController:(id)a3
{
  v4 = a3;
  v5 = [(TPSCellularNetworkController *)self registrationController];

  if (v5 == v4)
  {
    v6 = TPSCellularNetworkLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = objc_opt_class();
      v7 = v10;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%@ is handling networks changed delegate callback.", &v9, 0xCu);
    }

    v8 = [v4 networks];
    [(TPSCellularNetworkController *)self setNetworks:v8];
  }
}

- (void)networkSelectionInfoChangedForRegistrationController:(id)a3
{
  v4 = a3;
  v5 = [(TPSCellularNetworkController *)self registrationController];

  if (v5 == v4)
  {
    v6 = TPSCellularNetworkLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = objc_opt_class();
      v7 = v10;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%@ is handling networks selection information changed delegate callback.", &v9, 0xCu);
    }

    v8 = [v4 networkSelectionInfo];
    [(TPSCellularNetworkController *)self setNetworkSelectionInfo:v8];
    [(TPSCellularNetworkController *)self updateSelectedNetworkForNetworkSelectionInfo:v8];
    [(TPSCellularNetworkController *)self updateNetworkSelectionModeForNetworkSelectionInfo:v8];
  }
}

@end