@interface HIDEvent
- (HIDEvent)initWithSize:(unint64_t)size type:(unsigned int)type timestamp:(unint64_t)timestamp options:(unsigned int)options;
- (id)description;
- (void)dealloc;
@end

@implementation HIDEvent

- (void)dealloc
{
  eventData = self->_event.eventData;
  if (eventData)
  {
    free(eventData);
  }

  children = self->_event.children;
  if (children)
  {
    Count = CFArrayGetCount(children);
    if (Count >= 1)
    {
      v6 = Count;
      for (i = 0; i != v6; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(self->_event.children, i);
        if (ValueAtIndex)
        {
          ValueAtIndex[10] = 0;
        }
      }
    }

    CFRelease(self->_event.children);
  }

  attributeData = self->_event.attributeData;
  if (attributeData)
  {
    free(attributeData);
  }

  sender = self->_event.sender;
  if (sender)
  {
    CFRelease(sender);
  }

  attachments = self->_event.attachments;
  if (attachments)
  {
    CFRelease(attachments);
  }

  v12.receiver = self;
  v12.super_class = HIDEvent;
  [(HIDEvent *)&v12 dealloc];
}

- (HIDEvent)initWithSize:(unint64_t)size type:(unsigned int)type timestamp:(unint64_t)timestamp options:(unsigned int)options
{
  v13.receiver = self;
  v13.super_class = HIDEvent;
  v10 = [(HIDEvent *)&v13 init];
  result = 0;
  if (size >= 0x10 && v10)
  {
    result = malloc_type_malloc(size, 0x1000040451B5BE8uLL);
    v10->_event.eventData = result;
    if (result)
    {
      bzero(result, size);
      v10->_event.timeStamp = timestamp;
      v10->_event.options = options;
      v10->_event.typeMask = 1 << type;
      eventData = v10->_event.eventData;
      *eventData = size;
      *(eventData + 1) = type;
      *(eventData + 2) = options;
      return v10;
    }
  }

  return result;
}

- (id)description
{
  v2 = IOHIDEventCopyDescription(self);

  return v2;
}

@end