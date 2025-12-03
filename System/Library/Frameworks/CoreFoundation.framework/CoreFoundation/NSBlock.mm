@interface NSBlock
- (id)debugDescription;
- (void)performAfterDelay:(double)delay;
@end

@implementation NSBlock

- (void)performAfterDelay:(double)delay
{
  v4 = delay * 1000.0 * 1000.0 * 1000.0;
  if (v4 <= 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = v4;
  }

  v6 = dispatch_time(0, v5);
  v7 = qos_class_self();
  global_queue = dispatch_get_global_queue(v7, 0);

  dispatch_after(v6, global_queue, self);
}

- (id)debugDescription
{
  v20 = *MEMORY[0x1E69E9840];
  if ((self[1].super.isa & 0x2000000) != 0)
  {
    v3 = self[3].super.isa + 16;
  }

  else
  {
    v3 = 0;
  }

  v4 = _Block_signature(self);
  if (!self[2].super.isa)
  {
    isa = 0;
    if (v3)
    {
      goto LABEL_6;
    }

LABEL_9:
    v6 = 0;
    goto LABEL_14;
  }

  isa = self[2].super.isa;
  if (!v3)
  {
    goto LABEL_9;
  }

LABEL_6:
  if (*v3)
  {
    v6 = *v3;
  }

  else
  {
    v6 = 0;
  }

  if (*(v3 + 1))
  {
    v3 = *(v3 + 1);
  }

  else
  {
    v3 = 0;
  }

LABEL_14:
  Mutable = CFStringCreateMutable(&__kCFAllocatorSystemDefault, 0);
  v8 = objc_opt_class();
  Name = class_getName(v8);
  v10 = "<unknown signature>";
  if (v4)
  {
    v10 = v4;
  }

  CFStringAppendFormat(Mutable, 0, @"<%s: %p>\n signature: %s", Name, self, v10);
  memset(&v19, 0, sizeof(v19));
  if (isa && dladdr(isa, &v19))
  {
    dli_fname = "<unknown invoke library>";
    if (v19.dli_fname)
    {
      dli_fname = v19.dli_fname;
    }

    dli_sname = "<unknown invoke symbol>";
    if (v19.dli_sname)
    {
      dli_sname = v19.dli_sname;
    }
  }

  if (v6 && dladdr(v6, &v19))
  {
    v13 = "<unknown copy library>";
    if (v19.dli_fname)
    {
      v13 = v19.dli_fname;
    }

    v14 = "<unknown copy symbol>";
    if (v19.dli_sname)
    {
      v14 = v19.dli_sname;
    }
  }

  if (v3 && dladdr(v3, &v19))
  {
    v15 = "<unknown dispose library>";
    if (v19.dli_fname)
    {
      v15 = v19.dli_fname;
    }

    v16 = "<unknown dispose symbol>";
    if (v19.dli_sname)
    {
      v16 = v19.dli_sname;
    }
  }

  result = Mutable;
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

@end