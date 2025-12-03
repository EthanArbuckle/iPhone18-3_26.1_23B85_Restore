@interface STUserResolutionResult
+ (id)confirmationRequiredWithObjectToConfirm:(id)confirm;
+ (id)confirmationRequiredWithUserToConfirm:(id)confirm;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithUsersToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedObject:(id)object;
+ (id)successWithResolvedUser:(id)user;
- (STUserResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent;
@end

@implementation STUserResolutionResult

+ (id)successWithResolvedUser:(id)user
{
  swift_getObjCClassMetadata();
  userCopy = user;
  v5 = static STUserResolutionResult.success(with:)(userCopy);

  return v5;
}

+ (id)disambiguationWithUsersToDisambiguate:(id)disambiguate
{
  type metadata accessor for STUser();
  v3 = sub_100049F58();
  swift_getObjCClassMetadata();
  v4 = static STUserResolutionResult.disambiguation(with:)(v3);

  return v4;
}

+ (id)confirmationRequiredWithUserToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = static STUserResolutionResult.confirmationRequired(with:)(confirm);

  return v5;
}

+ (id)successWithResolvedObject:(id)object
{
  result = sub_10004A2A8();
  __break(1u);
  return result;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate
{
  result = sub_10004A2A8();
  __break(1u);
  return result;
}

+ (id)confirmationRequiredWithObjectToConfirm:(id)confirm
{
  result = sub_10004A2A8();
  __break(1u);
  return result;
}

- (STUserResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent
{
  sub_100049DA8();
  intentCopy = intent;
  isa = sub_100049D98().super.isa;

  v10.receiver = self;
  v10.super_class = type metadata accessor for STUserResolutionResult();
  v8 = [(STUserResolutionResult *)&v10 initWithJSONDictionary:isa forIntent:intentCopy];

  if (v8)
  {
  }

  return v8;
}

@end