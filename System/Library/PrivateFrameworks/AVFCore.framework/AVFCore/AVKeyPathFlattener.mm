@interface AVKeyPathFlattener
- (AVKeyPathFlattener)init;
- (id)dependentProperty;
- (id)topLevelDependencyProperty;
- (void)dealloc;
- (void)declareKeyPathDependenciesWithRegistry:(id)registry;
@end

@implementation AVKeyPathFlattener

- (void)declareKeyPathDependenciesWithRegistry:(id)registry
{
  topLevelPropertyKey = [(AVTwoPartKeyPath *)self->_dependencyKeyPath topLevelPropertyKey];
  [registry valueForKey:@"dependentProperty" dependsOnValueAtKeyPath:{-[AVTwoPartKeyPath initWithTopLevelPropertyKey:secondLevelPropertyKey:]([AVTwoPartKeyPath alloc], "initWithTopLevelPropertyKey:secondLevelPropertyKey:", @"topLevelDependencyProperty", -[AVTwoPartKeyPath secondLevelPropertyKey](self->_dependencyKeyPath, "secondLevelPropertyKey"))}];
  v6 = [[AVTwoPartKeyPath alloc] initWithTopLevelPropertyKey:@"observedObject" secondLevelPropertyKey:topLevelPropertyKey];

  [registry valueForKey:@"topLevelDependencyProperty" dependsOnValueAtKeyPath:v6];
}

- (AVKeyPathFlattener)init
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D920];
  v6 = NSStringFromSelector(sel_initForObservingValueAtKeyPath_onObject_);
  v12 = [v4 exceptionWithName:v5 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Not available.  Use %@ instead", v7, v8, v9, v10, v11, v6), 0}];
  objc_exception_throw(v12);
}

- (void)dealloc
{
  [(AVKeyPathDependencyManager *)self->_dependencyManager cancelAllCallbacks];

  v3.receiver = self;
  v3.super_class = AVKeyPathFlattener;
  [(AVKeyPathFlattener *)&v3 dealloc];
}

- (id)topLevelDependencyProperty
{
  topLevelPropertyKey = [(AVTwoPartKeyPath *)self->_dependencyKeyPath topLevelPropertyKey];
  v4 = objc_opt_respondsToSelector();
  observedObject = self->_observedObject;
  if (v4)
  {

    return [observedObject valueForKeyForKVO:topLevelPropertyKey];
  }

  else
  {

    return [observedObject valueForKey:topLevelPropertyKey];
  }
}

- (id)dependentProperty
{
  secondLevelPropertyKey = [(AVTwoPartKeyPath *)self->_dependencyKeyPath secondLevelPropertyKey];
  topLevelDependencyProperty = [(AVKeyPathFlattener *)self topLevelDependencyProperty];
  if (objc_opt_respondsToSelector())
  {

    return [topLevelDependencyProperty valueForKeyForKVO:secondLevelPropertyKey];
  }

  else
  {

    return [topLevelDependencyProperty valueForKey:secondLevelPropertyKey];
  }
}

@end