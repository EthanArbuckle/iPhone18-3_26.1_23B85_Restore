@interface CIIF_EspressoWrapper
+ (id)cache;
+ (id)cachedEspressoWrapper:(id)a3;
+ (void)clearCache;
- (BOOL)buildWait;
- (BOOL)hasBlob:(const char *)a3;
- (BOOL)loadWait;
- (CIIF_EspressoWrapper)initWithPath:(id)a3;
- (int)bind:(const char *)a3 buffer:(__CVBuffer *)a4;
- (int)execute;
- (int)executeAsync:(id)a3;
- (void)buildAsync;
- (void)dealloc;
- (void)loadAsync;
@end

@implementation CIIF_EspressoWrapper

+ (id)cache
{
  if (qword_18DF8 != -1)
  {
    sub_B8B0();
  }

  v3 = qword_18DF0;

  return v3;
}

- (CIIF_EspressoWrapper)initWithPath:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CIIF_EspressoWrapper;
  v5 = [(CIIF_EspressoWrapper *)&v11 init];
  path = v5->_path;
  v5->_path = v4;
  v7 = v4;

  v8 = dispatch_queue_create("CIIF_EspressoWrapper", 0);
  queue = v5->_queue;
  v5->_queue = v8;

  return v5;
}

+ (id)cachedEspressoWrapper:(id)a3
{
  v4 = a3;
  v5 = [a1 cache];
  v6 = [v5 objectForKey:v4];

  if (!v6)
  {
    v7 = [[a1 alloc] initWithPath:v4];
    if (!v7)
    {
      sub_B8C4();
    }

    v6 = v7;
    v8 = [a1 cache];
    [v8 setObject:v6 forKey:v4];
  }

  return v6;
}

+ (void)clearCache
{
  v2 = [a1 cache];
  [v2 removeAllObjects];
}

- (void)dealloc
{
  plan = self->_plan;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v4 = off_18E00;
  v18 = off_18E00;
  if (!off_18E00)
  {
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_B204;
    v13 = &unk_14638;
    v14 = &v15;
    v5 = sub_B254();
    v16[3] = dlsym(v5, "espresso_plan_destroy");
    off_18E00 = *(v14[1] + 24);
    v4 = v16[3];
  }

  _Block_object_dispose(&v15, 8);
  if (!v4)
  {
    sub_B968();
  }

  v4(plan);
  ctx = self->_ctx;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v7 = off_18E10;
  v18 = off_18E10;
  if (!off_18E10)
  {
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_B3C0;
    v13 = &unk_14638;
    v14 = &v15;
    v8 = sub_B254();
    v16[3] = dlsym(v8, "espresso_context_destroy");
    off_18E10 = *(v14[1] + 24);
    v7 = v16[3];
  }

  _Block_object_dispose(&v15, 8);
  if (!v7)
  {
    sub_B8F0();
  }

  v7(ctx);
  self->_ctx = 0;
  self->_plan = 0;
  v9.receiver = self;
  v9.super_class = CIIF_EspressoWrapper;
  [(CIIF_EspressoWrapper *)&v9 dealloc];
}

- (void)loadAsync
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_A564;
  block[3] = &unk_145A8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (BOOL)loadWait
{
  [(CIIF_EspressoWrapper *)self loadAsync];
  dispatch_sync(self->_queue, &stru_145C8);
  self->_loadState = 89;
  return 1;
}

- (void)buildAsync
{
  [(CIIF_EspressoWrapper *)self loadAsync];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_A9C0;
  block[3] = &unk_145A8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (BOOL)buildWait
{
  [(CIIF_EspressoWrapper *)self buildAsync];
  dispatch_sync(self->_queue, &stru_145E8);
  self->_buildState = 89;
  return 1;
}

- (int)bind:(const char *)a3 buffer:(__CVBuffer *)a4
{
  if (![(CIIF_EspressoWrapper *)self buildWait])
  {
    return -1;
  }

  v7 = [(CIIF_EspressoWrapper *)self plan];
  v8 = [(CIIF_EspressoWrapper *)self planIdx];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v9 = off_18E38;
  v15 = off_18E38;
  if (!off_18E38)
  {
    v10 = sub_B254();
    v13[3] = dlsym(v10, "espresso_network_bind_direct_cvpixelbuffer");
    off_18E38 = v13[3];
    v9 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (!v9)
  {
    sub_BBC0();
  }

  return v9(v7, v8, a3, a4);
}

- (BOOL)hasBlob:(const char *)a3
{
  v5 = [(CIIF_EspressoWrapper *)self loadWait];
  if (v5)
  {
    v6 = [(CIIF_EspressoWrapper *)self plan];
    v7 = [(CIIF_EspressoWrapper *)self planIdx];
    v11[0] = 0;
    memset(v17, 0, sizeof(v17));
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v8 = off_18E40;
    v16 = off_18E40;
    if (!off_18E40)
    {
      v11[1] = _NSConcreteStackBlock;
      v11[2] = 3221225472;
      v11[3] = sub_B5A0;
      v11[4] = &unk_14638;
      v12 = &v13;
      v9 = sub_B254();
      v14[3] = dlsym(v9, "espresso_network_query_blob_shape");
      off_18E40 = *(v12[1] + 24);
      v8 = v14[3];
    }

    _Block_object_dispose(&v13, 8);
    if (!v8)
    {
      sub_BC38();
    }

    LOBYTE(v5) = (v8)(v6, v7, a3, v11, v17) == 0;
  }

  return v5;
}

- (int)execute
{
  if (![(CIIF_EspressoWrapper *)self buildWait])
  {
    return -1;
  }

  v3 = [(CIIF_EspressoWrapper *)self plan];
  [(CIIF_EspressoWrapper *)self planIdx];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v4 = off_18E48;
  v10 = off_18E48;
  if (!off_18E48)
  {
    v5 = sub_B254();
    v8[3] = dlsym(v5, "espresso_plan_execute_sync");
    off_18E48 = v8[3];
    v4 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v4)
  {
    sub_BCB0();
  }

  return v4(v3);
}

- (int)executeAsync:(id)a3
{
  v4 = a3;
  if ([(CIIF_EspressoWrapper *)self buildWait])
  {
    v5 = [(CIIF_EspressoWrapper *)self plan];
    [(CIIF_EspressoWrapper *)self planIdx];
    v6 = dispatch_queue_create(0, 0);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_B134;
    v14[3] = &unk_14610;
    v15 = v4;
    v7 = v6;
    v8 = v14;
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v9 = off_18E50;
    v24 = off_18E50;
    if (!off_18E50)
    {
      v16 = _NSConcreteStackBlock;
      v17 = 3221225472;
      v18 = sub_B640;
      v19 = &unk_14638;
      v20 = &v21;
      v10 = sub_B254();
      v11 = dlsym(v10, "espresso_plan_submit");
      *(v20[1] + 24) = v11;
      off_18E50 = *(v20[1] + 24);
      v9 = v22[3];
    }

    _Block_object_dispose(&v21, 8);
    if (!v9)
    {
      sub_BD28();
    }

    v12 = v9(v5, v7, v8);
  }

  else
  {
    v12 = -1;
  }

  return v12;
}

@end