@interface TUIComponent
- (BOOL)hasUpdatesForTransactionGroup:(id)a3;
- (BOOL)needsValidationForTransactionGroup:(id)a3;
- (TUIComponent)initWithModel:(shared_ptr<const TUI:(id)a4 :Model::Component>)a3 identifier:;
- (TUIModelContaining)parentModel;
- (id).cxx_construct;
- (id)describeWithContext:(id)a3;
- (id)validateInstantiationWithContext:(id)a3 transactionGroup:(id)a4 layout:(id)a5;
- (shared_ptr<const)model;
- (void)appendLayoutChildrenToArray:(id)a3;
- (void)appendLayoutModelsToArray:(id)a3;
- (void)dynamicChanged:(id)a3 transaction:(id)a4;
- (void)onContainedModelsChanged;
- (void)updateModel:(shared_ptr<const TUI::Model::Component>)a3;
- (void)updateModelChildren:(id)a3;
@end

@implementation TUIComponent

- (TUIComponent)initWithModel:(shared_ptr<const TUI:(id)a4 :Model::Component>)a3 identifier:
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

- (void)updateModel:(shared_ptr<const TUI::Model::Component>)a3
{
  v4 = *a3.__ptr_;
  v3 = *(a3.__ptr_ + 1);
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

- (id)describeWithContext:(id)a3
{
  v4 = [a3 package];
  LODWORD(self) = TUI::Package::Buffer::nameForComponent([v4 packageBuffer], *(self->_model.__ptr_ + 5));
  v5 = TUI::Symbol::Tab::string([v4 symtab], self);

  return v5;
}

- (void)dynamicChanged:(id)a3 transaction:(id)a4
{
  v6 = a3;
  v7 = a4;
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

  v12 = [WeakRetained transactionCoordinator];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_CFB98;
  v14[3] = &unk_261598;
  v13 = WeakRetained;
  v15 = v13;
  v16 = self;
  [v12 scheduleLayoutUpdateWithTransaction:v7 block:v14];
}

- (void)appendLayoutChildrenToArray:(id)a3
{
  v4 = a3;
  children = self->_children;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_CFCB4;
  v7[3] = &unk_2615C0;
  v8 = v4;
  v6 = v4;
  [(NSArray *)children enumerateObjectsUsingBlock:v7];
}

- (void)appendLayoutModelsToArray:(id)a3
{
  v4 = a3;
  children = self->_children;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_CFD70;
  v7[3] = &unk_2615C0;
  v8 = v4;
  v6 = v4;
  [(NSArray *)children enumerateObjectsUsingBlock:v7];
}

- (void)onContainedModelsChanged
{
  WeakRetained = objc_loadWeakRetained(&self->_parentModel);
  [WeakRetained onContainedModelsChanged];
}

- (void)updateModelChildren:(id)a3
{
  v5 = a3;
  [(NSArray *)self->_children enumerateObjectsUsingBlock:&stru_2615E0];
  objc_storeStrong(&self->_children, a3);
  children = self->_children;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_CFEB8;
  v7[3] = &unk_2615C0;
  v7[4] = self;
  [(NSArray *)children enumerateObjectsUsingBlock:v7];
  [(TUIComponent *)self onContainedModelsChanged];
}

- (BOOL)needsValidationForTransactionGroup:(id)a3
{
  v4 = a3;
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

        v6 |= [*(*(&v11 + 1) + 8 * v9) optimizeUpdatesForTransactionGroup:{v4, v11}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  return v6 & 1;
}

- (BOOL)hasUpdatesForTransactionGroup:(id)a3
{
  v4 = a3;
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

        v6 |= [*(*(&v11 + 1) + 8 * v9) hasUpdatesForTransactionGroup:{v4, v11}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  return v6 & 1;
}

- (id)validateInstantiationWithContext:(id)a3 transactionGroup:(id)a4 layout:(id)a5
{
  v7 = a3;
  v8 = a4;
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

  [v7 updateComponentBody:self];
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