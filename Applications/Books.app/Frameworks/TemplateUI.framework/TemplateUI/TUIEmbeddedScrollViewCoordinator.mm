@interface TUIEmbeddedScrollViewCoordinator
- (void)registerEmbeddedScrollView:(id)view;
- (void)updateWithImpressionSnapshot:(id)snapshot;
@end

@implementation TUIEmbeddedScrollViewCoordinator

- (void)registerEmbeddedScrollView:(id)view
{
  viewCopy = view;
  embeddedScrollViews = self->_embeddedScrollViews;
  v8 = viewCopy;
  if (!embeddedScrollViews)
  {
    v6 = [NSHashTable hashTableWithOptions:512];
    v7 = self->_embeddedScrollViews;
    self->_embeddedScrollViews = v6;

    viewCopy = v8;
    embeddedScrollViews = self->_embeddedScrollViews;
  }

  [(NSHashTable *)embeddedScrollViews addObject:viewCopy];
}

- (void)updateWithImpressionSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_embeddedScrollViews;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) updateWithImpressionSnapshot:{snapshotCopy, v10}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end