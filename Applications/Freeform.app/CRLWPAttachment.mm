@interface CRLWPAttachment
+ (id)allocWithZone:(_NSZone *)zone;
- (BOOL)isAttachedToBodyText;
- (BOOL)isEqual:(id)equal;
- (CRLWPTextSource)parentStorage;
@end

@implementation CRLWPAttachment

+ (id)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {
    v6 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"It is illegal to instantiate CRLWPAttachment it is abstract" userInfo:0];;
    objc_exception_throw(v6);
  }

  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___CRLWPAttachment;
  return objc_msgSendSuper2(&v7, "allocWithZone:", zone);
}

- (BOOL)isEqual:(id)equal
{
  if (!equal)
  {
    return 0;
  }

  v3 = objc_opt_class();
  return v3 == objc_opt_class();
}

- (BOOL)isAttachedToBodyText
{
  parentStorage = [(CRLWPAttachment *)self parentStorage];
  v3 = [parentStorage wpKind] == 0;

  return v3;
}

- (CRLWPTextSource)parentStorage
{
  WeakRetained = objc_loadWeakRetained(&self->_parentStorage);

  return WeakRetained;
}

@end