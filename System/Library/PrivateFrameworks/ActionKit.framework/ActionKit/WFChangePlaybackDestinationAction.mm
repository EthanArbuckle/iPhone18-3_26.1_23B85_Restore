@interface WFChangePlaybackDestinationAction
- (id)errorFromRoutePickerError:(id)error;
- (id)errorUserInfoForRoutePickerErrorCode:(int64_t)code;
- (id)routeDescriptor;
- (int64_t)operation;
- (void)runAsynchronouslyWithInput:(id)input;
@end

@implementation WFChangePlaybackDestinationAction

- (id)errorUserInfoForRoutePickerErrorCode:(int64_t)code
{
  v23[2] = *MEMORY[0x277D85DE8];
  if ((code - 4) >= 5)
  {
    if (code >= 3)
    {
      if (code != 3)
      {
        goto LABEL_8;
      }

      v20[0] = *MEMORY[0x277CCA470];
      v15 = MEMORY[0x277CCACA8];
      v6 = WFLocalizedString(@"Could Not Set Playback Destination to “%@”");
      routeDescriptor = [(WFChangePlaybackDestinationAction *)self routeDescriptor];
      routeName = [routeDescriptor routeName];
      v9 = [v15 localizedStringWithFormat:v6, routeName];
      v21[0] = v9;
      v20[1] = *MEMORY[0x277CCA450];
      v10 = WFLocalizedString(@"It took too long to set the destination to the specified device.");
      v21[1] = v10;
      v11 = MEMORY[0x277CBEAC0];
      v12 = v21;
      v13 = v20;
    }

    else
    {
      v22[0] = *MEMORY[0x277CCA470];
      v14 = MEMORY[0x277CCACA8];
      v6 = WFLocalizedString(@"Could Not Find “%@”");
      routeDescriptor = [(WFChangePlaybackDestinationAction *)self routeDescriptor];
      routeName = [routeDescriptor routeName];
      v9 = [v14 localizedStringWithFormat:v6, routeName];
      v23[0] = v9;
      v22[1] = *MEMORY[0x277CCA450];
      v10 = WFLocalizedString(@"Set Playback Destination failed because the device could not be found.");
      v23[1] = v10;
      v11 = MEMORY[0x277CBEAC0];
      v12 = v23;
      v13 = v22;
    }
  }

  else
  {
    v18[0] = *MEMORY[0x277CCA470];
    v5 = MEMORY[0x277CCACA8];
    v6 = WFLocalizedString(@"Failed to Set Playback Destination to “%@”");
    routeDescriptor = [(WFChangePlaybackDestinationAction *)self routeDescriptor];
    routeName = [routeDescriptor routeName];
    v9 = [v5 localizedStringWithFormat:v6, routeName, v18[0]];
    v19[0] = v9;
    v18[1] = *MEMORY[0x277CCA450];
    v10 = WFLocalizedString(@"The playback destination could not be set.");
    v19[1] = v10;
    v11 = MEMORY[0x277CBEAC0];
    v12 = v19;
    v13 = v18;
  }

  v3 = [v11 dictionaryWithObjects:v12 forKeys:v13 count:2];

LABEL_8:
  v16 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)errorFromRoutePickerError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v6 = [domain isEqualToString:@"WFMediaRoutePickerErrorDomain"];

  if ((v6 & 1) == 0)
  {
    domain2 = [errorCopy domain];
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v11 = getMPAVRoutingControllerErrorDomainSymbolLoc_ptr;
    v21 = getMPAVRoutingControllerErrorDomainSymbolLoc_ptr;
    if (!getMPAVRoutingControllerErrorDomainSymbolLoc_ptr)
    {
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __getMPAVRoutingControllerErrorDomainSymbolLoc_block_invoke;
      v17[3] = &unk_278C222B8;
      v17[4] = &v18;
      __getMPAVRoutingControllerErrorDomainSymbolLoc_block_invoke(v17);
      v11 = v19[3];
    }

    _Block_object_dispose(&v18, 8);
    if (!v11)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMPAVRoutingControllerErrorDomain(void)"];
      [currentHandler handleFailureInFunction:v16 file:@"WFChangePlaybackDestinationAction.m" lineNumber:18 description:{@"%s", dlerror()}];

      __break(1u);
      return result;
    }

    if ([domain2 isEqualToString:*v11])
    {
      code = [errorCopy code];

      if (code == 6)
      {
        userCancelledError = [MEMORY[0x277CCA9B8] userCancelledError];
LABEL_11:
        v9 = userCancelledError;
        goto LABEL_12;
      }
    }

    else
    {
    }

    userCancelledError = errorCopy;
    goto LABEL_11;
  }

  v7 = -[WFChangePlaybackDestinationAction errorUserInfoForRoutePickerErrorCode:](self, "errorUserInfoForRoutePickerErrorCode:", [errorCopy code]);
  v8 = [v7 mutableCopy];
  [v8 setObject:errorCopy forKey:*MEMORY[0x277CCA7E8]];
  v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D7CB30] code:5 userInfo:v8];

LABEL_12:

  return v9;
}

- (void)runAsynchronouslyWithInput:(id)input
{
  v4 = objc_opt_new();
  routeDescriptor = [(WFChangePlaybackDestinationAction *)self routeDescriptor];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__WFChangePlaybackDestinationAction_runAsynchronouslyWithInput___block_invoke;
  v7[3] = &unk_278C21EA8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v6 findRouteMatchingDescriptor:routeDescriptor timeout:v7 completionHandler:15.0];
}

void __64__WFChangePlaybackDestinationAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5)
  {
    v6 = *(a1 + 40);
    v7 = [*(a1 + 32) operation];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __64__WFChangePlaybackDestinationAction_runAsynchronouslyWithInput___block_invoke_2;
    v10[3] = &unk_278C221F8;
    v10[4] = *(a1 + 32);
    [v6 selectRoute:v5 operation:v7 timeout:v10 completionHandler:20.0];
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = [v8 errorFromRoutePickerError:a3];
    [v8 finishRunningWithError:v9];
  }
}

void __64__WFChangePlaybackDestinationAction_runAsynchronouslyWithInput___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [v2 errorFromRoutePickerError:a2];
  [v2 finishRunningWithError:v3];
}

- (int64_t)operation
{
  v2 = [(WFChangePlaybackDestinationAction *)self parameterValueForKey:@"WFMediaRouteOperation" ofClass:objc_opt_class()];
  if ([v2 isEqualToString:@"Add"])
  {
    v3 = 1;
  }

  else if ([v2 isEqualToString:@"Remove"])
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)routeDescriptor
{
  v3 = objc_opt_class();

  return [(WFChangePlaybackDestinationAction *)self parameterValueForKey:@"WFMediaRoute" ofClass:v3];
}

@end