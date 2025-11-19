@interface _TUIElementControlBuilder
- (id)finalizeLinkEntities;
- (void)addLinkEntity:(id)a3;
@end

@implementation _TUIElementControlBuilder

- (void)addLinkEntity:(id)a3
{
  v4 = a3;
  linkEntities = self->_linkEntities;
  v8 = v4;
  if (!linkEntities)
  {
    v6 = objc_opt_new();
    v7 = self->_linkEntities;
    self->_linkEntities = v6;

    v4 = v8;
    linkEntities = self->_linkEntities;
  }

  [(NSMutableArray *)linkEntities addObject:v4];
}

- (id)finalizeLinkEntities
{
  v2 = [(NSMutableArray *)self->_linkEntities copy];

  return v2;
}

@end