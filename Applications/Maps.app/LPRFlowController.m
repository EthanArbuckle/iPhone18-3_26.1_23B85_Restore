@interface LPRFlowController
- (void)didCancelConfiguringLPRForVehicle:(id)a3;
- (void)didFinishConfiguringLPRForVehicle:(id)a3;
- (void)presentLPRFlowWithVehicle:(id)a3 scenario:(int64_t)a4 presenter:(id)a5 completionBlock:(id)a6;
@end

@implementation LPRFlowController

- (void)didCancelConfiguringLPRForVehicle:(id)a3
{
  v4 = a3;
  v5 = sub_100022C48();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 displayName];
    v9 = 138412546;
    v10 = v6;
    v11 = 2048;
    v12 = [(LPRFlowController *)self scenario];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "didCancelConfiguringLPRForVehicle: %@ in scenario: %lu", &v9, 0x16u);
  }

  v7 = [(OBNavigationController *)self->_navigationController presentingViewController];
  [v7 dismissViewControllerAnimated:1 completion:0];

  navigationController = self->_navigationController;
  self->_navigationController = 0;
}

- (void)didFinishConfiguringLPRForVehicle:(id)a3
{
  v4 = a3;
  v5 = sub_100022C48();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 displayName];
    v9 = 138412546;
    v10 = v6;
    v11 = 2048;
    v12 = [(LPRFlowController *)self scenario];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "didCancelConfiguringLPRForVehicle: %@ in scenario: %lu", &v9, 0x16u);
  }

  v7 = [(OBNavigationController *)self->_navigationController presentingViewController];
  [v7 dismissViewControllerAnimated:1 completion:0];

  navigationController = self->_navigationController;
  self->_navigationController = 0;
}

- (void)presentLPRFlowWithVehicle:(id)a3 scenario:(int64_t)a4 presenter:(id)a5 completionBlock:(id)a6
{
  v9 = a3;
  v10 = a5;
  [(LPRFlowController *)self setScenario:a4];
  if (![(LPRFlowController *)self scenario])
  {
    v12 = 0;
    v11 = off_1015F6288;
    goto LABEL_5;
  }

  if ([(LPRFlowController *)self scenario]== 1)
  {
    v11 = off_1015F6290;
    v12 = v9;
LABEL_5:
    v13 = [objc_alloc(*v11) initWithScenario:a4 vehicle:v12 delegate:self];
    v14 = [[OBNavigationController alloc] initWithRootViewController:v13];
    navigationController = self->_navigationController;
    self->_navigationController = v14;

    [(OBNavigationController *)self->_navigationController setModalPresentationStyle:2];
    v16 = [(OBNavigationController *)self->_navigationController navigationItem];
    v17 = [v16 rightBarButtonItem];
    [v17 setAccessibilityIdentifier:@"RightBarButtonItem"];

    v18 = [(OBNavigationController *)self->_navigationController navigationItem];
    v19 = [v18 leftBarButtonItem];
    [v19 setAccessibilityIdentifier:@"LeftBarButtonItem"];

    [v10 _maps_topMostPresentViewController:self->_navigationController animated:1 completion:0];
    goto LABEL_6;
  }

  v13 = sub_100022C48();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v20 = 134217984;
    v21 = [(LPRFlowController *)self scenario];
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Invalid scenario: %ld aborting presentation of LPR", &v20, 0xCu);
  }

LABEL_6:
}

@end