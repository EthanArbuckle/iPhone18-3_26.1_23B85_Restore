@interface TUIComponent
- (BOOL)hasUpdatesForTransactionGroup:(id)group;
- (BOOL)needsValidationForTransactionGroup:(id)group;
- (TUIComponent)initWithModel:(shared_ptr<const TUI:(id)model :Model::Component>)a3 identifier:;
- (TUIModelContaining)parentModel;
- (id).cxx_construct;
- (id)describeWithContext:(id)context;
- (id)validateInstantiationWithContext:(id)context transactionGroup:(id)group layout:(id)layout;
- (shared_ptr<const)model;
- (void)appendLayoutChildrenToArray:(id)array;
- (void)appendLayoutModelsToArray:(id)array;
- (void)dynamicChanged:(id)changed transaction:(id)transaction;
- (void)onContainedModelsChanged;
- (void)updateModel:(shared_ptr<const TUI::Model::Component>)model;
- (void)updateModelChildren:(id)children;
@end

@implementation TUIComponent

- (TUIComponent)initWithModel:(shared_ptr<const TUI:(id)model :Model::Component>)a3 identifier:
{
  cntrl = a3.__cntrl_;
  ptr = a3.__ptr_;
  v7 = a3.__cntrl_;
  v14.receiver = self;
  v14.super_class = TUIComponent;
  v8 = [(TUIComponent *)&v14 init];
  v9 = v8;
  if (v8)
  {
    v11 = *ptr;
    v10 = ptr[1];
    if (v10)
    {
      atomic_fetch_add_explicit(v10[1].data, 1uLL, memory_order_relaxed);
    }

    v12 = v8->_model.__cntrl_;
    v9->_model.__ptr_ = v11;
    v9->_model.__cntrl_ = v10;
    if (v12)
    {
      sub_11420(v12);
    }

    objc_storeStrong(&v9->_identifier, cntrl);
    v9->_flags = (*(&v9->_flags + 3) << 24);
  }

  return v9;
}

- (shared_ptr<const)model
{
  cntrl = self->_model.__cntrl_;
  *v2 = self->_model.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)updateModel:(shared_ptr<const TUI::Model::Component>)model
{
  v4 = *model.__ptr_;
  v3 = *(model.__ptr_ + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_model.__cntrl_;
  self->_model.__ptr_ = v4;
  self->_model.__cntrl_ = v3;
  if (cntrl)
  {
    sub_11420(cntrl);
  }
}

- (id)describeWithContext:(id)context
{
  package = [context package];
  LODWORD(self) = TUI::Package::Buffer::nameForComponent([package packageBuffer], *(self->_model.__ptr_ + 5));
  v5 = TUI::Symbol::Tab::string([package symtab], self);

  return v5;
}

- (void)dynamicChanged:(id)changed transaction:(id)transaction
{
  changedCopy = changed;
  transactionCopy = transaction;
  ptr = self->_model.__ptr_;
  v9 = ptr[13];
  v10 = ptr[14];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    WeakRetained = objc_loadWeakRetained(v9);
    sub_11420(v10);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(v9);
  }

  transactionCoordinator = [WeakRetained transactionCoordinator];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_CFB98;
  v14[3] = &unk_261598;
  v13 = WeakRetained;
  v15 = v13;
  selfCopy = self;
  [transactionCoordinator scheduleLayoutUpdateWithTransaction:transactionCopy block:v14];
}

- (void)appendLayoutChildrenToArray:(id)array
{
  arrayCopy = array;
  children = self->_children;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_CFCB4;
  v7[3] = &unk_2615C0;
  v8 = arrayCopy;
  v6 = arrayCopy;
  [(NSArray *)children enumerateObjectsUsingBlock:v7];
}

- (void)appendLayoutModelsToArray:(id)array
{
  arrayCopy = array;
  children = self->_children;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_CFD70;
  v7[3] = &unk_2615C0;
  v8 = arrayCopy;
  v6 = arrayCopy;
  [(NSArray *)children enumerateObjectsUsingBlock:v7];
}

- (void)onContainedModelsChanged
{
  WeakRetained = objc_loadWeakRetained(&self->_parentModel);
  [WeakRetained onContainedModelsChanged];
}

- (void)updateModelChildren:(id)children
{
  childrenCopy = children;
  [(NSArray *)self->_children enumerateObjectsUsingBlock:&stru_2615E0];
  objc_storeStrong(&self->_children, children);
  children = self->_children;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_CFEB8;
  v7[3] = &unk_2615C0;
  v7[4] = self;
  [(NSArray *)children enumerateObjectsUsingBlock:v7];
  [(TUIComponent *)self onContainedModelsChanged];
}

- (BOOL)needsValidationForTransactionGroup:(id)group
{
  groupCopy = group;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = *(self->_model.__ptr_ + 9);
  v6 = 0;
  v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v6 |= [*(*(&v11 + 1) + 8 * v9) optimizeUpdatesForTransactionGroup:{groupCopy, v11}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  return v6 & 1;
}

- (BOOL)hasUpdatesForTransactionGroup:(id)group
{
  groupCopy = group;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = *(self->_model.__ptr_ + 9);
  v6 = 0;
  v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v6 |= [*(*(&v11 + 1) + 8 * v9) hasUpdatesForTransactionGroup:{groupCopy, v11}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  return v6 & 1;
}

- (id)validateInstantiationWithContext:(id)context transactionGroup:(id)group layout:(id)layout
{
  contextCopy = context;
  groupCopy = group;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = *(self->_model.__ptr_ + 9);
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
          ;
        }

        v12 = v12 + 1;
      }

      while (v12 != v10);
      v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  [contextCopy updateComponentBody:self];
  return self;
}

- (TUIModelContaining)parentModel
{
  WeakRetained = objc_loadWeakRetained(&self->_parentModel);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 4) = 0;
  return self;
}

@end