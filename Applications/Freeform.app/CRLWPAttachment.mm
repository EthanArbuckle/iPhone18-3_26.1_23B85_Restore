@interface CRLWPAttachment
+ (id)allocWithZone:(_NSZone *)a3;
- (BOOL)isAttachedToBodyText;
- (BOOL)isEqual:(id)a3;
- (CRLWPTextSource)parentStorage;
@end

@implementation CRLWPAttachment

+ (id)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() == a1)
  {
    v6 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"It is illegal to instantiate CRLWPAttachment it is abstract" userInfo:0];;
    objc_exception_throw(v6);
  }

  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___CRLWPAttachment;
  return objc_msgSendSuper2(&v7, "allocWithZone:", a3);
}

- (BOOL)isEqual:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = objc_opt_class();
  return v3 == objc_opt_class();
}

- (BOOL)isAttachedToBodyText
{
  v2 = [(CRLWPAttachment *)self parentStorage];
  v3 = [v2 wpKind] == 0;

  return v3;
}

- (CRLWPTextSource)parentStorage
{
  WeakRetained = objc_loadWeakRetained(&self->_parentStorage);

  return WeakRetained;
}

@end