@interface STUserResolutionResult
+ (id)confirmationRequiredWithObjectToConfirm:(id)a3;
+ (id)confirmationRequiredWithUserToConfirm:(id)a3;
+ (id)disambiguationWithObjectsToDisambiguate:(id)a3;
+ (id)disambiguationWithUsersToDisambiguate:(id)a3;
+ (id)successWithResolvedObject:(id)a3;
+ (id)successWithResolvedUser:(id)a3;
- (STUserResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4;
@end

@implementation STUserResolutionResult

+ (id)successWithResolvedUser:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = static STUserResolutionResult.success(with:)(v4);

  return v5;
}

+ (id)disambiguationWithUsersToDisambiguate:(id)a3
{
  type metadata accessor for STUser();
  v3 = sub_1000070BC();
  swift_getObjCClassMetadata();
  v4 = static STUserResolutionResult.disambiguation(with:)(v3);

  return v4;
}

+ (id)confirmationRequiredWithUserToConfirm:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = static STUserResolutionResult.confirmationRequired(with:)(a3);

  return v5;
}

+ (id)successWithResolvedObject:(id)a3
{
  result = sub_1000071BC();
  __break(1u);
  return result;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)a3
{
  result = sub_1000071BC();
  __break(1u);
  return result;
}

+ (id)confirmationRequiredWithObjectToConfirm:(id)a3
{
  result = sub_1000071BC();
  __break(1u);
  return result;
}

- (STUserResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4
{
  sub_10000706C();
  v6 = a4;
  isa = sub_10000705C().super.isa;

  v10.receiver = self;
  v10.super_class = type metadata accessor for STUserResolutionResult();
  v8 = [(STUserResolutionResult *)&v10 initWithJSONDictionary:isa forIntent:v6];

  if (v8)
  {
  }

  return v8;
}

@end