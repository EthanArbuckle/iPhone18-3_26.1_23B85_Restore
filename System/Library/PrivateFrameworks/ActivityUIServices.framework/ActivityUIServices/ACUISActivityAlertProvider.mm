@interface ACUISActivityAlertProvider
- (ACUISActivityAlertProvider)initWithActivityAlertProviding:(id)providing;
@end

@implementation ACUISActivityAlertProvider

- (ACUISActivityAlertProvider)initWithActivityAlertProviding:(id)providing
{
  providingCopy = providing;
  v24.receiver = self;
  v24.super_class = ACUISActivityAlertProvider;
  v5 = [(ACUISActivityAlertProvider *)&v24 init];
  if (v5)
  {
    identifier = [providingCopy identifier];
    activityIdentifier = v5->_activityIdentifier;
    v5->_activityIdentifier = identifier;

    bundleIdentifier = [providingCopy bundleIdentifier];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = bundleIdentifier;

    payloadIdentifier = [providingCopy payloadIdentifier];
    payloadIdentifier = v5->_payloadIdentifier;
    v5->_payloadIdentifier = payloadIdentifier;

    v5->_action = -[ACUISActivityAlertProvider _activityAlertAction:](v5, "_activityAlertAction:", [providingCopy action]);
    v12 = [ACUISActivityAlertOptions alloc];
    configuration = [providingCopy configuration];
    presentationOptions = [providingCopy presentationOptions];
    v15 = [(ACUISActivityAlertOptions *)v12 initWithAlertConfiguration:configuration presentationOptions:presentationOptions];
    options = v5->_options;
    v5->_options = v15;

    title = [providingCopy title];
    title = v5->_title;
    v5->_title = title;

    body = [providingCopy body];
    body = v5->_body;
    v5->_body = body;

    deviceIdentifier = [providingCopy deviceIdentifier];
    deviceIdentifier = v5->_deviceIdentifier;
    v5->_deviceIdentifier = deviceIdentifier;
  }

  return v5;
}

@end