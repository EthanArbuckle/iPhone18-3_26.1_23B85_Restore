@interface STKRestrictedDistributionManager
+ (BOOL)didAcceptRestrictedDistributionTerms;
+ (BOOL)mustAcceptRestrictedDistributionTerms;
+ (NSArray)restrictedStickerIdentifiers;
+ (void)presentRestrictedDistributionTermsAlertIfNecessaryFor:(id)a3 isInPopover:(BOOL)a4 completion:(id)a5;
- (STKRestrictedDistributionManager)init;
@end

@implementation STKRestrictedDistributionManager

+ (BOOL)mustAcceptRestrictedDistributionTerms
{
  if ([objc_opt_self() isInternalBuild])
  {
    v2 = sub_19A6DBCD4() ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

+ (BOOL)didAcceptRestrictedDistributionTerms
{
  if ([objc_opt_self() isInternalBuild])
  {
    v2 = sub_19A6DBCD4();
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

+ (void)presentRestrictedDistributionTermsAlertIfNecessaryFor:(id)a3 isInPopover:(BOOL)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  if (v7)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v7 = sub_19A6DC39C;
  }

  else
  {
    v8 = 0;
  }

  swift_getObjCClassMetadata();
  v9 = a3;
  static RestrictedDistributionManager.presentRestrictedDistributionTermsAlertIfNecessary(for:isInPopover:completion:)(v9, a4, v7, v8);
  sub_19A60126C(v7);
}

+ (NSArray)restrictedStickerIdentifiers
{
  _s10StickerKit29RestrictedDistributionManagerC010restrictedA11IdentifiersSay10Foundation4UUIDVGvgZ_0();
  sub_19A7A8F64();
  v2 = sub_19A7AB234();

  return v2;
}

- (STKRestrictedDistributionManager)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for RestrictedDistributionManager();
  return [(STKRestrictedDistributionManager *)&v3 init];
}

@end