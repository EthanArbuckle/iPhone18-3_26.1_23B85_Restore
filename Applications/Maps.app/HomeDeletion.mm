@interface HomeDeletion
- (HomeDeletion)initWithObject:(id)a3 indexPath:(id)a4 identifierPath:(id)a5 contextualActionCompletionHandler:(id)a6;
- (id)description;
- (void)markAsCompletedWithSuccess:(BOOL)a3 error:(id)a4;
- (void)markAsTentativelyDeleted;
@end

@implementation HomeDeletion

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v16 = *&self->_object;
  identifierPath = self->_identifierPath;
  if (self->_tentativelyDeleted)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = v8;
  if (self->_completed)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v11 = v10;
  if (self->_success)
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  v13 = v12;
  v14 = [NSString stringWithFormat:@"<%@: %p object = <%@: %p>, indexPath = %@, identifierPath = %@, tentativelyDeleted = %@, completed = %@, success = %@, error = %@>", v4, self, v6, v16, identifierPath, v9, v11, v13, self->_error];;

  return v14;
}

- (void)markAsCompletedWithSuccess:(BOOL)a3 error:(id)a4
{
  v7 = a4;
  if (!self->_completed)
  {
    self->_completed = 1;
    self->_success = a3;
    if (!a3)
    {
      v8 = v7;
      objc_storeStrong(&self->_error, a4);
      v7 = v8;
    }
  }
}

- (void)markAsTentativelyDeleted
{
  if (!self->_tentativelyDeleted && !self->_completed)
  {
    self->_tentativelyDeleted = 1;
  }
}

- (HomeDeletion)initWithObject:(id)a3 indexPath:(id)a4 identifierPath:(id)a5 contextualActionCompletionHandler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = HomeDeletion;
  v15 = [(HomeDeletion *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_object, a3);
    objc_storeStrong(&v16->_indexPath, a4);
    objc_storeStrong(&v16->_identifierPath, a5);
    v17 = objc_retainBlock(v14);
    contextualActionCompletionHandler = v16->_contextualActionCompletionHandler;
    v16->_contextualActionCompletionHandler = v17;
  }

  return v16;
}

@end