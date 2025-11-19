@interface HMWidgetManagerFetchStateForActionSetsResponse
- (HMWidgetManagerFetchStateForActionSetsResponse)initWithIsOnByActionSetsUniqueIdentifier:(id)a3 didExecutionFailByActionSetUniqueIdentifier:(id)a4;
@end

@implementation HMWidgetManagerFetchStateForActionSetsResponse

- (HMWidgetManagerFetchStateForActionSetsResponse)initWithIsOnByActionSetsUniqueIdentifier:(id)a3 didExecutionFailByActionSetUniqueIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMWidgetManagerFetchStateForActionSetsResponse;
  v9 = [(HMWidgetManagerFetchStateForActionSetsResponse *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_isOnByActionSetUniqueIdentifier, a3);
    objc_storeStrong(&v10->_didExecutionFailByActionSetUniqueIdentifier, a4);
  }

  return v10;
}

@end