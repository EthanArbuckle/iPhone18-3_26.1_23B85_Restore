@interface MatterhornUpsellManager
+ (id)log;
- (void)launchUpgradeFlow:(id)flow withCompletion:(id)completion;
- (void)matterhornUpsell:(id)upsell forFeatureId:(id)id withCompletion:(id)completion;
- (void)upgradeFlowManagerDidCancel:(id)cancel;
- (void)upgradeFlowManagerDidComplete:(id)complete;
- (void)verifyFeature:(id)feature withCompletion:(id)completion;
@end

@implementation MatterhornUpsellManager

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_74C40;
  block[3] = &unk_B8D78;
  block[4] = self;
  if (qword_D6638 != -1)
  {
    dispatch_once(&qword_D6638, block);
  }

  v2 = qword_D6630;

  return v2;
}

- (void)matterhornUpsell:(id)upsell forFeatureId:(id)id withCompletion:(id)completion
{
  upsellCopy = upsell;
  idCopy = id;
  completionCopy = completion;
  objc_storeStrong(&self->_featureId, id);
  featureId = self->_featureId;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_74DDC;
  v14[3] = &unk_B9A58;
  v14[4] = self;
  v15 = upsellCopy;
  v16 = completionCopy;
  v12 = completionCopy;
  v13 = upsellCopy;
  [(MatterhornUpsellManager *)self verifyFeature:featureId withCompletion:v14];
}

- (void)launchUpgradeFlow:(id)flow withCompletion:(id)completion
{
  flowCopy = flow;
  completionCopy = completion;
  v8 = +[MatterhornUpsellManager log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = flowCopy;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Launching quota journey with id: %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_74FB8;
  v10[3] = &unk_B9DA0;
  objc_copyWeak(&v12, buf);
  v9 = completionCopy;
  v11 = v9;
  [ICQUpgradeFlowManager flowManagerWithJourneyId:flowCopy params:0 completion:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
}

- (void)upgradeFlowManagerDidCancel:(id)cancel
{
  v4 = +[MatterhornUpsellManager log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Matterhorn upgrade flow cancel", v7, 2u);
  }

  featureId = [(MatterhornUpsellManager *)self featureId];
  completion = [(MatterhornUpsellManager *)self completion];
  [(MatterhornUpsellManager *)self verifyFeature:featureId withCompletion:completion];
}

- (void)upgradeFlowManagerDidComplete:(id)complete
{
  v4 = +[MatterhornUpsellManager log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Matterhorn upgrade flow complete", v7, 2u);
  }

  featureId = [(MatterhornUpsellManager *)self featureId];
  completion = [(MatterhornUpsellManager *)self completion];
  [(MatterhornUpsellManager *)self verifyFeature:featureId withCompletion:completion];
}

- (void)verifyFeature:(id)feature withCompletion:(id)completion
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_75410;
  v7[3] = &unk_B9DF0;
  featureCopy = feature;
  completionCopy = completion;
  v5 = completionCopy;
  v6 = featureCopy;
  [CSFFeatureManager requestFeatureWithId:v6 completion:v7];
}

@end