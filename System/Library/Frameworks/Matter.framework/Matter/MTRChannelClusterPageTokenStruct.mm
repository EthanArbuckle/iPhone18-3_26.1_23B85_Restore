@interface MTRChannelClusterPageTokenStruct
- (MTRChannelClusterPageTokenStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRChannelClusterPageTokenStruct

- (MTRChannelClusterPageTokenStruct)init
{
  v8.receiver = self;
  v8.super_class = MTRChannelClusterPageTokenStruct;
  v2 = [(MTRChannelClusterPageTokenStruct *)&v8 init];
  v3 = v2;
  if (v2)
  {
    limit = v2->_limit;
    v2->_limit = 0;

    after = v3->_after;
    v3->_after = 0;

    before = v3->_before;
    v3->_before = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRChannelClusterPageTokenStruct);
  limit = [(MTRChannelClusterPageTokenStruct *)self limit];
  [(MTRChannelClusterPageTokenStruct *)v4 setLimit:limit];

  after = [(MTRChannelClusterPageTokenStruct *)self after];
  [(MTRChannelClusterPageTokenStruct *)v4 setAfter:after];

  before = [(MTRChannelClusterPageTokenStruct *)self before];
  [(MTRChannelClusterPageTokenStruct *)v4 setBefore:before];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: limit:%@ after:%@; before:%@; >", v5, self->_limit, self->_after, self->_before];;

  return v6;
}

@end