@interface BCMenuConfiguringButton
- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
- (void)setMenu:(id)menu;
- (void)setupAppAnalyticsReportingUsingTracker:(id)tracker withPropertyProvider:(id)provider;
@end

@implementation BCMenuConfiguringButton

- (void)setMenu:(id)menu
{
  v4.receiver = self;
  v4.super_class = BCMenuConfiguringButton;
  [(BCMenuConfiguringButton *)&v4 setMenu:menu];
  [(BCMenuConfiguringButton *)self setPreferredMenuElementOrder:2];
}

- (void)setupAppAnalyticsReportingUsingTracker:(id)tracker withPropertyProvider:(id)provider
{
  trackerCopy = tracker;
  providerCopy = provider;
  tracker = self->_tracker;
  self->_tracker = trackerCopy;
  v10 = trackerCopy;

  propertyProvider = self->_propertyProvider;
  self->_propertyProvider = providerCopy;
}

- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator
{
  v8.receiver = self;
  v8.super_class = BCMenuConfiguringButton;
  [(BCMenuConfiguringButton *)&v8 contextMenuInteraction:interaction willDisplayMenuForConfiguration:configuration animator:animator];
  v6 = +[NSDate date];
  appearDate = self->_appearDate;
  self->_appearDate = v6;
}

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  v8.receiver = self;
  v8.super_class = BCMenuConfiguringButton;
  [(BCMenuConfiguringButton *)&v8 contextMenuInteraction:interaction willEndForConfiguration:configuration animator:animator];
  if (self->_tracker && self->_propertyProvider && self->_appearDate)
  {
    v6 = +[BAEventReporter sharedReporter];
    [v6 emitContextualActionSheetExposureEventWithTracker:self->_tracker startDate:self->_appearDate propertyProvider:self->_propertyProvider];
  }

  appearDate = self->_appearDate;
  self->_appearDate = 0;
}

@end