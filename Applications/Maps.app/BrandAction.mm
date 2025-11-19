@interface BrandAction
- (BrandAction)initWithName:(id)a3 muid:(unint64_t)a4;
- (void)resolveBrandPOIsWithTraits:(id)a3 completion:(id)a4;
@end

@implementation BrandAction

- (void)resolveBrandPOIsWithTraits:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[MKMapService sharedService];
  v9 = [v8 ticketForSearchPoisForBrandMUID:-[BrandAction brandMUID](self traits:{"brandMUID"), v7}];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1007B8DC0;
  v11[3] = &unk_1016601F0;
  v11[4] = self;
  v12 = v6;
  v10 = v6;
  [v9 submitWithHandler:v11 networkActivity:0];
}

- (BrandAction)initWithName:(id)a3 muid:(unint64_t)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = BrandAction;
  v7 = [(BrandAction *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_brandMUID = a4;
    v9 = [v6 copy];
    brandName = v8->_brandName;
    v8->_brandName = v9;
  }

  return v8;
}

@end