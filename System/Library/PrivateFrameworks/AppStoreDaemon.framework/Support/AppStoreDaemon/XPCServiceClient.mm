@interface XPCServiceClient
- (ASDSupportedDialogHandlers)supportedDialogHandlers;
- (void)deliverAlertPresentationRequest:(id)request resultHandler:(id)handler;
- (void)deliverAuthenticateRequest:(id)request withResultHandler:(id)handler;
- (void)deliverDialogRequest:(id)request withResultHandler:(id)handler;
- (void)deliverEngagementRequest:(id)request withResultHandler:(id)handler;
- (void)deliverNotifications:(id)notifications withBarrierBlock:(id)block;
- (void)deliverProgress:(id)progress withBarrierBlock:(id)block;
- (void)deliverViewPresentationRequest:(id)request resultHandler:(id)handler;
- (void)getAppCapabilitiesServiceWithReplyHandler:(id)handler;
- (void)getAppStoreServiceWithReplyHandler:(id)handler;
- (void)getBackgroundAssetsServiceWithReplyHandler:(id)handler;
- (void)getClipServiceWithReplyHandler:(id)handler;
- (void)getCrossfireServiceWithReplyHandler:(id)handler;
- (void)getDiagnosticServiceWithReplyHandler:(id)handler;
- (void)getFairPlayServiceWithReplyHandler:(id)handler;
- (void)getIAPHistoryServiceWithReplyHandler:(id)handler;
- (void)getInstallAttributionServiceWithReplyHandler:(id)handler;
- (void)getInstallWebAttributionServiceWithReplyHandler:(id)handler;
- (void)getInstallationServiceWithReplyHandler:(id)handler;
- (void)getLibraryServiceWithReplyHandler:(id)handler;
- (void)getManagedAppServiceWithReplyHandler:(id)handler;
- (void)getMetricsServiceWithReplyHandler:(id)handler;
- (void)getOcelotServiceWithReplyHandler:(id)handler;
- (void)getPersonalizationServiceWithReplyHandler:(id)handler;
- (void)getPurchaseHistoryServiceWithReplyHandler:(id)handler;
- (void)getPurchaseServiceWithReplyHandler:(id)handler;
- (void)getRepairServiceWithReplyHandler:(id)handler;
- (void)getRestoreServiceWithReplyHandler:(id)handler;
- (void)getSKANInteropServiceWithReplyHandler:(id)handler;
- (void)getSkannerServiceWithReplyHandler:(id)handler;
- (void)getStoreKitExternalNotificationServiceWithReplyHandler:(id)handler;
- (void)getTestFlightFeedbackServiceWithReplyHandler:(id)handler;
- (void)getUpdatesServiceWithReplyHandler:(id)handler;
- (void)setSupportedNotificationDelivery:(id)delivery;
@end

@implementation XPCServiceClient

- (void)getAppStoreServiceWithReplyHandler:(id)handler
{
  catalog = self->_catalog;
  handlerCopy = handler;
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
  sub_1002A785C(self, v10, v8, v9, handlerCopy);
}

- (void)getAppCapabilitiesServiceWithReplyHandler:(id)handler
{
  catalog = self->_catalog;
  handlerCopy = handler;
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
  sub_1002A785C(self, v10, v8, v9, handlerCopy);
}

- (void)getBackgroundAssetsServiceWithReplyHandler:(id)handler
{
  catalog = self->_catalog;
  handlerCopy = handler;
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
  sub_1002A785C(self, v10, v8, v9, handlerCopy);
}

- (void)getClipServiceWithReplyHandler:(id)handler
{
  catalog = self->_catalog;
  handlerCopy = handler;
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
  sub_1002A785C(self, v10, v8, v9, handlerCopy);
}

- (void)getDiagnosticServiceWithReplyHandler:(id)handler
{
  catalog = self->_catalog;
  handlerCopy = handler;
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
  sub_1002A785C(self, v10, v8, v9, handlerCopy);
}

- (void)getFairPlayServiceWithReplyHandler:(id)handler
{
  catalog = self->_catalog;
  handlerCopy = handler;
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
  sub_1002A785C(self, v10, v8, v9, handlerCopy);
}

- (void)getIAPHistoryServiceWithReplyHandler:(id)handler
{
  catalog = self->_catalog;
  handlerCopy = handler;
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
  sub_1002A785C(self, v10, v8, v9, handlerCopy);
}

- (void)getInstallationServiceWithReplyHandler:(id)handler
{
  catalog = self->_catalog;
  handlerCopy = handler;
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
  sub_1002A785C(self, v10, v8, v9, handlerCopy);
}

- (void)getInstallAttributionServiceWithReplyHandler:(id)handler
{
  catalog = self->_catalog;
  handlerCopy = handler;
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
  sub_1002A785C(self, v10, v8, v9, handlerCopy);
}

- (void)getInstallWebAttributionServiceWithReplyHandler:(id)handler
{
  catalog = self->_catalog;
  handlerCopy = handler;
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
  sub_1002A785C(self, v10, v8, v9, handlerCopy);
}

- (void)getSKANInteropServiceWithReplyHandler:(id)handler
{
  catalog = self->_catalog;
  handlerCopy = handler;
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
  sub_1002A785C(self, v10, v8, v9, handlerCopy);
}

- (void)getLibraryServiceWithReplyHandler:(id)handler
{
  catalog = self->_catalog;
  handlerCopy = handler;
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
  sub_1002A785C(self, v10, v8, v9, handlerCopy);
}

- (void)getCrossfireServiceWithReplyHandler:(id)handler
{
  catalog = self->_catalog;
  handlerCopy = handler;
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
  sub_1002A785C(self, v10, v8, v9, handlerCopy);
}

- (void)getManagedAppServiceWithReplyHandler:(id)handler
{
  catalog = self->_catalog;
  handlerCopy = handler;
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
  sub_1002A785C(self, v10, v8, v9, handlerCopy);
}

- (void)getOcelotServiceWithReplyHandler:(id)handler
{
  catalog = self->_catalog;
  handlerCopy = handler;
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
  sub_1002A785C(self, v10, v8, v9, handlerCopy);
}

- (void)getMetricsServiceWithReplyHandler:(id)handler
{
  catalog = self->_catalog;
  handlerCopy = handler;
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
  sub_1002A785C(self, v10, v8, v9, handlerCopy);
}

- (void)getPurchaseHistoryServiceWithReplyHandler:(id)handler
{
  catalog = self->_catalog;
  handlerCopy = handler;
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
  sub_1002A785C(self, v10, v8, v9, handlerCopy);
}

- (void)getPurchaseServiceWithReplyHandler:(id)handler
{
  catalog = self->_catalog;
  handlerCopy = handler;
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
  sub_1002A785C(self, v10, v8, v9, handlerCopy);
}

- (void)getRepairServiceWithReplyHandler:(id)handler
{
  catalog = self->_catalog;
  handlerCopy = handler;
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
  sub_1002A785C(self, v10, v8, v9, handlerCopy);
}

- (void)getRestoreServiceWithReplyHandler:(id)handler
{
  catalog = self->_catalog;
  handlerCopy = handler;
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
  sub_1002A785C(self, v10, v8, v9, handlerCopy);
}

- (void)getSkannerServiceWithReplyHandler:(id)handler
{
  catalog = self->_catalog;
  handlerCopy = handler;
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
  sub_1002A785C(self, v10, v8, v9, handlerCopy);
}

- (void)getStoreKitExternalNotificationServiceWithReplyHandler:(id)handler
{
  catalog = self->_catalog;
  handlerCopy = handler;
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
  sub_1002A785C(self, v10, v8, v9, handlerCopy);
}

- (void)getTestFlightFeedbackServiceWithReplyHandler:(id)handler
{
  catalog = self->_catalog;
  handlerCopy = handler;
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
  sub_1002A785C(self, v10, v8, v9, handlerCopy);
}

- (void)getUpdatesServiceWithReplyHandler:(id)handler
{
  catalog = self->_catalog;
  handlerCopy = handler;
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
  sub_1002A785C(self, v10, v8, v9, handlerCopy);
}

- (void)setSupportedNotificationDelivery:(id)delivery
{
  deliveryCopy = delivery;
  obj = self;
  objc_sync_enter(obj);
  supportedDialogHandlers = obj->_supportedDialogHandlers;
  obj->_supportedDialogHandlers = deliveryCopy;

  objc_sync_exit(obj);
}

- (void)deliverAlertPresentationRequest:(id)request resultHandler:(id)handler
{
  handlerCopy = handler;
  requestCopy = request;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1002A8978;
  v11[3] = &unk_10051B548;
  v12 = handlerCopy;
  v9 = handlerCopy;
  v10 = [WeakRetained remoteObjectProxyWithErrorHandler:v11];
  [v10 deliverAlertPresentationRequest:requestCopy resultHandler:v9];
}

- (void)deliverAuthenticateRequest:(id)request withResultHandler:(id)handler
{
  handlerCopy = handler;
  requestCopy = request;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1002A8A68;
  v11[3] = &unk_10051B548;
  v12 = handlerCopy;
  v9 = handlerCopy;
  v10 = [WeakRetained remoteObjectProxyWithErrorHandler:v11];
  [v10 deliverAuthenticateRequest:requestCopy withResultHandler:v9];
}

- (void)deliverDialogRequest:(id)request withResultHandler:(id)handler
{
  handlerCopy = handler;
  requestCopy = request;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1002A8B58;
  v11[3] = &unk_10051B548;
  v12 = handlerCopy;
  v9 = handlerCopy;
  v10 = [WeakRetained remoteObjectProxyWithErrorHandler:v11];
  [v10 deliverDialogRequest:requestCopy withResultHandler:v9];
}

- (void)deliverEngagementRequest:(id)request withResultHandler:(id)handler
{
  handlerCopy = handler;
  requestCopy = request;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1002A8C48;
  v11[3] = &unk_10051B548;
  v12 = handlerCopy;
  v9 = handlerCopy;
  v10 = [WeakRetained remoteObjectProxyWithErrorHandler:v11];
  [v10 deliverEngagementRequest:requestCopy withResultHandler:v9];
}

- (void)deliverNotifications:(id)notifications withBarrierBlock:(id)block
{
  blockCopy = block;
  notificationsCopy = notifications;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  _unboostingRemoteObjectProxy = [WeakRetained _unboostingRemoteObjectProxy];
  [_unboostingRemoteObjectProxy deliverNotifications:notificationsCopy];

  v10 = objc_loadWeakRetained(&self->_connection);
  [v10 addBarrierBlock:blockCopy];
}

- (void)deliverProgress:(id)progress withBarrierBlock:(id)block
{
  blockCopy = block;
  progressCopy = progress;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  _unboostingRemoteObjectProxy = [WeakRetained _unboostingRemoteObjectProxy];
  [_unboostingRemoteObjectProxy deliverProgress:progressCopy];

  v10 = objc_loadWeakRetained(&self->_connection);
  [v10 addBarrierBlock:blockCopy];
}

- (void)deliverViewPresentationRequest:(id)request resultHandler:(id)handler
{
  handlerCopy = handler;
  requestCopy = request;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1002A8E80;
  v11[3] = &unk_10051B548;
  v12 = handlerCopy;
  v9 = handlerCopy;
  v10 = [WeakRetained remoteObjectProxyWithErrorHandler:v11];
  [v10 deliverViewPresentationRequest:requestCopy resultHandler:v9];
}

- (ASDSupportedDialogHandlers)supportedDialogHandlers
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_supportedDialogHandlers;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)getPersonalizationServiceWithReplyHandler:(id)handler
{
  catalog = self->_catalog;
  handlerCopy = handler;
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
  sub_1002A785C(self, v10, v8, v9, handlerCopy);
}

@end