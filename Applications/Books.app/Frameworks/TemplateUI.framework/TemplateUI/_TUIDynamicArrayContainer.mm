@interface _TUIDynamicArrayContainer
- (BOOL)needsValidationForTransactionGroup:(id)a3;
- (BOOL)windowLowerLoadTriggered;
- (BOOL)windowLowerUnloadTriggered;
- (BOOL)windowUpperLoadTriggered;
- (BOOL)windowUpperUnloadTriggered;
- (Class)dynamicArrayLayoutIterationClass;
- (Class)layoutClass;
- (TUIModelContaining)parentModel;
- (_NSRange)windowRange;
- (_TUIDynamicArrayContainer)initWithEnumerator:(id)a3 binding:(id)a4 array:(id)a5 context:(id)a6 transactionCoordinator:(id)a7 dynamicController:(id)a8 nodes:(id)a9 snapshot:(id)a10 options:(id)a11 flags:(unint64_t)a12 builderClass:(Class)a13;
- (id)validateInstantiationWithContext:(id)a3 transactionGroup:(id)a4 layout:(id)a5;
- (id)windowLowerLoadTriggerChildBoxFlipped:(BOOL)a3;
- (id)windowLowerUnloadTriggerChildBoxFlipped:(BOOL)a3;
- (id)windowUpperLoadTriggerChildBoxFlipped:(BOOL)a3;
- (id)windowUpperUnloadTriggerChildBoxFlipped:(BOOL)a3;
- (void)appendLayoutChildrenToArray:(id)a3;
- (void)appendObjectsWithProtocol:(id)a3 toArray:(id)a4;
- (void)dynamicChanged:(id)a3 transaction:(id)a4;
- (void)instantiateWithContext:(id)a3;
- (void)onContainedModelsChanged;
- (void)updateModelChildren:(id)a3;
@end

@implementation _TUIDynamicArrayContainer

- (_TUIDynamicArrayContainer)initWithEnumerator:(id)a3 binding:(id)a4 array:(id)a5 context:(id)a6 transactionCoordinator:(id)a7 dynamicController:(id)a8 nodes:(id)a9 snapshot:(id)a10 options:(id)a11 flags:(unint64_t)a12 builderClass:(Class)a13
{
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a10;
  v29 = a11;
  v30.receiver = self;
  v30.super_class = _TUIDynamicArrayContainer;
  v24 = [(_TUIDynamicArrayContainer *)&v30 init];
  v25 = v24;
  if (v24)
  {
    objc_storeWeak(&v24->_transactionCoordinator, v21);
    objc_storeWeak(&v25->_dynamicController, v22);
    v26 = [v19 instanceForObserver:v25];
    instance = v25->_instance;
    v25->_instance = v26;

    objc_storeStrong(&v25->_snapshot, a10);
    v25->_enumerator.index = a3.var0;
    v25->_nodes = a9;
    v25->_binding = a4;
    objc_storeStrong(&v25->_options, a11);
    v25->_flags = a12;
    v25->_builderClass = a13;
    [(_TUIDynamicArrayContainer *)v25 instantiateWithContext:v20];
  }

  return v25;
}

- (void)appendObjectsWithProtocol:(id)a3 toArray:(id)a4
{
  v6 = a3;
  v7 = a4;
  children = self->_children;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_80D88;
  v11[3] = &unk_25DFA8;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(NSArray *)children enumerateObjectsUsingBlock:v11];
}

- (Class)layoutClass
{
  v2 = TUIAncestorBoxFromModel(self);
  v3 = [v2 dynamicArrayLayoutContainerClass];

  return v3;
}

- (void)updateModelChildren:(id)a3
{
  v4 = a3;
  [(NSArray *)self->_children enumerateObjectsUsingBlock:&stru_2604D8];
  children = self->_children;
  self->_children = v4;
  v6 = v4;

  v7 = self->_children;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_80F04;
  v8[3] = &unk_25DF80;
  v8[4] = self;
  [(NSArray *)v7 enumerateObjectsUsingBlock:v8];
  [(_TUIDynamicArrayContainer *)self onContainedModelsChanged];
}

- (void)appendLayoutChildrenToArray:(id)a3
{
  v4 = a3;
  children = self->_children;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_80FB8;
  v7[3] = &unk_25DF80;
  v8 = v4;
  v6 = v4;
  [(NSArray *)children enumerateObjectsUsingBlock:v7];
}

- (void)onContainedModelsChanged
{
  v2 = [(_TUIDynamicArrayContainer *)self parentModel];
  [v2 onContainedModelsChanged];
}

- (Class)dynamicArrayLayoutIterationClass
{
  v2 = TUIAncestorBoxFromModel(self);
  v3 = [v2 dynamicArrayLayoutIterationClass];

  return v3;
}

- (void)dynamicChanged:(id)a3 transaction:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_transactionCoordinator);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_810FC;
  v7[3] = &unk_25EB80;
  v7[4] = self;
  [WeakRetained scheduleLayoutUpdateWithTransaction:v5 block:v7];
}

- (void)instantiateWithContext:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(TUIDynamicArrayInstance *)self->_instance count];
  if ((self->_flags & 2) != 0)
  {
    options = self->_options;
    if (options)
    {
      if ([(TUIDynamicInstantiateOptions *)options fetchInitial]!= 0x7FFFFFFFFFFFFFFFLL)
      {
        v6 = [(TUIDynamicInstantiateOptions *)self->_options fetchInitial];
      }
    }
  }

  v8 = [(TUIDynamicArrayInstance *)self->_instance count];
  if (v6 >= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  self->_instantiateWindow.location = 0;
  self->_instantiateWindow.length = v9;
  instance = self->_instance;
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_81274;
  v16 = &unk_260528;
  v17 = self;
  v18 = v4;
  v19 = v5;
  v20 = v6;
  v11 = v5;
  v12 = v4;
  [(TUIDynamicArrayInstance *)instance objectsInRange:0 block:v9, &v13];
  [(_TUIDynamicArrayContainer *)self updateModelChildren:v11, v13, v14, v15, v16, v17];
}

- (BOOL)needsValidationForTransactionGroup:(id)a3
{
  if (([(TUIDynamicArrayInstance *)self->_instance optimizeUpdatesForTransactionGroup:a3]& 1) != 0)
  {
    return 1;
  }

  result = 1;
  if ((*(self + 104) & 6) == 0)
  {
    return (*(self + 104) & 1) != 0 || (*(self + 104) & 8) != 0;
  }

  return result;
}

- (id)validateInstantiationWithContext:(id)a3 transactionGroup:(id)a4 layout:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = TUIProtocolCast(&OBJC_PROTOCOL___TUIDynamicArrayLayout, a5);
  WeakRetained = objc_loadWeakRetained(&self->_parentModel);
  if (objc_opt_respondsToSelector())
  {
    v12 = objc_loadWeakRetained(&self->_parentModel);
    v13 = [v12 allowDynamicWindowInstantiation];
  }

  else
  {
    v13 = 0;
  }

  snapshot = self->_snapshot;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_81610;
  v19[3] = &unk_260618;
  v23 = v13;
  v19[4] = self;
  v20 = v8;
  v21 = v9;
  v22 = v10;
  v15 = v10;
  v16 = v9;
  v17 = v8;
  [v17 evaluateWithSnapshot:snapshot block:v19];

  return self;
}

- (id)windowLowerLoadTriggerChildBoxFlipped:(BOOL)a3
{
  v5 = [(TUIDynamicInstantiateOptions *)self->_options fetchPadding];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL || (location = self->_instantiateWindow.location) == 0 || (location + v5 != 0x7FFFFFFFFFFFFFFFLL ? (v7 = v5 >= self->_instantiateWindow.length) : (v7 = 1), v7))
  {
    v8 = 0;
  }

  else
  {
    v10 = [(NSArray *)self->_children objectAtIndexedSubscript:v5];
    v11 = v10;
    if (a3)
    {
      sub_82F98(v10);
    }

    else
    {
      sub_83008(v10);
    }
    v8 = ;
  }

  return v8;
}

- (id)windowLowerUnloadTriggerChildBoxFlipped:(BOOL)a3
{
  v5 = [(TUIDynamicInstantiateOptions *)self->_options fetchPadding];
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v5;
    v8 = [(TUIDynamicInstantiateOptions *)self->_options fetchDelta]== 0x7FFFFFFFFFFFFFFFLL ? 1 : [(TUIDynamicInstantiateOptions *)self->_options fetchDelta];
    v9 = v8 + v7;
    if (v8 + v7 != 0x7FFFFFFFFFFFFFFFLL && v9 <= self->_instantiateWindow.length)
    {
      v6 = v9 + self->_instantiateWindow.location - 1;
    }
  }

  if ([(TUIDynamicInstantiateOptions *)self->_options fetchWindow]== 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_9;
  }

  v12 = self->_instantiateWindow.length + self->_instantiateWindow.location;
  if (v12 >= [(TUIDynamicArrayInstance *)self->_instance count])
  {
    length = self->_instantiateWindow.length;
    v13 = length <= [(TUIDynamicInstantiateOptions *)self->_options fetchWindow];
  }

  else
  {
    v13 = 0;
  }

  v10 = 0;
  if (v6 == 0x7FFFFFFFFFFFFFFFLL || v13)
  {
    goto LABEL_10;
  }

  if ([(TUIDynamicInstantiateOptions *)self->_options fetchWindow]== 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_9:
    v10 = 0;
  }

  else
  {
    v15 = [(NSArray *)self->_children objectAtIndexedSubscript:v6 - self->_instantiateWindow.location];
    v16 = v15;
    if (a3)
    {
      sub_83008(v15);
    }

    else
    {
      sub_82F98(v15);
    }
    v10 = ;
  }

LABEL_10:

  return v10;
}

- (id)windowUpperLoadTriggerChildBoxFlipped:(BOOL)a3
{
  v5 = [(TUIDynamicInstantiateOptions *)self->_options fetchPadding];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL || (v6 = v5, length = self->_instantiateWindow.length, v5 >= length) || (v8 = self->_instantiateWindow.location + length, v8 >= [(TUIDynamicArrayInstance *)self->_instance count]) || self->_instantiateWindow.location + self->_instantiateWindow.length + ~v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v11 = [(NSArray *)self->_children objectAtIndexedSubscript:self->_instantiateWindow.length + ~v6];
    v12 = v11;
    if (a3)
    {
      sub_83008(v11);
    }

    else
    {
      sub_82F98(v11);
    }
    v9 = ;
  }

  return v9;
}

- (id)windowUpperUnloadTriggerChildBoxFlipped:(BOOL)a3
{
  v5 = [(TUIDynamicInstantiateOptions *)self->_options fetchPadding];
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v5;
    v8 = [(TUIDynamicInstantiateOptions *)self->_options fetchDelta]== 0x7FFFFFFFFFFFFFFFLL ? 1 : [(TUIDynamicInstantiateOptions *)self->_options fetchDelta];
    v9 = v8 + v7;
    if (v8 + v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      length = self->_instantiateWindow.length;
      v11 = length >= v9;
      v12 = length - v9;
      if (v12 != 0 && v11)
      {
        v6 = v12 + self->_instantiateWindow.location;
      }
    }
  }

  if ([(TUIDynamicInstantiateOptions *)self->_options fetchWindow]== 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_10;
  }

  if (self->_instantiateWindow.location)
  {
    v15 = 0;
  }

  else
  {
    v16 = self->_instantiateWindow.length;
    v15 = v16 <= [(TUIDynamicInstantiateOptions *)self->_options fetchWindow];
  }

  v13 = 0;
  if (v6 == 0x7FFFFFFFFFFFFFFFLL || v15)
  {
    goto LABEL_11;
  }

  if ([(TUIDynamicInstantiateOptions *)self->_options fetchWindow]== 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_10:
    v13 = 0;
  }

  else
  {
    v17 = [(NSArray *)self->_children objectAtIndexedSubscript:v6 - self->_instantiateWindow.location];
    v18 = v17;
    if (a3)
    {
      sub_82F98(v17);
    }

    else
    {
      sub_83008(v17);
    }
    v13 = ;
  }

LABEL_11:

  return v13;
}

- (_NSRange)windowRange
{
  length = self->_instantiateWindow.length;
  location = self->_instantiateWindow.location;
  result.length = length;
  result.location = location;
  return result;
}

- (BOOL)windowLowerLoadTriggered
{
  if (*(self + 104))
  {
    return 0;
  }

  v3 = self;
  *(self + 104) |= 1u;
  WeakRetained = objc_loadWeakRetained(&self->_dynamicController);
  LOBYTE(v3) = [WeakRetained invalidateInstantiation:v3];

  return v3;
}

- (BOOL)windowUpperLoadTriggered
{
  if ((*(self + 104) & 2) != 0)
  {
    return 0;
  }

  v2 = self;
  *(self + 104) |= 2u;
  WeakRetained = objc_loadWeakRetained(&self->_dynamicController);
  LOBYTE(v2) = [WeakRetained invalidateInstantiation:v2];

  return v2;
}

- (BOOL)windowLowerUnloadTriggered
{
  if ((*(self + 104) & 4) != 0)
  {
    return 0;
  }

  v2 = self;
  *(self + 104) |= 4u;
  WeakRetained = objc_loadWeakRetained(&self->_dynamicController);
  LOBYTE(v2) = [WeakRetained invalidateInstantiation:v2];

  return v2;
}

- (BOOL)windowUpperUnloadTriggered
{
  if ((*(self + 104) & 8) != 0)
  {
    return 0;
  }

  v2 = self;
  *(self + 104) |= 8u;
  WeakRetained = objc_loadWeakRetained(&self->_dynamicController);
  LOBYTE(v2) = [WeakRetained invalidateInstantiation:v2];

  return v2;
}

- (TUIModelContaining)parentModel
{
  WeakRetained = objc_loadWeakRetained(&self->_parentModel);

  return WeakRetained;
}

@end