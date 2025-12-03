@interface BrandAction
- (BrandAction)initWithName:(id)name muid:(unint64_t)muid;
- (void)resolveBrandPOIsWithTraits:(id)traits completion:(id)completion;
@end

@implementation BrandAction

- (void)resolveBrandPOIsWithTraits:(id)traits completion:(id)completion
{
  completionCopy = completion;
  traitsCopy = traits;
  v8 = +[MKMapService sharedService];
  v9 = [v8 ticketForSearchPoisForBrandMUID:-[BrandAction brandMUID](self traits:{"brandMUID"), traitsCopy}];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1007B8DC0;
  v11[3] = &unk_1016601F0;
  v11[4] = self;
  v12 = completionCopy;
  v10 = completionCopy;
  [v9 submitWithHandler:v11 networkActivity:0];
}

- (BrandAction)initWithName:(id)name muid:(unint64_t)muid
{
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = BrandAction;
  v7 = [(BrandAction *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_brandMUID = muid;
    v9 = [nameCopy copy];
    brandName = v8->_brandName;
    v8->_brandName = v9;
  }

  return v8;
}

@end