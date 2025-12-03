@interface _NSXPCConnectionExpectedReplies
- (_NSXPCConnectionExpectedReplies)init;
- (char)sequenceForProgress:(uint64_t)progress;
- (id)progressForSequence:(id)result;
- (void)dealloc;
- (void)removeProgressSequence:(uint64_t)sequence;
@end

@implementation _NSXPCConnectionExpectedReplies

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  replyTable = self->_replyTable;
  if (replyTable)
  {
    CFRelease(replyTable);
  }

  v4.receiver = self;
  v4.super_class = _NSXPCConnectionExpectedReplies;
  [(_NSXPCConnectionExpectedReplies *)&v4 dealloc];
}

- (_NSXPCConnectionExpectedReplies)init
{
  self->_sequence = 1;
  self->_lock._os_unfair_lock_opaque = 0;
  return self;
}

- (char)sequenceForProgress:(uint64_t)progress
{
  if (!progress)
  {
    return 0;
  }

  os_unfair_lock_lock_with_options();
  v4 = *(progress + 16);
  *(progress + 16) = v4 + 1;
  if (a2)
  {
    Mutable = *(progress + 8);
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E4A8], 0, 0, MEMORY[0x1E695E9E8]);
      *(progress + 8) = Mutable;
    }

    CFDictionarySetValue(Mutable, v4, a2);
  }

  os_unfair_lock_unlock((progress + 24));
  return v4;
}

- (void)removeProgressSequence:(uint64_t)sequence
{
  if (sequence)
  {
    os_unfair_lock_lock_with_options();
    Mutable = *(sequence + 8);
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E4A8], 0, 0, MEMORY[0x1E695E9E8]);
      *(sequence + 8) = Mutable;
    }

    CFDictionaryRemoveValue(Mutable, a2);

    os_unfair_lock_unlock((sequence + 24));
  }
}

- (id)progressForSequence:(id)result
{
  if (result)
  {
    v3 = result;
    os_unfair_lock_lock_with_options();
    Mutable = *(v3 + 1);
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E4A8], 0, 0, MEMORY[0x1E695E9E8]);
      *(v3 + 1) = Mutable;
    }

    Value = CFDictionaryGetValue(Mutable, a2);
    v6 = Value;
    os_unfair_lock_unlock(v3 + 6);

    return Value;
  }

  return result;
}

@end