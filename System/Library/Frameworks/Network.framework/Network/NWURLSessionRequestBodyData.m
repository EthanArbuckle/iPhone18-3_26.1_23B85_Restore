@interface NWURLSessionRequestBodyData
- (int64_t)countOfBytesSent;
- (void)readMinimumIncompleteLength:(unint64_t)a3 maximumLength:(unint64_t)a4 completionHandler:(id)a5;
@end

@implementation NWURLSessionRequestBodyData

- (void)readMinimumIncompleteLength:(unint64_t)a3 maximumLength:(unint64_t)a4 completionHandler:(id)a5
{
  v7 = a5;
  v12 = v7;
  if (self && (offset = self->_offset, offset < self->_length))
  {
    subrange = dispatch_data_create_subrange(self->_data, offset, a4);
    length = self->_length;
    v11 = self->_offset + a4;
    self->_offset = v11;
    v12[2](v12, subrange, v11 >= length, 0);
  }

  else
  {
    v7[2](v7, 0, 1, 0);
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