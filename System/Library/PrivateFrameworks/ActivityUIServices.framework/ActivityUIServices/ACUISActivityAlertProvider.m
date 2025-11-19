@interface ACUISActivityAlertProvider
- (ACUISActivityAlertProvider)initWithActivityAlertProviding:(id)a3;
@end

@implementation ACUISActivityAlertProvider

- (ACUISActivityAlertProvider)initWithActivityAlertProviding:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = ACUISActivityAlertProvider;
  v5 = [(ACUISActivityAlertProvider *)&v24 init];
  if (v5)
  {
    v6 = [v4 identifier];
    activityIdentifier = v5->_activityIdentifier;
    v5->_activityIdentifier = v6;

    v8 = [v4 bundleIdentifier];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v8;

    v10 = [v4 payloadIdentifier];
    payloadIdentifier = v5->_payloadIdentifier;
    v5->_payloadIdentifier = v10;

    v5->_action = -[ACUISActivityAlertProvider _activityAlertAction:](v5, "_activityAlertAction:", [v4 action]);
    v12 = [ACUISActivityAlertOptions alloc];
    v13 = [v4 configuration];
    v14 = [v4 presentationOptions];
    v15 = [(ACUISActivityAlertOptions *)v12 initWithAlertConfiguration:v13 presentationOptions:v14];
    options = v5->_options;
    v5->_options = v15;

    v17 = [v4 title];
    title = v5->_title;
    v5->_title = v17;

    v19 = [v4 body];
    body = v5->_body;
    v5->_body = v19;

    v21 = [v4 deviceIdentifier];
    deviceIdentifier = v5->_deviceIdentifier;
    v5->_deviceIdentifier = v21;
  }

  return v5;
}

@end