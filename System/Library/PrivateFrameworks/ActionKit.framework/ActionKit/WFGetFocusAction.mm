@interface WFGetFocusAction
- (void)runAsynchronouslyWithInput:(id)input;
@end

@implementation WFGetFocusAction

- (void)runAsynchronouslyWithInput:(id)input
{
  activeMode = [MEMORY[0x277D7C438] activeMode];
  if ([activeMode isPlaceholder])
  {
    [(WFGetFocusAction *)self finishRunningWithError:0];
  }

  else
  {
    activityIdentifier = [activeMode activityIdentifier];
    if ([activityIdentifier length])
    {
      v5 = [[WFFocusMode alloc] initWithFCActivityDescribing:activeMode];
      v6 = [(WFContentItem *)WFFocusModeContentItem itemWithObject:v5];
      if (v6)
      {
        output = [(WFGetFocusAction *)self output];
        [output addItem:v6];
      }

      [(WFGetFocusAction *)self finishRunningWithError:0];
    }

    else
    {
      [(WFGetFocusAction *)self finishRunningWithError:0];
    }
  }
}

@end