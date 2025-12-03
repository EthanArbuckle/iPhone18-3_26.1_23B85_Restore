@interface CGPDFPageImpl
- (CGPDFPageImpl)initWithCGPDFPage:(CGPDFPage *)page requestQueue:(id)queue;
- (int64_t)rotation;
- (void)dealloc;
- (void)drawWithBox:(int)box size:(CGSize)size colorSpace:(id)space options:(id)options completion:(id)completion;
- (void)getBoxRect:(int)rect completion:(id)completion;
- (void)getIdentifier:(id)identifier;
- (void)getPageText:(id)text;
- (void)getRotation:(id)rotation;
@end

@implementation CGPDFPageImpl

- (CGPDFPageImpl)initWithCGPDFPage:(CGPDFPage *)page requestQueue:(id)queue
{
  queueCopy = queue;
  v13.receiver = self;
  v13.super_class = CGPDFPageImpl;
  v8 = [(CGPDFPageImpl *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_requestQueue, queue);
    v10 = +[NSUUID UUID];
    uuid = v9->_uuid;
    v9->_uuid = v10;

    v9->_cgPage = CGPDFPageRetain(page);
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

- (void)getIdentifier:(id)identifier
{
  identifierCopy = identifier;
  requestQueue = self->_requestQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __31__CGPDFPageImpl_getIdentifier___block_invoke;
  v7[3] = &unk_1000082C0;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  [(NSOperationQueue *)requestQueue addOperationWithBlock:v7];
}

- (void)getRotation:(id)rotation
{
  rotationCopy = rotation;
  requestQueue = self->_requestQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __29__CGPDFPageImpl_getRotation___block_invoke;
  v7[3] = &unk_1000082E8;
  v7[4] = self;
  v8 = rotationCopy;
  v6 = rotationCopy;
  [(NSOperationQueue *)requestQueue addOperationWithBlock:v7];
}

uint64_t __29__CGPDFPageImpl_getRotation___block_invoke(uint64_t a1)
{
  [*(a1 + 32) rotation];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)getBoxRect:(int)rect completion:(id)completion
{
  completionCopy = completion;
  requestQueue = self->_requestQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __39__CGPDFPageImpl_getBoxRect_completion___block_invoke;
  v9[3] = &unk_100008310;
  rectCopy = rect;
  v9[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
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

- (void)drawWithBox:(int)box size:(CGSize)size colorSpace:(id)space options:(id)options completion:(id)completion
{
  height = size.height;
  width = size.width;
  spaceCopy = space;
  optionsCopy = options;
  completionCopy = completion;
  requestQueue = self->_requestQueue;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = __64__CGPDFPageImpl_drawWithBox_size_colorSpace_options_completion___block_invoke;
  v20[3] = &unk_100008338;
  v25 = width;
  v26 = height;
  v21 = spaceCopy;
  selfCopy = self;
  boxCopy = box;
  v23 = optionsCopy;
  v24 = completionCopy;
  v17 = optionsCopy;
  v18 = completionCopy;
  v19 = spaceCopy;
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

- (void)getPageText:(id)text
{
  textCopy = text;
  requestQueue = self->_requestQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __29__CGPDFPageImpl_getPageText___block_invoke;
  v7[3] = &unk_1000082E8;
  v7[4] = self;
  v8 = textCopy;
  v6 = textCopy;
  [(NSOperationQueue *)requestQueue addOperationWithBlock:v7];
}

void __29__CGPDFPageImpl_getPageText___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v3 = CGPDFPageCopyString();
  (*(*(a1 + 40) + 16))();
}

@end