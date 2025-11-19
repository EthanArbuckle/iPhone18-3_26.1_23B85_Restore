@interface OS_nw_dictionary
- (id)description;
- (id)redactedDescription;
- (void)dealloc;
@end

@implementation OS_nw_dictionary

- (void)dealloc
{
  isa = self[2].super.super.isa;
  if (isa)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 0x40000000;
    applier[2] = __nw_dictionary_dispose_block_invoke;
    applier[3] = &__block_descriptor_tmp_50684;
    applier[4] = self;
    xpc_dictionary_apply(isa, applier);
    v4 = self[2].super.super.isa;
    if (v4)
    {
      xpc_release(v4);
      self[2].super.super.isa = 0;
    }
  }

  v5.receiver = self;
  v5.super_class = OS_nw_dictionary;
  [(OS_nw_dictionary *)&v5 dealloc];
}

- (id)description
{
  if (nw_dictionary_get_count(self))
  {
    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
    if (Mutable)
    {
      v7 = 1;
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __48__OS_nw_dictionary_nw_descriptions__description__block_invoke;
      v6[3] = &__block_descriptor_48_e36_B24__0r_8__NSObject_OS_nw_object__16l;
      v6[4] = &v7;
      v6[5] = Mutable;
      v4 = Mutable;
      nw_dictionary_apply(self, v6);
      CFStringAppend(v4, @"}");
      Mutable = v4;
    }
  }

  else
  {
    Mutable = @"{}";
  }

  return Mutable;
}

- (id)redactedDescription
{
  if (nwlog_get_sensitive_redacted::onceToken != -1)
  {
    v6 = self;
    dispatch_once(&nwlog_get_sensitive_redacted::onceToken, &__block_literal_global_83);
    self = v6;
  }

  if (nwlog_get_sensitive_redacted::sensitiveRedacted)
  {
    v2 = self;
    if (nw_dictionary_get_count(self))
    {
      Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
      if (Mutable)
      {
        v8 = 1;
        v7[0] = MEMORY[0x1E69E9820];
        v7[1] = 3221225472;
        v7[2] = __56__OS_nw_dictionary_nw_descriptions__redactedDescription__block_invoke;
        v7[3] = &__block_descriptor_48_e36_B24__0r_8__NSObject_OS_nw_object__16l;
        v7[4] = &v8;
        v7[5] = Mutable;
        v4 = Mutable;
        nw_dictionary_apply(v2, v7);
        CFStringAppend(v4, @"}");
        Mutable = v4;
      }
    }

    else
    {
      Mutable = @"{}";
    }
  }

  else
  {
    Mutable = [(OS_nw_dictionary *)self description];
  }

  return Mutable;
}

@end