@interface TUIMutableAttributeSet
- (id)copyWithZone:(_NSZone *)zone;
- (void)addAttribute:(unsigned __int16)attribute;
- (void)addAttributesFromArray:(id)array;
- (void)removeAttribute:(unsigned __int16)attribute;
- (void)unionSet:(id)set;
@end

@implementation TUIMutableAttributeSet

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TUIAttributeSet allocWithZone:zone];

  return [(TUIAttributeSet *)v4 initWithOther:self];
}

- (void)addAttribute:(unsigned __int16)attribute
{
  if (attribute >= 0x100u)
  {
    sub_8BEBC("bitset set argument out of range");
  }

  *(self->super._bitset.__first_ + ((attribute >> 3) & 0x1FF8)) |= 1 << attribute;
}

- (void)removeAttribute:(unsigned __int16)attribute
{
  if (attribute >= 0x100u)
  {
    sub_8BEBC("bitset reset argument out of range");
  }

  *(self->super._bitset.__first_ + ((attribute >> 3) & 0x1FF8)) &= ~(1 << attribute);
}

- (void)addAttributesFromArray:(id)array
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  arrayCopy = array;
  v5 = [arrayCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    p_bitset = &self->super._bitset;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(arrayCopy);
        }

        v9 = [TUIAttributeRegistry attributeWithName:*(*(&v10 + 1) + 8 * v8), v10];
        if (v9 >= 0x100)
        {
          sub_8BEBC("bitset set argument out of range");
        }

        *(p_bitset->__first_ + ((v9 >> 3) & 0x1FF8)) |= 1 << v9;
        v8 = v8 + 1;
      }

      while (v5 != v8);
      v5 = [arrayCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)unionSet:(id)set
{
  if (set)
  {
    for (i = 0; i != 4; ++i)
    {
      self->super._bitset.__first_[i] |= *(set + i * 8 + 8);
    }
  }
}

@end