@interface BKSHIDEventUsagePairDescriptor
- (BKSHIDEventUsagePairDescriptor)initWithCoder:(id)coder;
- (BOOL)_page:(unsigned int)_page usage:(unsigned int)usage matchesHIDEvent:(__IOHIDEvent *)event;
- (BOOL)describes:(id)describes;
- (BOOL)isEqual:(id)equal;
- (BOOL)matchesHIDEvent:(__IOHIDEvent *)event;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
- (void)appendDescriptionToStream:(id)stream;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSHIDEventUsagePairDescriptor

- (unint64_t)hash
{
  v2 = *(&self->super._hidEventType + 1);
  page = self->_page;
  return BSHashPurifyNS();
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  v15.receiver = self;
  v15.super_class = BKSHIDEventUsagePairDescriptor;
  v5 = [(BKSHIDEventDescriptor *)&v15 compare:compareCopy];
  if (!v5)
  {
    v6 = objc_opt_class();
    v7 = compareCopy;
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

- (BOOL)describes:(id)describes
{
  describesCopy = describes;
  v5 = describesCopy;
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
    v9 = [(BKSHIDEventUsagePairDescriptor *)self isEqual:describesCopy];
    goto LABEL_12;
  }

  if (page)
  {
    goto LABEL_6;
  }

  hidEventType = [describesCopy hidEventType];
  v8 = hidEventType == [(BKSHIDEventDescriptor *)self hidEventType];
LABEL_8:
  v9 = v8;
LABEL_12:

  return v9;
}

- (BOOL)matchesHIDEvent:(__IOHIDEvent *)event
{
  v7.receiver = self;
  v7.super_class = BKSHIDEventUsagePairDescriptor;
  v5 = [(BKSHIDEventDescriptor *)&v7 matchesHIDEvent:?];
  if (v5)
  {
    LOBYTE(v5) = [(BKSHIDEventUsagePairDescriptor *)self _page:*(&self->super._hidEventType + 1) usage:self->_page matchesHIDEvent:event];
  }

  return v5;
}

- (BOOL)_page:(unsigned int)_page usage:(unsigned int)usage matchesHIDEvent:(__IOHIDEvent *)event
{
  if (!(usage | _page))
  {
    return 1;
  }

  if (!_page && usage)
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
  v12 = IntegerValue == _page && v10 == usage;
  if (usage)
  {
    return v12;
  }

  else
  {
    return IntegerValue == _page;
  }
}

- (BKSHIDEventUsagePairDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_page"];
  unsignedIntValue = [v5 unsignedIntValue];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_usage"];
  unsignedIntValue2 = [v7 unsignedIntValue];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_type"];

  unsignedIntValue3 = [v9 unsignedIntValue];

  return [(BKSHIDEventUsagePairDescriptor *)self _initWithPage:unsignedIntValue usage:unsignedIntValue2 eventType:unsignedIntValue3];
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  v5 = *(&self->super._hidEventType + 1);
  coderCopy = coder;
  v7 = [v4 numberWithUnsignedInt:v5];
  [coderCopy encodeObject:v7 forKey:@"_page"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_page];
  [coderCopy encodeObject:v8 forKey:@"_usage"];

  v10.receiver = self;
  v10.super_class = BKSHIDEventUsagePairDescriptor;
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BKSHIDEventDescriptor hidEventType](&v10, sel_hidEventType)}];
  [coderCopy encodeObject:v9 forKey:@"_type"];
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  style = [streamCopy style];
  clientInformation = [style clientInformation];
  if ([clientInformation containsObject:@"OmitName"])
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
    [streamCopy appendCustomFormatWithName:v8 block:v9];
  }

  else
  {
    [streamCopy appendString:@"(*)" withName:v8];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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