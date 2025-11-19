@interface OS_nw_channel
- (void)dealloc;
@end

@implementation OS_nw_channel

- (void)dealloc
{
  v3 = self + 37;
  for (i = self[36].super.super.isa; i; i = self[36].super.super.isa)
  {
    v5 = *(i + 2);
    v6 = *(i + 3);
    v7 = v5 + 3;
    if (!v5)
    {
      v7 = v3;
    }

    v7->super.super.isa = v6;
    *v6 = v5;
    *(i + 2) = 0;
    *(i + 3) = 0;
    os_release(i);
  }

  nw_channel_release_frame_array(self, &self[40]);
  nw_channel_release_frame_array(self, &self[38]);
  for (j = self[42].super.super.isa; j; j = self[42].super.super.isa)
  {
    nw_frame_free_buffer(j);
    v10 = *(j + 2);
    v11 = *(j + 3);
    v12 = v10 + 3;
    if (!v10)
    {
      v12 = self + 43;
    }

    v12->super.super.isa = v11;
    *v11 = v10;
    *(j + 2) = 0;
    *(j + 3) = 0;
    os_release(j);
  }

  isa = self[35].super.super.isa;
  if (isa)
  {
    _nw_hash_table_release(isa, v8);
    self[35].super.super.isa = 0;
  }

  nw_channel_close(self, v8);
  v14 = self[26].super.super.isa;
  if (v14)
  {
    dispatch_release(v14);
    self[26].super.super.isa = 0;
  }

  v15 = self[19].super.super.isa;
  if (v15)
  {
    os_release(v15);
    self[19].super.super.isa = 0;
  }

  v16.receiver = self;
  v16.super_class = OS_nw_channel;
  [(OS_nw_channel *)&v16 dealloc];
}

@end