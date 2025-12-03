@interface _NSUndoStack
- (BOOL)isDiscardable;
- (BOOL)popAndInvoke;
- (_NSUndoStack)init;
- (id)_beginMark;
- (id)description;
- (id)groupIdentifier;
- (id)newestUndoActionDate;
- (id)oldestUndoActionDate;
- (id)popUndoObject;
- (id)undoActionInfo;
- (id)userInfo;
- (unint64_t)popAllActionsForConnectionUUID:(id)d;
- (unint64_t)topLevelGroupCount;
- (void)_removeBottom;
- (void)dealloc;
- (void)markBegin;
- (void)markEnd;
- (void)push:(id)push;
- (void)removeAllObjects;
- (void)removeAllObjectsWithTarget:(id)target;
- (void)removeObject:(id)object;
- (void)setDiscardable:(BOOL)discardable;
- (void)setGroupIdentifier:(id)identifier;
- (void)setMax:(unint64_t)max;
- (void)setUserInfo:(id)info;
@end

@implementation _NSUndoStack

- (_NSUndoStack)init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = _NSUndoStack;
  result = [(_NSUndoStack *)&v3 init];
  result->_head = 0;
  result->_max = 0;
  result->_count = 0;
  return result;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  while (self->_head)
  {
    [(_NSUndoStack *)self popUndoObject];
  }

  v3.receiver = self;
  v3.super_class = _NSUndoStack;
  [(_NSUndoStack *)&v3 dealloc];
}

- (void)removeAllObjects
{
  for (i = self->_head; i; i = self->_head)
  {
    self->_head = i->next;
  }

  self->_count = 0;
  self->_nestingLevel = 0;
}

- (void)_removeBottom
{
  previous = self->_head->previous;
  if (![(_NSUndoObject *)previous isBeginMark])
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Error while removing bottom of undo stack." userInfo:0]);
  }

  v4 = 0;
  do
  {
    if ([(_NSUndoObject *)previous isBeginMark])
    {
      v5 = 1;
    }

    else
    {
      v5 = [(_NSUndoObject *)previous isEndMark]<< 63 >> 63;
    }

    v4 += v5;
    previous = previous->previous;
  }

  while (v4);
  self->_head->previous = previous;
  self->_head->previous->next = 0;
  --self->_count;
}

- (unint64_t)topLevelGroupCount
{
  head = self->_head;
  if (head)
  {
    v3 = 0;
    v4 = 0;
    while (1)
    {
      if ([(_NSUndoObject *)head isEndMark])
      {
        if (!v4)
        {
          ++v3;
          v4 = -1;
          goto LABEL_7;
        }

        --v4;
      }

      v4 += [(_NSUndoObject *)head isBeginMark];
LABEL_7:
      head = head->next;
      if (!head)
      {
        return v3;
      }
    }
  }

  return 0;
}

- (void)setMax:(unint64_t)max
{
  for (self->_max = max; max; max = self->_max)
  {
    if (self->_count <= max)
    {
      break;
    }

    [(_NSUndoStack *)self _removeBottom];
  }
}

- (void)push:(id)push
{
  head = self->_head;
  *(push + 1) = head;
  previous = push;
  if (head)
  {
    previous = head->previous;
  }

  *(push + 2) = previous;
  v8 = self->_head;
  if (v8)
  {
    v8->previous = push;
  }

  self->_head = push;
  if ([push isEndMark])
  {
    nestingLevel = self->_nestingLevel;
    if (!nestingLevel)
    {
      v13 = NSStringFromSelector(a2);
      v14 = objc_opt_class();
      v15 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@ -- %@ %p pushing more ends than begins onto stack", v13, NSStringFromClass(v14), self), 0}];
      objc_exception_throw(v15);
    }

    v10 = nestingLevel - 1;
    self->_nestingLevel = v10;
    if (!v10)
    {
      max = self->_max;
      if (max)
      {
        if (self->_count > max)
        {

          [(_NSUndoStack *)self _removeBottom];
        }
      }
    }
  }

  else if ([push isBeginMark])
  {
    v12 = self->_nestingLevel;
    if (!v12)
    {
      ++self->_count;
    }

    self->_nestingLevel = v12 + 1;
  }
}

- (id)popUndoObject
{
  head = self->_head;
  if (!head)
  {
    return 0;
  }

  next = head->next;
  self->_head = next;
  if (next)
  {
    next->previous = head->previous;
  }

  if ([(_NSUndoObject *)head isBeginMark])
  {
    nestingLevel = self->_nestingLevel;
    if (!nestingLevel)
    {
      v11 = NSStringFromSelector(a2);
      v12 = objc_opt_class();
      v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@ -- %@ %p popping more begins than ends from stack", v11, NSStringFromClass(v12), self), 0}];
      objc_exception_throw(v13);
    }

    v7 = nestingLevel - 1;
    self->_nestingLevel = v7;
    if (v7)
    {
      goto LABEL_12;
    }

    v8 = -1;
    v9 = 16;
    goto LABEL_11;
  }

  if ([(_NSUndoObject *)head isEndMark])
  {
    v8 = 1;
    v9 = 24;
LABEL_11:
    *(&self->super.isa + v9) = (*(&self->super.isa + v9) + v8);
  }

LABEL_12:

  return head;
}

- (id)_beginMark
{
  head = self->_head;
  if (head)
  {
    nestingLevel = self->_nestingLevel;
    do
    {
      nestingLevel += [(_NSUndoObject *)head isEndMark];
      if ([(_NSUndoObject *)head isBeginMark])
      {
        if (nestingLevel)
        {
          if (!--nestingLevel)
          {
            break;
          }
        }
      }

      head = head->next;
    }

    while (head);
  }

  return head;
}

- (void)setGroupIdentifier:(id)identifier
{
  _beginMark = [(_NSUndoStack *)self _beginMark];
  if (!_beginMark)
  {
    v7 = NSStringFromSelector(a2);
    v8 = objc_opt_class();
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: %@ %p is in invalid state, calling setGroupIdentifier with no begin group mark\n", v7, NSStringFromClass(v8), self), 0}];
    objc_exception_throw(v9);
  }

  [_beginMark setGroupIdentifier:identifier];
}

- (id)groupIdentifier
{
  result = [(_NSUndoStack *)self _beginMark];
  if (result)
  {

    return [result groupIdentifier];
  }

  return result;
}

- (void)markBegin
{
  v3 = [(_NSUndoObject *)[_NSUndoBeginMark allocWithZone:?]];

  [(_NSUndoStack *)self push:v3];
}

- (void)markEnd
{
  v3 = [(_NSUndoObject *)[_NSUndoEndMark allocWithZone:?]];

  [(_NSUndoStack *)self push:v3];
}

- (BOOL)isDiscardable
{
  _beginMark = [(_NSUndoStack *)self _beginMark];
  if (_beginMark)
  {

    LOBYTE(_beginMark) = [_beginMark isDiscardable];
  }

  return _beginMark;
}

- (void)setDiscardable:(BOOL)discardable
{
  discardableCopy = discardable;
  _beginMark = [(_NSUndoStack *)self _beginMark];
  if (!_beginMark)
  {
    v7 = NSStringFromSelector(a2);
    v8 = objc_opt_class();
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: %@ %p is in invalid state, calling setDiscardable with no begin group mark\n", v7, NSStringFromClass(v8), self), 0}];
    objc_exception_throw(v9);
  }

  [_beginMark setDiscardable:discardableCopy];
}

- (id)userInfo
{
  result = [(_NSUndoStack *)self _beginMark];
  if (result)
  {

    return [result userInfo];
  }

  return result;
}

- (void)setUserInfo:(id)info
{
  _beginMark = [(_NSUndoStack *)self _beginMark];
  if (!_beginMark)
  {
    v7 = NSStringFromSelector(a2);
    v8 = objc_opt_class();
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: %@ %p is in invalid state, calling setUserInfo with no begin group mark\n", v7, NSStringFromClass(v8), self), 0}];
    objc_exception_throw(v9);
  }

  [_beginMark setUserInfo:info];
}

- (BOOL)popAndInvoke
{
  head = self->_head;
  if (head)
  {
    if (![(_NSUndoObject *)head isEndMark])
    {
      v8 = NSStringFromSelector(a2);
      v9 = objc_opt_class();
      v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: %@ %p is in invalid state, call endUndoGrouping on undo manager before calling this method\n", v8, NSStringFromClass(v9), self), 0}];
      objc_exception_throw(v10);
    }

    head = self->_head;
  }

  v5 = 0;
  v6 = 0;
  do
  {
    if ([(_NSUndoObject *)head isBeginMark])
    {
      --v5;
    }

    else
    {
      if (![(_NSUndoObject *)self->_head isEndMark])
      {
        [-[_NSUndoStack popUndoObject](self "popUndoObject")];
        v6 = 1;
        goto LABEL_11;
      }

      ++v5;
    }

    [(_NSUndoStack *)self popUndoObject];
LABEL_11:
    head = self->_head;
  }

  while (head && v5);
  return v6;
}

- (void)removeAllObjectsWithTarget:(id)target
{
  head = self->_head;
  if (head)
  {
    v6 = 0;
    v7 = 0;
    nestingLevel = self->_nestingLevel;
    while (1)
    {
      isEndMark = [(_NSUndoObject *)head isEndMark];
      v10 = nestingLevel + isEndMark;
      v11 = isEndMark | v7;
      isBeginMark = [(_NSUndoObject *)head isBeginMark];
      nestingLevel = (isBeginMark & v11) != 0 ? v10 - 1 : v10;
      v7 = (isBeginMark & v11 ^ 1 | (v10 != 1)) & v11;
      if ([(_NSUndoObject *)head target]== target && ![(_NSUndoObject *)head isBeginMark]&& ![(_NSUndoObject *)head isEndMark])
      {
        break;
      }

      next = head->next;
LABEL_10:
      v6 = head;
      head = next;
      if (!next)
      {
        return;
      }
    }

    next = head->next;
    [(_NSUndoStack *)self removeObject:head];
    if (next && ![(_NSUndoObject *)next isBeginMark]|| v6 && ![(_NSUndoObject *)v6 isEndMark])
    {
      head = v6;
      goto LABEL_10;
    }

    head = v6;
    while (1)
    {
      if (!head)
      {
        goto LABEL_21;
      }

      previous = head->previous;
      [(_NSUndoStack *)self removeObject:head];
      if (next)
      {
        if (previous)
        {
          break;
        }
      }

      head = previous;
      if (!nestingLevel)
      {
        goto LABEL_22;
      }

LABEL_23:
      if (![(_NSUndoObject *)next isBeginMark]|| ![(_NSUndoObject *)head isEndMark])
      {
        goto LABEL_10;
      }
    }

    v15 = next->next;
    [(_NSUndoStack *)self removeObject:next];
    nestingLevel -= v7 & 1;
    head = previous;
    next = v15;
LABEL_21:
    if (nestingLevel)
    {
      goto LABEL_23;
    }

LABEL_22:
    v7 = 0;
    --self->_count;
    goto LABEL_23;
  }
}

- (void)removeObject:(id)object
{
  v4 = *(object + 1);
  v3 = *(object + 2);
  if (v4)
  {
    *(v4 + 16) = v3;
    if (*(v3 + 8))
    {
      *(v3 + 8) = *(object + 1);
    }
  }

  else
  {
    *(v3 + 8) = 0;
    self->_head->previous = *(object + 2);
  }

  if (self->_head == object)
  {
    self->_head = *(object + 1);
  }

  MEMORY[0x1EEE66BE0]();
}

- (id)description
{
  result = [NSString stringWithFormat:@"Stack: %p\n", self];
  head = self->_head;
  if (head)
  {
    v5 = 0;
    do
    {
      v6 = v5 + 1;
      result = [NSString stringWithFormat:@"%@%ld: %@\n", result, v5, head];
      head = head->next;
      v5 = v6;
    }

    while (head);
  }

  return result;
}

- (unint64_t)popAllActionsForConnectionUUID:(id)d
{
  head = self->_head;
  if (!head)
  {
    return 0;
  }

  v6 = 0;
  nestingLevel = self->_nestingLevel;
  while (1)
  {
    if (![(_NSUndoObject *)head isBeginMark])
    {
      nestingLevel += [(_NSUndoObject *)head isEndMark];
      goto LABEL_10;
    }

    userInfo = [(_NSUndoObject *)head userInfo];
    v9 = [objc_msgSend(userInfo objectForKey:{_NSUndoManagerRemoteConnectionIDUserInfoKey), "isEqual:", d}];
    v10 = --nestingLevel ? v6 : head;
    if (v9)
    {
      break;
    }

    v6 = v10;
LABEL_10:
    head = head->next;
    if (!head)
    {
      return 0;
    }
  }

  if (!v6)
  {
    count = self->_count;
    [(_NSUndoStack *)self removeAllObjects];
    return count;
  }

  next = v6->next;
  v6->next = 0;
  self->_head->previous = v6;
  if (!next)
  {
    return 0;
  }

  count = 0;
  v14 = 0;
  do
  {
    if ([(_NSUndoObject *)next isEndMark])
    {
      v15 = 1;
    }

    else
    {
      v15 = [(_NSUndoObject *)next isBeginMark]<< 63 >> 63;
    }

    v14 += v15;
    v16 = next->next;

    if (!v14)
    {
      --self->_count;
      ++count;
    }

    next = v16;
  }

  while (v16);
  return count;
}

- (id)oldestUndoActionDate
{
  head = self->_head;
  if (!head)
  {
    return 0;
  }

  if (![(_NSUndoObject *)head->previous isBeginMark])
  {
    __assert_rtn("[_NSUndoStack oldestUndoActionDate]", "NSUndoManager.m", 2159, "[_head->previous isBeginMark]");
  }

  userInfo = [(_NSUndoObject *)self->_head->previous userInfo];
  result = [userInfo objectForKey:_NSUndoManagerDateUserInfoKey];
  if (!result)
  {
    __assert_rtn("[_NSUndoStack oldestUndoActionDate]", "NSUndoManager.m", 2161, "result");
  }

  return result;
}

- (id)newestUndoActionDate
{
  result = self->_head;
  if (result)
  {
    if (([result isEndMark] & 1) == 0)
    {
      v6 = NSStringFromSelector(a2);
      v7 = objc_opt_class();
      v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: %@ %p is in invalid state, call endUndoGrouping on undo manager before calling this method\n", v6, NSStringFromClass(v7), self), 0}];
      objc_exception_throw(v8);
    }

    v5 = [-[_NSUndoStack _beginMark](self "_beginMark")];
    result = [v5 objectForKey:_NSUndoManagerDateUserInfoKey];
    if (!result)
    {
      __assert_rtn("[_NSUndoStack newestUndoActionDate]", "NSUndoManager.m", 2176, "result");
    }
  }

  return result;
}

- (id)undoActionInfo
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  head = self->_head;
  if (head)
  {
    nestingLevel = self->_nestingLevel;
    if (![(_NSUndoObject *)self->_head isEndMark])
    {
      v11 = NSStringFromSelector(a2);
      v12 = objc_opt_class();
      v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: %@ %p is in invalid state, undo action info cannot be collected while an undo group is open\n", v11, NSStringFromClass(v12), self), 0}];
      objc_exception_throw(v13);
    }

    do
    {
      if ([(_NSUndoObject *)head isBeginMark])
      {
        if (!--nestingLevel)
        {
          v7 = objc_alloc_init(NSUUID);
          if ([(_NSUndoObject *)head userInfo])
          {
            userInfo = [(_NSUndoObject *)head userInfo];
            [userInfo setObject:v7 forKey:_NSUndoManagerRemoteIDUserInfoKey];
          }

          else
          {
            -[_NSUndoObject setUserInfo:](head, "setUserInfo:", [MEMORY[0x1E695DF90] dictionaryWithObject:v7 forKey:_NSUndoManagerRemoteIDUserInfoKey]);
          }

          v9 = [[_NSUndoActionInfo alloc] initWithUUID:v7 name:[(_NSUndoObject *)head groupIdentifier] discardable:[(_NSUndoObject *)head isDiscardable]];
          [v4 insertObject:v9 atIndex:0];

          nestingLevel = 0;
        }
      }

      else
      {
        nestingLevel += [(_NSUndoObject *)head isEndMark];
      }

      head = head->next;
    }

    while (head);
  }

  return v4;
}

@end