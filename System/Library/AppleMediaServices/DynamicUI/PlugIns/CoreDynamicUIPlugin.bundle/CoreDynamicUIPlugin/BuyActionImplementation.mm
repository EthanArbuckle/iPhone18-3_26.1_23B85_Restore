@interface BuyActionImplementation
- (id)purchase:(id)purchase handleSceneIdentifierRequest:(id)request error:(id *)error;
- (id)purchase:(id)purchase handleWindowRequest:(id)request error:(id *)error;
- (void)purchase:(id)purchase willProcessResponse:(id)response;
@end

@implementation BuyActionImplementation

- (void)purchase:(id)purchase willProcessResponse:(id)response
{
  v6 = sub_8F564();
  purchaseCopy = purchase;
  selfCopy = self;
  sub_1C7FC(selfCopy, v6);
}

- (id)purchase:(id)purchase handleSceneIdentifierRequest:(id)request error:(id *)error
{
  purchaseCopy = purchase;
  requestCopy = request;
  selfCopy = self;
  sub_1E9AC();

  v10 = sub_8F5C4();

  return v10;
}

- (id)purchase:(id)purchase handleWindowRequest:(id)request error:(id *)error
{
  purchaseCopy = purchase;
  requestCopy = request;
  selfCopy = self;
  v10 = sub_1EC44();

  return v10;
}

@end