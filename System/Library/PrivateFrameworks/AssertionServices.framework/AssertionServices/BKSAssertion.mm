@interface BKSAssertion
- (BKSAssertion)init;
- (BOOL)acquire;
- (BOOL)valid;
- (NSString)name;
- (id)_acquisitionHandler;
- (id)_attributes;
- (id)_initWithName:(id)name handler:(id)handler;
- (id)_internalAssertion;
- (id)_lock_acquisitionHandler;
- (id)_lock_attributes;
- (id)_lock_internalAssertion;
- (id)_lock_name;
- (id)_target;
- (id)invalidationHandler;
- (unint64_t)_bksErrorForRBSAssertionError:(unint64_t)error;
- (void)_acquireAsynchronously;
- (void)_invalidateSynchronously:(BOOL)synchronously;
- (void)_lock:(id)_lock;
- (void)_lock_reaquireAssertion;
- (void)_lock_setAttributes:(id)attributes;
- (void)_lock_setInternalAssertion:(id)assertion;
- (void)_lock_setName:(id)name;
- (void)_setAttributes:(id)attributes;
- (void)_setTarget:(id)target;
- (void)assertion:(id)assertion didInvalidateWithError:(id)error;
- (void)dealloc;
- (void)setInvalidationHandler:(id)handler;
- (void)setName:(id)name;
@end

@implementation BKSAssertion

- (BOOL)valid
{
  os_unfair_lock_lock(&self->_lock);
  isValid = [(RBSAssertion *)self->_internalAssertion isValid];
  os_unfair_lock_unlock(&self->_lock);
  return isValid;
}

- (BOOL)acquire
{
  os_unfair_lock_lock(&self->_lock);
  if (!self->_internalAssertion)
  {
    v4 = MEMORY[0x2318FA0F0](self->_acquisitionHandler);
    acquisitionHandler = self->_acquisitionHandler;
    self->_acquisitionHandler = 0;

    v6 = [objc_alloc(MEMORY[0x277D46DB8]) initWithExplanation:self->_name target:self->_target attributes:self->_attributes];
    internalAssertion = self->_internalAssertion;
    self->_internalAssertion = v6;

    [(RBSAssertion *)self->_internalAssertion addObserver:self];
    v8 = self->_internalAssertion;
    v15 = 0;
    v3 = [(RBSAssertion *)v8 acquireWithError:&v15];
    v9 = v15;
    os_unfair_lock_unlock(&self->_lock);
    if (v9)
    {
      v10 = MEMORY[0x277CCA9B8];
      v11 = -[BKSAssertion _bksErrorForRBSAssertionError:](self, "_bksErrorForRBSAssertionError:", [v9 code]);
      userInfo = [v9 userInfo];
      v13 = [v10 errorWithDomain:@"BKSAssertionError" code:v11 userInfo:userInfo];

      if (!v4)
      {
LABEL_6:

        return v3;
      }
    }

    else
    {
      v13 = 0;
      if (!v4)
      {
        goto LABEL_6;
      }
    }

    (v4)[2](v4, v3, v13);
    goto LABEL_6;
  }

  os_unfair_lock_unlock(&self->_lock);
  LOBYTE(v3) = 1;
  return v3;
}

- (void)dealloc
{
  [(RBSAssertion *)self->_internalAssertion invalidate];
  v3.receiver = self;
  v3.super_class = BKSAssertion;
  [(BKSAssertion *)&v3 dealloc];
}

- (void)_acquireAsynchronously
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __38__BKSAssertion__acquireAsynchronously__block_invoke;
  v2[3] = &unk_278871B48;
  v2[4] = self;
  [MEMORY[0x277D47028] performBackgroundWork:v2];
}

- (BKSAssertion)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"BKSAssertion.m" lineNumber:38 description:@"Don't instantiate instances of this abstract base class"];

  return 0;
}

- (id)invalidationHandler
{
  os_unfair_lock_lock(&self->_lock);
  v3 = MEMORY[0x2318FA0F0](self->_invalidationHandler);
  os_unfair_lock_unlock(&self->_lock);
  v4 = MEMORY[0x2318FA0F0](v3);

  return v4;
}

- (void)setInvalidationHandler:(id)handler
{
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_lock);
  v5 = [handlerCopy copy];

  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = v5;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)name
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSString *)self->_name copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setName:(id)name
{
  nameCopy = name;
  os_unfair_lock_lock(&self->_lock);
  v5 = [nameCopy copy];

  name = self->_name;
  self->_name = v5;

  [(BKSAssertion *)self _lock_reaquireAssertion];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)assertion:(id)assertion didInvalidateWithError:(id)error
{
  os_unfair_lock_lock(&self->_lock);
  v7 = MEMORY[0x2318FA0F0](self->_invalidationHandler);
  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = 0;

  os_unfair_lock_unlock(&self->_lock);
  v6 = v7;
  if (v7)
  {
    (*(v7 + 16))(v7);
    v6 = v7;
  }
}

- (id)_initWithName:(id)name handler:(id)handler
{
  nameCopy = name;
  handlerCopy = handler;
  v15.receiver = self;
  v15.super_class = BKSAssertion;
  v8 = [(BKSAssertion *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_lock._os_unfair_lock_opaque = 0;
    v10 = [nameCopy copy];
    name = v9->_name;
    v9->_name = v10;

    v12 = [handlerCopy copy];
    acquisitionHandler = v9->_acquisitionHandler;
    v9->_acquisitionHandler = v12;
  }

  return v9;
}

- (void)_invalidateSynchronously:(BOOL)synchronously
{
  synchronouslyCopy = synchronously;
  os_unfair_lock_lock(&self->_lock);
  [(RBSAssertion *)self->_internalAssertion removeObserver:self];
  internalAssertion = self->_internalAssertion;
  if (synchronouslyCopy)
  {
    v8 = 0;
    [(RBSAssertion *)internalAssertion invalidateWithError:&v8];
  }

  else
  {
    [(RBSAssertion *)internalAssertion invalidate];
  }

  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = 0;

  acquisitionHandler = self->_acquisitionHandler;
  self->_acquisitionHandler = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_target
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_target;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)_setTarget:(id)target
{
  targetCopy = target;
  os_unfair_lock_lock(&self->_lock);
  target = self->_target;
  self->_target = targetCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_attributes
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_attributes copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)_setAttributes:(id)attributes
{
  attributesCopy = attributes;
  os_unfair_lock_lock(&self->_lock);
  [(BKSAssertion *)self _lock_setAttributes:attributesCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_internalAssertion
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_internalAssertion;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)_acquisitionHandler
{
  os_unfair_lock_lock(&self->_lock);
  v3 = MEMORY[0x2318FA0F0](self->_acquisitionHandler);
  os_unfair_lock_unlock(&self->_lock);
  v4 = MEMORY[0x2318FA0F0](v3);

  return v4;
}

- (void)_lock:(id)_lock
{
  _lockCopy = _lock;
  os_unfair_lock_lock(&self->_lock);
  _lockCopy[2](_lockCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_reaquireAssertion
{
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = [objc_alloc(MEMORY[0x277D46DB8]) initWithExplanation:self->_name target:self->_target attributes:self->_attributes];
  [v3 addObserver:self];
  [v3 acquireWithError:0];
  [(RBSAssertion *)self->_internalAssertion removeObserver:self];
  [(RBSAssertion *)self->_internalAssertion invalidate];
  internalAssertion = self->_internalAssertion;
  self->_internalAssertion = v3;
}

- (id)_lock_name
{
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = [(NSString *)self->_name copy];

  return v3;
}

- (void)_lock_setName:(id)name
{
  nameCopy = name;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = [nameCopy copy];

  name = self->_name;
  self->_name = v5;
}

- (id)_lock_internalAssertion
{
  os_unfair_lock_assert_owner(&self->_lock);
  internalAssertion = self->_internalAssertion;

  return internalAssertion;
}

- (void)_lock_setInternalAssertion:(id)assertion
{
  assertionCopy = assertion;
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_internalAssertion)
  {
    v5 = MEMORY[0x277D47028];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __43__BKSAssertion__lock_setInternalAssertion___block_invoke;
    v8[3] = &unk_278871B48;
    v9 = assertionCopy;
    v6 = assertionCopy;
    [v5 performBackgroundWork:v8];
  }

  else
  {
    self->_internalAssertion = assertionCopy;
    v7 = assertionCopy;

    [(RBSAssertion *)self->_internalAssertion addObserver:self];
  }
}

- (id)_lock_acquisitionHandler
{
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = [self->_acquisitionHandler copy];
  acquisitionHandler = self->_acquisitionHandler;
  self->_acquisitionHandler = 0;

  v5 = MEMORY[0x2318FA0F0](v3);

  return v5;
}

- (id)_lock_attributes
{
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = [(NSMutableArray *)self->_attributes copy];

  return v3;
}

- (void)_lock_setAttributes:(id)attributes
{
  attributesCopy = attributes;
  os_unfair_lock_assert_owner(&self->_lock);
  v8 = [MEMORY[0x277D46D78] attributeWithCompletionPolicy:0];
  v5 = [attributesCopy arrayByAddingObject:v8];

  v6 = [v5 copy];
  attributes = self->_attributes;
  self->_attributes = v6;
}

- (unint64_t)_bksErrorForRBSAssertionError:(unint64_t)error
{
  if (error - 1 > 7)
  {
    return 0;
  }

  else
  {
    return qword_22EEBF098[error - 1];
  }
}

@end