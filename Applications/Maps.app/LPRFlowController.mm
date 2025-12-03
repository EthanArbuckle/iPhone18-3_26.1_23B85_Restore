@interface LPRFlowController
- (void)didCancelConfiguringLPRForVehicle:(id)vehicle;
- (void)didFinishConfiguringLPRForVehicle:(id)vehicle;
- (void)presentLPRFlowWithVehicle:(id)vehicle scenario:(int64_t)scenario presenter:(id)presenter completionBlock:(id)block;
@end

@implementation LPRFlowController

- (void)didCancelConfiguringLPRForVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  v5 = sub_100022C48();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    displayName = [vehicleCopy displayName];
    v9 = 138412546;
    v10 = displayName;
    v11 = 2048;
    scenario = [(LPRFlowController *)self scenario];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "didCancelConfiguringLPRForVehicle: %@ in scenario: %lu", &v9, 0x16u);
  }

  presentingViewController = [(OBNavigationController *)self->_navigationController presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];

  navigationController = self->_navigationController;
  self->_navigationController = 0;
}

- (void)didFinishConfiguringLPRForVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  v5 = sub_100022C48();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    displayName = [vehicleCopy displayName];
    v9 = 138412546;
    v10 = displayName;
    v11 = 2048;
    scenario = [(LPRFlowController *)self scenario];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "didCancelConfiguringLPRForVehicle: %@ in scenario: %lu", &v9, 0x16u);
  }

  presentingViewController = [(OBNavigationController *)self->_navigationController presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];

  navigationController = self->_navigationController;
  self->_navigationController = 0;
}

- (void)presentLPRFlowWithVehicle:(id)vehicle scenario:(int64_t)scenario presenter:(id)presenter completionBlock:(id)block
{
  vehicleCopy = vehicle;
  presenterCopy = presenter;
  [(LPRFlowController *)self setScenario:scenario];
  if (![(LPRFlowController *)self scenario])
  {
    v12 = 0;
    v11 = off_1015F6288;
    goto LABEL_5;
  }

  if ([(LPRFlowController *)self scenario]== 1)
  {
    v11 = off_1015F6290;
    v12 = vehicleCopy;
LABEL_5:
    v13 = [objc_alloc(*v11) initWithScenario:scenario vehicle:v12 delegate:self];
    v14 = [[OBNavigationController alloc] initWithRootViewController:v13];
    navigationController = self->_navigationController;
    self->_navigationController = v14;

    [(OBNavigationController *)self->_navigationController setModalPresentationStyle:2];
    navigationItem = [(OBNavigationController *)self->_navigationController navigationItem];
    rightBarButtonItem = [navigationItem rightBarButtonItem];
    [rightBarButtonItem setAccessibilityIdentifier:@"RightBarButtonItem"];

    navigationItem2 = [(OBNavigationController *)self->_navigationController navigationItem];
    leftBarButtonItem = [navigationItem2 leftBarButtonItem];
    [leftBarButtonItem setAccessibilityIdentifier:@"LeftBarButtonItem"];

    [presenterCopy _maps_topMostPresentViewController:self->_navigationController animated:1 completion:0];
    goto LABEL_6;
  }

  v13 = sub_100022C48();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v20 = 134217984;
    scenario = [(LPRFlowController *)self scenario];
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Invalid scenario: %ld aborting presentation of LPR", &v20, 0xCu);
  }

LABEL_6:
}

@end