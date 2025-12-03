@interface CAEmitterBehavior
+ (id)behaviorTypes;
+ (id)behaviorWithType:(id)type;
+ (void)CAMLParserStartElement:(id)element;
- (CAEmitterBehavior)initWithCoder:(id)coder;
- (CAEmitterBehavior)initWithType:(id)type;
- (Object)CA_copyRenderValue;
- (id)CAMLTypeForKey:(id)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)valueForKey:(id)key;
- (void)dealloc;
- (void)didChangeValueForKey:(id)key;
- (void)encodeWithCAMLWriter:(id)writer;
- (void)encodeWithCoder:(id)coder;
- (void)setEnabled:(BOOL)enabled;
- (void)setName:(id)name;
- (void)setValue:(id)value forKey:(id)key;
@end

@implementation CAEmitterBehavior

- (Object)CA_copyRenderValue
{
  v22 = *MEMORY[0x1E69E9840];
  if (!self->_type)
  {
    return 0;
  }

  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v3)
  {
    v3 = CA::Transaction::create(self);
  }

  v4 = *(v3 + 29);
  *(v3 + 29) = v4 + 1;
  if (!v4)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  if (!self->_cache)
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v5 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x30uLL, 0xDEEC3011uLL);
    v7 = v5;
    if (v5)
    {
      *(v5 + 2) = 1;
      ++dword_1ED4EAA6C;
      *v5 = &unk_1EF1FE418;
      *(v5 + 12) = 13;
      v5[4] = 0;
      v5[5] = 0;
      v5[3] = 0;
      v8 = 13;
    }

    else
    {
      v8 = MEMORY[0xC];
    }

    *(v5 + 4) = self->_type;
    *(v5 + 3) = v8 | (self->_flags << 8);
    v10 = CA::Render::String::new_string(self->_name, v6);
    v11 = v7[3];
    v7[3] = v10;
    if (v11 && atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
    {
      v11 = (*(*v11 + 16))(v11);
    }

    attr = self->_attr;
    if (!attr)
    {
      goto LABEL_30;
    }

    v13 = -1;
    v14 = self->_attr;
    do
    {
      v14 = *v14;
      ++v13;
    }

    while (v14);
    if (!v13)
    {
      goto LABEL_30;
    }

    v15 = 8 * v13;
    v20 = 0;
    v21 = 0;
    if ((8 * v13) > 0x1000)
    {
      v21 = malloc_type_malloc(8 * v13, 0x2004093837F09uLL);
      if (!v21)
      {
LABEL_30:
        self->_cache = v7;
        goto LABEL_31;
      }

      attr = self->_attr;
      if (!attr)
      {
LABEL_28:
        if (v15 > 0x1000)
        {
          free(v21);
        }

        goto LABEL_30;
      }
    }

    else
    {
      MEMORY[0x1EEE9AC00](v11);
      bzero(&v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v15);
      v21 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    }

    CA::AttrList::for_each(*attr, copy_attr, &v20);
    if (v20)
    {
      v16 = CA::Render::Array::new_array(v20, v21, 0, 0);
      v17 = v7[4];
      v7[4] = v16;
      if (v17)
      {
        if (atomic_fetch_add(v17 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v17 + 16))(v17);
        }
      }
    }

    goto LABEL_28;
  }

LABEL_31:
  CA::Transaction::unlock(v3);
  result = self->_cache;
  if (result)
  {
    p_var1 = &result->var1;
    if (!atomic_fetch_add(&result->var1.var0.var0, 1u))
    {
      result = 0;
      atomic_fetch_add(&p_var1->var0.var0, 0xFFFFFFFF);
    }
  }

  return result;
}

- (id)CAMLTypeForKey:(id)key
{
  v4 = CAInternAtom(key, 0);
  if (v4 == 234)
  {
    return @"BOOL";
  }

  if (v4 != 527)
  {
    v6 = 0;
    while (1)
    {
      v7 = behavior_inputs[v6];
      v8 = behavior_inputs[v6 + 1];
      v9 = v6 + 2;
      if (v7 == self->_type)
      {
        break;
      }

      v6 = v9 + v8;
      if (v6 >= 0x51)
      {
        return 0;
      }
    }

    if (v8 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v8;
    }

    while (behavior_inputs[v9] != v4)
    {
      ++v9;
      if (!--v10)
      {
        return 0;
      }
    }

    v5 = @"BOOL";
    if (v4 > 263)
    {
      if (v4 > 579)
      {
        if (v4 <= 675)
        {
          if (v4 == 580)
          {
            return v5;
          }

          if (v4 != 588 && v4 != 616)
          {
            return 0;
          }

          return @"real";
        }

        if (v4 <= 735)
        {
          if (v4 == 676)
          {
            return v5;
          }

          if (v4 != 685)
          {
            return 0;
          }

          return @"real";
        }

        if (v4 != 736)
        {
          if (v4 != 764)
          {
            return 0;
          }

          return @"real";
        }

        return @"NSArray";
      }

      if (v4 > 489)
      {
        if ((v4 - 544) < 2)
        {
          return @"real";
        }

        if (v4 != 490)
        {
          if (v4 == 569)
          {
            return @"CGPoint";
          }

          return 0;
        }

        return @"NSArray";
      }

      if (v4 > 277)
      {
        if (v4 == 278)
        {
          return @"CAValueFunction";
        }

        if (v4 != 461)
        {
          return 0;
        }

        return @"NSString";
      }

      if (v4 != 264)
      {
        if (v4 != 270)
        {
          return 0;
        }

        return @"real";
      }
    }

    else
    {
      if (v4 <= 191)
      {
        if (v4 <= 100)
        {
          if (v4 <= 41)
          {
            if (v4 == 3)
            {
              return v5;
            }

            if (v4 != 31)
            {
              return 0;
            }

            return @"real";
          }

          if (v4 == 42)
          {
            return v5;
          }

          if (v4 != 53)
          {
            return 0;
          }

          return @"NSString";
        }

        if ((v4 - 126) < 2)
        {
          return @"real";
        }

        if (v4 == 101)
        {
          return @"CGColor";
        }

        if (v4 != 121)
        {
          return 0;
        }

        return @"NSArray";
      }

      v12 = (v4 - 192);
      if (v12 > 0x33)
      {
        return 0;
      }

      if (((1 << (v4 + 64)) & 0xC00000000800DLL) != 0)
      {
        return @"real";
      }

      if (v12 != 1)
      {
        return 0;
      }
    }

    return @"CAPoint3D";
  }

  return @"string";
}

- (void)encodeWithCAMLWriter:(id)writer
{
  [writer setElementAttribute:-[CAEmitterBehavior type](self forKey:{"type"), @"behavior"}];
  name = [(CAEmitterBehavior *)self name];
  if (name)
  {
    [writer setElementAttribute:name forKey:@"name"];
  }

  isEnabled = [(CAEmitterBehavior *)self isEnabled];
  if ((isEnabled & 1) == 0)
  {
    isEnabled = [writer setElementAttribute:@"0" forKey:@"enabled"];
  }

  if (self->_attr)
  {
    v7 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
    if (!v7)
    {
      v7 = CA::Transaction::create(isEnabled);
    }

    v8 = *(v7 + 29);
    *(v7 + 29) = v8 + 1;
    if (!v8)
    {
      os_unfair_lock_lock(&CA::Transaction::transaction_lock);
    }

    attr = self->_attr;
    if (attr)
    {
      CA::AttrList::for_each(*attr, write_attr, writer);
    }

    CA::Transaction::unlock(v7);
  }
}

- (CAEmitterBehavior)initWithCoder:(id)coder
{
  v12 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = CAEmitterBehavior;
  v4 = [(CAEmitterBehavior *)&v11 init];
  if (v4)
  {
    v5 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    if (v5)
    {
      v4->_type = CAInternAtom(v5, 1);
    }

    v4->_name = [coder decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    if ([coder containsValueForKey:@"enabled"] && !objc_msgSend(coder, "decodeBoolForKey:", @"enabled"))
    {
      v6 = v4->_flags & 0xFFFFFFFE;
    }

    else
    {
      v6 = v4->_flags | 1;
    }

    v4->_flags = v6;
    v7 = [coder CA_decodeObjectForKey:@"values"];
    if (v7)
    {
      v8 = v7;
      v9 = CFGetTypeID(v7);
      if (v9 == CFDictionaryGetTypeID())
      {
        CFDictionaryApplyFunction(v8, set_attr, v4);
      }
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5 = [coder encodeObject:CAAtomGetString(self->_type) forKey:@"type"];
  name = self->_name;
  if (name)
  {
    v5 = [coder encodeObject:name forKey:@"name"];
  }

  if ((self->_flags & 1) == 0)
  {
    v5 = [coder encodeBool:0 forKey:@"enabled"];
  }

  if (self->_attr)
  {
    v7 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
    if (!v7)
    {
      v7 = CA::Transaction::create(v5);
    }

    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = *(v7 + 29);
    *(v7 + 29) = v9 + 1;
    v11 = v8;
    if (!v9)
    {
      os_unfair_lock_lock(&CA::Transaction::transaction_lock);
    }

    attr = self->_attr;
    if (attr)
    {
      CA::AttrList::for_each(*attr, copy_dictionary, v11);
    }

    CA::Transaction::unlock(v7);
    [coder CA_encodeObject:v11 forKey:@"values" conditional:0];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  if (v4)
  {
    v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
    if (!v6)
    {
      v6 = CA::Transaction::create(v4);
    }

    *(v5 + 2) = self->_type;
    *(v5 + 2) = [(NSString *)self->_name copy];
    v7 = *(v6 + 29);
    *(v6 + 29) = v7 + 1;
    if (!v7)
    {
      os_unfair_lock_lock(&CA::Transaction::transaction_lock);
    }

    attr = self->_attr;
    if (attr)
    {
      v9 = *(attr + 1) & 7;
      if (v9 == 7)
      {
        attr = CA::AttrList::copy_(attr);
      }

      else
      {
        *(attr + 1) = *(attr + 1) & 0xFFFFFFFFFFFFFFF8 | (v9 + 1);
      }
    }

    *(v5 + 3) = attr;
    CA::Transaction::unlock(v6);
    *(v5 + 10) = self->_flags;
  }

  return v5;
}

- (void)dealloc
{
  v10 = *MEMORY[0x1E69E9840];

  if (self->_attr)
  {
    v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
    if (!v5)
    {
      v5 = CA::Transaction::create(v3);
    }

    v6 = *(v5 + 29);
    *(v5 + 29) = v6 + 1;
    if (!v6)
    {
      os_unfair_lock_lock(&CA::Transaction::transaction_lock);
    }

    attr = self->_attr;
    if (attr)
    {
      CA::AttrList::free(attr, v4);
    }

    self->_attr = 0;
    CA::Transaction::unlock(v5);
  }

  cache = self->_cache;
  if (cache && atomic_fetch_add(cache + 2, 0xFFFFFFFF) == 1)
  {
    (*(*cache + 16))(cache);
  }

  v9.receiver = self;
  v9.super_class = CAEmitterBehavior;
  [(CAEmitterBehavior *)&v9 dealloc];
}

- (void)didChangeValueForKey:(id)key
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_cache)
  {
    v5 = CAInternAtom(key, 0);
    if (v5 == 121 || v5 == 736 || v5 == 490)
    {
      cache = self->_cache;
      if (atomic_fetch_add(cache + 2, 0xFFFFFFFF) == 1)
      {
        (*(*cache + 16))(cache);
      }

      self->_cache = 0;
    }
  }

  v7.receiver = self;
  v7.super_class = CAEmitterBehavior;
  [(CAEmitterBehavior *)&v7 didChangeValueForKey:key];
}

- (id)valueForKey:(id)key
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (!key)
  {
    return 0;
  }

  v4 = CAInternAtom(key, 1);
  if (v4 != 234)
  {
    v5 = v4;
    if (v4 == 527)
    {
      return self->_name;
    }

    v9 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
    if (!v9)
    {
      v9 = CA::Transaction::create(v4);
    }

    v10 = *(v9 + 29);
    *(v9 + 29) = v10 + 1;
    if (!v10)
    {
      os_unfair_lock_lock(&CA::Transaction::transaction_lock);
    }

    attr = self->_attr;
    if (attr)
    {
      v13[0] = 0;
      v12 = CA::AttrList::get(attr, v5, 1, v13);
      CA::Transaction::unlock(v9);
      if (v12)
      {
        return v13[0];
      }

      else
      {
        return 0;
      }
    }

    CA::Transaction::unlock(v9);
    return 0;
  }

  v7 = MEMORY[0x1E696AD98];
  isEnabled = [(CAEmitterBehavior *)self isEnabled];

  return [v7 numberWithBool:isEnabled];
}

- (void)setValue:(id)value forKey:(id)key
{
  v16[1] = *MEMORY[0x1E69E9840];
  v16[0] = value;
  if (key)
  {
    v7 = CAInternAtom(key, 1);
    if (v7 == 234)
    {
      v9 = *MEMORY[0x1E695E4C0] != value;

      [(CAEmitterBehavior *)self setEnabled:v9];
    }

    else
    {
      v8 = v7;
      if (v7 == 527)
      {

        [(CAEmitterBehavior *)self setName:value];
      }

      else
      {
        v15 = 0;
        v10 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
        if (!v10)
        {
          v10 = CA::Transaction::create(v7);
        }

        v11 = *(v10 + 29);
        *(v10 + 29) = v11 + 1;
        if (!v11)
        {
          os_unfair_lock_lock(&CA::Transaction::transaction_lock);
        }

        attr = self->_attr;
        if (!attr || !CA::AttrList::get(attr, v8, 1, &v15) || ([v15 isEqual:value] & 1) == 0)
        {
          [(CAEmitterBehavior *)self willChangeValueForKey:key];
          v13 = self->_attr;
          if (!v13)
          {
            if (x_malloc_get_zone::once != -1)
            {
              dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
            }

            v13 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x10uLL, 0x1020040EDED9539uLL);
          }

          self->_attr = CA::AttrList::set(v13, v8, 2, v16);
          cache = self->_cache;
          if (cache)
          {
            if (atomic_fetch_add(cache + 2, 0xFFFFFFFF) == 1)
            {
              (*(*cache + 16))(cache);
            }

            self->_cache = 0;
          }

          [(CAEmitterBehavior *)self didChangeValueForKey:key];
        }

        CA::Transaction::unlock(v10);
      }
    }
  }
}

- (void)setEnabled:(BOOL)enabled
{
  if ((self->_flags & 1) != enabled)
  {
    enabledCopy = enabled;
    [(CAEmitterBehavior *)self willChangeValueForKey:@"enabled"];
    self->_flags = self->_flags & 0xFFFFFFFE | enabledCopy;
    cache = self->_cache;
    if (cache)
    {
      if (atomic_fetch_add(cache + 2, 0xFFFFFFFF) == 1)
      {
        (*(*cache + 16))(cache);
      }

      self->_cache = 0;
    }

    [(CAEmitterBehavior *)self didChangeValueForKey:@"enabled"];
  }
}

- (void)setName:(id)name
{
  if (self->_name != name)
  {
    [(CAEmitterBehavior *)self willChangeValueForKey:@"name"];

    self->_name = [name copy];
    cache = self->_cache;
    if (cache)
    {
      if (atomic_fetch_add(cache + 2, 0xFFFFFFFF) == 1)
      {
        (*(*cache + 16))(cache);
      }

      self->_cache = 0;
    }

    [(CAEmitterBehavior *)self didChangeValueForKey:@"name"];
  }
}

- (CAEmitterBehavior)initWithType:(id)type
{
  self->_flags = 1;
  if (type)
  {
    self->_type = CAInternAtom(type, 1);
  }

  return [(CAEmitterBehavior *)self init];
}

+ (void)CAMLParserStartElement:(id)element
{
  v4 = [element attributeForKey:@"behavior" remove:1];
  if (v4)
  {
    v5 = [CAEmitterBehavior behaviorWithType:v4];

    [element setElementValue:v5];
  }

  else
  {
  }
}

+ (id)behaviorWithType:(id)type
{
  v3 = [[self alloc] initWithType:type];

  return v3;
}

+ (id)behaviorTypes
{
  result = +[CAEmitterBehavior behaviorTypes]::names;
  if (!+[CAEmitterBehavior behaviorTypes]::names)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    for (i = 0; i < 81; i += v5[1] + 2)
    {
      v5 = &behavior_inputs[i];
      [v3 addObject:CAAtomGetString(*v5)];
    }

    +[CAEmitterBehavior behaviorTypes]::names = [v3 copy];

    return +[CAEmitterBehavior behaviorTypes]::names;
  }

  return result;
}

@end