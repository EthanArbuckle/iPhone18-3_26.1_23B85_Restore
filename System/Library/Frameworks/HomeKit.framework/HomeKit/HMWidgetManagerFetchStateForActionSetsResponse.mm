@interface HMWidgetManagerFetchStateForActionSetsResponse
- (HMWidgetManagerFetchStateForActionSetsResponse)initWithIsOnByActionSetsUniqueIdentifier:(id)identifier didExecutionFailByActionSetUniqueIdentifier:(id)uniqueIdentifier;
@end

@implementation HMWidgetManagerFetchStateForActionSetsResponse

- (HMWidgetManagerFetchStateForActionSetsResponse)initWithIsOnByActionSetsUniqueIdentifier:(id)identifier didExecutionFailByActionSetUniqueIdentifier:(id)uniqueIdentifier
{
  identifierCopy = identifier;
  uniqueIdentifierCopy = uniqueIdentifier;
  v12.receiver = self;
  v12.super_class = HMWidgetManagerFetchStateForActionSetsResponse;
  v9 = [(HMWidgetManagerFetchStateForActionSetsResponse *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_isOnByActionSetUniqueIdentifier, identifier);
    objc_storeStrong(&v10->_didExecutionFailByActionSetUniqueIdentifier, uniqueIdentifier);
  }

  return v10;
}

@end