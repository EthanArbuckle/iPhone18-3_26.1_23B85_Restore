@interface WFHandOffPlaybackAction
- (id)destinationRouteDescriptor;
- (id)errorFromRoutePickerError:(id)error;
- (id)errorUserInfoForRoutePickerErrorCode:(int64_t)code involvedRouteName:(id)name;
- (id)invokingHomePodRouteDescriptor;
- (id)localEndpoint;
- (id)sourceRouteDescriptor;
- (void)askForUserSpecificationOfMissingRouteWithRoutePicker:(id)picker completionBlock:(id)block;
- (void)findInvokingHomePodEndpointWithRoutePicker:(id)picker completionBlock:(id)block;
- (void)runAsynchronouslyWithInput:(id)input;
- (void)runWhenInvokedThroughHomePodWithSpecifiedDescriptor:(id)descriptor picker:(id)picker;
- (void)runWhenInvokedThroughLocalDeviceWithSpecifiedDescriptor:(id)descriptor picker:(id)picker;
- (void)runWithSourceRouteUID:(id)d destinationRouteUID:(id)iD routePicker:(id)picker;
@end

@implementation WFHandOffPlaybackAction

- (id)errorUserInfoForRoutePickerErrorCode:(int64_t)code involvedRouteName:(id)name
{
  v30[2] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if (!nameCopy)
  {
    nameCopy = WFLocalizedString(@"Unknown");
  }

  if (code <= 8)
  {
    if (((1 << code) & 0xD8) != 0)
    {
      v23[0] = *MEMORY[0x277CCA470];
      v7 = MEMORY[0x277CCACA8];
      v8 = WFLocalizedString(@"Failed to Hand Off Music Between “%@” and “%@”");
      sourceRouteDescriptor = [(WFHandOffPlaybackAction *)self sourceRouteDescriptor];
      routeName = [sourceRouteDescriptor routeName];
      destinationRouteDescriptor = [(WFHandOffPlaybackAction *)self destinationRouteDescriptor];
      routeName2 = [destinationRouteDescriptor routeName];
      v13 = [v7 localizedStringWithFormat:v8, routeName, routeName2];
      v24[0] = v13;
      v23[1] = *MEMORY[0x277CCA450];
      v14 = WFLocalizedString(@"Couldn't hand off music between specified devices.");
      v24[1] = v14;
      self = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];

LABEL_13:
      goto LABEL_14;
    }

    if (code == 5)
    {
      v27[0] = *MEMORY[0x277CCA470];
      v20 = MEMORY[0x277CCACA8];
      v8 = WFLocalizedString(@"Could Not Connect To “%@”");
      sourceRouteDescriptor = [v20 localizedStringWithFormat:v8, nameCopy];
      v28[0] = sourceRouteDescriptor;
      v27[1] = *MEMORY[0x277CCA450];
      routeName = WFLocalizedString(@"It took too long to connect to the specified device.");
      v28[1] = routeName;
      v16 = MEMORY[0x277CBEAC0];
      v17 = v28;
      v18 = v27;
      goto LABEL_12;
    }

    if (code == 8)
    {
      v25[0] = *MEMORY[0x277CCA470];
      v15 = MEMORY[0x277CCACA8];
      v8 = WFLocalizedString(@"Device “%@” Is Not Playing Music");
      sourceRouteDescriptor = [v15 localizedStringWithFormat:v8, nameCopy];
      v26[0] = sourceRouteDescriptor;
      v25[1] = *MEMORY[0x277CCA450];
      routeName = WFLocalizedString(@"The specified device is not playing any music.");
      v26[1] = routeName;
      v16 = MEMORY[0x277CBEAC0];
      v17 = v26;
      v18 = v25;
LABEL_12:
      self = [v16 dictionaryWithObjects:v17 forKeys:v18 count:2];
      goto LABEL_13;
    }
  }

  if (code < 3)
  {
    v29[0] = *MEMORY[0x277CCA470];
    v19 = MEMORY[0x277CCACA8];
    v8 = WFLocalizedString(@"Could Not Find “%@”");
    sourceRouteDescriptor = [v19 localizedStringWithFormat:v8, nameCopy];
    v30[0] = sourceRouteDescriptor;
    v29[1] = *MEMORY[0x277CCA450];
    routeName = WFLocalizedString(@"Hand Off Playback failed because the specified device could not be found.");
    v30[1] = routeName;
    v16 = MEMORY[0x277CBEAC0];
    v17 = v30;
    v18 = v29;
    goto LABEL_12;
  }

LABEL_14:

  v21 = *MEMORY[0x277D85DE8];

  return self;
}

- (id)errorFromRoutePickerError:(id)error
{
  errorCopy = error;
  v5 = errorCopy;
  if (errorCopy)
  {
    domain = [errorCopy domain];
    v7 = [domain isEqualToString:@"WFMediaRoutePickerErrorDomain"];

    if (v7)
    {
      userInfo = [v5 userInfo];
      v9 = [userInfo objectForKeyedSubscript:@"InvolvedMediaRoute"];

      v10 = -[WFHandOffPlaybackAction errorUserInfoForRoutePickerErrorCode:involvedRouteName:](self, "errorUserInfoForRoutePickerErrorCode:involvedRouteName:", [v5 code], v9);
      v11 = [v10 mutableCopy];
      [v11 setObject:v5 forKey:*MEMORY[0x277CCA7E8]];
      v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D7CB30] code:5 userInfo:v11];
    }

    else
    {
      v12 = v5;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)destinationRouteDescriptor
{
  v3 = objc_opt_class();

  return [(WFHandOffPlaybackAction *)self parameterValueForKey:@"WFDestinationMediaRoute" ofClass:v3];
}

- (id)sourceRouteDescriptor
{
  v3 = objc_opt_class();

  return [(WFHandOffPlaybackAction *)self parameterValueForKey:@"WFSourceMediaRoute" ofClass:v3];
}

- (void)askForUserSpecificationOfMissingRouteWithRoutePicker:(id)picker completionBlock:(id)block
{
  blockCopy = block;
  sourceRouteDescriptor = [(WFHandOffPlaybackAction *)self sourceRouteDescriptor];
  if (sourceRouteDescriptor)
  {
    v7 = @"WFDestinationMediaRoute";
  }

  else
  {
    v7 = @"WFSourceMediaRoute";
  }

  v8 = [(WFHandOffPlaybackAction *)self parameterForKey:v7];

  v9 = [MEMORY[0x277CBEB70] orderedSetWithObject:v8];
  v10 = dispatch_get_global_queue(0, 0);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __96__WFHandOffPlaybackAction_askForUserSpecificationOfMissingRouteWithRoutePicker_completionBlock___block_invoke;
  v13[3] = &unk_278C19228;
  v14 = v8;
  v15 = blockCopy;
  v11 = blockCopy;
  v12 = v8;
  [(WFHandOffPlaybackAction *)self askForValuesOfParameters:v9 withDefaultStates:MEMORY[0x277CBEC10] prompts:MEMORY[0x277CBEC10] input:0 workQueue:v10 completionHandler:v13];
}

void __96__WFHandOffPlaybackAction_askForUserSpecificationOfMissingRouteWithRoutePicker_completionBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = [v7 key];
  v10 = [v8 objectForKeyedSubscript:v9];

  v11 = objc_opt_class();
  v12 = v10;
  if (v12 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = getWFGeneralLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      v21 = 136315906;
      v22 = "WFEnforceClass";
      v23 = 2114;
      v24 = v12;
      v25 = 2114;
      v26 = objc_opt_class();
      v27 = 2114;
      v28 = v11;
      v15 = v26;
      _os_log_impl(&dword_23DE30000, v14, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", &v21, 0x2Au);
    }

    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  if (v13)
  {
    v19 = v13;
  }

  else
  {
    v19 = 0;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v19, v6, v16, v17, v18);

  v20 = *MEMORY[0x277D85DE8];
}

- (void)findInvokingHomePodEndpointWithRoutePicker:(id)picker completionBlock:(id)block
{
  pickerCopy = picker;
  blockCopy = block;
  invokingHomePodRouteDescriptor = [(WFHandOffPlaybackAction *)self invokingHomePodRouteDescriptor];
  if (invokingHomePodRouteDescriptor)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __86__WFHandOffPlaybackAction_findInvokingHomePodEndpointWithRoutePicker_completionBlock___block_invoke;
    v9[3] = &unk_278C19200;
    v9[4] = self;
    v10 = blockCopy;
    [pickerCopy findHandoffRouteMatchingDescriptor:invokingHomePodRouteDescriptor timeout:v9 completionHandler:5.0];
  }

  else
  {
    (*(blockCopy + 2))(blockCopy, 0, 0);
  }
}

void __86__WFHandOffPlaybackAction_findInvokingHomePodEndpointWithRoutePicker_completionBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = a2;
  v7 = [v5 errorFromRoutePickerError:a3];
  (*(v4 + 16))(v4, v6, v7);
}

- (id)localEndpoint
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v2 = getMPAVEndpointRouteClass_softClass;
  v10 = getMPAVEndpointRouteClass_softClass;
  if (!getMPAVEndpointRouteClass_softClass)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __getMPAVEndpointRouteClass_block_invoke;
    v6[3] = &unk_278C222B8;
    v6[4] = &v7;
    __getMPAVEndpointRouteClass_block_invoke(v6);
    v2 = v8[3];
  }

  v3 = v2;
  _Block_object_dispose(&v7, 8);
  v4 = [[v2 alloc] initWithEndpoint:MRAVEndpointGetLocalEndpoint()];

  return v4;
}

- (id)invokingHomePodRouteDescriptor
{
  userInterface = [(WFHandOffPlaybackAction *)self userInterface];
  if (![userInterface isRunningWithSiriUI])
  {
    v8 = 0;
    goto LABEL_6;
  }

  userInterface2 = [(WFHandOffPlaybackAction *)self userInterface];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    userInterface3 = [(WFHandOffPlaybackAction *)self userInterface];
    airPlayRouteIDs = [userInterface3 airPlayRouteIDs];
    userInterface = [airPlayRouteIDs firstObject];

    if (userInterface)
    {
      v8 = [[WFMediaRouteDescriptor alloc] initWithRouteUID:userInterface groupUID:0 routeName:0 isLocalDevice:0];
LABEL_6:

      goto LABEL_8;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (void)runWithSourceRouteUID:(id)d destinationRouteUID:(id)iD routePicker:(id)picker
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __81__WFHandOffPlaybackAction_runWithSourceRouteUID_destinationRouteUID_routePicker___block_invoke;
  v5[3] = &unk_278C221F8;
  v5[4] = self;
  [picker handOffFromSourceUID:d toDestinationUID:iD timeout:v5 completionHandler:20.0];
}

- (void)runWhenInvokedThroughLocalDeviceWithSpecifiedDescriptor:(id)descriptor picker:(id)picker
{
  descriptorCopy = descriptor;
  pickerCopy = picker;
  sourceRouteDescriptor = [(WFHandOffPlaybackAction *)self sourceRouteDescriptor];

  if ([descriptorCopy isLocalDevice])
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __90__WFHandOffPlaybackAction_runWhenInvokedThroughLocalDeviceWithSpecifiedDescriptor_picker___block_invoke;
    v14[3] = &unk_278C191D8;
    v14[4] = self;
    v17 = sourceRouteDescriptor == 0;
    v15 = descriptorCopy;
    v16 = pickerCopy;
    [(WFHandOffPlaybackAction *)self askForUserSpecificationOfMissingRouteWithRoutePicker:v16 completionBlock:v14];
  }

  else
  {
    if (sourceRouteDescriptor)
    {
      routeUID = [descriptorCopy routeUID];
      localEndpoint = [(WFHandOffPlaybackAction *)self localEndpoint];
      routeUID2 = [localEndpoint routeUID];
      selfCopy2 = self;
      v13 = routeUID;
    }

    else
    {
      routeUID = [(WFHandOffPlaybackAction *)self localEndpoint];
      localEndpoint = [routeUID routeUID];
      routeUID2 = [descriptorCopy routeUID];
      selfCopy2 = self;
      v13 = localEndpoint;
    }

    [(WFHandOffPlaybackAction *)selfCopy2 runWithSourceRouteUID:v13 destinationRouteUID:routeUID2 routePicker:pickerCopy];
  }
}

void __90__WFHandOffPlaybackAction_runWhenInvokedThroughLocalDeviceWithSpecifiedDescriptor_picker___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v11)
  {
    if (*(a1 + 56) == 1)
    {
      v7 = v11;
    }

    else
    {
      v7 = *(a1 + 40);
    }

    v8 = [v7 routeUID];
    if (*(a1 + 56))
    {
      v9 = *(a1 + 40);
    }

    else
    {
      v9 = v11;
    }

    v10 = [v9 routeUID];
    [v6 runWithSourceRouteUID:v8 destinationRouteUID:v10 routePicker:*(a1 + 48)];
  }

  else
  {
    [v6 finishRunningWithError:v5];
  }
}

- (void)runWhenInvokedThroughHomePodWithSpecifiedDescriptor:(id)descriptor picker:(id)picker
{
  descriptorCopy = descriptor;
  pickerCopy = picker;
  sourceRouteDescriptor = [(WFHandOffPlaybackAction *)self sourceRouteDescriptor];

  invokingHomePodRouteDescriptor = [(WFHandOffPlaybackAction *)self invokingHomePodRouteDescriptor];
  if ([descriptorCopy isEqualInRouteUIDs:invokingHomePodRouteDescriptor])
  {
    if (sourceRouteDescriptor)
    {
      routeUID = [descriptorCopy routeUID];
      localEndpoint = [(WFHandOffPlaybackAction *)self localEndpoint];
      routeUID2 = [localEndpoint routeUID];
      selfCopy2 = self;
      v13 = routeUID;
    }

    else
    {
      routeUID = [(WFHandOffPlaybackAction *)self localEndpoint];
      localEndpoint = [routeUID routeUID];
      routeUID2 = [descriptorCopy routeUID];
      selfCopy2 = self;
      v13 = localEndpoint;
    }

    [(WFHandOffPlaybackAction *)selfCopy2 runWithSourceRouteUID:v13 destinationRouteUID:routeUID2 routePicker:pickerCopy];
  }

  else
  {
    if (!invokingHomePodRouteDescriptor)
    {
      [(WFHandOffPlaybackAction *)self finishRunningWithError:0];
      goto LABEL_13;
    }

    if (sourceRouteDescriptor)
    {
      routeUID = [descriptorCopy routeUID];
      v14 = invokingHomePodRouteDescriptor;
    }

    else
    {
      routeUID = [invokingHomePodRouteDescriptor routeUID];
      v14 = descriptorCopy;
    }

    localEndpoint = [v14 routeUID];
    [(WFHandOffPlaybackAction *)self runWithSourceRouteUID:routeUID destinationRouteUID:localEndpoint routePicker:pickerCopy];
  }

LABEL_13:
}

- (void)runAsynchronouslyWithInput:(id)input
{
  v4 = [[WFMediaRoutePicker alloc] initWithRouteType:2];
  sourceRouteDescriptor = [(WFHandOffPlaybackAction *)self sourceRouteDescriptor];
  if (sourceRouteDescriptor && (v6 = sourceRouteDescriptor, [(WFHandOffPlaybackAction *)self destinationRouteDescriptor], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    sourceRouteDescriptor2 = [(WFHandOffPlaybackAction *)self sourceRouteDescriptor];
    routeUID = [sourceRouteDescriptor2 routeUID];
    destinationRouteDescriptor = [(WFHandOffPlaybackAction *)self destinationRouteDescriptor];
    routeUID2 = [destinationRouteDescriptor routeUID];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __54__WFHandOffPlaybackAction_runAsynchronouslyWithInput___block_invoke;
    v18[3] = &unk_278C221F8;
    v18[4] = self;
    [(WFMediaRoutePicker *)v4 handOffFromSourceUID:routeUID toDestinationUID:routeUID2 timeout:v18 completionHandler:20.0];
  }

  else
  {
    sourceRouteDescriptor3 = [(WFHandOffPlaybackAction *)self sourceRouteDescriptor];
    if (sourceRouteDescriptor3)
    {
    }

    else
    {
      destinationRouteDescriptor2 = [(WFHandOffPlaybackAction *)self destinationRouteDescriptor];

      if (!destinationRouteDescriptor2)
      {
        [(WFHandOffPlaybackAction *)self finishRunningWithError:0];
        goto LABEL_14;
      }
    }

    sourceRouteDescriptor4 = [(WFHandOffPlaybackAction *)self sourceRouteDescriptor];
    v15 = sourceRouteDescriptor4;
    if (sourceRouteDescriptor4)
    {
      destinationRouteDescriptor3 = sourceRouteDescriptor4;
    }

    else
    {
      destinationRouteDescriptor3 = [(WFHandOffPlaybackAction *)self destinationRouteDescriptor];
    }

    sourceRouteDescriptor2 = destinationRouteDescriptor3;

    invokingHomePodRouteDescriptor = [(WFHandOffPlaybackAction *)self invokingHomePodRouteDescriptor];

    if (invokingHomePodRouteDescriptor)
    {
      [(WFHandOffPlaybackAction *)self runWhenInvokedThroughHomePodWithSpecifiedDescriptor:sourceRouteDescriptor2 picker:v4];
    }

    else
    {
      [(WFHandOffPlaybackAction *)self runWhenInvokedThroughLocalDeviceWithSpecifiedDescriptor:sourceRouteDescriptor2 picker:v4];
    }
  }

LABEL_14:
}

@end