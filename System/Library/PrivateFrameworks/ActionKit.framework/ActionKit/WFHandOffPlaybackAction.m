@interface WFHandOffPlaybackAction
- (id)destinationRouteDescriptor;
- (id)errorFromRoutePickerError:(id)a3;
- (id)errorUserInfoForRoutePickerErrorCode:(int64_t)a3 involvedRouteName:(id)a4;
- (id)invokingHomePodRouteDescriptor;
- (id)localEndpoint;
- (id)sourceRouteDescriptor;
- (void)askForUserSpecificationOfMissingRouteWithRoutePicker:(id)a3 completionBlock:(id)a4;
- (void)findInvokingHomePodEndpointWithRoutePicker:(id)a3 completionBlock:(id)a4;
- (void)runAsynchronouslyWithInput:(id)a3;
- (void)runWhenInvokedThroughHomePodWithSpecifiedDescriptor:(id)a3 picker:(id)a4;
- (void)runWhenInvokedThroughLocalDeviceWithSpecifiedDescriptor:(id)a3 picker:(id)a4;
- (void)runWithSourceRouteUID:(id)a3 destinationRouteUID:(id)a4 routePicker:(id)a5;
@end

@implementation WFHandOffPlaybackAction

- (id)errorUserInfoForRoutePickerErrorCode:(int64_t)a3 involvedRouteName:(id)a4
{
  v30[2] = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (!v6)
  {
    v6 = WFLocalizedString(@"Unknown");
  }

  if (a3 <= 8)
  {
    if (((1 << a3) & 0xD8) != 0)
    {
      v23[0] = *MEMORY[0x277CCA470];
      v7 = MEMORY[0x277CCACA8];
      v8 = WFLocalizedString(@"Failed to Hand Off Music Between “%@” and “%@”");
      v9 = [(WFHandOffPlaybackAction *)self sourceRouteDescriptor];
      v10 = [v9 routeName];
      v11 = [(WFHandOffPlaybackAction *)self destinationRouteDescriptor];
      v12 = [v11 routeName];
      v13 = [v7 localizedStringWithFormat:v8, v10, v12];
      v24[0] = v13;
      v23[1] = *MEMORY[0x277CCA450];
      v14 = WFLocalizedString(@"Couldn't hand off music between specified devices.");
      v24[1] = v14;
      self = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];

LABEL_13:
      goto LABEL_14;
    }

    if (a3 == 5)
    {
      v27[0] = *MEMORY[0x277CCA470];
      v20 = MEMORY[0x277CCACA8];
      v8 = WFLocalizedString(@"Could Not Connect To “%@”");
      v9 = [v20 localizedStringWithFormat:v8, v6];
      v28[0] = v9;
      v27[1] = *MEMORY[0x277CCA450];
      v10 = WFLocalizedString(@"It took too long to connect to the specified device.");
      v28[1] = v10;
      v16 = MEMORY[0x277CBEAC0];
      v17 = v28;
      v18 = v27;
      goto LABEL_12;
    }

    if (a3 == 8)
    {
      v25[0] = *MEMORY[0x277CCA470];
      v15 = MEMORY[0x277CCACA8];
      v8 = WFLocalizedString(@"Device “%@” Is Not Playing Music");
      v9 = [v15 localizedStringWithFormat:v8, v6];
      v26[0] = v9;
      v25[1] = *MEMORY[0x277CCA450];
      v10 = WFLocalizedString(@"The specified device is not playing any music.");
      v26[1] = v10;
      v16 = MEMORY[0x277CBEAC0];
      v17 = v26;
      v18 = v25;
LABEL_12:
      self = [v16 dictionaryWithObjects:v17 forKeys:v18 count:2];
      goto LABEL_13;
    }
  }

  if (a3 < 3)
  {
    v29[0] = *MEMORY[0x277CCA470];
    v19 = MEMORY[0x277CCACA8];
    v8 = WFLocalizedString(@"Could Not Find “%@”");
    v9 = [v19 localizedStringWithFormat:v8, v6];
    v30[0] = v9;
    v29[1] = *MEMORY[0x277CCA450];
    v10 = WFLocalizedString(@"Hand Off Playback failed because the specified device could not be found.");
    v30[1] = v10;
    v16 = MEMORY[0x277CBEAC0];
    v17 = v30;
    v18 = v29;
    goto LABEL_12;
  }

LABEL_14:

  v21 = *MEMORY[0x277D85DE8];

  return self;
}

- (id)errorFromRoutePickerError:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 domain];
    v7 = [v6 isEqualToString:@"WFMediaRoutePickerErrorDomain"];

    if (v7)
    {
      v8 = [v5 userInfo];
      v9 = [v8 objectForKeyedSubscript:@"InvolvedMediaRoute"];

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

- (void)askForUserSpecificationOfMissingRouteWithRoutePicker:(id)a3 completionBlock:(id)a4
{
  v5 = a4;
  v6 = [(WFHandOffPlaybackAction *)self sourceRouteDescriptor];
  if (v6)
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
  v15 = v5;
  v11 = v5;
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

- (void)findInvokingHomePodEndpointWithRoutePicker:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WFHandOffPlaybackAction *)self invokingHomePodRouteDescriptor];
  if (v8)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __86__WFHandOffPlaybackAction_findInvokingHomePodEndpointWithRoutePicker_completionBlock___block_invoke;
    v9[3] = &unk_278C19200;
    v9[4] = self;
    v10 = v7;
    [v6 findHandoffRouteMatchingDescriptor:v8 timeout:v9 completionHandler:5.0];
  }

  else
  {
    (*(v7 + 2))(v7, 0, 0);
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
  v3 = [(WFHandOffPlaybackAction *)self userInterface];
  if (![v3 isRunningWithSiriUI])
  {
    v8 = 0;
    goto LABEL_6;
  }

  v4 = [(WFHandOffPlaybackAction *)self userInterface];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(WFHandOffPlaybackAction *)self userInterface];
    v7 = [v6 airPlayRouteIDs];
    v3 = [v7 firstObject];

    if (v3)
    {
      v8 = [[WFMediaRouteDescriptor alloc] initWithRouteUID:v3 groupUID:0 routeName:0 isLocalDevice:0];
LABEL_6:

      goto LABEL_8;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (void)runWithSourceRouteUID:(id)a3 destinationRouteUID:(id)a4 routePicker:(id)a5
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __81__WFHandOffPlaybackAction_runWithSourceRouteUID_destinationRouteUID_routePicker___block_invoke;
  v5[3] = &unk_278C221F8;
  v5[4] = self;
  [a5 handOffFromSourceUID:a3 toDestinationUID:a4 timeout:v5 completionHandler:20.0];
}

- (void)runWhenInvokedThroughLocalDeviceWithSpecifiedDescriptor:(id)a3 picker:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WFHandOffPlaybackAction *)self sourceRouteDescriptor];

  if ([v6 isLocalDevice])
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __90__WFHandOffPlaybackAction_runWhenInvokedThroughLocalDeviceWithSpecifiedDescriptor_picker___block_invoke;
    v14[3] = &unk_278C191D8;
    v14[4] = self;
    v17 = v8 == 0;
    v15 = v6;
    v16 = v7;
    [(WFHandOffPlaybackAction *)self askForUserSpecificationOfMissingRouteWithRoutePicker:v16 completionBlock:v14];
  }

  else
  {
    if (v8)
    {
      v9 = [v6 routeUID];
      v10 = [(WFHandOffPlaybackAction *)self localEndpoint];
      v11 = [v10 routeUID];
      v12 = self;
      v13 = v9;
    }

    else
    {
      v9 = [(WFHandOffPlaybackAction *)self localEndpoint];
      v10 = [v9 routeUID];
      v11 = [v6 routeUID];
      v12 = self;
      v13 = v10;
    }

    [(WFHandOffPlaybackAction *)v12 runWithSourceRouteUID:v13 destinationRouteUID:v11 routePicker:v7];
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

- (void)runWhenInvokedThroughHomePodWithSpecifiedDescriptor:(id)a3 picker:(id)a4
{
  v15 = a3;
  v6 = a4;
  v7 = [(WFHandOffPlaybackAction *)self sourceRouteDescriptor];

  v8 = [(WFHandOffPlaybackAction *)self invokingHomePodRouteDescriptor];
  if ([v15 isEqualInRouteUIDs:v8])
  {
    if (v7)
    {
      v9 = [v15 routeUID];
      v10 = [(WFHandOffPlaybackAction *)self localEndpoint];
      v11 = [v10 routeUID];
      v12 = self;
      v13 = v9;
    }

    else
    {
      v9 = [(WFHandOffPlaybackAction *)self localEndpoint];
      v10 = [v9 routeUID];
      v11 = [v15 routeUID];
      v12 = self;
      v13 = v10;
    }

    [(WFHandOffPlaybackAction *)v12 runWithSourceRouteUID:v13 destinationRouteUID:v11 routePicker:v6];
  }

  else
  {
    if (!v8)
    {
      [(WFHandOffPlaybackAction *)self finishRunningWithError:0];
      goto LABEL_13;
    }

    if (v7)
    {
      v9 = [v15 routeUID];
      v14 = v8;
    }

    else
    {
      v9 = [v8 routeUID];
      v14 = v15;
    }

    v10 = [v14 routeUID];
    [(WFHandOffPlaybackAction *)self runWithSourceRouteUID:v9 destinationRouteUID:v10 routePicker:v6];
  }

LABEL_13:
}

- (void)runAsynchronouslyWithInput:(id)a3
{
  v4 = [[WFMediaRoutePicker alloc] initWithRouteType:2];
  v5 = [(WFHandOffPlaybackAction *)self sourceRouteDescriptor];
  if (v5 && (v6 = v5, [(WFHandOffPlaybackAction *)self destinationRouteDescriptor], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    v8 = [(WFHandOffPlaybackAction *)self sourceRouteDescriptor];
    v9 = [v8 routeUID];
    v10 = [(WFHandOffPlaybackAction *)self destinationRouteDescriptor];
    v11 = [v10 routeUID];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __54__WFHandOffPlaybackAction_runAsynchronouslyWithInput___block_invoke;
    v18[3] = &unk_278C221F8;
    v18[4] = self;
    [(WFMediaRoutePicker *)v4 handOffFromSourceUID:v9 toDestinationUID:v11 timeout:v18 completionHandler:20.0];
  }

  else
  {
    v12 = [(WFHandOffPlaybackAction *)self sourceRouteDescriptor];
    if (v12)
    {
    }

    else
    {
      v13 = [(WFHandOffPlaybackAction *)self destinationRouteDescriptor];

      if (!v13)
      {
        [(WFHandOffPlaybackAction *)self finishRunningWithError:0];
        goto LABEL_14;
      }
    }

    v14 = [(WFHandOffPlaybackAction *)self sourceRouteDescriptor];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = [(WFHandOffPlaybackAction *)self destinationRouteDescriptor];
    }

    v8 = v16;

    v17 = [(WFHandOffPlaybackAction *)self invokingHomePodRouteDescriptor];

    if (v17)
    {
      [(WFHandOffPlaybackAction *)self runWhenInvokedThroughHomePodWithSpecifiedDescriptor:v8 picker:v4];
    }

    else
    {
      [(WFHandOffPlaybackAction *)self runWhenInvokedThroughLocalDeviceWithSpecifiedDescriptor:v8 picker:v4];
    }
  }

LABEL_14:
}

@end