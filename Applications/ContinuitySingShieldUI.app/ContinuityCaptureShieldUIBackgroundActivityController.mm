@interface ContinuityCaptureShieldUIBackgroundActivityController
- (ContinuityCaptureShieldUIBackgroundActivityController)initWithBackgroundActivityIdentifier:(id)identifier;
- (void)activateBackgroundActivityWithUserInteractionHandler:(id)handler;
- (void)deactivateBackgroundActivity;
- (void)publishNewDataWithUserInteractionHandler:(id)handler;
@end

@implementation ContinuityCaptureShieldUIBackgroundActivityController

- (ContinuityCaptureShieldUIBackgroundActivityController)initWithBackgroundActivityIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = ContinuityCaptureShieldUIBackgroundActivityController;
  v6 = [(ContinuityCaptureShieldUIBackgroundActivityController *)&v13 init];
  v7 = v6;
  if (!identifierCopy)
  {
    sub_10000C0CC(a2, v6);
    if (!v7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v6)
  {
LABEL_3:
    v8 = [identifierCopy copy];
    backgroundActivityIdentifier = v7->_backgroundActivityIdentifier;
    v7->_backgroundActivityIdentifier = v8;

    v10 = objc_alloc_init(STBackgroundActivitiesStatusDomainPublisher);
    publisher = v7->_publisher;
    v7->_publisher = v10;
  }

LABEL_4:

  return v7;
}

- (void)activateBackgroundActivityWithUserInteractionHandler:(id)handler
{
  if (!self->_backgroundActivityActive)
  {
    self->_backgroundActivityActive = 1;
    [(ContinuityCaptureShieldUIBackgroundActivityController *)self publishNewDataWithUserInteractionHandler:handler];
  }
}

- (void)deactivateBackgroundActivity
{
  if (self->_backgroundActivityActive)
  {
    self->_backgroundActivityActive = 0;
    [(ContinuityCaptureShieldUIBackgroundActivityController *)self publishNewDataWithUserInteractionHandler:0];
  }
}

- (void)publishNewDataWithUserInteractionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = self->_currentAttribution;
  if (self->_backgroundActivityActive)
  {
    BSAuditTokenForCurrentProcess();
    v6 = [STActivityAttribution attributionWithAuditToken:location];
    v7 = [[STBackgroundActivitiesStatusDomainBackgroundActivityAttribution alloc] initWithBackgroundActivityIdentifier:self->_backgroundActivityIdentifier activityAttribution:v6];
  }

  else
  {
    v7 = 0;
  }

  objc_initWeak(location, self);
  publisher = self->_publisher;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100008FE4;
  v17[3] = &unk_100018760;
  v9 = v5;
  v18 = v9;
  v10 = v7;
  v19 = v10;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100009064;
  v13[3] = &unk_1000187B0;
  objc_copyWeak(&v16, location);
  v11 = v10;
  v14 = v11;
  v12 = handlerCopy;
  v15 = v12;
  [(STBackgroundActivitiesStatusDomainPublisher *)publisher updateVolatileData:v17 completion:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(location);
}

@end