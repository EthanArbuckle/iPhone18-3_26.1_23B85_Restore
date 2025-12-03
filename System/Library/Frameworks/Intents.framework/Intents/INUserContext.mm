@interface INUserContext
- (id)_init;
- (void)_becomeCurrentNoHelper;
- (void)becomeCurrent;
@end

@implementation INUserContext

- (void)_becomeCurrentNoHelper
{
  store = self->_store;
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  [(INUserContextStore *)store storeUserContext:self forBundleIdentifier:bundleIdentifier];
}

- (id)_init
{
  v6.receiver = self;
  v6.super_class = INUserContext;
  v2 = [(INUserContext *)&v6 init];
  if (v2)
  {
    v3 = +[INUserContextStore sharedStore];
    store = v2->_store;
    v2->_store = v3;
  }

  return v2;
}

- (void)becomeCurrent
{
  store = self->_store;
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  [(INUserContextStore *)store storeUserContextViaHelper:self forBundleIdentifier:bundleIdentifier];
}

@end