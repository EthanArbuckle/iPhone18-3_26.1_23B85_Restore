@interface MatterhornUpsellManager
+ (id)log;
- (void)launchUpgradeFlow:(id)a3 withCompletion:(id)a4;
- (void)matterhornUpsell:(id)a3 forFeatureId:(id)a4 withCompletion:(id)a5;
- (void)upgradeFlowManagerDidCancel:(id)a3;
- (void)upgradeFlowManagerDidComplete:(id)a3;
- (void)verifyFeature:(id)a3 withCompletion:(id)a4;
@end

@implementation MatterhornUpsellManager

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_74C40;
  block[3] = &unk_B8D78;
  block[4] = a1;
  if (qword_D6638 != -1)
  {
    dispatch_once(&qword_D6638, block);
  }

  v2 = qword_D6630;

  return v2;
}

- (void)matterhornUpsell:(id)a3 forFeatureId:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_storeStrong(&self->_featureId, a4);
  featureId = self->_featureId;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_74DDC;
  v14[3] = &unk_B9A58;
  v14[4] = self;
  v15 = v8;
  v16 = v10;
  v12 = v10;
  v13 = v8;
  [(MatterhornUpsellManager *)self verifyFeature:featureId withCompletion:v14];
}

- (void)launchUpgradeFlow:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[MatterhornUpsellManager log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v6;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Launching quota journey with id: %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_74FB8;
  v10[3] = &unk_B9DA0;
  objc_copyWeak(&v12, buf);
  v9 = v7;
  v11 = v9;
  [ICQUpgradeFlowManager flowManagerWithJourneyId:v6 params:0 completion:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
}

- (void)upgradeFlowManagerDidCancel:(id)a3
{
  v4 = +[MatterhornUpsellManager log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Matterhorn upgrade flow cancel", v7, 2u);
  }

  v5 = [(MatterhornUpsellManager *)self featureId];
  v6 = [(MatterhornUpsellManager *)self completion];
  [(MatterhornUpsellManager *)self verifyFeature:v5 withCompletion:v6];
}

- (void)upgradeFlowManagerDidComplete:(id)a3
{
  v4 = +[MatterhornUpsellManager log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Matterhorn upgrade flow complete", v7, 2u);
  }

  v5 = [(MatterhornUpsellManager *)self featureId];
  v6 = [(MatterhornUpsellManager *)self completion];
  [(MatterhornUpsellManager *)self verifyFeature:v5 withCompletion:v6];
}

- (void)verifyFeature:(id)a3 withCompletion:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_75410;
  v7[3] = &unk_B9DF0;
  v8 = a3;
  v9 = a4;
  v5 = v9;
  v6 = v8;
  [CSFFeatureManager requestFeatureWithId:v6 completion:v7];
}

@end