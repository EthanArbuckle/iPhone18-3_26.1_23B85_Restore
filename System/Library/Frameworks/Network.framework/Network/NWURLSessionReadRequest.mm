@interface NWURLSessionReadRequest
- (void)putData:(char)data complete:;
- (void)putError:(uint64_t)error;
- (void)tryFulfillRequest;
@end

@implementation NWURLSessionReadRequest

- (void)putData:(char)data complete:
{
  v5 = a2;
  if (self)
  {
    data2 = v5;
    if (v5)
    {
      v6 = *(self + 40);
      if (v6)
      {
        v7 = v6;
        concat = dispatch_data_create_concat(v7, data2);
        v9 = *(self + 40);
        *(self + 40) = concat;
      }

      else
      {
        v10 = v5;
        v7 = *(self + 40);
        *(self + 40) = v10;
      }
    }

    *(self + 8) = data;
    [(NWURLSessionReadRequest *)self tryFulfillRequest];
    v5 = data2;
  }
}

- (void)tryFulfillRequest
{
  v1 = *(self + 32);
  if (v1)
  {
    if (*(self + 48))
    {
      data = v1;
      objc_setProperty_nonatomic_copy(self, v15, 0, 32);
      (data[2].isa)(data, 0, 0, *(self + 48));
    }

    else
    {
      if ((*(self + 8) & 1) == 0)
      {
        v3 = *(self + 40);
        if (!v3)
        {
          return;
        }

        v4 = v3;
        size = dispatch_data_get_size(*(self + 40));
        v6 = *(self + 16);

        if (size <= v6)
        {
          return;
        }
      }

      data = *(self + 40);
      v7 = *(self + 40);
      *(self + 40) = 0;

      if (data)
      {
        v8 = dispatch_data_get_size(data);
        v9 = *(self + 24);
        if (v8 > v9)
        {
          subrange = dispatch_data_create_subrange(data, v9, 0xFFFFFFFFFFFFFFFFLL);
          v11 = *(self + 40);
          *(self + 40) = subrange;

          v12 = dispatch_data_create_subrange(data, 0, *(self + 24));
          data = v12;
        }
      }

      else
      {
        data = 0;
      }

      v13 = *(self + 32);
      objc_setProperty_nonatomic_copy(self, v14, 0, 32);
      v13[2](v13);
    }
  }
}

- (void)putError:(uint64_t)error
{
  v5 = a2;
  if (error)
  {
    v4 = *(error + 40);
    *(error + 40) = 0;

    if ((*(error + 8) & 1) == 0 && !*(error + 48))
    {
      objc_storeStrong((error + 48), a2);
      [(NWURLSessionReadRequest *)error tryFulfillRequest];
    }
  }
}

@end