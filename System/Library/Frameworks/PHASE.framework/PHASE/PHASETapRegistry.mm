@interface PHASETapRegistry
- (BOOL)registerTapReceiverForDescription:(id)description block:(id)block;
- (BOOL)registerTapReceiverWithIdentifier:(id)identifier block:(id)block;
- (PHASETapRegistry)init;
- (PHASETapRegistry)initWithEngine:(id)engine;
- (id)tapReceiverFormatForDescription:(id)description;
- (id)tapReceiverFormatForIdentifier:(id)identifier;
- (void)reset;
- (void)unregisterTapReceiverForDescription:(id)description;
- (void)unregisterTapReceiverWithIdentifier:(id)identifier;
@end

@implementation PHASETapRegistry

- (PHASETapRegistry)init
{
  [(PHASETapRegistry *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASETapRegistry)initWithEngine:(id)engine
{
  engineCopy = engine;
  v10.receiver = self;
  v10.super_class = PHASETapRegistry;
  v5 = [(PHASETapRegistry *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_weakEngine, engineCopy);
    v7 = objc_opt_new();
    descriptions = v6->_descriptions;
    v6->_descriptions = v7;
  }

  return v6;
}

- (void)reset
{
  WeakRetained = objc_loadWeakRetained(&self->_weakEngine);
  if (WeakRetained)
  {
    v2 = Phase::Controller::TaskManager::GetService<Phase::Controller::ClientTapRegistryProxy>(([WeakRetained implementation] + 48), 16);
    if (!v2)
    {
      std::terminate();
    }

    Phase::Controller::ClientTapRegistryProxy::Reset(v2);
  }
}

- (BOOL)registerTapReceiverWithIdentifier:(id)identifier block:(id)block
{
  identifierCopy = identifier;
  blockCopy = block;
  WeakRetained = objc_loadWeakRetained(&self->_weakEngine);
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = Phase::Controller::TaskManager::GetService<Phase::Controller::ClientTapRegistryProxy>(([WeakRetained implementation] + 48), 16);
    if (!v10)
    {
      std::terminate();
    }

    Phase::Controller::ClientTapRegistryProxy::RegisterTapReceiver(v10, identifierCopy, blockCopy);
  }

  return 1;
}

- (void)unregisterTapReceiverWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_weakEngine);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = Phase::Controller::TaskManager::GetService<Phase::Controller::ClientTapRegistryProxy>(([WeakRetained implementation] + 48), 16);
    if (!v6)
    {
      std::terminate();
    }

    Phase::Controller::ClientTapRegistryProxy::UnregisterTapReceiver(v6, identifierCopy);
  }
}

- (id)tapReceiverFormatForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_weakEngine);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = Phase::Controller::TaskManager::GetService<Phase::Controller::ClientTapRegistryProxy>(([WeakRetained implementation] + 48), 16);
    if (!v7)
    {
      std::terminate();
    }

    v8 = Phase::Controller::ClientTapRegistryProxy::GetTapReceiverFormat(v7, identifierCopy);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)registerTapReceiverForDescription:(id)description block:(id)block
{
  descriptionCopy = description;
  blockCopy = block;
  [(NSMutableSet *)self->_descriptions addObject:descriptionCopy];
  uidString = [descriptionCopy uidString];
  LOBYTE(self) = [(PHASETapRegistry *)self registerTapReceiverWithIdentifier:uidString block:blockCopy];

  return self;
}

- (void)unregisterTapReceiverForDescription:(id)description
{
  descriptionCopy = description;
  uidString = [descriptionCopy uidString];
  [(PHASETapRegistry *)self unregisterTapReceiverWithIdentifier:uidString];

  [(NSMutableSet *)self->_descriptions removeObject:descriptionCopy];
}

- (id)tapReceiverFormatForDescription:(id)description
{
  uidString = [description uidString];
  v5 = [(PHASETapRegistry *)self tapReceiverFormatForIdentifier:uidString];

  return v5;
}

@end