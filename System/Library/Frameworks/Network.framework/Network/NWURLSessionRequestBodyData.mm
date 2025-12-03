@interface NWURLSessionRequestBodyData
- (int64_t)countOfBytesSent;
- (void)readMinimumIncompleteLength:(unint64_t)length maximumLength:(unint64_t)maximumLength completionHandler:(id)handler;
@end

@implementation NWURLSessionRequestBodyData

- (void)readMinimumIncompleteLength:(unint64_t)length maximumLength:(unint64_t)maximumLength completionHandler:(id)handler
{
  handlerCopy = handler;
  v12 = handlerCopy;
  if (self && (offset = self->_offset, offset < self->_length))
  {
    subrange = dispatch_data_create_subrange(self->_data, offset, maximumLength);
    length = self->_length;
    v11 = self->_offset + maximumLength;
    self->_offset = v11;
    v12[2](v12, subrange, v11 >= length, 0);
  }

  else
  {
    handlerCopy[2](handlerCopy, 0, 1, 0);
  }
}

- (int64_t)countOfBytesSent
{
  if (self)
  {
    if (*(self + 24) >= *(self + 16))
    {
      return *(self + 16);
    }

    else
    {
      return *(self + 24);
    }
  }

  return self;
}

@end