@interface CGPDFPageImpl
- (CGPDFPageImpl)initWithCGPDFPage:(CGPDFPage *)a3 requestQueue:(id)a4;
- (int64_t)rotation;
- (void)dealloc;
- (void)drawWithBox:(int)a3 size:(CGSize)a4 colorSpace:(id)a5 options:(id)a6 completion:(id)a7;
- (void)getBoxRect:(int)a3 completion:(id)a4;
- (void)getIdentifier:(id)a3;
- (void)getPageText:(id)a3;
- (void)getRotation:(id)a3;
@end

@implementation CGPDFPageImpl

- (CGPDFPageImpl)initWithCGPDFPage:(CGPDFPage *)a3 requestQueue:(id)a4
{
  v7 = a4;
  v13.receiver = self;
  v13.super_class = CGPDFPageImpl;
  v8 = [(CGPDFPageImpl *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_requestQueue, a4);
    v10 = +[NSUUID UUID];
    uuid = v9->_uuid;
    v9->_uuid = v10;

    v9->_cgPage = CGPDFPageRetain(a3);
  }

  return v9;
}

- (void)dealloc
{
  CGPDFPageRelease(self->_cgPage);
  v3.receiver = self;
  v3.super_class = CGPDFPageImpl;
  [(CGPDFPageImpl *)&v3 dealloc];
}

- (int64_t)rotation
{
  v2 = CGPDFPageGetRotationAngle(self->_cgPage) % 360;
  if (v2 >= 0)
  {
    return v2;
  }

  else
  {
    return (v2 + 360);
  }
}

- (void)getIdentifier:(id)a3
{
  v4 = a3;
  requestQueue = self->_requestQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __31__CGPDFPageImpl_getIdentifier___block_invoke;
  v7[3] = &unk_1000082C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(NSOperationQueue *)requestQueue addOperationWithBlock:v7];
}

- (void)getRotation:(id)a3
{
  v4 = a3;
  requestQueue = self->_requestQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __29__CGPDFPageImpl_getRotation___block_invoke;
  v7[3] = &unk_1000082E8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(NSOperationQueue *)requestQueue addOperationWithBlock:v7];
}

uint64_t __29__CGPDFPageImpl_getRotation___block_invoke(uint64_t a1)
{
  [*(a1 + 32) rotation];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)getBoxRect:(int)a3 completion:(id)a4
{
  v6 = a4;
  requestQueue = self->_requestQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __39__CGPDFPageImpl_getBoxRect_completion___block_invoke;
  v9[3] = &unk_100008310;
  v11 = a3;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [(NSOperationQueue *)requestQueue addOperationWithBlock:v9];
}

uint64_t __39__CGPDFPageImpl_getBoxRect_completion___block_invoke(uint64_t a1)
{
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  [*(a1 + 32) rectForBox:*(a1 + 48)];
  v5 = *(*(a1 + 40) + 16);

  return v5();
}

- (void)drawWithBox:(int)a3 size:(CGSize)a4 colorSpace:(id)a5 options:(id)a6 completion:(id)a7
{
  height = a4.height;
  width = a4.width;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  requestQueue = self->_requestQueue;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = __64__CGPDFPageImpl_drawWithBox_size_colorSpace_options_completion___block_invoke;
  v20[3] = &unk_100008338;
  v25 = width;
  v26 = height;
  v21 = v13;
  v22 = self;
  v27 = a3;
  v23 = v14;
  v24 = v15;
  v17 = v14;
  v18 = v15;
  v19 = v13;
  [(NSOperationQueue *)requestQueue addOperationWithBlock:v20];
}

void __64__CGPDFPageImpl_drawWithBox_size_colorSpace_options_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2 || (v3 = CGColorSpaceCreateWithPropertyList(v2)) == 0)
  {
    v3 = CGColorSpaceCreateWithName(kCGColorSpaceSRGB);
  }

  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  v6 = CGBitmapContextCreateWithShareableMappedData();
  if (v6)
  {
    CGContextClear();
    v7 = *(a1 + 64);
    v8 = *(a1 + 72);
    v9 = *(a1 + 48);
    v10 = *(*(a1 + 40) + 24);
    v11 = *(a1 + 80);
    CGContextDrawPDFPageInRectWithOptions();
    Data = CGBitmapContextGetData(v6);
    v13 = dispatch_data_create(Data, 0, 0, _dispatch_data_destructor_munmap);
    v14 = [[CGBitmapFormat alloc] initWithBitmapContext:v6];
    CFRelease(v6);
  }

  else
  {
    (*(*(a1 + 56) + 16))();
    v13 = 0;
    v14 = 0;
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (v6)
  {
    (*(*(a1 + 56) + 16))();
  }
}

- (void)getPageText:(id)a3
{
  v4 = a3;
  requestQueue = self->_requestQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __29__CGPDFPageImpl_getPageText___block_invoke;
  v7[3] = &unk_1000082E8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(NSOperationQueue *)requestQueue addOperationWithBlock:v7];
}

void __29__CGPDFPageImpl_getPageText___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v3 = CGPDFPageCopyString();
  (*(*(a1 + 40) + 16))();
}

@end