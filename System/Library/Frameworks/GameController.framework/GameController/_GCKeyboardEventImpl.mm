@interface _GCKeyboardEventImpl
- (_GCKeyboardEventImpl)initWithKeyboardEvent:(id)event;
- (_GCKeyboardEventImpl)initWithTimestamp:(unint64_t)timestamp usagePage:(int64_t)page usage:(int64_t)usage down:(int64_t)down sender:(unint64_t)sender;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation _GCKeyboardEventImpl

- (_GCKeyboardEventImpl)initWithKeyboardEvent:(id)event
{
  eventCopy = event;
  timestamp = [eventCopy timestamp];
  usagePage = [eventCopy usagePage];
  usage = [eventCopy usage];
  down = [eventCopy down];
  sender = [eventCopy sender];

  return [(_GCKeyboardEventImpl *)self initWithTimestamp:timestamp usagePage:usagePage usage:usage down:down sender:sender];
}

- (_GCKeyboardEventImpl)initWithTimestamp:(unint64_t)timestamp usagePage:(int64_t)page usage:(int64_t)usage down:(int64_t)down sender:(unint64_t)sender
{
  v13.receiver = self;
  v13.super_class = _GCKeyboardEventImpl;
  result = [(_GCKeyboardEventImpl *)&v13 init];
  if (result)
  {
    result->_timestamp = timestamp;
    result->_usagePage = page;
    result->_usage = usage;
    result->_down = down;
    result->_sender = sender;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  result = objc_opt_new();
  *(result + 8) = *&self->_timestamp;
  *(result + 3) = self->_usage;
  *(result + 2) = *&self->_down;
  return result;
}

@end