@interface OS_nw_frame
- (void)dealloc;
@end

@implementation OS_nw_frame

- (void)dealloc
{
  self[10].super.super.isa = 0;
  self[11].super.super.isa = 0;
  isa = self[12].super.super.isa;
  if (isa)
  {
    os_release(isa);
    self[12].super.super.isa = 0;
  }

  v4 = self[8].super.super.isa;
  WORD2(self[25].super.super.isa) &= 0xFFC7u;
  if (v4)
  {
    do
    {
      v5 = v4->super.super.isa;
      v6 = v4[6].super.super.isa;
      v7 = v4->super.super.isa;
      if (v6)
      {
        os_release(v6);
        v4[6].super.super.isa = 0;
        v7 = v4->super.super.isa;
      }

      v8 = v4[1].super.super.isa;
      v9 = (v7 + 8);
      if (!v7)
      {
        v9 = self + 9;
      }

      v9->super.super.isa = v8;
      *v8 = v7;
      if (v4 != &self[15])
      {
        free(v4);
      }

      v4 = v5;
    }

    while (v5);
  }

  self[8].super.super.isa = 0;
  self[9].super.super.isa = &self[8];
  v10 = self[21].super.super.isa;
  if (v10)
  {
    os_release(v10);
  }

  self[23].super.super.isa = 0;
  *&self[21].super.super.isa = 0u;
  *&self[19].super.super.isa = 0u;
  *&self[17].super.super.isa = 0u;
  *&self[15].super.super.isa = 0u;
  v11.receiver = self;
  v11.super_class = OS_nw_frame;
  [(OS_nw_frame *)&v11 dealloc];
}

@end