@interface BLSHBacklightService
- (BLSHBacklightService)initWithPlatformProvider:(id)provider osInterfaceProvider:(id)interfaceProvider inactiveBudgetPolicy:(id)policy localAssertionService:(id)service localOnly:(BOOL)only;
@end

@implementation BLSHBacklightService

- (BLSHBacklightService)initWithPlatformProvider:(id)provider osInterfaceProvider:(id)interfaceProvider inactiveBudgetPolicy:(id)policy localAssertionService:(id)service localOnly:(BOOL)only
{
  v48[12] = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  interfaceProviderCopy = interfaceProvider;
  policyCopy = policy;
  serviceCopy = service;
  v46.receiver = self;
  v46.super_class = BLSHBacklightService;
  v16 = [(BLSHBacklightService *)&v46 init];
  if (v16)
  {
    v17 = [[BLSHBacklightTransitionStateMachine alloc] initWithPlatformProvider:providerCopy osInterfaceProvider:interfaceProviderCopy inactiveBudgetPolicy:policyCopy];
    transitionStateMachine = v16->_transitionStateMachine;
    v16->_transitionStateMachine = v17;

    v19 = [[BLSHBacklightStateMachine alloc] initWithPlatformProvider:providerCopy eventPerformer:v16->_transitionStateMachine osInterfaceProvider:interfaceProviderCopy];
    stateMachine = v16->_stateMachine;
    v16->_stateMachine = v19;

    [BLSHBacklightHost registerSharedBacklightHost:v16->_stateMachine];
    [MEMORY[0x277CF0880] setDefaultBacklightProxy:v16->_stateMachine];
    [(BLSHBacklightStateMachine *)v16->_stateMachine registerHandlersForService:serviceCopy];
    [(BLSHBacklightTransitionStateMachine *)v16->_transitionStateMachine registerHandlersForService:serviceCopy];
    if (!only)
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
        displayStateMachine = [v48[0] displayStateMachine];
        v48[1] = displayStateMachine;
        v44 = [@"com.apple.BacklightServices.BLSHBacklightTransitionStateMachine.watchdogtest" stringByAppendingString:0x283379D80];
        v47[2] = v44;
        v48[2] = v16->_transitionStateMachine;
        v43 = [@"com.apple.BacklightServices.BLSHBacklightDisplayStateMachine.watchdogtest" stringByAppendingString:0x283379D80];
        v47[3] = v43;
        displayStateMachine2 = [(BLSHBacklightTransitionStateMachine *)v16->_transitionStateMachine displayStateMachine];
        v48[3] = displayStateMachine2;
        v41 = [@"com.apple.BacklightServices.BLSHBacklightDisplayStateMachine.watchdogtest" stringByAppendingString:0x283379D60];
        v47[4] = v41;
        displayStateMachine3 = [(BLSHBacklightTransitionStateMachine *)v16->_transitionStateMachine displayStateMachine];
        v47[5] = @"com.apple.BacklightServices.BLSHBacklightOSInterfaceProvider.watchdogtest";
        v48[4] = displayStateMachine3;
        v48[5] = interfaceProviderCopy;
        v38 = [@"com.apple.BacklightServices.BLSHBacklightOSInterfaceProvider.watchdogtest" stringByAppendingString:0x283379D80];
        v47[6] = v38;
        v48[6] = interfaceProviderCopy;
        v37 = [@"com.apple.BacklightServices.BLSHBacklightOSInterfaceProvider.watchdogtest" stringByAppendingString:0x283379DA0];
        v47[7] = v37;
        v48[7] = interfaceProviderCopy;
        v36 = [@"com.apple.BacklightServices.BLSHBacklightOSInterfaceProvider.watchdogtest" stringByAppendingString:0x283379DC0];
        v47[8] = v36;
        v48[8] = interfaceProviderCopy;
        v25 = [@"com.apple.BacklightServices.BLSHBacklightOSInterfaceProvider.watchdogtest" stringByAppendingString:0x283379D60];
        v47[9] = v25;
        displayStateMachine4 = [(BLSHBacklightTransitionStateMachine *)v16->_transitionStateMachine displayStateMachine];
        v48[9] = displayStateMachine4;
        v27 = [@"com.apple.BacklightServices.BLSHBacklightOSInterfaceProvider.watchdogtest" stringByAppendingString:0x283379DE0];
        v47[10] = v27;
        v48[10] = interfaceProviderCopy;
        v28 = [@"com.apple.BacklightServices.BLSHBacklightOSInterfaceProvider.watchdogtest" stringByAppendingString:0x283379E00];
        v47[11] = v28;
        v48[11] = interfaceProviderCopy;
        v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:12];
        v30 = [(BLSHWatchdogTester *)v40 initWithWatchdogProviderDelegate:interfaceProviderCopy testables:v29];
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