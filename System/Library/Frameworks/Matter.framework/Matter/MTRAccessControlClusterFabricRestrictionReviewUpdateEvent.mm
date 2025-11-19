@interface MTRAccessControlClusterFabricRestrictionReviewUpdateEvent
- (MTRAccessControlClusterFabricRestrictionReviewUpdateEvent)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRAccessControlClusterFabricRestrictionReviewUpdateEvent

- (MTRAccessControlClusterFabricRestrictionReviewUpdateEvent)init
{
  v9.receiver = self;
  v9.super_class = MTRAccessControlClusterFabricRestrictionReviewUpdateEvent;
  v2 = [(MTRAccessControlClusterFabricRestrictionReviewUpdateEvent *)&v9 init];
  v3 = v2;
  if (v2)
  {
    token = v2->_token;
    v2->_token = &unk_284C3E588;

    instruction = v3->_instruction;
    v3->_instruction = 0;

    arlRequestFlowUrl = v3->_arlRequestFlowUrl;
    v3->_arlRequestFlowUrl = 0;

    fabricIndex = v3->_fabricIndex;
    v3->_fabricIndex = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRAccessControlClusterFabricRestrictionReviewUpdateEvent);
  v5 = [(MTRAccessControlClusterFabricRestrictionReviewUpdateEvent *)self token];
  [(MTRAccessControlClusterFabricRestrictionReviewUpdateEvent *)v4 setToken:v5];

  v6 = [(MTRAccessControlClusterFabricRestrictionReviewUpdateEvent *)self instruction];
  [(MTRAccessControlClusterFabricRestrictionReviewUpdateEvent *)v4 setInstruction:v6];

  v7 = [(MTRAccessControlClusterFabricRestrictionReviewUpdateEvent *)self arlRequestFlowUrl];
  [(MTRAccessControlClusterFabricRestrictionReviewUpdateEvent *)v4 setArlRequestFlowUrl:v7];

  v8 = [(MTRAccessControlClusterFabricRestrictionReviewUpdateEvent *)self fabricIndex];
  [(MTRAccessControlClusterFabricRestrictionReviewUpdateEvent *)v4 setFabricIndex:v8];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: token:%@ instruction:%@; arlRequestFlowUrl:%@; fabricIndex:%@; >", v5, self->_token, self->_instruction, self->_arlRequestFlowUrl, self->_fabricIndex];;

  return v6;
}

@end