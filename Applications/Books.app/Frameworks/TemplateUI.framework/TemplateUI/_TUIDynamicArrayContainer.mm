@interface _TUIDynamicArrayContainer
- (BOOL)needsValidationForTransactionGroup:(id)group;
- (BOOL)windowLowerLoadTriggered;
- (BOOL)windowLowerUnloadTriggered;
- (BOOL)windowUpperLoadTriggered;
- (BOOL)windowUpperUnloadTriggered;
- (Class)dynamicArrayLayoutIterationClass;
- (Class)layoutClass;
- (TUIModelContaining)parentModel;
- (_NSRange)windowRange;
- (_TUIDynamicArrayContainer)initWithEnumerator:(id)enumerator binding:(id)binding array:(id)array context:(id)context transactionCoordinator:(id)coordinator dynamicController:(id)controller nodes:(id)nodes snapshot:(id)self0 options:(id)self1 flags:(unint64_t)self2 builderClass:(Class)self3;
- (id)validateInstantiationWithContext:(id)context transactionGroup:(id)group layout:(id)layout;
- (id)windowLowerLoadTriggerChildBoxFlipped:(BOOL)flipped;
- (id)windowLowerUnloadTriggerChildBoxFlipped:(BOOL)flipped;
- (id)windowUpperLoadTriggerChildBoxFlipped:(BOOL)flipped;
- (id)windowUpperUnloadTriggerChildBoxFlipped:(BOOL)flipped;
- (void)appendLayoutChildrenToArray:(id)array;
- (void)appendObjectsWithProtocol:(id)protocol toArray:(id)array;
- (void)dynamicChanged:(id)changed transaction:(id)transaction;
- (void)instantiateWithContext:(id)context;
- (void)onContainedModelsChanged;
- (void)updateModelChildren:(id)children;
@end

@implementation _TUIDynamicArrayContainer

- (_TUIDynamicArrayContainer)initWithEnumerator:(id)enumerator binding:(id)binding array:(id)array context:(id)context transactionCoordinator:(id)coordinator dynamicController:(id)controller nodes:(id)nodes snapshot:(id)self0 options:(id)self1 flags:(unint64_t)self2 builderClass:(Class)self3
{
  arrayCopy = array;
  contextCopy = context;
  coordinatorCopy = coordinator;
  controllerCopy = controller;
  snapshotCopy = snapshot;
  optionsCopy = options;
  v30.receiver = self;
  v30.super_class = _TUIDynamicArrayContainer;
  v24 = [(_TUIDynamicArrayContainer *)&v30 init];
  v25 = v24;
  if (v24)
  {
    objc_storeWeak(&v24->_transactionCoordinator, coordinatorCopy);
    objc_storeWeak(&v25->_dynamicController, controllerCopy);
    v26 = [arrayCopy instanceForObserver:v25];
    instance = v25->_instance;
    v25->_instance = v26;

    objc_storeStrong(&v25->_snapshot, snapshot);
    v25->_enumerator.index = enumerator.var0;
    v25->_nodes = nodes;
    v25->_binding = binding;
    objc_storeStrong(&v25->_options, options);
    v25->_flags = flags;
    v25->_builderClass = class;
    [(_TUIDynamicArrayContainer *)v25 instantiateWithContext:contextCopy];
  }

  return v25;
}

- (void)appendObjectsWithProtocol:(id)protocol toArray:(id)array
{
  protocolCopy = protocol;
  arrayCopy = array;
  children = self->_children;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_80D88;
  v11[3] = &unk_25DFA8;
  v12 = protocolCopy;
  v13 = arrayCopy;
  v9 = arrayCopy;
  v10 = protocolCopy;
  [(NSArray *)children enumerateObjectsUsingBlock:v11];
}

- (Class)layoutClass
{
  v2 = TUIAncestorBoxFromModel(self);
  dynamicArrayLayoutContainerClass = [v2 dynamicArrayLayoutContainerClass];

  return dynamicArrayLayoutContainerClass;
}

- (void)updateModelChildren:(id)children
{
  childrenCopy = children;
  [(NSArray *)self->_children enumerateObjectsUsingBlock:&stru_2604D8];
  children = self->_children;
  self->_children = childrenCopy;
  v6 = childrenCopy;

  v7 = self->_children;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_80F04;
  v8[3] = &unk_25DF80;
  v8[4] = self;
  [(NSArray *)v7 enumerateObjectsUsingBlock:v8];
  [(_TUIDynamicArrayContainer *)self onContainedModelsChanged];
}

- (void)appendLayoutChildrenToArray:(id)array
{
  arrayCopy = array;
  children = self->_children;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_80FB8;
  v7[3] = &unk_25DF80;
  v8 = arrayCopy;
  v6 = arrayCopy;
  [(NSArray *)children enumerateObjectsUsingBlock:v7];
}

- (void)onContainedModelsChanged
{
  parentModel = [(_TUIDynamicArrayContainer *)self parentModel];
  [parentModel onContainedModelsChanged];
}

- (Class)dynamicArrayLayoutIterationClass
{
  v2 = TUIAncestorBoxFromModel(self);
  dynamicArrayLayoutIterationClass = [v2 dynamicArrayLayoutIterationClass];

  return dynamicArrayLayoutIterationClass;
}

- (void)dynamicChanged:(id)changed transaction:(id)transaction
{
  transactionCopy = transaction;
  WeakRetained = objc_loadWeakRetained(&self->_transactionCoordinator);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_810FC;
  v7[3] = &unk_25EB80;
  v7[4] = self;
  [WeakRetained scheduleLayoutUpdateWithTransaction:transactionCopy block:v7];
}

- (void)instantiateWithContext:(id)context
{
  contextCopy = context;
  v5 = objc_opt_new();
  fetchInitial = [(TUIDynamicArrayInstance *)self->_instance count];
  if ((self->_flags & 2) != 0)
  {
    options = self->_options;
    if (options)
    {
      if ([(TUIDynamicInstantiateOptions *)options fetchInitial]!= 0x7FFFFFFFFFFFFFFFLL)
      {
        fetchInitial = [(TUIDynamicInstantiateOptions *)self->_options fetchInitial];
      }
    }
  }

  v8 = [(TUIDynamicArrayInstance *)self->_instance count];
  if (fetchInitial >= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = fetchInitial;
  }

  self->_instantiateWindow.location = 0;
  self->_instantiateWindow.length = v9;
  instance = self->_instance;
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_81274;
  v16 = &unk_260528;
  selfCopy = self;
  v18 = contextCopy;
  v19 = v5;
  v20 = fetchInitial;
  v11 = v5;
  v12 = contextCopy;
  [(TUIDynamicArrayInstance *)instance objectsInRange:0 block:v9, &v13];
  [(_TUIDynamicArrayContainer *)self updateModelChildren:v11, v13, v14, v15, v16, selfCopy];
}

- (BOOL)needsValidationForTransactionGroup:(id)group
{
  if (([(TUIDynamicArrayInstance *)self->_instance optimizeUpdatesForTransactionGroup:group]& 1) != 0)
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

- (id)validateInstantiationWithContext:(id)context transactionGroup:(id)group layout:(id)layout
{
  contextCopy = context;
  groupCopy = group;
  v10 = TUIProtocolCast(&OBJC_PROTOCOL___TUIDynamicArrayLayout, layout);
  WeakRetained = objc_loadWeakRetained(&self->_parentModel);
  if (objc_opt_respondsToSelector())
  {
    v12 = objc_loadWeakRetained(&self->_parentModel);
    allowDynamicWindowInstantiation = [v12 allowDynamicWindowInstantiation];
  }

  else
  {
    allowDynamicWindowInstantiation = 0;
  }

  snapshot = self->_snapshot;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_81610;
  v19[3] = &unk_260618;
  v23 = allowDynamicWindowInstantiation;
  v19[4] = self;
  v20 = contextCopy;
  v21 = groupCopy;
  v22 = v10;
  v15 = v10;
  v16 = groupCopy;
  v17 = contextCopy;
  [v17 evaluateWithSnapshot:snapshot block:v19];

  return self;
}

- (id)windowLowerLoadTriggerChildBoxFlipped:(BOOL)flipped
{
  fetchPadding = [(TUIDynamicInstantiateOptions *)self->_options fetchPadding];
  if (fetchPadding == 0x7FFFFFFFFFFFFFFFLL || (location = self->_instantiateWindow.location) == 0 || (location + fetchPadding != 0x7FFFFFFFFFFFFFFFLL ? (v7 = fetchPadding >= self->_instantiateWindow.length) : (v7 = 1), v7))
  {
    v8 = 0;
  }

  else
  {
    v10 = [(NSArray *)self->_children objectAtIndexedSubscript:fetchPadding];
    v11 = v10;
    if (flipped)
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

- (id)windowLowerUnloadTriggerChildBoxFlipped:(BOOL)flipped
{
  fetchPadding = [(TUIDynamicInstantiateOptions *)self->_options fetchPadding];
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  if (fetchPadding != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = fetchPadding;
    fetchDelta = [(TUIDynamicInstantiateOptions *)self->_options fetchDelta]== 0x7FFFFFFFFFFFFFFFLL ? 1 : [(TUIDynamicInstantiateOptions *)self->_options fetchDelta];
    v9 = fetchDelta + v7;
    if (fetchDelta + v7 != 0x7FFFFFFFFFFFFFFFLL && v9 <= self->_instantiateWindow.length)
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
    if (flipped)
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

- (id)windowUpperLoadTriggerChildBoxFlipped:(BOOL)flipped
{
  fetchPadding = [(TUIDynamicInstantiateOptions *)self->_options fetchPadding];
  if (fetchPadding == 0x7FFFFFFFFFFFFFFFLL || (v6 = fetchPadding, length = self->_instantiateWindow.length, fetchPadding >= length) || (v8 = self->_instantiateWindow.location + length, v8 >= [(TUIDynamicArrayInstance *)self->_instance count]) || self->_instantiateWindow.location + self->_instantiateWindow.length + ~v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v11 = [(NSArray *)self->_children objectAtIndexedSubscript:self->_instantiateWindow.length + ~v6];
    v12 = v11;
    if (flipped)
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

- (id)windowUpperUnloadTriggerChildBoxFlipped:(BOOL)flipped
{
  fetchPadding = [(TUIDynamicInstantiateOptions *)self->_options fetchPadding];
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  if (fetchPadding != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = fetchPadding;
    fetchDelta = [(TUIDynamicInstantiateOptions *)self->_options fetchDelta]== 0x7FFFFFFFFFFFFFFFLL ? 1 : [(TUIDynamicInstantiateOptions *)self->_options fetchDelta];
    v9 = fetchDelta + v7;
    if (fetchDelta + v7 != 0x7FFFFFFFFFFFFFFFLL)
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
    if (flipped)
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

  selfCopy = self;
  *(self + 104) |= 1u;
  WeakRetained = objc_loadWeakRetained(&self->_dynamicController);
  LOBYTE(selfCopy) = [WeakRetained invalidateInstantiation:selfCopy];

  return selfCopy;
}

- (BOOL)windowUpperLoadTriggered
{
  if ((*(self + 104) & 2) != 0)
  {
    return 0;
  }

  selfCopy = self;
  *(self + 104) |= 2u;
  WeakRetained = objc_loadWeakRetained(&self->_dynamicController);
  LOBYTE(selfCopy) = [WeakRetained invalidateInstantiation:selfCopy];

  return selfCopy;
}

- (BOOL)windowLowerUnloadTriggered
{
  if ((*(self + 104) & 4) != 0)
  {
    return 0;
  }

  selfCopy = self;
  *(self + 104) |= 4u;
  WeakRetained = objc_loadWeakRetained(&self->_dynamicController);
  LOBYTE(selfCopy) = [WeakRetained invalidateInstantiation:selfCopy];

  return selfCopy;
}

- (BOOL)windowUpperUnloadTriggered
{
  if ((*(self + 104) & 8) != 0)
  {
    return 0;
  }

  selfCopy = self;
  *(self + 104) |= 8u;
  WeakRetained = objc_loadWeakRetained(&self->_dynamicController);
  LOBYTE(selfCopy) = [WeakRetained invalidateInstantiation:selfCopy];

  return selfCopy;
}

- (TUIModelContaining)parentModel
{
  WeakRetained = objc_loadWeakRetained(&self->_parentModel);

  return WeakRetained;
}

@end