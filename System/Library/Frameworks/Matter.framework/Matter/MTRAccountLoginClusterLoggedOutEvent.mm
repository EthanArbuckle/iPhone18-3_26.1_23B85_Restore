@interface MTRAccountLoginClusterLoggedOutEvent
- (MTRAccountLoginClusterLoggedOutEvent)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRAccountLoginClusterLoggedOutEvent

- (MTRAccountLoginClusterLoggedOutEvent)init
{
  v7.receiver = self;
  v7.super_class = MTRAccountLoginClusterLoggedOutEvent;
  v2 = [(MTRAccountLoginClusterLoggedOutEvent *)&v7 init];
  v3 = v2;
  if (v2)
  {
    node = v2->_node;
    v2->_node = 0;

    fabricIndex = v3->_fabricIndex;
    v3->_fabricIndex = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRAccountLoginClusterLoggedOutEvent);
  node = [(MTRAccountLoginClusterLoggedOutEvent *)self node];
  [(MTRAccountLoginClusterLoggedOutEvent *)v4 setNode:node];

  fabricIndex = [(MTRAccountLoginClusterLoggedOutEvent *)self fabricIndex];
  [(MTRAccountLoginClusterLoggedOutEvent *)v4 setFabricIndex:fabricIndex];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: node:%@ fabricIndex:%@; >", v5, self->_node, self->_fabricIndex];;

  return v6;
}

@end