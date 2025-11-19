@interface _GCKeyboardEventImpl
- (_GCKeyboardEventImpl)initWithKeyboardEvent:(id)a3;
- (_GCKeyboardEventImpl)initWithTimestamp:(unint64_t)a3 usagePage:(int64_t)a4 usage:(int64_t)a5 down:(int64_t)a6 sender:(unint64_t)a7;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation _GCKeyboardEventImpl

- (_GCKeyboardEventImpl)initWithKeyboardEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 timestamp];
  v6 = [v4 usagePage];
  v7 = [v4 usage];
  v8 = [v4 down];
  v9 = [v4 sender];

  return [(_GCKeyboardEventImpl *)self initWithTimestamp:v5 usagePage:v6 usage:v7 down:v8 sender:v9];
}

- (_GCKeyboardEventImpl)initWithTimestamp:(unint64_t)a3 usagePage:(int64_t)a4 usage:(int64_t)a5 down:(int64_t)a6 sender:(unint64_t)a7
{
  v13.receiver = self;
  v13.super_class = _GCKeyboardEventImpl;
  result = [(_GCKeyboardEventImpl *)&v13 init];
  if (result)
  {
    result->_timestamp = a3;
    result->_usagePage = a4;
    result->_usage = a5;
    result->_down = a6;
    result->_sender = a7;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  objc_opt_class();
  result = objc_opt_new();
  *(result + 8) = *&self->_timestamp;
  *(result + 3) = self->_usage;
  *(result + 2) = *&self->_down;
  return result;
}

@end