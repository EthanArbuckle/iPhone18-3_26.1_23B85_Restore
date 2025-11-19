@interface XPCServiceClient
- (ASDSupportedDialogHandlers)supportedDialogHandlers;
- (void)deliverAlertPresentationRequest:(id)a3 resultHandler:(id)a4;
- (void)deliverAuthenticateRequest:(id)a3 withResultHandler:(id)a4;
- (void)deliverDialogRequest:(id)a3 withResultHandler:(id)a4;
- (void)deliverEngagementRequest:(id)a3 withResultHandler:(id)a4;
- (void)deliverNotifications:(id)a3 withBarrierBlock:(id)a4;
- (void)deliverProgress:(id)a3 withBarrierBlock:(id)a4;
- (void)deliverViewPresentationRequest:(id)a3 resultHandler:(id)a4;
- (void)getAppCapabilitiesServiceWithReplyHandler:(id)a3;
- (void)getAppStoreServiceWithReplyHandler:(id)a3;
- (void)getBackgroundAssetsServiceWithReplyHandler:(id)a3;
- (void)getClipServiceWithReplyHandler:(id)a3;
- (void)getCrossfireServiceWithReplyHandler:(id)a3;
- (void)getDiagnosticServiceWithReplyHandler:(id)a3;
- (void)getFairPlayServiceWithReplyHandler:(id)a3;
- (void)getIAPHistoryServiceWithReplyHandler:(id)a3;
- (void)getInstallAttributionServiceWithReplyHandler:(id)a3;
- (void)getInstallWebAttributionServiceWithReplyHandler:(id)a3;
- (void)getInstallationServiceWithReplyHandler:(id)a3;
- (void)getLibraryServiceWithReplyHandler:(id)a3;
- (void)getManagedAppServiceWithReplyHandler:(id)a3;
- (void)getMetricsServiceWithReplyHandler:(id)a3;
- (void)getOcelotServiceWithReplyHandler:(id)a3;
- (void)getPersonalizationServiceWithReplyHandler:(id)a3;
- (void)getPurchaseHistoryServiceWithReplyHandler:(id)a3;
- (void)getPurchaseServiceWithReplyHandler:(id)a3;
- (void)getRepairServiceWithReplyHandler:(id)a3;
- (void)getRestoreServiceWithReplyHandler:(id)a3;
- (void)getSKANInteropServiceWithReplyHandler:(id)a3;
- (void)getSkannerServiceWithReplyHandler:(id)a3;
- (void)getStoreKitExternalNotificationServiceWithReplyHandler:(id)a3;
- (void)getTestFlightFeedbackServiceWithReplyHandler:(id)a3;
- (void)getUpdatesServiceWithReplyHandler:(id)a3;
- (void)setSupportedNotificationDelivery:(id)a3;
@end

@implementation XPCServiceClient

- (void)getAppStoreServiceWithReplyHandler:(id)a3
{
  catalog = self->_catalog;
  v6 = a3;
  if (catalog)
  {
    Property = objc_getProperty(catalog, v5, 8, 1);
  }

  else
  {
    Property = 0;
  }

  v10 = Property;
  v8 = sub_10023AF14(self->_catalog);
  sub_1002A785C(self, v10, v8, v9, v6);
}

- (void)getAppCapabilitiesServiceWithReplyHandler:(id)a3
{
  catalog = self->_catalog;
  v6 = a3;
  if (catalog)
  {
    Property = objc_getProperty(catalog, v5, 24, 1);
  }

  else
  {
    Property = 0;
  }

  v10 = Property;
  v8 = sub_10023B12C(self->_catalog);
  sub_1002A785C(self, v10, v8, v9, v6);
}

- (void)getBackgroundAssetsServiceWithReplyHandler:(id)a3
{
  catalog = self->_catalog;
  v6 = a3;
  if (catalog)
  {
    Property = objc_getProperty(catalog, v5, 32, 1);
  }

  else
  {
    Property = 0;
  }

  v10 = Property;
  v8 = sub_10023B20C(self->_catalog);
  sub_1002A785C(self, v10, v8, v9, v6);
}

- (void)getClipServiceWithReplyHandler:(id)a3
{
  catalog = self->_catalog;
  v6 = a3;
  if (catalog)
  {
    Property = objc_getProperty(catalog, v5, 40, 1);
  }

  else
  {
    Property = 0;
  }

  v10 = Property;
  v8 = sub_10023B2EC(self->_catalog);
  sub_1002A785C(self, v10, v8, v9, v6);
}

- (void)getDiagnosticServiceWithReplyHandler:(id)a3
{
  catalog = self->_catalog;
  v6 = a3;
  if (catalog)
  {
    Property = objc_getProperty(catalog, v5, 16, 1);
  }

  else
  {
    Property = 0;
  }

  v10 = Property;
  v8 = sub_10023B04C(self->_catalog);
  sub_1002A785C(self, v10, v8, v9, v6);
}

- (void)getFairPlayServiceWithReplyHandler:(id)a3
{
  catalog = self->_catalog;
  v6 = a3;
  if (catalog)
  {
    Property = objc_getProperty(catalog, v5, 56, 1);
  }

  else
  {
    Property = 0;
  }

  v10 = Property;
  v8 = sub_10023B4AC(self->_catalog);
  sub_1002A785C(self, v10, v8, v9, v6);
}

- (void)getIAPHistoryServiceWithReplyHandler:(id)a3
{
  catalog = self->_catalog;
  v6 = a3;
  if (catalog)
  {
    Property = objc_getProperty(catalog, v5, 64, 1);
  }

  else
  {
    Property = 0;
  }

  v10 = Property;
  v8 = sub_10000450C(self->_catalog);
  sub_1002A785C(self, v10, v8, v9, v6);
}

- (void)getInstallationServiceWithReplyHandler:(id)a3
{
  catalog = self->_catalog;
  v6 = a3;
  if (catalog)
  {
    Property = objc_getProperty(catalog, v5, 72, 1);
  }

  else
  {
    Property = 0;
  }

  v10 = Property;
  v8 = sub_10023B61C(self->_catalog);
  sub_1002A785C(self, v10, v8, v9, v6);
}

- (void)getInstallAttributionServiceWithReplyHandler:(id)a3
{
  catalog = self->_catalog;
  v6 = a3;
  if (catalog)
  {
    Property = objc_getProperty(catalog, v5, 80, 1);
  }

  else
  {
    Property = 0;
  }

  v10 = Property;
  v8 = sub_10023B6FC(self->_catalog);
  sub_1002A785C(self, v10, v8, v9, v6);
}

- (void)getInstallWebAttributionServiceWithReplyHandler:(id)a3
{
  catalog = self->_catalog;
  v6 = a3;
  if (catalog)
  {
    Property = objc_getProperty(catalog, v5, 88, 1);
  }

  else
  {
    Property = 0;
  }

  v10 = Property;
  v8 = sub_10023B7DC(self->_catalog);
  sub_1002A785C(self, v10, v8, v9, v6);
}

- (void)getSKANInteropServiceWithReplyHandler:(id)a3
{
  catalog = self->_catalog;
  v6 = a3;
  if (catalog)
  {
    Property = objc_getProperty(catalog, v5, 96, 1);
  }

  else
  {
    Property = 0;
  }

  v10 = Property;
  v8 = sub_10023B8BC(self->_catalog);
  sub_1002A785C(self, v10, v8, v9, v6);
}

- (void)getLibraryServiceWithReplyHandler:(id)a3
{
  catalog = self->_catalog;
  v6 = a3;
  if (catalog)
  {
    Property = objc_getProperty(catalog, v5, 104, 1);
  }

  else
  {
    Property = 0;
  }

  v10 = Property;
  v8 = sub_10023B99C(self->_catalog);
  sub_1002A785C(self, v10, v8, v9, v6);
}

- (void)getCrossfireServiceWithReplyHandler:(id)a3
{
  catalog = self->_catalog;
  v6 = a3;
  if (catalog)
  {
    Property = objc_getProperty(catalog, v5, 48, 1);
  }

  else
  {
    Property = 0;
  }

  v10 = Property;
  v8 = sub_10023B3CC(self->_catalog);
  sub_1002A785C(self, v10, v8, v9, v6);
}

- (void)getManagedAppServiceWithReplyHandler:(id)a3
{
  catalog = self->_catalog;
  v6 = a3;
  if (catalog)
  {
    Property = objc_getProperty(catalog, v5, 120, 1);
  }

  else
  {
    Property = 0;
  }

  v10 = Property;
  v8 = sub_10023BB5C(self->_catalog);
  sub_1002A785C(self, v10, v8, v9, v6);
}

- (void)getOcelotServiceWithReplyHandler:(id)a3
{
  catalog = self->_catalog;
  v6 = a3;
  if (catalog)
  {
    Property = objc_getProperty(catalog, v5, 128, 1);
  }

  else
  {
    Property = 0;
  }

  v10 = Property;
  v8 = sub_10023BBAC(self->_catalog);
  sub_1002A785C(self, v10, v8, v9, v6);
}

- (void)getMetricsServiceWithReplyHandler:(id)a3
{
  catalog = self->_catalog;
  v6 = a3;
  if (catalog)
  {
    Property = objc_getProperty(catalog, v5, 112, 1);
  }

  else
  {
    Property = 0;
  }

  v10 = Property;
  v8 = sub_10023BA7C(self->_catalog);
  sub_1002A785C(self, v10, v8, v9, v6);
}

- (void)getPurchaseHistoryServiceWithReplyHandler:(id)a3
{
  catalog = self->_catalog;
  v6 = a3;
  if (catalog)
  {
    Property = objc_getProperty(catalog, v5, 144, 1);
  }

  else
  {
    Property = 0;
  }

  v10 = Property;
  v8 = sub_10023BD6C(self->_catalog);
  sub_1002A785C(self, v10, v8, v9, v6);
}

- (void)getPurchaseServiceWithReplyHandler:(id)a3
{
  catalog = self->_catalog;
  v6 = a3;
  if (catalog)
  {
    Property = objc_getProperty(catalog, v5, 152, 1);
  }

  else
  {
    Property = 0;
  }

  v10 = Property;
  v8 = sub_10023BE4C(self->_catalog);
  sub_1002A785C(self, v10, v8, v9, v6);
}

- (void)getRepairServiceWithReplyHandler:(id)a3
{
  catalog = self->_catalog;
  v6 = a3;
  if (catalog)
  {
    Property = objc_getProperty(catalog, v5, 160, 1);
  }

  else
  {
    Property = 0;
  }

  v10 = Property;
  v8 = sub_10023BF2C(self->_catalog);
  sub_1002A785C(self, v10, v8, v9, v6);
}

- (void)getRestoreServiceWithReplyHandler:(id)a3
{
  catalog = self->_catalog;
  v6 = a3;
  if (catalog)
  {
    Property = objc_getProperty(catalog, v5, 168, 1);
  }

  else
  {
    Property = 0;
  }

  v10 = Property;
  v8 = sub_10023C00C(self->_catalog);
  sub_1002A785C(self, v10, v8, v9, v6);
}

- (void)getSkannerServiceWithReplyHandler:(id)a3
{
  catalog = self->_catalog;
  v6 = a3;
  if (catalog)
  {
    Property = objc_getProperty(catalog, v5, 176, 1);
  }

  else
  {
    Property = 0;
  }

  v10 = Property;
  v8 = sub_10023C0EC(self->_catalog);
  sub_1002A785C(self, v10, v8, v9, v6);
}

- (void)getStoreKitExternalNotificationServiceWithReplyHandler:(id)a3
{
  catalog = self->_catalog;
  v6 = a3;
  if (catalog)
  {
    Property = objc_getProperty(catalog, v5, 184, 1);
  }

  else
  {
    Property = 0;
  }

  v10 = Property;
  v8 = sub_10023C1CC(self->_catalog);
  sub_1002A785C(self, v10, v8, v9, v6);
}

- (void)getTestFlightFeedbackServiceWithReplyHandler:(id)a3
{
  catalog = self->_catalog;
  v6 = a3;
  if (catalog)
  {
    Property = objc_getProperty(catalog, v5, 192, 1);
  }

  else
  {
    Property = 0;
  }

  v10 = Property;
  v8 = sub_10023C2AC(self->_catalog);
  sub_1002A785C(self, v10, v8, v9, v6);
}

- (void)getUpdatesServiceWithReplyHandler:(id)a3
{
  catalog = self->_catalog;
  v6 = a3;
  if (catalog)
  {
    Property = objc_getProperty(catalog, v5, 200, 1);
  }

  else
  {
    Property = 0;
  }

  v10 = Property;
  v8 = sub_10023C38C(self->_catalog);
  sub_1002A785C(self, v10, v8, v9, v6);
}

- (void)setSupportedNotificationDelivery:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  supportedDialogHandlers = obj->_supportedDialogHandlers;
  obj->_supportedDialogHandlers = v4;

  objc_sync_exit(obj);
}

- (void)deliverAlertPresentationRequest:(id)a3 resultHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1002A8978;
  v11[3] = &unk_10051B548;
  v12 = v6;
  v9 = v6;
  v10 = [WeakRetained remoteObjectProxyWithErrorHandler:v11];
  [v10 deliverAlertPresentationRequest:v7 resultHandler:v9];
}

- (void)deliverAuthenticateRequest:(id)a3 withResultHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1002A8A68;
  v11[3] = &unk_10051B548;
  v12 = v6;
  v9 = v6;
  v10 = [WeakRetained remoteObjectProxyWithErrorHandler:v11];
  [v10 deliverAuthenticateRequest:v7 withResultHandler:v9];
}

- (void)deliverDialogRequest:(id)a3 withResultHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1002A8B58;
  v11[3] = &unk_10051B548;
  v12 = v6;
  v9 = v6;
  v10 = [WeakRetained remoteObjectProxyWithErrorHandler:v11];
  [v10 deliverDialogRequest:v7 withResultHandler:v9];
}

- (void)deliverEngagementRequest:(id)a3 withResultHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1002A8C48;
  v11[3] = &unk_10051B548;
  v12 = v6;
  v9 = v6;
  v10 = [WeakRetained remoteObjectProxyWithErrorHandler:v11];
  [v10 deliverEngagementRequest:v7 withResultHandler:v9];
}

- (void)deliverNotifications:(id)a3 withBarrierBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v9 = [WeakRetained _unboostingRemoteObjectProxy];
  [v9 deliverNotifications:v7];

  v10 = objc_loadWeakRetained(&self->_connection);
  [v10 addBarrierBlock:v6];
}

- (void)deliverProgress:(id)a3 withBarrierBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v9 = [WeakRetained _unboostingRemoteObjectProxy];
  [v9 deliverProgress:v7];

  v10 = objc_loadWeakRetained(&self->_connection);
  [v10 addBarrierBlock:v6];
}

- (void)deliverViewPresentationRequest:(id)a3 resultHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1002A8E80;
  v11[3] = &unk_10051B548;
  v12 = v6;
  v9 = v6;
  v10 = [WeakRetained remoteObjectProxyWithErrorHandler:v11];
  [v10 deliverViewPresentationRequest:v7 resultHandler:v9];
}

- (ASDSupportedDialogHandlers)supportedDialogHandlers
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_supportedDialogHandlers;
  objc_sync_exit(v2);

  return v3;
}

- (void)getPersonalizationServiceWithReplyHandler:(id)a3
{
  catalog = self->_catalog;
  v6 = a3;
  if (catalog)
  {
    Property = objc_getProperty(catalog, v5, 136, 1);
  }

  else
  {
    Property = 0;
  }

  v10 = Property;
  v8 = sub_10023BC8C(self->_catalog);
  sub_1002A785C(self, v10, v8, v9, v6);
}

@end