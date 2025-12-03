@interface WFSeekAction
- (void)runAsynchronouslyWithInput:(id)input;
@end

@implementation WFSeekAction

- (void)runAsynchronouslyWithInput:(id)input
{
  v23[1] = *MEMORY[0x277D85DE8];
  v4 = [(WFSeekAction *)self parameterValueForKey:@"WFMediaRoute" ofClass:objc_opt_class()];
  if (v4)
  {
    v5 = [(WFSeekAction *)self parameterValueForKey:@"WFSeekBehavior" ofClass:objc_opt_class()];
    v6 = [(WFSeekAction *)self parameterValueForKey:@"WFTimeInterval" ofClass:objc_opt_class()];
    v7 = MEMORY[0x277D7C398];
    unitString = [v6 unitString];
    v9 = [v7 calendarUnitFromUnitString:unitString];

    date = [MEMORY[0x277CBEAA8] date];
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    magnitude = [v6 magnitude];
    v13 = [currentCalendar dateByAddingUnit:v9 value:objc_msgSend(magnitude toDate:"integerValue") options:{date, 0}];

    [v13 timeIntervalSinceDate:date];
    v15 = v14;
    v16 = objc_alloc_init(WFMediaPlaybackController);
    v17 = 0;
    if (([v4 isLocalDevice] & 1) == 0)
    {
      routeUID = [v4 routeUID];

      if (!routeUID)
      {
        v17 = WFMediaRouteDescriptorIsMissingRouteUIDError();
        [(WFSeekAction *)self finishRunningWithError:v17];
LABEL_12:

        goto LABEL_13;
      }

      routeUID2 = [v4 routeUID];
      v23[0] = routeUID2;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __43__WFSeekAction_runAsynchronouslyWithInput___block_invoke;
    aBlock[3] = &unk_278C221F8;
    aBlock[4] = self;
    v20 = _Block_copy(aBlock);
    if ([v5 isEqualToString:@"Forward By"])
    {
      [(WFMediaPlaybackController *)v16 skipForwardOnDevicesWithUIDs:v17 interval:v20 completion:v15];
    }

    else if ([v5 isEqualToString:@"Backward By"])
    {
      [(WFMediaPlaybackController *)v16 skipBackwardOnDevicesWithUIDs:v17 interval:v20 completion:v15];
    }

    else
    {
      [(WFMediaPlaybackController *)v16 skipToPositionOnDevicesWithUIDs:v17 interval:v20 completion:v15];
    }

    goto LABEL_12;
  }

  [(WFSeekAction *)self finishRunningWithError:0];
LABEL_13:

  v21 = *MEMORY[0x277D85DE8];
}

void __43__WFSeekAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v12 = v3;
  if (v3)
  {
    v4 = [v3 userInfo];
    v5 = [v4 mutableCopy];

    v6 = WFLocalizedString(@"Unable to Seek");
    [v5 setObject:v6 forKeyedSubscript:*MEMORY[0x277CCA470]];

    v7 = [v12 localizedDescription];

    if (!v7)
    {
      v8 = WFLocalizedString(@"An unknown error occurred.");
      [v5 setObject:v8 forKeyedSubscript:*MEMORY[0x277CCA450]];
    }

    v9 = MEMORY[0x277CCA9B8];
    v10 = [v12 domain];
    v11 = [v9 errorWithDomain:v10 code:objc_msgSend(v12 userInfo:{"code"), v5}];
  }

  else
  {
    v11 = 0;
  }

  [*(a1 + 32) finishRunningWithError:v11];
}

@end