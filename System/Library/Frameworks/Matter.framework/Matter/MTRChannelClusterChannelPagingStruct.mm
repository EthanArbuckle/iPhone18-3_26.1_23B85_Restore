@interface MTRChannelClusterChannelPagingStruct
- (MTRChannelClusterChannelPagingStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRChannelClusterChannelPagingStruct

- (MTRChannelClusterChannelPagingStruct)init
{
  v7.receiver = self;
  v7.super_class = MTRChannelClusterChannelPagingStruct;
  v2 = [(MTRChannelClusterChannelPagingStruct *)&v7 init];
  v3 = v2;
  if (v2)
  {
    previousToken = v2->_previousToken;
    v2->_previousToken = 0;

    nextToken = v3->_nextToken;
    v3->_nextToken = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRChannelClusterChannelPagingStruct);
  previousToken = [(MTRChannelClusterChannelPagingStruct *)self previousToken];
  [(MTRChannelClusterChannelPagingStruct *)v4 setPreviousToken:previousToken];

  nextToken = [(MTRChannelClusterChannelPagingStruct *)self nextToken];
  [(MTRChannelClusterChannelPagingStruct *)v4 setNextToken:nextToken];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: previousToken:%@ nextToken:%@; >", v5, self->_previousToken, self->_nextToken];;

  return v6;
}

@end