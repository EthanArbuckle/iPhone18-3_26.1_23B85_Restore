@interface HomeDeletion
- (HomeDeletion)initWithObject:(id)object indexPath:(id)path identifierPath:(id)identifierPath contextualActionCompletionHandler:(id)handler;
- (id)description;
- (void)markAsCompletedWithSuccess:(BOOL)success error:(id)error;
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

- (void)markAsCompletedWithSuccess:(BOOL)success error:(id)error
{
  errorCopy = error;
  if (!self->_completed)
  {
    self->_completed = 1;
    self->_success = success;
    if (!success)
    {
      v8 = errorCopy;
      objc_storeStrong(&self->_error, error);
      errorCopy = v8;
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

- (HomeDeletion)initWithObject:(id)object indexPath:(id)path identifierPath:(id)identifierPath contextualActionCompletionHandler:(id)handler
{
  objectCopy = object;
  pathCopy = path;
  identifierPathCopy = identifierPath;
  handlerCopy = handler;
  v20.receiver = self;
  v20.super_class = HomeDeletion;
  v15 = [(HomeDeletion *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_object, object);
    objc_storeStrong(&v16->_indexPath, path);
    objc_storeStrong(&v16->_identifierPath, identifierPath);
    v17 = objc_retainBlock(handlerCopy);
    contextualActionCompletionHandler = v16->_contextualActionCompletionHandler;
    v16->_contextualActionCompletionHandler = v17;
  }

  return v16;
}

@end