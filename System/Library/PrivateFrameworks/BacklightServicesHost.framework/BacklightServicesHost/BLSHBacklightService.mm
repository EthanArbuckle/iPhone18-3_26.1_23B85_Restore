@interface BLSHBacklightService
- (BLSHBacklightService)initWithPlatformProvider:(id)a3 osInterfaceProvider:(id)a4 inactiveBudgetPolicy:(id)a5 localAssertionService:(id)a6 localOnly:(BOOL)a7;
@end

@implementation BLSHBacklightService

- (BLSHBacklightService)initWithPlatformProvider:(id)a3 osInterfaceProvider:(id)a4 inactiveBudgetPolicy:(id)a5 localAssertionService:(id)a6 localOnly:(BOOL)a7
{
  v48[12] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v46.receiver = self;
  v46.super_class = BLSHBacklightService;
  v16 = [(BLSHBacklightService *)&v46 init];
  if (v16)
  {
    v17 = [[BLSHBacklightTransitionStateMachine alloc] initWithPlatformProvider:v12 osInterfaceProvider:v13 inactiveBudgetPolicy:v14];
    transitionStateMachine = v16->_transitionStateMachine;
    v16->_transitionStateMachine = v17;

    v19 = [[BLSHBacklightStateMachine alloc] initWithPlatformProvider:v12 eventPerformer:v16->_transitionStateMachine osInterfaceProvider:v13];
    stateMachine = v16->_stateMachine;
    v16->_stateMachine = v19;

    [BLSHBacklightHost registerSharedBacklightHost:v16->_stateMachine];
    [MEMORY[0x277CF0880] setDefaultBacklightProxy:v16->_stateMachine];
    [(BLSHBacklightStateMachine *)v16->_stateMachine registerHandlersForService:v15];
    [(BLSHBacklightTransitionStateMachine *)v16->_transitionStateMachine registerHandlersForService:v15];
    if (!a7)
    {
      v21 = [BLSHXPCBacklightProxyHostServer serverWithLocalBacklightProxy:v16->_stateMachine];
      backlightXPCServer = v16->_backlightXPCServer;
      v16->_backlightXPCServer = v21;

      if (os_variant_has_internal_diagnostics())
      {
        v23 = [BLSHDiagnosticsServer serverWithFlipbookDiagnosticsProvider:v16->_transitionStateMachine];
        diagnosticsServer = v16->_diagnosticsServer;
        v16->_diagnosticsServer = v23;

        v40 = [BLSHWatchdogTester alloc];
        v48[0] = v16->_transitionStateMachine;
        v47[0] = @"com.apple.BacklightServices.BLSHBacklightTransitionStateMachine.watchdogtest";
        v47[1] = @"com.apple.BacklightServices.BLSHBacklightDisplayStateMachine.watchdogtest";
        v45 = [v48[0] displayStateMachine];
        v48[1] = v45;
        v44 = [@"com.apple.BacklightServices.BLSHBacklightTransitionStateMachine.watchdogtest" stringByAppendingString:0x283379D80];
        v47[2] = v44;
        v48[2] = v16->_transitionStateMachine;
        v43 = [@"com.apple.BacklightServices.BLSHBacklightDisplayStateMachine.watchdogtest" stringByAppendingString:0x283379D80];
        v47[3] = v43;
        v42 = [(BLSHBacklightTransitionStateMachine *)v16->_transitionStateMachine displayStateMachine];
        v48[3] = v42;
        v41 = [@"com.apple.BacklightServices.BLSHBacklightDisplayStateMachine.watchdogtest" stringByAppendingString:0x283379D60];
        v47[4] = v41;
        v39 = [(BLSHBacklightTransitionStateMachine *)v16->_transitionStateMachine displayStateMachine];
        v47[5] = @"com.apple.BacklightServices.BLSHBacklightOSInterfaceProvider.watchdogtest";
        v48[4] = v39;
        v48[5] = v13;
        v38 = [@"com.apple.BacklightServices.BLSHBacklightOSInterfaceProvider.watchdogtest" stringByAppendingString:0x283379D80];
        v47[6] = v38;
        v48[6] = v13;
        v37 = [@"com.apple.BacklightServices.BLSHBacklightOSInterfaceProvider.watchdogtest" stringByAppendingString:0x283379DA0];
        v47[7] = v37;
        v48[7] = v13;
        v36 = [@"com.apple.BacklightServices.BLSHBacklightOSInterfaceProvider.watchdogtest" stringByAppendingString:0x283379DC0];
        v47[8] = v36;
        v48[8] = v13;
        v25 = [@"com.apple.BacklightServices.BLSHBacklightOSInterfaceProvider.watchdogtest" stringByAppendingString:0x283379D60];
        v47[9] = v25;
        v26 = [(BLSHBacklightTransitionStateMachine *)v16->_transitionStateMachine displayStateMachine];
        v48[9] = v26;
        v27 = [@"com.apple.BacklightServices.BLSHBacklightOSInterfaceProvider.watchdogtest" stringByAppendingString:0x283379DE0];
        v47[10] = v27;
        v48[10] = v13;
        v28 = [@"com.apple.BacklightServices.BLSHBacklightOSInterfaceProvider.watchdogtest" stringByAppendingString:0x283379E00];
        v47[11] = v28;
        v48[11] = v13;
        v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:12];
        v30 = [(BLSHWatchdogTester *)v40 initWithWatchdogProviderDelegate:v13 testables:v29];
        watchdogTester = v16->_watchdogTester;
        v16->_watchdogTester = v30;

        v32 = [[BLSHCriticalAssertTester alloc] initWithNotificationName:@"com.apple.BacklightServices.criticalasserttest"];
        criticalAssertTester = v16->_criticalAssertTester;
        v16->_criticalAssertTester = v32;
      }
    }
  }

  v34 = *MEMORY[0x277D85DE8];
  return v16;
}

@end