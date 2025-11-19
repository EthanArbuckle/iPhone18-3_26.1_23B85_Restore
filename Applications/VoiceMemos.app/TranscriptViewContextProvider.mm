@interface TranscriptViewContextProvider
- (void)didChangeHostViewWidth:(double)a3;
@end

@implementation TranscriptViewContextProvider

- (void)didChangeHostViewWidth:(double)a3
{
  v3 = *&self->context[16];
  v11[0] = *self->context;
  v11[1] = v3;
  *&v13 = *&self->context[16];
  v12 = v11[0];
  *(&v13 + 1) = a3;
  v14 = v11[0];
  v15 = v3;
  v16[0] = v11[0];
  v16[1] = v3;
  *&self->context[16] = v13;

  sub_100023708(v11, v10);
  sub_100023708(&v14, v10);
  sub_100023708(&v12, v10);
  sub_100023778(v16);
  v4 = 256;
  if (!BYTE1(v15))
  {
    v4 = 0;
  }

  v5 = v4 | v15;
  v6 = 0x10000;
  if (!BYTE2(v15))
  {
    v6 = 0;
  }

  v7 = 0x1000000;
  if (!BYTE3(v15))
  {
    v7 = 0;
  }

  v8 = v5 | v6 | v7;
  v9 = &_mh_execute_header;
  if (!BYTE4(v15))
  {
    v9 = 0;
  }

  sub_1000237CC(v14, *(&v14 + 1), v8 | v9, *(&v15 + 1));

  sub_100023778(&v14);
  sub_100023778(&v12);
}

@end