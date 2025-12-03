@interface BKSProcessExitContext
- (BKSProcessExitContext)initWithCoder:(id)coder;
- (id)description;
- (uint64_t)setExitReason:(uint64_t)result;
@end

@implementation BKSProcessExitContext

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [objc_opt_class() description];
  v5 = NSStringFromBKSProcessExitReason([(BKSProcessExitContext *)self exitReason]);
  v6 = [v3 initWithFormat:@"<%@| reason:%@>", v4, v5];

  return v6;
}

- (BKSProcessExitContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = BKSProcessExitContext;
  v5 = [(BKSProcessExitContext *)&v7 init];
  if (v5)
  {
    v5->_exitReason = [coderCopy decodeIntegerForKey:@"_exitReason"];
  }

  return v5;
}

- (uint64_t)setExitReason:(uint64_t)result
{
  if (result)
  {
    *(result + 8) = a2;
  }

  return result;
}

@end