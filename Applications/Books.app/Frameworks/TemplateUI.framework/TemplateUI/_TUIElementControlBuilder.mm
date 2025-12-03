@interface _TUIElementControlBuilder
- (id)finalizeLinkEntities;
- (void)addLinkEntity:(id)entity;
@end

@implementation _TUIElementControlBuilder

- (void)addLinkEntity:(id)entity
{
  entityCopy = entity;
  linkEntities = self->_linkEntities;
  v8 = entityCopy;
  if (!linkEntities)
  {
    v6 = objc_opt_new();
    v7 = self->_linkEntities;
    self->_linkEntities = v6;

    entityCopy = v8;
    linkEntities = self->_linkEntities;
  }

  [(NSMutableArray *)linkEntities addObject:entityCopy];
}

- (id)finalizeLinkEntities
{
  v2 = [(NSMutableArray *)self->_linkEntities copy];

  return v2;
}

@end