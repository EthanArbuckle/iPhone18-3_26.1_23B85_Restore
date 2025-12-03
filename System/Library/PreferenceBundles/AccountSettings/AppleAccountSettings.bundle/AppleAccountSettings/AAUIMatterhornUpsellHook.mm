@interface AAUIMatterhornUpsellHook
- (BOOL)shouldMatchElement:(id)element;
- (BOOL)shouldMatchModel:(id)model;
- (RUIServerHookDelegate)delegate;
- (void)_matterhornUpsell:(id)upsell;
- (void)processElement:(id)element attributes:(id)attributes objectModel:(id)model completion:(id)completion;
- (void)processObjectModel:(id)model completion:(id)completion;
- (void)upgradeFlowManagerDidCancel:(id)cancel;
- (void)upgradeFlowManagerDidComplete:(id)complete;
@end

@implementation AAUIMatterhornUpsellHook

- (BOOL)shouldMatchElement:(id)element
{
  name = [element name];
  v4 = [@"action:matterhornUpsell" isEqualToString:name];

  return v4;
}

- (BOOL)shouldMatchModel:(id)model
{
  clientInfo = [model clientInfo];
  v4 = [clientInfo objectForKeyedSubscript:AAUIClientInfoActionKey];
  v5 = [@"action:matterhornUpsell" isEqualToString:v4];

  return v5;
}

- (void)processElement:(id)element attributes:(id)attributes objectModel:(id)model completion:(id)completion
{
  elementCopy = element;
  modelCopy = model;
  completionCopy = completion;
  v12 = _AAUILogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = elementCopy;
    v15 = 2112;
    v16 = modelCopy;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "matterhorn upsell with element %@ and objectmodel %@", &v13, 0x16u);
  }

  [(AAUIMatterhornUpsellHook *)self _matterhornUpsell:completionCopy];
}

- (void)processObjectModel:(id)model completion:(id)completion
{
  modelCopy = model;
  completionCopy = completion;
  v8 = _AAUILogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = modelCopy;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "matterhorn upsell with objectModel %@", &v9, 0xCu);
  }

  [(AAUIMatterhornUpsellHook *)self _matterhornUpsell:completionCopy];
}

- (void)_matterhornUpsell:(id)upsell
{
  upsellCopy = upsell;
  v5 = [[ICQUpgradeFlowManager alloc] initWithJourneyId:@"settingsHideMyEmail"];
  v6 = _AAUILogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_33770(v5, v6);
  }

  if (v5)
  {
    v7 = [upsellCopy copy];
    v8 = _hookCompletion;
    _hookCompletion = v7;

    [v5 setDelegate:self];
    v9 = _AAUILogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "starting matterhorn journey", v10, 2u);
    }

    [v5 beginJourney];
  }
}

- (void)upgradeFlowManagerDidCancel:(id)cancel
{
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_337E8(v3);
  }

  v4 = _hookCompletion;
  if (_hookCompletion)
  {
    v5 = [NSError errorWithDomain:AAErrorDomain code:-1 userInfo:0];
    (*(v4 + 16))(v4, 0, v5);
  }
}

- (void)upgradeFlowManagerDidComplete:(id)complete
{
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_3382C(v3);
  }

  if (_hookCompletion)
  {
    (*(_hookCompletion + 16))();
  }
}

- (RUIServerHookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end