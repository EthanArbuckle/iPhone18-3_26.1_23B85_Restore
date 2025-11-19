@interface NWURLSessionReadRequest
- (void)putData:(char)a3 complete:;
- (void)putError:(uint64_t)a1;
- (void)tryFulfillRequest;
@end

@implementation NWURLSessionReadRequest

- (void)putData:(char)a3 complete:
{
  v5 = a2;
  if (a1)
  {
    data2 = v5;
    if (v5)
    {
      v6 = *(a1 + 40);
      if (v6)
      {
        v7 = v6;
        concat = dispatch_data_create_concat(v7, data2);
        v9 = *(a1 + 40);
        *(a1 + 40) = concat;
      }

      else
      {
        v10 = v5;
        v7 = *(a1 + 40);
        *(a1 + 40) = v10;
      }
    }

    *(a1 + 8) = a3;
    [(NWURLSessionReadRequest *)a1 tryFulfillRequest];
    v5 = data2;
  }
}

- (void)tryFulfillRequest
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if (*(a1 + 48))
    {
      data = v1;
      objc_setProperty_nonatomic_copy(a1, v15, 0, 32);
      (data[2].isa)(data, 0, 0, *(a1 + 48));
    }

    else
    {
      if ((*(a1 + 8) & 1) == 0)
      {
        v3 = *(a1 + 40);
        if (!v3)
        {
          return;
        }

        v4 = v3;
        size = dispatch_data_get_size(*(a1 + 40));
        v6 = *(a1 + 16);

        if (size <= v6)
        {
          return;
        }
      }

      data = *(a1 + 40);
      v7 = *(a1 + 40);
      *(a1 + 40) = 0;

      if (data)
      {
        v8 = dispatch_data_get_size(data);
        v9 = *(a1 + 24);
        if (v8 > v9)
        {
          subrange = dispatch_data_create_subrange(data, v9, 0xFFFFFFFFFFFFFFFFLL);
          v11 = *(a1 + 40);
          *(a1 + 40) = subrange;

          v12 = dispatch_data_create_subrange(data, 0, *(a1 + 24));
          data = v12;
        }
      }

      else
      {
        data = 0;
      }

      v13 = *(a1 + 32);
      objc_setProperty_nonatomic_copy(a1, v14, 0, 32);
      v13[2](v13);
    }
  }
}

- (void)putError:(uint64_t)a1
{
  v5 = a2;
  if (a1)
  {
    v4 = *(a1 + 40);
    *(a1 + 40) = 0;

    if ((*(a1 + 8) & 1) == 0 && !*(a1 + 48))
    {
      objc_storeStrong((a1 + 48), a2);
      [(NWURLSessionReadRequest *)a1 tryFulfillRequest];
    }
  }
}

@end