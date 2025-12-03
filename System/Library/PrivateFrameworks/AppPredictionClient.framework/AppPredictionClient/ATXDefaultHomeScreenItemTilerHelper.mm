@interface ATXDefaultHomeScreenItemTilerHelper
- (ATXDefaultHomeScreenItemTilerHelper)init;
- (BOOL)_isSpecialAvocadoDescriptorKind:(id)kind;
- (BOOL)_isWidgetAlreadyUsed:(id)used;
- (id)filterForNextUnusedWidgetDescriptor:(id)descriptor;
- (void)_markWidgetAsUsed:(id)used;
- (void)unmarkWidgetAsUsed:(id)used;
@end

@implementation ATXDefaultHomeScreenItemTilerHelper

- (ATXDefaultHomeScreenItemTilerHelper)init
{
  v8.receiver = self;
  v8.super_class = ATXDefaultHomeScreenItemTilerHelper;
  v2 = [(ATXDefaultHomeScreenItemTilerHelper *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    usedBundleIds = v2->_usedBundleIds;
    v2->_usedBundleIds = v3;

    v5 = objc_opt_new();
    usedSpecialKinds = v2->_usedSpecialKinds;
    v2->_usedSpecialKinds = v5;
  }

  return v2;
}

- (void)unmarkWidgetAsUsed:(id)used
{
  usedCopy = used;
  if (usedCopy)
  {
    v12 = usedCopy;
    appBundleId = [usedCopy appBundleId];
    if (appBundleId)
    {
      [(NSMutableSet *)self->_usedBundleIds removeObject:appBundleId];
    }

    else
    {
      avocadoDescriptor = [v12 avocadoDescriptor];
      kind = [avocadoDescriptor kind];
      v8 = [(ATXDefaultHomeScreenItemTilerHelper *)self _isSpecialAvocadoDescriptorKind:kind];

      if (v8)
      {
        usedSpecialKinds = self->_usedSpecialKinds;
        avocadoDescriptor2 = [v12 avocadoDescriptor];
        kind2 = [avocadoDescriptor2 kind];
        [(NSMutableSet *)usedSpecialKinds removeObject:kind2];
      }
    }

    usedCopy = v12;
  }
}

- (id)filterForNextUnusedWidgetDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  for (i = descriptorCopy; ; descriptorCopy = i)
  {
    if (![descriptorCopy count])
    {
      v6 = 0;
      goto LABEL_8;
    }

    v6 = [i objectAtIndexedSubscript:0];
    [i removeObjectAtIndex:0];
    avocadoDescriptor = [v6 avocadoDescriptor];

    if (avocadoDescriptor)
    {
      if (![(ATXDefaultHomeScreenItemTilerHelper *)self _isWidgetAlreadyUsed:v6])
      {
        break;
      }
    }
  }

  [(ATXDefaultHomeScreenItemTilerHelper *)self _markWidgetAsUsed:v6];
LABEL_8:

  return v6;
}

- (BOOL)_isSpecialAvocadoDescriptorKind:(id)kind
{
  kindCopy = kind;
  if ([kindCopy isEqualToString:@"SBHSpecialAvocadoDescriptorKindSiri"] & 1) != 0 || (objc_msgSend(kindCopy, "isEqualToString:", @"SBHSpecialAvocadoDescriptorKindFiles") & 1) != 0 || (objc_msgSend(kindCopy, "isEqualToString:", @"SBHSpecialAvocadoDescriptorKindShortcutsSingle") & 1) != 0 || (objc_msgSend(kindCopy, "isEqualToString:", @"SBHSpecialAvocadoDescriptorKindShortcutsFolder") & 1) != 0 || (objc_msgSend(kindCopy, "isEqualToString:", @"SBHSpecialAvocadoDescriptorKindSmartStack"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [kindCopy isEqualToString:@"SBHSpecialAvocadoDescriptorKindAppPredictions"];
  }

  return v4;
}

- (BOOL)_isWidgetAlreadyUsed:(id)used
{
  usedCopy = used;
  appBundleId = [usedCopy appBundleId];
  if (appBundleId)
  {
    if (([(NSMutableSet *)self->_usedBundleIds containsObject:appBundleId]& 1) == 0)
    {
LABEL_7:
      v12 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    avocadoDescriptor = [usedCopy avocadoDescriptor];
    kind = [avocadoDescriptor kind];
    v8 = [(ATXDefaultHomeScreenItemTilerHelper *)self _isSpecialAvocadoDescriptorKind:kind];

    if (!v8)
    {
      goto LABEL_7;
    }

    usedSpecialKinds = self->_usedSpecialKinds;
    avocadoDescriptor2 = [usedCopy avocadoDescriptor];
    kind2 = [avocadoDescriptor2 kind];
    LOBYTE(usedSpecialKinds) = [(NSMutableSet *)usedSpecialKinds containsObject:kind2];

    if ((usedSpecialKinds & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v12 = 1;
LABEL_8:

  return v12;
}

- (void)_markWidgetAsUsed:(id)used
{
  usedCopy = used;
  appBundleId = [usedCopy appBundleId];
  if (appBundleId)
  {
    [(NSMutableSet *)self->_usedBundleIds addObject:appBundleId];
  }

  else
  {
    avocadoDescriptor = [usedCopy avocadoDescriptor];
    kind = [avocadoDescriptor kind];
    v7 = [(ATXDefaultHomeScreenItemTilerHelper *)self _isSpecialAvocadoDescriptorKind:kind];

    if (v7)
    {
      usedSpecialKinds = self->_usedSpecialKinds;
      avocadoDescriptor2 = [usedCopy avocadoDescriptor];
      kind2 = [avocadoDescriptor2 kind];
      [(NSMutableSet *)usedSpecialKinds addObject:kind2];
    }
  }
}

@end