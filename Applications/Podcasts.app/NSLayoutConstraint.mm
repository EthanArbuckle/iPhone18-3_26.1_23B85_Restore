@interface NSLayoutConstraint
- (id)mt_copy;
- (id)mt_copyWithDynamicTypeConstant:(id)constant;
- (id)mt_copyWithPriority:(float)priority;
- (void)mt_setDynamicTypeConstant:(id)constant;
@end

@implementation NSLayoutConstraint

- (id)mt_copy
{
  firstItem = [(NSLayoutConstraint *)self firstItem];
  firstAttribute = [(NSLayoutConstraint *)self firstAttribute];
  relation = [(NSLayoutConstraint *)self relation];
  secondItem = [(NSLayoutConstraint *)self secondItem];
  secondAttribute = [(NSLayoutConstraint *)self secondAttribute];
  [(NSLayoutConstraint *)self multiplier];
  v9 = v8;
  [(NSLayoutConstraint *)self constant];
  v11 = [NSLayoutConstraint constraintWithItem:firstItem attribute:firstAttribute relatedBy:relation toItem:secondItem attribute:secondAttribute multiplier:v9 constant:v10];

  mt_dynamicTypeConstant = [(NSLayoutConstraint *)self mt_dynamicTypeConstant];
  [v11 mt_setDynamicTypeConstant:mt_dynamicTypeConstant];

  [(NSLayoutConstraint *)self priority];
  [v11 setPriority:?];

  return v11;
}

- (id)mt_copyWithPriority:(float)priority
{
  mt_copy = [(NSLayoutConstraint *)self mt_copy];
  *&v5 = priority;
  [mt_copy setPriority:v5];

  return mt_copy;
}

- (id)mt_copyWithDynamicTypeConstant:(id)constant
{
  constantCopy = constant;
  mt_copy = [(NSLayoutConstraint *)self mt_copy];
  [mt_copy mt_setDynamicTypeConstant:constantCopy];

  return mt_copy;
}

- (void)mt_setDynamicTypeConstant:(id)constant
{
  value = constant;
  mt_dynamicTypeConstant = [(NSLayoutConstraint *)self mt_dynamicTypeConstant];
  if (([mt_dynamicTypeConstant isEqual:value] & 1) == 0)
  {
    objc_setAssociatedObject(self, &unk_1003FEA00, value, 0x301);
    [value currentConstant];
    [(NSLayoutConstraint *)self setConstant:?];
  }
}

@end