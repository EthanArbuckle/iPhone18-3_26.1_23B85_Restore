@interface BKAppLaunchBlock
- (BKAppLaunchBlock)init;
- (id)description;
@end

@implementation BKAppLaunchBlock

- (BKAppLaunchBlock)init
{
  v7.receiver = self;
  v7.super_class = BKAppLaunchBlock;
  v2 = [(BKAppLaunchBlock *)&v7 init];
  if (v2)
  {
    v3 = +[NSUUID UUID];
    v4 = [v3 UUIDString];
    blockID = v2->_blockID;
    v2->_blockID = v4;
  }

  return v2;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  conditionMask = self->_conditionMask;
  v6 = objc_retainBlock(self->_block);
  v7 = [NSString stringWithFormat:@"<%@ %p c=%lx b=%@ id=%@>", v4, self, conditionMask, v6, self->_blockID];

  return v7;
}

@end