@interface BKSHIDEventUsagePairDescriptor
- (BKSHIDEventUsagePairDescriptor)initWithCoder:(id)a3;
- (BOOL)_page:(unsigned int)a3 usage:(unsigned int)a4 matchesHIDEvent:(__IOHIDEvent *)a5;
- (BOOL)describes:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)matchesHIDEvent:(__IOHIDEvent *)a3;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
- (void)appendDescriptionToStream:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BKSHIDEventUsagePairDescriptor

- (unint64_t)hash
{
  v2 = *(&self->super._hidEventType + 1);
  page = self->_page;
  return BSHashPurifyNS();
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = BKSHIDEventUsagePairDescriptor;
  v5 = [(BKSHIDEventDescriptor *)&v15 compare:v4];
  if (!v5)
  {
    v6 = objc_opt_class();
    v7 = v4;
    if (v6)
    {
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    if (v9)
    {
      v10 = *(&self->super._hidEventType + 1);
      v11 = v9[3];
      if (v10 >= v11)
      {
        if (v10 > v11)
        {
          v5 = 1;
          goto LABEL_15;
        }

        page = self->_page;
        v13 = v9[4];
        if (page >= v13)
        {
          v5 = page > v13;
          goto LABEL_15;
        }
      }

      v5 = -1;
    }

    else
    {
      v5 = 0;
    }

LABEL_15:
  }

  return v5;
}

- (BOOL)describes:(id)a3
{
  v4 = a3;
  v5 = v4;
  page = self->_page;
  if (*(&self->super._hidEventType + 1))
  {
    if (!page)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v9 = 0;
        goto LABEL_12;
      }

      v7 = *(&self->super._hidEventType + 1);
      v8 = v7 == [v5 page];
      goto LABEL_8;
    }

LABEL_6:
    v9 = [(BKSHIDEventUsagePairDescriptor *)self isEqual:v4];
    goto LABEL_12;
  }

  if (page)
  {
    goto LABEL_6;
  }

  v10 = [v4 hidEventType];
  v8 = v10 == [(BKSHIDEventDescriptor *)self hidEventType];
LABEL_8:
  v9 = v8;
LABEL_12:

  return v9;
}

- (BOOL)matchesHIDEvent:(__IOHIDEvent *)a3
{
  v7.receiver = self;
  v7.super_class = BKSHIDEventUsagePairDescriptor;
  v5 = [(BKSHIDEventDescriptor *)&v7 matchesHIDEvent:?];
  if (v5)
  {
    LOBYTE(v5) = [(BKSHIDEventUsagePairDescriptor *)self _page:*(&self->super._hidEventType + 1) usage:self->_page matchesHIDEvent:a3];
  }

  return v5;
}

- (BOOL)_page:(unsigned int)a3 usage:(unsigned int)a4 matchesHIDEvent:(__IOHIDEvent *)a5
{
  if (!(a4 | a3))
  {
    return 1;
  }

  if (!a3 && a4)
  {
    return 0;
  }

  Type = IOHIDEventGetType();
  if (Type != 37 && Type != 3 && Type != 1)
  {
    return 0;
  }

  IntegerValue = IOHIDEventGetIntegerValue();
  v10 = IOHIDEventGetIntegerValue();
  v12 = IntegerValue == a3 && v10 == a4;
  if (a4)
  {
    return v12;
  }

  else
  {
    return IntegerValue == a3;
  }
}

- (BKSHIDEventUsagePairDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_page"];
  v6 = [v5 unsignedIntValue];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_usage"];
  v8 = [v7 unsignedIntValue];

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_type"];

  v10 = [v9 unsignedIntValue];

  return [(BKSHIDEventUsagePairDescriptor *)self _initWithPage:v6 usage:v8 eventType:v10];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  v5 = *(&self->super._hidEventType + 1);
  v6 = a3;
  v7 = [v4 numberWithUnsignedInt:v5];
  [v6 encodeObject:v7 forKey:@"_page"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_page];
  [v6 encodeObject:v8 forKey:@"_usage"];

  v10.receiver = self;
  v10.super_class = BKSHIDEventUsagePairDescriptor;
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BKSHIDEventDescriptor hidEventType](&v10, sel_hidEventType)}];
  [v6 encodeObject:v9 forKey:@"_type"];
}

- (void)appendDescriptionToStream:(id)a3
{
  v4 = a3;
  v5 = [v4 style];
  v6 = [v5 clientInformation];
  if ([v6 containsObject:@"OmitName"])
  {
    Name = 0;
  }

  else
  {
    [(BKSHIDEventDescriptor *)self hidEventType];
    Name = IOHIDEventTypeGetName();
  }

  v8 = Name;

  if (*(&self->super._hidEventType + 1))
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __60__BKSHIDEventUsagePairDescriptor_appendDescriptionToStream___block_invoke;
    v9[3] = &unk_1E6F477E8;
    v9[4] = self;
    [v4 appendCustomFormatWithName:v8 block:v9];
  }

  else
  {
    [v4 appendString:@"(*)" withName:v8];
  }
}

uint64_t __60__BKSHIDEventUsagePairDescriptor_appendDescriptionToStream___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v4 = *(v2 + 12);
  if (v3)
  {
    return [a2 appendFormat:@"(%X, %X)", v4, v3];
  }

  else
  {
    return [a2 appendFormat:@"(%X, *)", v4, v6];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6 && (v9.receiver = self, v9.super_class = BKSHIDEventUsagePairDescriptor, [(BKSHIDEventDescriptor *)&v9 isEqual:v6]) && v6[3] == *(&self->super._hidEventType + 1) && v6[4] == self->_page;

  return v7;
}

@end