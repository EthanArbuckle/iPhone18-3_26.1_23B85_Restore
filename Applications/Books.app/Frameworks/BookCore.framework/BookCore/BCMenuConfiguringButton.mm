@interface BCMenuConfiguringButton
- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5;
- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5;
- (void)setMenu:(id)a3;
- (void)setupAppAnalyticsReportingUsingTracker:(id)a3 withPropertyProvider:(id)a4;
@end

@implementation BCMenuConfiguringButton

- (void)setMenu:(id)a3
{
  v4.receiver = self;
  v4.super_class = BCMenuConfiguringButton;
  [(BCMenuConfiguringButton *)&v4 setMenu:a3];
  [(BCMenuConfiguringButton *)self setPreferredMenuElementOrder:2];
}

- (void)setupAppAnalyticsReportingUsingTracker:(id)a3 withPropertyProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  tracker = self->_tracker;
  self->_tracker = v6;
  v10 = v6;

  propertyProvider = self->_propertyProvider;
  self->_propertyProvider = v7;
}

- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5
{
  v8.receiver = self;
  v8.super_class = BCMenuConfiguringButton;
  [(BCMenuConfiguringButton *)&v8 contextMenuInteraction:a3 willDisplayMenuForConfiguration:a4 animator:a5];
  v6 = +[NSDate date];
  appearDate = self->_appearDate;
  self->_appearDate = v6;
}

- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5
{
  v8.receiver = self;
  v8.super_class = BCMenuConfiguringButton;
  [(BCMenuConfiguringButton *)&v8 contextMenuInteraction:a3 willEndForConfiguration:a4 animator:a5];
  if (self->_tracker && self->_propertyProvider && self->_appearDate)
  {
    v6 = +[BAEventReporter sharedReporter];
    [v6 emitContextualActionSheetExposureEventWithTracker:self->_tracker startDate:self->_appearDate propertyProvider:self->_propertyProvider];
  }

  appearDate = self->_appearDate;
  self->_appearDate = 0;
}

@end