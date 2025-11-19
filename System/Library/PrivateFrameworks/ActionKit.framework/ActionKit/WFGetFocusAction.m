@interface WFGetFocusAction
- (void)runAsynchronouslyWithInput:(id)a3;
@end

@implementation WFGetFocusAction

- (void)runAsynchronouslyWithInput:(id)a3
{
  v8 = [MEMORY[0x277D7C438] activeMode];
  if ([v8 isPlaceholder])
  {
    [(WFGetFocusAction *)self finishRunningWithError:0];
  }

  else
  {
    v4 = [v8 activityIdentifier];
    if ([v4 length])
    {
      v5 = [[WFFocusMode alloc] initWithFCActivityDescribing:v8];
      v6 = [(WFContentItem *)WFFocusModeContentItem itemWithObject:v5];
      if (v6)
      {
        v7 = [(WFGetFocusAction *)self output];
        [v7 addItem:v6];
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